class CreateReviews < ActiveRecord::Migration[6.1]

  def change
    create_table :reviews do |t|
      t.integer :star_rating
      t.string :comments
    end
  end

end


