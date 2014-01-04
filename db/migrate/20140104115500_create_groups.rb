class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
    	t.string :name
    	t.string 'organisation'
    	t.integer 'max_spend'
    	t.integer 'min_spend'

    	t.timestamps
    end
  end
end
