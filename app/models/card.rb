class Card < ActiveRecord::Base
  belongs_to :parent
  belongs_to :status
  belongs_to :type
  belongs_to :importance
end
