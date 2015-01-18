---
title       : Demonstration of the Central Limit Theorem
subtitle    : 
author      : Quanta0801
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## The Central Limit Theorem (CLT)

# Wikipedia Definition

In probability theory, the central limit theorem (CLT) states that, given certain conditions, the arithmetic mean of a sufficiently large number of iterates of independent random variables, each with a well-defined expected value and well-defined variance, will be approximately normally distributed, regardless of the underlying distribution.

--- .class #id 

## In Short

As long as the sample size is large enough, the mean computed from these random variable will follow a normal distribution.

In general application, a sample size above 30 iterations is usually considered large enough. In fact, in most cases, asa can be seen in the app, even a small sample size of 10 or less would work for some random variables.

--- .class #id 

## In the App

# You can

- Select the type of distribution in which the samples are generated from
- The size of each sample (n)
- The number of samples to generate (m)

Hence, there will be m samples of n random variables in total.

For example:

```r
n <- 30
m <- 300
sampleSize <- n * m
sampleSize
```

```
## [1] 9000
```

--- .class #id 

## From the Plots

# Top Plot

Shows the distribution of the samples, as defined by the distribution selected. Noticed that they may not be following the normal distribution, and do not have similarity to that distribution

# Bottom Plot

The distribution of the means from each sample follows the theoretical normal distribution (plotted in blue). The distribution follows more closely to the normal distribution, the larger the sample size.

You can observe how the distribution changes as the sample size increases.
