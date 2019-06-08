horizontal <- read.csv("/Users/Carolina/Documents/GitHub/LDSA_project/csv_performance/LDSA_scaling_times_1_Horizontal_scaling.csv", header = TRUE)
plot(horizontal$Workers_num, horizontal$Part_1, xlab="# Workers", ylab="Time (s)", type="b", ylim=c(0,300), col=460, main = "Horizontal Scaling")
axis(1, at = seq(0, 10), font = 2)
axis(2, font = 2)
lines(horizontal$Workers_num, horizontal$Part_2, type="b", pch=0, col=491)
legend(8, 300, legend=c("Question 1", "Question 2"),
       col=c("blue", "green"), lty=1:1, pch=c(1,0))


vertical <- read.csv("/Users/Carolina/Documents/GitHub/LDSA_project/csv_performance/LDSA_scaling_times_2_Vertical_scaling.csv", header = TRUE)
plot(vertical$Threads_num, vertical$Part_1, xlab="# Threads",ylim=c(250,2100), ylab="Time (s)", type="b", col=460, main = "Vertical Scaling")
axis(1, font = 2)
axis(2, font = 2)
lines(vertical$Threads_num, vertical$Part_2, type="b", pch=0, col=491)
legend(2.7, 2000, legend=c("Question 1", "Question 2"),
       col=c("blue", "green"), lty=1:1, pch=c(1,0))


amount <- read.csv("/Users/Carolina/Documents/GitHub/LDSA_project/csv_performance/LDSA_scaling_times_3_Increase_amount_of_data.csv", header = TRUE)
plot(amount$Data_size_.B., amount$Part_1, xlab="Data size (B)",ylim=c(0,1000), ylab="Time (s)", type="b", col=460, main = "Increasing amount of data")
axis(1, font = 2)
axis(2, font = 2)
lines(amount$Data_size_.B., amount$Part_2, type="b", pch=0, col=491)
legend(7e+9, 1000, legend=c("Question 1", "Question 2"),
       col=c("blue", "green"), lty=1:1, pch=c(1,0))

