class Course < ActiveRecord::Base
	belongs_to :courseable, polymorphic: true
end
