import sqlite3

people = [{
        'name': 'Anthony',
        'email': 'mark@example.com',
        'phone': '01234567890',
        'addrOne': 'somewhere',
        'addrTwo': 'someplace',
        'addrThree': 'xxx yyy'
    }, {
        'name': 'Barbara',
        'email': 'Barbara@example.com',
        'phone': '',
        'addrOne': 'adifferent',
        'addrTwo': 'someplace',
        'addrThree': '90210'
    }, {
        'name': 'Clive',
        'email': '',
        'phone': '99999999999',
        'addrOne': '',
        'addrTwo': '',
        'addrThree': 'aaa bbb'
    }
]

orgs = [{
        'name': 'Alpha',
        'email': 'ceo@alpha.com',
        'phone': '24253454353',
        'addrOne': 'example1',
        'addrTwo': 'example2',
        'addrThree': 'exam ple'
    }, {
        'name': 'Beta',
        'email': 'boss@beta.net',
        'phone': '',
        'addrOne': 'test1',
        'addrTwo': 'test2',
        'addrThree': '7567657'
    }, {
        'name': 'Charlie ltd',
        'email': '',
        'phone': '66666666666',
        'addrOne': '',
        'addrTwo': '',
        'addrThree': 'ggg ddd'
    }
]

partOf = [(1,4),(1,5),(2,5),(2,6)]
conn = sqlite3.connect('database.db')
c = conn.cursor()

for p in people:
    c.execute("INSERT INTO contact (name, email, phone, addrOne, addrTwo, addrThree, type) VALUES (?,?,?,?,?,?,?)",
        (p['name'],p['email'],p['phone'],p['addrOne'],p['addrTwo'],p['addrThree'],'person'))

for o in orgs:
    c.execute("INSERT INTO contact (name, email, phone, addrOne, addrTwo, addrThree, type) VALUES (?,?,?,?,?,?,?)",
        (o['name'],o['email'],o['phone'],o['addrOne'],o['addrTwo'],o['addrThree'],'organisation'))

for t in partOf:
    c.execute("INSERT INTO partOf (person, organisation) VALUES (?,?)", t)

conn.commit()
c.close()
