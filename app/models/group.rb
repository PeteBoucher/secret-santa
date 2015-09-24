# == Schema Information
#
# Table name: groups
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  organisation :string(255)
#  max_spend    :integer
#  min_spend    :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class Group < ActiveRecord::Base

  validates :name, presence: true
  validates :organisation, presence: true

  has_many :members, class_name: 'User'

end
