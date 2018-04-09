class CreateAttacks < ActiveRecord::Migration[5.1]
  def change
    create_table :attacks do |t|

      t.timestamps
    end
  end
end
