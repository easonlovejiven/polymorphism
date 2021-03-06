# 多态适用场景
# 在多态关联中: model-A 可以属于model-B和model-C	
# 也就是说图片可以属于员工和产品模型

# class Picture < ActiveRecord::Base
#   belongs_to :imageable, polymorphic: true
# end
 
# class Employee < ActiveRecord::Base
#   has_many :pictures, as: :imageable
# end
 
# class Product < ActiveRecord::Base
#   has_many :pictures, as: :imageable
# end

# 在 belongs_to 中指定使用多态，可以理解成创建了一个接口，
# 可供任何一个模型使用。在 Employee 模型实例上，可以使用 
# @employee.pictures 获取图片集合。类似地，可使用 
# @product.pictures 获取产品的图片。

# 在 Picture 模型的实例上，可以使用 @picture.imageable 
# 获取父对象。不过事先要在声明多态接口的模型中创建外键字段和类型字段
# ［要提前声明imageable_id,imageable_type］

# 多态第二种应用场景
# 课程：course
# 学生： student
# 老师：teacher
# 学生可以选择不同的课程，一个课程可以被多个学生选择
# 老师对应多个课程，一个课程只能被一个老师选择
# 总结:学生和课程之间是多对多,老师和课程之间是一对多,课程和老师之间是多对一

# (1)Student 表字段：只有一个学生name
# class Student < ActiveRecord::Base
# 	has_many :courses, as: :courseable
# end

# (2)Teacher 表字段：只有一个老师name
# class Teacher < ActiveRecord::Base
# 	has_many :courses, as: :courseable
# end

# (3)Course 它作为一个多态接口 表字段：课程name,外键id,外键type(这儿的一条记录可以反映出：这个课程被哪个老师教或者这个学生所选择的课程)
# class Course < ActiveRecord::Base
# 	belongs_to :imageable, polymorphic: true
# end

# 可以得到:(1)student.courses, (2)teacher.courses, (3)course.imageable可以获取父对象（要在多态接口上声明外键的字段id和type）
