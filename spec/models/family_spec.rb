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
require 'rails_helper'

RSpec.describe Family, type: :model do
  describe "Assosiation" do
    it {should belong_to(:address)}
  end
end
