## MARTHA MWAU
## Product Review App

### Description
This is a simple e-commerce application that allows users to review products. It is built using Sinatra and Active Record.

## Models
The application consists of three main models:

1. Product
The Product model represents a product in the e-commerce platform. It has the following associations:
has_many :reviews: A product can have multiple reviews.
has_many :users, through: :reviews: A product can be reviewed by multiple users.

2. Review
The Review model represents a review given by a user for a specific product. It has the following associations:
belongs_to :user: A review belongs to a user.
belongs_to :product: A review belongs to a product.

3. User
The User model represents a user of the e-commerce platform. It has the following associations:
has_many :reviews: A user can give multiple reviews.
has_many :products, through: :reviews: A user can review multiple products.

## Installation
1. Clone the repository.
2. Navigate to the project directory: cd product-review-app
3. Install the dependencies: bundle install
4. Set up the database: rake db:migrate
5. Start the server: rackup
6. Make sure you have Ruby and Bundler installed on your system before proceeding with the installation.

## Contributing
Contributions are welcome! If you find any issues or have suggestions for improvement, please open an issue or submit a pull request. Make sure to follow the existing code style and include tests for any new functionality.

## License
This project is licensed under the MIT License. Feel free to use, modify, and distribute the code as needed.