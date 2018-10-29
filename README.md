# ShinyAoEyeR
A Shiny app for drawing rectangular areas of interest (e.g., for eye tracking experiments)

### Getting the app running ###
1. After clicking the green “Clone or Download” button on the Github website, choose “Download ZIP”. 
2. Extract the “ShinyAoEyeR” folder to a directory of your choice.
3. The downloaded version contains already four example images in the “images” folder. You can use these images for test purposes, but you will probably want to replace them with your own images. Just make sure that the folder structure and the folder name are not changed.
4. ShinyAoEyeR relies on two packages:  “shiny” and “png”. You need to run the following, before you start running the app: 
```r
if (!require("shiny")) {
  install.packages("shiny", dependencies = TRUE)
}
if (!require("png")) {
  install.packages("png", dependencies = TRUE)
}
library(shiny)
library(png)
```
5. Open one of the three files “global.R”, “server.R” or “ui.R” in RStudio.
6. By pressing the button “Run App” in the RStudio environment, you finally open the app.

### How to use the app ###
1. From the dropdown menu in the upper left corner choose the image, for which you would like to define areas of interest (AoIs). The image will appear at the main window.
2. Use the mouse to click and pull, which will create a rectangular area around the segment of the image that you are interested in. The x and y coordinates of the upper left corner and the lower right corner of the AoI are shown in the textbox above the image. 
3. Provide an AoI label (i.e., a short description of the AoI) and add this information to the AoI file by pressing the “Add AoI” botton above the image. The information (AoI label and its coordinates) should appear now on the left panel.
4. Repeat steps 2 and 3 for additional AoIs.
5. If you finished defining all AoIs for an image click on the “Save AoI file” button. This will write the data into a text file, which can be found in the “aoiFiles” folder that was created by the app within the “ShinyAoEyeR” folder.
6. You can repeat steps 1 to 5 to define AoIs for additional images.
7. The “Done” button below the image will close the app.

#### Additional Settings ####
- The file “global.R” contains an entry “scale.var” (line 15), which is set by default to 0.55. This means that the image in the Shiny app is decreased in size by the factor 0.55 compared to its original size. This decrease is likely necessary to present the complete image on the screen with no need to scroll a lot. To enlarge the image just set the “scale.var” to 1.0 (= original size) or higher and restart the app.
- The default line color for AoIs is red. This can be changed in the “server.R” file at line 35. Here one might also change the line type (lty=2) or line width (lwd=3). In any case you will have to restart the app to make the changes visible. These settings do not affect the aoiFiles themselves but only how they appear in the app.  
- Shiny apps can be run inside RStudio or in any internet browser of your choice. This option can be set using the small dropdown arrow next to the “Run App” button in RStudio.


