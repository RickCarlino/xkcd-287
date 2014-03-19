require "support"

describe "parse_price" do
  let(:menu)   { Menu.new }
  let(:price1) { "$15.55" }
  let(:price2) { "$6.60"  }

  it "parses the price into a ruby Fixnum" do
    expect(menu.parse_price(price1)).to eq(1555)
    expect(menu.parse_price(price2)).to eq(660)
  end
end