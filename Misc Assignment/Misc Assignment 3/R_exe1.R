##################### PART 1 #######################

# 1. Enter data ------------------------------------
data1 = c(2.5, 3.11, 4.98, 10.2, 17.7, 18.6, 19.9) # this is a vector
data1
# Use command + enter or control + center to run the line of code
# The assignment operator is "=", you can also use "<-". 
data3 = 1:100
data3

# 2. Use a function ---------------------------------
mean(data1)
median(data1)
var(data1)
sd(data1)
length(data1)
max(data1)
min(data1)

#If you don't know what a function does, use "?function_name"
#R documentation will pop up in one of the windows. 
?max   #for example


# 3. Index ------------------------------------------
data1[2:4]  # the 2rd to 4th elements in data1
data1[-1]   # every element except the 1st element


# 4. Selecting data that meet requirements  ---------- 
which(data1 == 18.6)  # the index of 18.6 is returned
which(data1 != 18.6) 

data1[data1 > 10]  # the elements greater than 10 are returned
sum(data1 > 10)  # the number of elements greater than 10


# 5. Vector operations --------------------------------
data1*10
data1 + 2
data1^2
log(data1)

# R can apply the operations to every element of the vector
# which means that you don't need to use a loop



# 6. Basic plot --------------------------------------
v1 = 1:50
v2 = rnorm(n = 50, mean = 0, sd = 1)  # generate 50 number from Normal distribution
# There are two ways to plot:
# You can define what x and y axis:
plot(x = v1, y = v2)
# The second way is to define a formula
plot(v2~v1)

# 7. R packages/libraries ----------------------------
# All the functions you have used in #1~#6 come with R. 
# Sometimes you may wish to use functions or datasets 
# from additional packages/libraries. 
  
# For example, you may wish to use ggplot2 for more beautiful plots
library(ggplot2)  # OR require(ggplot2)

# If you see an error message telling you "there is no package...", 
# please install the package using the code below:
install.packages('ggplot2') 
# choose "n", when asked "Do you want to install from sources ...."

# qplot is a function in ggplot2
qplot(x = v1, y = v2)


