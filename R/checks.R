check_for_worcshop <- function(){
  checks <- list(
  "dependencies are installed" = quote({
    pack <- available.packages()
    pack <- na.omit(unlist(lapply(pack["worcs", c("Depends", "Imports", "Suggests")], function(x){strsplit(x, split = ",\\s?")[[1]]})))
    pack <- unname(pack[!grepl("(testthat|missRanger)", pack)])
    has_pack <- sapply(pack, function(x){ isTRUE(do.call(require, list(package = x))) })
    if(any(!has_pack)){
      warning("The following packages are not installed: ", paste0(pack[!has_pack], collapse = ", "))
    }
    all(has_pack)
  }),
  "WORCS is installed" = quote({
    isTRUE(require(worcs))
  }),
  
  "tinytex is default latex installation" = quote({
    tinytex::is_tinytex()
  }),
  "Can compile a PDF document" = quote({
    rmarkdown::render()
  }),
  "SSH authentication works" = quote({
    suppressWarnings(result <- system2("ssh", args = "-T git@github.com", stdout = TRUE))
    any(grepl("successfully authenticated", result, fixed = TRUE)) & gert::libgit2_config()[["ssh"]]
  })
  )
  for(i in names(checks)){
    if(!tryCatch(eval(checks[[i]]), error = function(e){ FALSE} )){
      warning("Experienced a problem when checking if ", i)
    }
  }
}
