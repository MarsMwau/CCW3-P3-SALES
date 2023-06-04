class ApplicationController < Sinatra::Base
    set default_content_type: "application/json"
    
    get '/products' do
        products = Product.all
        products.to_json(include: :reviews)
    end

    get '/product/:id' do
        product = Product.find(params[:id])
        product.to_json(include: :reviews)
    end

    get '/users' do
        users = User.all
        users.to_json(include: :reviews)
    end

    get '/user/:id' do
        user = User.find(params[:id])
        user.to_json(include: :reviews)
    end

    post '/review' do
        review = Review.create(
            star_rating: params[:star_rating],
            comments: params[:comments],
            user_id: params[:user_id],
            product_id: params[:product_id])
            review.to_json
    end

end
