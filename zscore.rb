#Zscore calculator 1.0
#define array
ayr=Array.new
#load the CSV file into ayr, then define variables
air=File.new("air.csv","r")
sum=0
count=0
#create a loop to calculate number of lines and sum of all of the values
air.each_line { |line|
#defing comma as a seperator for feilds
feilds=line.split (",")
count=count+line.to_f
#adding total of values in feild 1
sum= sum+feilds[1].to_f
}
#find mean
avg=sum/count
#close the file
air.close

dyr=Array.new
#reopen csv file to move to top and define variable
f=File.new("air.csv","r")
adder=0
#create a loop to square and add the mean
f.each_line { |line|
feilds=line.split(",")
#standard deviation=((number-avg)**2)**0.5
adder=adder+((feilds[1].to_f-avg)**2)
}
sd=adder**0.5
f.close

fyr=Array.new
#open file to calculate zscore
f=File.new("air.csv","r")
f.each_line { |line|
feilds=line.split(",")
#zscore=number-mean/standard deviation
zs=0
zs=(feilds[1].to_f-avg)/sd
#put zscore for each value in the loop
puts zs
}
#close the file
f.close
