---
title: "Leaflet"
date: "16 Oktober 2017"
output: html_document
---

## Developing Data Products - Week 2 course project

### October 16th 2017

This project illustrateshow to use leaflet package with R markdown to create an interactive map.


```{r setup, echo=TRUE}
set.seed(1234567890)
library(leaflet)

ab <- data.frame(lat = c(49.96, 50.12, 50.10), lng = c(9.12, 8.94, 8.78))

mypopups <- c(
    "<a href='https://de.wikipedia.org/wiki/Aschaffenburg'>Aschaffenburg</a>",
    "<a href='https://de.wikipedia.org/wiki/Hanau'>Hanau</a>",
    "<a href='https://de.wikipedia.org/wiki/Offenbach_am_Main'>Offenbach</a>"
)
 
myicon <- makeIcon(
"https://de.wikipedia.org/wiki/Liste_der_Wappen_in_Aschaffenburg#/media/File:Wappen_Aschaffenburg.svg", 48, 48)  


mymap <- ab %>% 
  leaflet() %>%
  addTiles() %>% setView(lat = 49.96, lng = 9.12,  zoom = 8) %>% 
  addMarkers(icon=myicon, popup = mypopups)
mymap
```