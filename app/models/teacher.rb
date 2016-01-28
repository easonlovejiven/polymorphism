class Teacher < ActiveRecord::Base
	has_many :courses, as: :courseable
end
