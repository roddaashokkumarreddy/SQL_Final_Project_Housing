
import mysql.connector


mydb = mysql.connector.connect(host='localhost',user='root',password='Cadimum@123',database='housing')

mycursor = mydb.cursor(prepared=True)

print("Creating the master data table")

mySql_Create_Table_Query = """CREATE TABLE master_data ( 
                             index1 integer,
                             Flat_Name text,
                             Flat_Address text,
                             Configurations text,
                             Posession_starts text,
                             Average_Price text,
                             Sizes text,
                             Projectsize text,
                             LaunchDate text,
                             About text,
                             images text,
                             ProjectArea text
                             );
                             """
result = mycursor.execute(mySql_Create_Table_Query)

print("Master Table created successfully ")

mycursor.close()
mydb.close()












