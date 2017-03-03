class CreateLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :logs do |t|
      t.string :row
      t.timestamp :without_zone
      t.timestamp :with_zone
      t.integer :not_sure
      t.string :application_name
      t.cidr :ip
      t.string :local7
      t.string :info
      t.string :dyno
      t.text :data
    end
  end
end
