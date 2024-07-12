class CreateLivechats < ActiveRecord::Migration[7.0]
  def change
    create_table :livechats do |t|
      t.string :inbox

      t.timestamps
    end
  end
end
