require 'spec_helper'
require 'menu'

describe Menu, '#new' do

  let(:menuitem1) { Menu.new('sample1.txt') }

  it 'populates a target price' do
    expect(menuitem1.target_price).to eq(1505)
  end

  it 'populates fruit items' do
    expect(menuitem1.items[0]).to eq({ name: 'mixed fruit', price: 215 })
    expect(menuitem1.items[5]).to eq({ name: 'sampler plate', price: 580 })
  end
end

describe Menu, '#get_combos' do

  let(:possible_menuitem) { Menu.new('spec/possible.txt') }
  let(:impossible_menuitem) { Menu.new('spec/impossible.txt') }
  let(:possible_combinations) { possible_menuitem.combinations }
  let(:impossible_combinations) { impossible_menuitem.combinations }

  it 'creates combinations' do
    expect(possible_combinations).to include([
      {:name=>'walnut', :price=>500},
      {:name=>'acorn', :price=>500}])
    expect(possible_combinations).to include([{:name=>'cashew', :price=>200},
                                              {:name=>'almond', :price=>800}])
    expect(impossible_combinations.count).to eq 0
  end
end

describe Menu, '#show_results' do

  let(:winner) { Menu.new('spec/possible.txt') }
  let(:loser) { Menu.new('spec/impossible.txt') }

  it 'shows the winning combinations' do
    expect(winner.show_results).to include(
      'Greetings. Here are your 5 winning menu combinations')
  end

  it 'notifies of impossible combinations' do
    expect(loser.show_results).to include(
      'Looks like we can\'t make anything happen'\
      ' with the current menu / budget. Sorry.')
  end

end
