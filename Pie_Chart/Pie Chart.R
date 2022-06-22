expenses = c(6480,9000,3240,8280,4320,4680)
items = c("Rent","Food","Entertainment","Education","Savings","Medical")

#Converting the data into percentage form
pct = round(expenses/sum(expenses)*100)
items = paste(pct,"%",sep="")

#Giving the 'red' color to the item with the most expenditure
col_list = rainbow(length(expenses))
red_col = match("#FF0000",col_list)
max_pos = which.max(expenses)
temp = col_list[max_pos]
col_list[max_pos]="#FF0000"
col_list[red_col]=temp

#Giving the shading effect to the item with the least expenditure
min_pos = which.min(expenses)
density1=rep(NA,length(expenses))
density1[min_pos] = 50

#Plotting the pie chart
pie(expenses,labels = items,main='Expenditure of Mr.X',clockwise = TRUE,col=col_list,cex=0.8,density = density1,angle = 30,border=col_list)
legend(locator(1),legend=c("Rent","Food","Entertainment","Education","Savings","Medical"),cex=0.5,fill=col_list)

#Finding the percentage difference
Max = pct[max_pos]
Min = pct[min_pos]
diff = (((Max-Min)/Max)*100)
diff


