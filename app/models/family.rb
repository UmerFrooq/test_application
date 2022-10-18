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
class Family < ApplicationRecord
  has_one :father, class_name: 'Father', foreign_key: 'person_id'
  has_one :mother, class_name: 'Mother', foreign_key: 'person_id'
 
  belongs_to :address

  has_many :childs, class_name: 'Child', foreign_key: 'person_id'
end
