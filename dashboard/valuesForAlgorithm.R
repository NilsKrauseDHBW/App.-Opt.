count <- 200
count
# start value for the y axis values
y <- 2000

# c() enables adding the new elements to the list directly
ylist <- c()
xlist <- c()
i <- 0 

while(i <= count) {
  
  y = y + sample(-30:30, 1)
  
  i = i + 1 
  
  ylist <- c(ylist, y)
  xlist <- c(xlist, i)
  
}

ylist
ylist[0] # numeric(0): r vectory start at index = 1 !!!!
ylist[1]
xlist