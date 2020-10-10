class SetupTables < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.timestamps
      t.integer :tasks_count, default: 0
    end
    
    create_table :tasks do |t|
      t.string :name
      t.boolean :completed, default: false
      t.integer :user_id
      t.integer :project_id
      t.timestamps
    end
    
    create_table :users do |t|
      t.string :name
      t.integer :tasks_count, default: 0
      t.timestamps
    end
    
  end
end
