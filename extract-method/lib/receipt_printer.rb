class ReceiptPrinter
  COST = {
    'meat' => 5,
    'milk' => 3,
    'candy' => 1,
  }

  TAX = 0.05

  def initialize(output: $stdout, items:)
    @output = output
    @items = items
  end

  def print
    display_items
    display_divider
    display_subtotal
    display_tax
    display_divider
    display_total
  end

  private

  attr_reader :output, :items

  def subtotal
    @subtotal ||= items.reduce(0) do |sum, item|
      sum + item_cost(item).to_i
    end
  end

  def display_items
    items.each do |item|
      output.puts "#{item}: #{sprintf('$%.2f', item_cost(item))}"
    end
  end

  def item_cost(item)
    COST[item]
  end

  def display_divider
    output.puts divider
  end

  def display_subtotal
    display_formater label: "subtotal", amount: subtotal
  end

  def display_tax
    display_formater label: "tax", amount: subtotal * TAX
  end

  def display_total
    display_formater label: "total", amount: subtotal + (subtotal * TAX)
  end

  def display_formater(label:, amount:)
    output.puts "#{label}: #{sprintf('$%.2f', amount)}"
  end

  def divider
    '-' * 13
  end
end
