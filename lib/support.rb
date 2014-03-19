# A module containing the less important helper methods, such as string format
# methods, etc.
module Support

  # A support method that converts irregular prices to precise (Fixnum) amounts
  # in cents. Returns Fixnum to avoid rounding errors.
  # Params:
  # (String) price - A string representation of money in USD.
  # Example:
  # parse_price(' $23.42   ')
  # => 2342
  def parse_price(price)
  price.gsub!(' ', '')
  (price.gsub!('$','').to_f*100).to_i
  end
end