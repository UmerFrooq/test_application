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
require 'rails_helper'

RSpec.describe Person, type: :model do
  address = FactoryBot.build_list(:address, 2)
  famlies = FactoryBot.build_list(:family,2, address: address.sample)


  fathers = FactoryBot.build_list(:father, 2, sex: 0, family_id: famlies.sample.id)
  mothers = FactoryBot.build_list(:mother, 2, sex: 1, family_id: famlies.sample.id)
  childrens = FactoryBot.build_list(:child, 2, sex: 0, family_id: famlies.sample.id)

  describe "Validations" do
    it {should validate_presence_of(:sex)}

    it "should validate count" do 
      total_male = fathers.count + childrens.count
      expect(4).to eq(total_male)
      expect(2).to eq(mothers.count)
    end
  end
end
