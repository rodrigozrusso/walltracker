class Wall < ActiveRecord::Base
  belongs_to :column
  belongs_to :service_class
end
