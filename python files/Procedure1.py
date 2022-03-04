import mysql.connector

mydb = mysql.connector.connect(host='localhost',user='root',password='Cadimum@123', database='testing')

mycursor = mydb.cursor(prepared=True)

list1 =["Bangalore" ,"Hyderabad","Chennai","Pune","Mumbai"]

for i in range(0,len(list1)):
    print(i+1,".",end=" ")
    print(list1[i])
    
value = int(input("Enter the number that you want to see the buildings for that particular location: "))

if value <= 0 or value > len(list1):
    print("Your are selecting the wrong number. select only 1 to 5")
else:
    mycursor.execute("call choosing_locations(%s);",(value,))
    for i in mycursor:
        print(i)

mydb.close()

