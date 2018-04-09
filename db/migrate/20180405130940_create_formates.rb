class CreateFormates < ActiveRecord::Migration[5.1]
  def change
    create_table :formates do |t|

      t.timestamps
    end
  end
end
