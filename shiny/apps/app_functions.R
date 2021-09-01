## Define functions to run each app
library(shiny)

runAlphaDiversityApp <- function(taxa_abundance_path, sample_path, datasets_path) {
  .GlobalEnv$.taxa_abundance_path <- taxa_abundance_path
  .GlobalEnv$.sample_path <- sample_path
  .GlobalEnv$.datasets_path <- datasets_path
  on.exit(rm(list=c(.taxa_abundance_path, .sample_path, .datasets_path), envir=.GlobalEnv))
  shiny::runApp("./shiny/apps/alpha_diversity/")
  
}


runBetaDiversityApp <- function(taxa_abundance_path, sample_path, datasets_path) {
  .GlobalEnv$.taxa_abundance_path <- taxa_abundance_path
  .GlobalEnv$.sample_path <- sample_path
  .GlobalEnv$.datasets_path <- datasets_path
  on.exit(rm(list=c(.taxa_abundance_path, .sample_path, .datasets_path), envir=.GlobalEnv))
  shiny::runApp("./shiny/apps/beta_diversity/")
  
}


runRelativeAbundanceApp <- function(taxa_abundance_path, sample_path, datasets_path) {
  .GlobalEnv$.taxa_abundance_path <- taxa_abundance_path
  .GlobalEnv$.sample_path <- sample_path
  .GlobalEnv$.datasets_path <- datasets_path
  on.exit(rm(list=c(.taxa_abundance_path, .sample_path, .datasets_path), envir=.GlobalEnv))
  shiny::runApp("./shiny/apps/abundance_app/")
  
}


runDifferentialAbundanceApp <- function(taxa_abundance_path, sample_path, datasets_path) {
  .GlobalEnv$.taxa_abundance_path <- taxa_abundance_path
  .GlobalEnv$.sample_path <- sample_path
  .GlobalEnv$.datasets_path <- datasets_path
  on.exit(rm(list=c(.taxa_abundance_path, .sample_path, .datasets_path), envir=.GlobalEnv))
  shiny::runApp("./shiny/apps/differential_abundance/")
  
}


runCorrelationApp <- function(taxa_abundance_path, sample_path, datasets_path) {
  .GlobalEnv$.taxa_abundance_path <- taxa_abundance_path
  .GlobalEnv$.sample_path <- sample_path
  .GlobalEnv$.datasets_path <- datasets_path
  on.exit(rm(list=c(.taxa_abundance_path, .sample_path, .datasets_path), envir=.GlobalEnv))
  shiny::runApp("./shiny/apps/correlation_app/")
  
}