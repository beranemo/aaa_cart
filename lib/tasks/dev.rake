namespace :dev do
  task fake_products: :environment do
    Product.destroy_all
    100.times do
      Product.create!(
        name: FFaker::Name.first_name,
        description: FFaker::Lorem.paragraph,
        price: ( rand(500)+1 ) * 10,
        image: FFaker::Avatar.image
      )
    end
    
    puts "have created fake products"
    puts "now you have #{Product.count} products record"
  end
  
end
