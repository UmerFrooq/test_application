# == Schema Information
#
# Table name: people
#
#  id         :integer          not null, primary key
#  age        :integer          not null
#  name       :string           not null
#  sex        :integer          default(NULL), not null
#  type       :string           not null
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
class Father < Person
 
end

