class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :username
      t.string :content

      t.timestamps
    end
  end
end
