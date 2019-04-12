require 'spec_helper'

describe RecipientFormatter, "#call" do
  it "splits on commas" do
    recipients = "one@example.com,two@example.com"

    expect(format_recipients(recipients)).to eq(["one@example.com", "two@example.com"])
  end

  it "splits on semicolons" do
    recipients = "one@example.com;two@example.com"

    expect(format_recipients(recipients)).to eq(["one@example.com", "two@example.com"])
  end

  it "strips spaces" do
    recipients = "  one@example.com;  two@example.com  "

    expect(format_recipients(recipients)).to eq(["one@example.com", "two@example.com"])
  end

  def format_recipients(recipients)
    RecipientFormatter.new(recipients).call
  end
end