class CreateHandlers < ActiveRecord::Migration[5.1]
  def change
    create_table :handlers do |t|

      t.timestamps
    end
  end
end
