#initail code
class BankAccount
  attr_reader :balance

  def initialize(balance = 0)
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
    puts "Deposited #{amount} into your account. New balance: #{@balance}"
  end

  def withdraw(amount)
    if amount <= @balance
      @balance -= amount
      puts "Withdrawn #{amount} from your account. New balance: #{@balance}"
    else
      puts "Insufficient funds"
    end
  end
end

# Example usage:
account = BankAccount.new(1000)
puts "Initial balance: #{account.balance}"
account.deposit(500)
account.withdraw(200)
account.withdraw(1500) # Should show "Insufficient funds"
