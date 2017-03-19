import sqlite3

conn = sqlite3.connect('database.db')
c = conn.cursor()
c.execute("DELETE FROM contact")
c.execute("DELETE FROM partOf")
conn.commit()
c.close()
