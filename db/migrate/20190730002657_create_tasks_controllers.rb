class CreateTasksControllers < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks_controllers do |t|

      t.timestamps
    end
  end
end
