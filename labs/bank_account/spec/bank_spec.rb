require_relative 'spec_helper'
require_relative '../bank'

describe Bank do # MOVING INTO BANK CLASS
  let(:bank) { Bank.new('TD Bank') } # CREATES A NEW BANK TO MAKE IT NICE AND EASY

  describe ".new" do # USE . TO TALK ABOUT CLASSES THAT APPLY TO THE CLASS STRUCTURE

    it "creates a bank object" do # HERE'S WHERE THE TEST ACTUALLY HAPPENS
      expect(bank).to_not eq nil # YOU SHOULD EXPECT SOMETHING TO EXIST
    end

    it "has no new accounts" do
      expect(bank.accounts.count).to eq 0
    end

  end

  describe "#name" do # USE A # TO TALK ABOUT INSTANCES WITHIN THE OBJECT

    it "prints out name" do # SETTING UP A NEW TEST
      expect(bank.name).to eq 'TD Bank' # BANK SHOULD BE ABLE TO RETURN ITS OWN NAME
    end

  end

  describe "#create_account" do

    it "create an account" do
      bank.create_account('bob', 400.00)
      expect(bank.accounts['bob']).to eq 400.00
    end
  end

  describe "#check_account" do
    it "check account balance via name" do
      bank.create_account('bob', 400)
      expect(bank.balance('bob')).to eq 400
    end
  end

  describe "#deposit" do
    it "deposits cash into existing account" do
      bank.create_account('sally', 300)
      bank.deposit('sally', 1200)
      expect(bank.accounts['sally']).to eq 1500
    end
  end

  describe "#withdraw" do
    it "withdraws money from an existing account" do
      bank.create_account('sally', 300)
      bank.withdraw('sally', 20)
      expect(bank.balance('sally')).to eq 280
    end

    it 'ignores people trying to withdraw tons of money from their account' do
      bank.create_account('sally', 300)
      bank.withdraw('sally', 400)
      expect(bank.balance('sally')).to eq 300
    end
  end

end