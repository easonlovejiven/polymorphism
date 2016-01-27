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
