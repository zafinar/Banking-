# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

lidian = Customer.create(name: "Lidian")
kenny = Customer.create(name: "Kenneth")
sinclair = Customer.create(name: "Sin")
grayson = Customer.create(name: "Url")
arbi = Customer.create(name: "Rbz")

la = City.create(name: "Los Angeles")
chicago = City.create(name: "Chicago")
nyc = City.create(name: "New York")

chasenyc = Bank.create(name: "Chase",city: nyc)
chasela = Bank.create(name: "Chase",city: la)
bofanyc = Bank.create(name: "Bank of America",city: nyc)
bofala = Bank.create(name: "Bank of America",city: la)
bofachic = Bank.create(name: "Bank of America",city: chicago)

arbi_account_1 = Account.create(bank: chasenyc, customer: arbi, balance: 0.01)
ken_account_2 = Account.create(bank: bofanyc, customer: kenny, balance: 1000.0)
lidian_account_3 = Account.create(bank: chasela, customer: lidian, balance: 100000.0)
sinclair_account_1 = Account.create(bank: bofala, customer: sinclair, balance: 2400.0)
sinclair_account_2 = Account.create(bank: bofachic, customer: sinclair, balance:12334540.0)
sinclair_account_3 = Account.create(bank: bofachic, customer: sinclair, balance: 2231410.0)
