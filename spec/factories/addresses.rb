# == Schema Information
#
# Table name: addresses
#
#  id           :integer          not null, primary key
#  address_line :string           not null
#  city         :string           not null
#  country      :string           not null
#  state        :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
FactoryBot.define do
  factory :address do
    city { "MyString" }
    state { "MyString" }
    country { "MyString" }
    address_line { "MyString" }
  end
end
