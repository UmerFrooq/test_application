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
class Address < ApplicationRecord
  validates :address_line, :city, :country, :state, presence: true
end
