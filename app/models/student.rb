class Student < ActiveRecord::Base
	has_many :courses, as: :courseable
end
