dat<-data.frame(
  type=sample(c("A","B"),size=100,prob=c(0.6,0.4),replace=T),
  x=rnorm(100,sd=5),
  y=rexp(100)
) %>%
  dplyr::mutate(
    z=ifelse(type=="A", 2*x-y+5, 1.25*x-0.5*y+1) + rnorm(100,sd=1.25)
  )

