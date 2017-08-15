#Part 1: Bank Account

# Create a class called BankAccount.
class BankAccount
  # Add a class variable called @@interest_rate that is a float representing the interest rate for all the accounts in the bank. This is a class variable because it is the same value for all accounts.
  @@interest_rate = 0.0

  # Add another class variable called @@accounts that starts as an empty array. This will eventually store the list of all bank accounts in the bank.
  @@accounts = []

  # Add an initialize instance method that sets @balance to zero. Balance is stored in an instance variable because the value needs to be different from account to account.
  def initialize
    @balance = 0
  end

  # You should also add reader and writer methods for balance to your class.
  def get_balance
    @balance
  end

  def change_balance

  end

  # Add an instance method called deposit that accepts a number as an argument and adds that amount to the account's balance.
  # This needs to be an instance method because it pertains to a single, specific account.
  def deposit(deposit_num)
    @balance += deposit_num
  end

  # Add an instance method called withdraw that accepts a number as an argument and subtracts that amount from the account's balance.
  def withdraw(withdraw_num)
    @balance -= withdraw_num
  end


  # Add a class method called create that calls BankAccount.new and adds the new object to @@accounts so that we can find it again in the future. This method should return the new account object. This needs to be a class method because at the time we run it there is no single, specific account object that we are working on.
  def create
    new_account = BankAccount.new
    @@accounts << new_account
    return new_account
  end

  # Add a class method called total_funds that returns the sum of all balances across all accounts in @@accounts.
  # This needs to be a class method because it does not pertain to any single, specific account.
  def total_funds
    total = @@accounts.sum
    return total
  end

  # Add a class method called interest_time that iterates through all accounts and increases their balances according to @@interest_rate.
  def interest_rate(accounts)
    accounts.each do |account|
      interest_gained = @@balance * @@interest_rate
      return interest_rate
    end
  end


end
