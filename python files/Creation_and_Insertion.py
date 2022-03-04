import mysql.connector

mydb = mysql.connector.connect(host='localhost',user='root',password='Cadimum@123', database='housing')

mycursor = mydb.cursor(prepared=True)

print("Executing the First procedure for creation of tables")

mycursor.execute("call creation_tables();")


print("Executing the second procedure for inserting the data")

        
mycursor.execute("call inserting_tables();")

mydb.commit()

    
print("Databases tables created and data inserted  successfully")

mycursor.close()
mydb.close()

