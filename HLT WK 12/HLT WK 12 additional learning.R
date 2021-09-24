# Additional learning task 1
a <- c(1:5)
b <- c(6:10)
c <- c(11:15)
combined_matrix <- cbind(a, b, c)
combined_matrix

# Additional learning task 2
employee_data_frame <- data.frame(
  Names = c("Jaspal", "Emma", "Sarah", "Rekha", "Steve"),
  Age = c(40, 38, 37, 37, 46),
  Role = c("Trainee", "Lecturer", "Admin", "Recruitment", "Management"),
  Length_of_service = c(1, 4, 6, 8, 15) 
)
employee_data_frame

# Additional learning task 3
install.packages("ggplot2", dependencies = TRUE)
library(ggplot2)
x <- c(1:20)
y <- c(x^2)
qplot(x,y, main = "y=X^2 graph", asp = 1, geom = c("path", "point"))

# Additional learning task 4
Team <- c("Leeds Utd", "Man City", "Liverpool", "Chelsea", "Norwich City")
Attendance <- c(36400, 52137, 52591, 38965, 26894)
barplot(Attendance, names.arg=Team, xlab = "Team", ylab = "Attendance", main = "Average attendance figures") 

# Additional learning task 5
name <- readline("Enter your name: ")
age <- readline("Enter your age: ")
paste("Welcome", name,", you are", age, "years old.")

# Additional learning task 6
sequence <- seq(20:50)
sum(sequence)
mean(sequence)

# Additional learning task 7
random_value_vector <- floor(runif(10, min=-50, max=50))

