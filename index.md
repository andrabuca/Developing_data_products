---
title       : Which type of car should you buy? 
subtitle    : Find the best car characteristics
author      : Andra
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---


## What is important for you in a car?

- Selecting the right car takes a lot of research and consideration
- What do you want most from your car?
- Is it miles/gallon consumption? Number of cylinders? Horsepower? Type of transmission? 

---
## Compare different car types. Make the right decision!

- Use the Shiny application to check different car types and their characteristics
- Let's assume you want a car with the best horsepower. You should pick:

```r
rownames(mtcars[mtcars$hp == max(mtcars$hp), ]) 
```

```
## [1] "Maserati Bora"
```



---
## Check the car characteristics
- Select this car type from the radio buttons 


```r
boxplot(mtcars[nam, ], main = nam, xlab = "Car characteristics", ylab = "value")
```

![plot of chunk unnamed-chunk-3](assets/fig/unnamed-chunk-3.png) 

---
## Make the right decisions

- See how efficient your car is in terms of time and consumption
- Check how many minutes it takes for this car to drive 100 miles:

```r
round((mtcars[nam,7]*4*100)/60)
```

```
## [1] 97
```
- Check how many gallons it takes for this car to drive 100 miles:

```r
round(100/mtcars[nam,1],2)
```

```
## [1] 6.67
```
- Now make a conscious decision! 


