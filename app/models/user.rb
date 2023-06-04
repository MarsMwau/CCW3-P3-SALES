class User < ActiveRecord::Base
    has_many :reviews
    has_many :products, through: :reviews

    def self.reviews(user_id)
        Review.where(user_id: user_id)
    end
    
    def self.products(user_id)
        Product.joins(:reviews).where(reviews: { user_id: user_id }).distinct
    end
    
    def favorite_product
      products.max_by { |product| product.average_rating }
    end
  
    def remove_reviews(product)
      reviews.where(product_id: product.id).destroy_all
    end
end
  