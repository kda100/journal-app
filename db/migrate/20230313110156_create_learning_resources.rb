class CreateLearningResources < ActiveRecord::Migration[7.0]
  def change
    create_table :learning_resources do |t|
      t.string :title
      t.string :resource_type
      t.string :url
      t.text :description

      t.timestamps
    end
  end
end
