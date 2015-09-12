class CreateLocaleStudies < ActiveRecord::Migration
  def change
    create_table :locale_studies do |t|
      t.string :completed_boolean
      t.references :locale, index: true, foreign_key: true
      t.references :study, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
