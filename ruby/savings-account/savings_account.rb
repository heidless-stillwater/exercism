module SavingsAccount

  def self.interest_rate(balance)
    if balance >= 0 && balance < 1000
      interest_rate = 0.5
    elsif balance >= 1000 && balance < 5000
      interest_rate = 1.621
    elsif balance >= 5000
      interest_rate = 2.475
    else
      interest_rate = 3.213
    end

    return interest_rate
  end

  def self.annual_balance_update(balance)
    interest_rate = SavingsAccount.interest_rate(balance) / 100
    interest_amt = balance * interest_rate
    updated_balance = balance + interest_amt

    return updated_balance
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    years = 1
    new_balance = current_balance
    working_balance = self.annual_balance_update(new_balance)
    until working_balance >= desired_balance
      years += 1
      interest_amt = working_balance * (self.interest_rate(working_balance) / 100)
      working_balance += interest_amt
    end
    return years
  end
end

