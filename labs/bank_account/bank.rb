require 'rainbow'
class Bank
  attr_accessor :name, :accounts

  def initialize(name)
    @name = name
    @accounts = {}
  end

  def to_s
    "I'm a bank"
  end

  def create_account(name, deposit)
    accounts[name] = deposit
  end

  def balance(name)
    print "#{name.capitalize}".color(:blue) + " has $#{accounts[name.downcase]}"
    @accounts[name]
  end

  def deposit(name, deposit)
    @accounts[name] += deposit
    print "#{name.capitalize}".color(:blue) + " has $#{accounts[name.downcase]}"
  end

  def withdraw(name, deposit)
    (deposit <= @accounts[name]) ? (@accounts[name] -= deposit) : "You don't have any money, bro!"
    puts "#{name.capitalize}".color(:blue) + " has $#{accounts[name.downcase]}"
  end

end