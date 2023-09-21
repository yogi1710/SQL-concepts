import mysql.connector
mydb=mysql.connector.connect(host='localhost',user='root',password='Samrin@1220')
print(mydb.connection_id)