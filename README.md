## Description
This application plots points. The coordinates of the points are determined by sampling two independent Gaussian distributions. Use the sliders to change the number of samples to plot, the mean of the X and Y distributions, and the standard deviation of the X and Y distributions.

The application also plots a red and a green circle. The circles are centered on the  mean X and Y values. The border of the red circle one standard deviation from the mean. The border of the green circle is two standard deviations from the mean.

The circles stretch to become ellipses if the X and Y standard deviations are not the same.

## Instructions
The application is hosted on shiny io at https://hoffer.shinyapps.io/gaussian_simulator

* To run the application locally, download the ui.R and server.R files. Put both files in the same directory.
* Run R
* Make the directory with the files the R working directory. 
* Install the shiny R package.
* Execute:

`runApp()`

to start the application.
