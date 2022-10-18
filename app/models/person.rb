# == Schema Information
#
# Table name: people
#
#  id         :integer          not null, primary key
#  age        :integer          not null
#  name       :string           not null
#  sex        :integer          default(NULL), not null
#  type       :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  family_id  :integer          not null
#
# Indexes
#
#  index_people_on_family_id  (family_id)
#  index_people_on_name       (name)
#  index_people_on_sex        (sex)
#
# Foreign Keys
#
#  family_id  (family_id => families.id)
#
class Person < ApplicationRecord
  SEX_TYPES = {
    'male' => 0,
    'female' => 1
  }

  validates :name, :age, :sex, presence: true
  
  enum sex: SEX_TYPES

  scope :males, -> {where(sex: 0)}
  scope :females, -> {where(sex: 1)}
end
