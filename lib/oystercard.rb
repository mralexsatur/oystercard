
class Oystercard

  MAX_BALANCE = 90

  attr_reader :balance
  attr_reader :in_use

  def initialize(balance = 0, max_balance = MAX_BALANCE)
    @in_use = false
    @balance = balance
    @max_balance = max_balance

  end

  def topup(topup_amount)
    new_balance = @balance + topup_amount
    fail 'Maximum Balance Reached' if new_balance > @max_balance
    @balance = new_balance
  end

  def charge(fare)
    new_balance = @balance - fare
    @balance = new_balance
  end

  def touch_in
    @in_use = true
  end

  def touch_out
    @in_use = false
  end
end
