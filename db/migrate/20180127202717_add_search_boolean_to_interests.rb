class AddSearchBooleanToInterests < ActiveRecord::Migration[5.1]
  def change
    add_column :interests, :searchable, :boolean, default: false
  end
end
