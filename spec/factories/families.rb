# == Schema Information
#
# Table name: families
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  address_id :integer          not null
#
# Indexes
#
#  index_families_on_address_id  (address_id)
#
# Foreign Keys
#
#  address_id  (address_id => addresses.id)
#
FactoryBot.define do
  factory :family do
    address
  end
end
