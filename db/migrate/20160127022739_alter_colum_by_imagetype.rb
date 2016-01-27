class AlterColumByImagetype < ActiveRecord::Migration
  def change
  	rename_column :pictures, :imagetype, :imageable_type
  end
end
