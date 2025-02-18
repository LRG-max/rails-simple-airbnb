# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3,
  image_url: "/images/1.jpeg"
)
Flat.create!(
  name: 'Stylish House Close to River Thames',
  address: '5 Riverside London SW18 1LP',
  description: 'A stylish house near the River Thames with a modern interior, three bedrooms, and a spacious living area.',
  price_per_night: 100,
  number_of_guests: 5,
  image_url: "/images/2.jpeg"
)
Flat.create!(
  name: 'Cozy Studio in Central London',
  address: '22 Baker Street London NW1 6XE',
  description: 'A cozy studio apartment in the heart of London. Perfect for solo travelers or couples, with all amenities included.',
  price_per_night: 50,
  number_of_guests: 2,
  image_url: "/images/3.jpeg"
)

Flat.create!(
  name: 'Modern Apartment in City Center',
  address: '30 High Street London E1 6AN',
  description: 'A modern apartment located in the city center, close to all amenities and public transport. Ideal for business travelers.',
  price_per_night: 120,
  number_of_guests: 4,
  image_url: "/images/4.jpeg"
)
Flat.create!(
  name: 'Charming Loft in Historic Building',
  address: '15 Old Town London EC1 4AB',
  description: 'A charming loft in a historic building with exposed brick walls and wooden beams. Perfect for a romantic getaway.',
  price_per_night: 90,
  number_of_guests: 2,
  image_url: "/images/5.jpeg"
)

puts "Finished! Created #{Flat.count} flats."
