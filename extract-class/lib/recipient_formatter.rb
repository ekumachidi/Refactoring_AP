class RecipientFormatter
  def initialize(recipients)
    @recipients = recipients
  end

  def call
    recipients.gsub(/\s+/, '').split(/[\n,;]+/)
  end

  private

  attr_reader :recipients
end
