experiment2_2FM = read.csv("./Experiments segundo paper/Experiment2/experiment2-2FMs.csv")
experiment2_2FM_resized = experiment2_2FM[,2:3]

max_time_2FM = max(experiment2_2FM_resized)*1.5
min_time_2FM = min(experiment2_2FM_resized)
experiment2_3FM = read.csv("./Experiments segundo paper/Experiment2/experiment2-3FMs.csv")
experiment2_3FM_resized = experiment2_3FM[,2:3]
max_time_3FM = max(experiment2_3FM_resized)*1.5
min_time_3FM = min(experiment2_3FM_resized)
experiment2_4FM = read.csv("./Experiments segundo paper/Experiment2/experiment2-4FMs.csv")
experiment2_4FM_resized = experiment2_4FM[,2:3]
max_time_4FM = max(experiment2_4FM_resized)*1.5
min_time_4FM = min(experiment2_4FM_resized)
experiment2_5FM = read.csv("./Experiments segundo paper/Experiment2/experiment2-5FMs.csv")
experiment2_5FM_resized = experiment2_5FM[,2:3]
max_time_5FM = max(experiment2_5FM_resized)*1.5
min_time_5FM = min(experiment2_5FM_resized)
par(mar=c(4,4,0,1))

pdf(file="./Experiments segundo paper/Experiment2/experiment2-1V2.pdf",width=10) 
par(mfrow=c(2,2))
par(mar=c(4,4,1,1))

plot(experiment2_2FM$Density,experiment2_2FM$choco,ylim=c(min_time_2FM,max_time_2FM),xlab="CMCs Density (%)", ylab="Resolution time (sec)",type="p",pch=19,col="aquamarine3",cex=1,lwd=5) 
points(experiment2_2FM$Density,experiment2_2FM$z3,col="royalblue3",pch=15,lwd=5)  
lines(experiment2_2FM$Density,experiment2_2FM$choco,col="aquamarine3",lty="dashed",lwd=2) 
lines(experiment2_2FM$Density,experiment2_2FM$z3,col="royalblue3",lty="solid",lwd=2) 
legend("topright",c("choco", "z3"),lty=c(2,1), col=c("aquamarine3", "royalblue3"),lwd=2, pch=c(19,15))
text(max(experiment2_2FM$Density)/1.5,max(experiment2_2FM$z3)*1.5,"2 FMs (4 CMCs)",cex=1, font = 2)
par(mar=c(4,4,1,1))


plot(experiment2_3FM$Density,experiment2_3FM$choco,ylim=c(min_time_3FM,max_time_3FM),xlab="CMCs Density (%)", ylab="Resolution time (sec)",type="p",pch=19,col="aquamarine3",lwd=5) 
points(experiment2_3FM$Density,experiment2_3FM$z3,col="royalblue3",pch=15,lwd=5) 
lines(experiment2_3FM$Density,experiment2_3FM$choco,col="aquamarine3",lty="dashed",lwd=2) 
lines(experiment2_3FM$Density,experiment2_3FM$z3,col="royalblue3",lty="solid",lwd=2) 
legend("topright",c("choco", "z3"),lty=c(2,1), col=c("aquamarine3", "royalblue3"),lwd=2, pch=c(19,15))
text(max(experiment2_3FM$Density)/1.5,max(experiment2_3FM$z3)*1.5,"3 FMs (6 CMCs)",cex=1, font = 2)
par(mar=c(4,4,1,1))

plot(experiment2_4FM$Density,experiment2_4FM$choco,ylim=c(min_time_4FM,max_time_4FM),xlab="CMCs Density (%)", ylab="Resolution time (sec)",type="p",pch=19,col="aquamarine3",lwd=5) 
points(experiment2_4FM$Density,experiment2_4FM$z3,col="royalblue3",pch=15,lwd=5) 
lines(experiment2_4FM$Density,experiment2_4FM$choco,col="aquamarine3",lty="dashed",lwd=2) 
lines(experiment2_4FM$Density,experiment2_4FM$z3,col="royalblue3",lty="solid",lwd=2) 
legend("topright",c("choco", "z3"),lty=c(2,1), col=c("aquamarine3", "royalblue3"),lwd=2, pch=c(19,15))
text(max(experiment2_4FM$Density)/1.5,max(experiment2_4FM$z3)*1.5,"4 FMs (8 CMCs)",cex=1, font = 2)
par(mar=c(4,4,1,1))

plot(experiment2_5FM$Density,experiment2_5FM$choco,ylim=c(min_time_5FM,max_time_5FM),xlab="CMCs Density (%)", ylab="Resolution time (sec)",type="p",pch=19,col="aquamarine3",lwd=5) 
points(experiment2_5FM$Density,experiment2_5FM$z3,col="royalblue3",pch=15,lwd=5) 
lines(experiment2_5FM$Density,experiment2_5FM$choco,col="aquamarine3",lty="dashed",lwd=2) 
lines(experiment2_5FM$Density,experiment2_5FM$z3,col="royalblue3",lty="solid",lwd=2) 
legend("topright",c("choco", "z3"),lty=c(2,1), col=c("aquamarine3", "royalblue3"),lwd=2, pch=c(19,15))
text(max(experiment2_5FM$Density)/1.5,max(experiment2_5FM$z3)*1.5,"5 FMs (10 CMCs)",cex=1, font = 2)
dev.off()