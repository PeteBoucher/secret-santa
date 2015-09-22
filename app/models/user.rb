# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#  group_id   :integer
#

class User < ActiveRecord::Base

	validates :name, presence: true
  validates :email, presence: true

  belongs_to :group

end
