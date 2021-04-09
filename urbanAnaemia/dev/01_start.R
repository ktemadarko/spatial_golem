# Building a Prod-Ready, Robust Shiny Application.
# 
# README: each step of the dev files is optional, and you don't have to 
# fill every dev scripts before getting started. 
# 01_start.R should be filled at start. 
# 02_dev.R should be used to keep track of your development during the project.
# 03_deploy.R should be used once you need to deploy your app.
# 
# 
########################################
#### CURRENT FILE: ON START SCRIPT #####
########################################

## Fill the DESCRIPTION ----
## Add meta data about your application
golem::fill_desc(
  pkg_name = "urbanAnaemia", # The Name of the package containing the App 
  pkg_title = "Ghana_urban_anaemia", # The Title of the package containing the App 
  pkg_description = "A shiny app which does the following things.
  Displays the percentage of Ghanaian children with anaemia according to the 2019 
  Ghana Malaria Indicator Survey.
  Highlights the percentage of built up environment in each of the regions in Ghana.
  Logistic regression to find the determinants of anaemia in Ghanaian children under 
  5 from the 2019 GMIS data", # The Description of the package containing the App 
  author_first_name = "Korantema", # Your First Name
  author_last_name = "Owusu-Darko", # Your Last Name
  author_email = "aowusuda@asu.edu", # Your Email
  repo_url = "https://github.com/ktemadarko/spatial_golem" # The URL of the GitHub Repo (optional) 
)     

## Set {golem} options ----
golem::set_golem_options()

## Create Common Files ----
## See ?usethis for more information
usethis::use_mit_license( name = "Golem User" )  # You can set another license here
usethis::use_readme_rmd( open = T )
usethis::use_code_of_conduct()
usethis::use_lifecycle_badge( "Experimental" )
usethis::use_news_md( open = T )

## Use git ----
#usethis::use_git()

## Init Testing Infrastructure ----
## Create a template for tests
golem::use_recommended_tests()

## Use Recommended Packages ----
golem::use_recommended_deps()

## Favicon ----
# If you want to change the favicon (default is golem's one)
#golem::remove_favicon()
#golem::use_favicon() # path = "path/to/ico". Can be an online file. 

## Add helper functions ----
golem::use_utils_ui()
golem::use_utils_server()

# You're now set! ----

# go to dev/02_dev.R
rstudioapi::navigateToFile( "dev/02_dev.R" )

