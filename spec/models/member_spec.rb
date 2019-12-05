require 'rails_helper'

RSpec.describe Member, '.exempt', type: :model do
  context 'no exemption' do
    it 'is not exempt' do
      member = Member.new
      expect( member.exempt? ).to eq false
    end
  end

  context 'with exemption' do
    it 'is exempt' do
      member = Member.new(exemption: :disabled)
      expect( member.exempt? ).to eq true
    end
  end
end

RSpec.describe Member, '.full_name' do
  it 'gives the full name' do
    user = build(:member, first_name: 'Josh', last_name: 'Steiner')

    expect(user.full_name).to eq 'Josh Steiner'
  end
end
