Writing a Reproducible Paper in R with WORCS
================

Open Science is becoming increasingly popular and relevant, and a world
of opportunity is opening up to make your work fully reproducible. This
is not without its challenges: best practices for reproducible science
include a number of tools that you may never have used or even heard of
before. *(Are you using version control? How are you managing your
dependencies? Are you writing your manuscript as an executable
document?)*

For those who would like to get started with an open and reproducible
workflow, without dealing with a mountain of new tools and platforms, we
introduce [WORCS](https://psyarxiv.com/k4wde/), a Workflow for Open
Reproducible Code in Science. The workflow is written for R, but you do
not need to have prior programming experience to join this workshop.
Having the motivation to step out of your comfort zone — and into a new
one — is the most important prerequisite.

WORCS is an R package that takes you from data to published paper in a
single streamlined workflow, making the entire process of your analysis,
up to the submission of your manuscript, reproducible. The WORCS
workflow optionally facilitates pre-registration, sharing your code and
your data (safely\!), and the submission of a pre-print.

This workshop will be taught by [Caspar van
Lissa](https://github.com/cjvanlissa), the author of the WORCS package,
in collaboration with [RDM
Support](https://www.uu.nl/en/research/research-data-management). We
will give you an overview of the workflow and introduce you to its use,
and aim for you to be able to get started on your own reproducible
project by the end of the workshop.

## Workshop dates

  - tbd

## Preparation

Work through the [Setup vignette: Setting up your computer for
WORCS](https://cjvanlissa.github.io/worcs/articles/setup.html).

## Workshop content

### Workflow demonstration:

[Setting up a `worcs` project in
RStudio](https://cjvanlissa.github.io/worcs/articles/workflow.html)

### Presentations (by event):

  - [eara2020](https://cjvanlissa.github.io/worcshop/eara2020.html)
  - [eur\_2020](https://cjvanlissa.github.io/worcshop/eur_2020.html)
  - [overview\_lecture](https://cjvanlissa.github.io/worcshop/overview_lecture.html)

<!--[Introducing worcs](https://bvreede.github.io/worcshop/slides/overview_lecture.html)-->

## Data

For the demonstration, we will use [Allison Horst’s Penguin
dataset](https://github.com/allisonhorst/palmerpenguins). You can use
this data by entering the following code in the `prepare_data.R` script:

``` r
install.packages("remotes")
remotes::install_github("allisonhorst/palmerpenguins")
data <- palmerpenguins::penguins
```

Alternatively, you can download one of these versions of the data, and
load them yourself: - An SPSS file
([penguins.sav](https://raw.githubusercontent.com/bvreede/worcshop/master/data/penguins.sav))
- An Excel file
([penguins.xlsx](https://raw.githubusercontent.com/bvreede/worcshop/master/data/penguins.xlsx))
- A CSV file
([penguins.csv](https://raw.githubusercontent.com/bvreede/worcshop/master/data/penguins.csv))

## Further reading

  - [Read the preprint](https://psyarxiv.com/k4wde/)
  - The [worcs GitHub repo](https://github.com/cjvanlissa/worcs)
  - [Markdown cheat sheet](https://www.markdownguide.org/cheat-sheet)

## Links submitted during the workshop

  - [TOP guidelines](https://www.cos.io/our-services/top-guidelines)
  - [Git User Interfaces](https://git-scm.com/downloads/guis) -
    recommendation by workshop participant:
    [GitKraken](https://www.gitkraken.com/)
  - [rrtools](https://github.com/benmarwick/rrtools), an attempt to
    streamline containerization in R
