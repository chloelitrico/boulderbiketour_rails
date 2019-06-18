class CreateSlogans < ActiveRecord::Migration[5.2]
  def change
    create_table :slogans do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :description

      t.timestamps
    end
  end
end
