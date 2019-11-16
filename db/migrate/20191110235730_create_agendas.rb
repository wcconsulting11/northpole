class CreateAgendas < ActiveRecord::Migration[5.2]
  def change
    create_table :agendas do |t|
      t.string :place
      t.text :location
      t.string :date
      t.timestamps
    end
  end
end
