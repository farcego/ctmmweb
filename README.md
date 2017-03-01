# Prototype of Shiny web application for ctmm package

## Introduction

This is a prototype Shiny app for [ctmm](https://cran.r-project.org/web/packages/ctmm/index.html) R package. This repo is used for beta testing of the development version. The app can be run from github directly so it will be easy to distribute the test.

Demo of some features:

[![demo vido](http://img.youtube.com/vi/7vRktLa76Ho/0.jpg)](http://www.youtube.com/watch?v=7vRktLa76Ho "shiny prototype demo")

## Installation

[The first beta version is hosted in shinyapps.io](https://ctmm.shinyapps.io/dashboard1/) so you can open it with browser. This version is simple in every step but complete from start to end.

The current repo is the alpha version with much more features in data, subset page, but the latter pages are not connected yet.

You can run current repo locally:

1. Install [the latest R](https://www.r-project.org/), currently 3.3.2. Lower version may not work with ctmm.
2. Install dependency packages in R. You need to install `ctmm` and `shiny` development version separately here. 

Better restart R session if you already have one running to make sure uninstall works.

```r
# restart R session first
remove.packages("ctmm")
if (!require("devtools"))
  install.packages("devtools")
devtools::install_github("rstudio/shiny")
# stay on commit of 2017/02/23 
devtools::install_github("ctmm-initiative/ctmm", ref = "a24eeab591c7b00a28406a9972a26878507a43a1")
```

Other dependency packages will be automatically installed in the first run of app. Supposedly `ctmm` development version can also be installed automatically, but it may met problem in uninstalling older version if it was installed and loaded.

3. Run the Shiny app with

	`shiny::runGitHub('ctmm-shiny-prototype', 'ctmm-initiative')`
	
	
## Usage

The web page have a side bar at left for each stage of analysis. 

### Currently working

Data page can accept uploaded movebank format data or use ctmm package internal data. 
- You can click on data summary table to select specifica animals and see their locations highlighted in plot 1. The color of animals in table and plot are matched. 
- You can drag a box in plot 1, double click to zoom in. Double click in plot to reset the zoom.
- plot 2 facet provided individual plots in an aligned fashion, so it's easy to see individual patterns and compare their relative locations.
- plot 3 have every individual plot fitted. The slider will zoom in the majority of data, effectively exclude the outlier points that stretched the plots.
- plot 4 is the basic plot version instead of ggplot2, working as reference.
- You can select one animal, click button to analyze it in next page. Clicking next page directly will pick the first animal by default. The batch process button is the placeholder for future feature.

In Subset page you can check different time ranges for selected animal, and select some time range to subset the data for next step analysis. 
- The histogram is colorred by groups, and the location plot have same color for cooresponding groups. It's easier to see the time distribution in the location plot this way. The color group number can be adjusted.
- Drag on histogram to select a time range (double click on plot to clear selection), the range detail will be updated in first box. The default range without mouse selection is the full range.
- The location plot will also update to only show locations in selected time in color, and show other points in gray background.
- Click Add button to add time range selection into the selection table in bottom.  Click Reset button to remove all selections in table.

### Not updated yet

The other pages are from the first beta version and not updated yet. The currently updated pages didn't feed the data to these pages because there could be changes in design in future.

