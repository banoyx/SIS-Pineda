#Connection for the Database
import mysql.connector

class DB_Connect:
	def __init__(self):
		pass

	def connection(self):
		self.con = mysql.connector.connect(
		  host="localhost",
		  user="root",
		  password="jimpineda0120",
		  database="sis_v2"
		)
		return self.con


db = DB_Connect()

con = db.connection()
cursor = con.cursor()

print(con)