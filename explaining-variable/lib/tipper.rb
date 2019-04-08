class Tipper
  TAX = 0.05

  def initialize(amount:, discount_percentage: 0, tip_percentage:)
    @amount = amount
    @discount_percentage = discount_percentage
    @tip_percentage = tip_percentage
  end

  def total
    tax = amount * TAX
    discount_value = amount * (discount_percentage / 100.0)
    tip = amount * (tip_percentage / 100.0)
    amount + tax - discount_value + tip
  end

  private

  attr_reader :amount, :discount_percentage, :tip_percentage
end
