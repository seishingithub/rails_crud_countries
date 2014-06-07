class CreateCountry < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :country_name
      t.string :language_spoken
    end
  end
end
