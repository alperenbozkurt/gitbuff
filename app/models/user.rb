# == Schema Information
#
# Table name: users
#
#  id         :bigint(8)        not null, primary key
#  username   :string
#  count      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image_url  :string
#

class User < ApplicationRecord
end
