class CreateInterests < ActiveRecord::Migration[5.1]
  def change
    create_table :interests do |t|
      t.column :interest_name, :string

      t.timestamps
    end
  end
end
