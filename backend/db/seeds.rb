# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Path.destroy_all
Town.destroy_all

golden = Town.create(name: "Golden")
boulder = Town.create(name: "Boulder")
idaho_springs = Town.create(name: "Idaho Springs")
evergreen = Town.create(name: "Evergreen")
nederland = Town.create(name: "Nederland")

Path.create(
    town_id: idaho_springs.id,
    destination: "Evergreen",
    overview: "Route 103 to Route 74",
    description: "A beautiful ride that goes over 10,000 feet",
    difficulty: "Moderate",
    url: '<iframe src="https://www.google.com/maps/embed?pb=!1m32!1m12!1m3!1d98250.37959658928!2d-105.53709118668873!3d39.68741041257327!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m17!3e0!4m5!1s0x876ba525c91b6e55%3A0xfb9e9ae2915f3f68!2sIdaho%20Springs%2C%20CO!3m2!1d39.742488099999996!2d-105.5136081!4m3!3m2!1d39.6643919!2d-105.60220869999999!4m5!1s0x876b7531b132cca1%3A0x83b795e5a2896558!2sEvergreen%2C%20CO!3m2!1d39.6333213!2d-105.3172146!5e0!3m2!1sen!2sus!4v1583275785681!5m2!1sen!2sus" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>',
)

Path.create(
    town_id: idaho_springs.id,
    destination: "Evergreen",
    overview: "Route 151 to Route 103 to Route 74",
    description: "Difficult climb on an unsealed road with outstanding views",
    difficulty: "Hard",
    url: '<iframe src="https://www.google.com/maps/embed?pb=!1m32!1m12!1m3!1d49125.311338801!2d-105.45228188259996!3d39.687239590773856!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m17!3e0!4m5!1s0x876ba525c91b6e55%3A0xfb9e9ae2915f3f68!2sIdaho%20Springs%2C%20CO!3m2!1d39.742488099999996!2d-105.5136081!4m3!3m2!1d39.707442!2d-105.495909!4m5!1s0x876b7531b132cca1%3A0x83b795e5a2896558!2sEvergreen%2C%20CO!3m2!1d39.6333213!2d-105.3172146!5e0!3m2!1sen!2sus!4v1583276968638!5m2!1sen!2sus" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>',

)

Path.create(
    town_id: idaho_springs.id,
    destination: "Evergreen",
    overview: "Route 151 to Route 103 to Route 74",
    description: "Simple ride with fresh air",
    difficulty: "Easy",
    url: '<iframe src="https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d49125.311338801!2d-105.45228188259996!3d39.687239590773856!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e0!4m5!1s0x876ba525c91b6e55%3A0xfb9e9ae2915f3f68!2sIdaho%20Springs%2C%20CO!3m2!1d39.742488099999996!2d-105.5136081!4m5!1s0x876b7531b132cca1%3A0x83b795e5a2896558!2sEvergreen%2C%20CO!3m2!1d39.6333213!2d-105.3172146!5e0!3m2!1sen!2sus!4v1583289574239!5m2!1sen!2sus" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>',
    time: 23,
    distance: 23
)

Path.create(
    town_id: boulder.id,
    destination: "Nederland",
    overview: "Boulder Canyon Drive",
    description: "Simple ride with fresh air",
    difficulty: "Easy",
    url: '<iframe src="https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d97820.3765672918!2d-105.46073901967246!3d39.9886357185686!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e0!4m5!1s0x876b8d4e278dafd3%3A0xc8393b7ca01b8058!2sBoulder%2C%20CO!3m2!1d40.014985599999996!2d-105.27054559999999!4m5!1s0x876bc6c44e45525b%3A0x8d645c98aaec4cb2!2sNederland%2C%20CO!3m2!1d39.9613759!2d-105.5108312!5e0!3m2!1sen!2sus!4v1583354477857!5m2!1sen!2sus" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>',

)

Path.create(
    town_id: nederland.id,
    destination: "Boulder",
    overview: "Boulder Canyon Drive",
    description: "Simple ride with fresh air",
    difficulty: "Easy",
    url: '<iframe src="https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d97820.77008176928!2d-105.46073901968083!3d39.988360918604485!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e0!4m5!1s0x876bc6c44e45525b%3A0x8d645c98aaec4cb2!2sNederland%2C%20CO!3m2!1d39.9613759!2d-105.5108312!4m5!1s0x876b8d4e278dafd3%3A0xc8393b7ca01b8058!2sBoulder%2C%20CO!3m2!1d40.014985599999996!2d-105.27054559999999!5e0!3m2!1sen!2sus!4v1583354734839!5m2!1sen!2sus" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>',

)


# t.references :town, foreign_key: true
# t.string :destination
# t.string :overview
# t.string :description
# t.string :difficulty
# t.string :url
# t.integer :time
# t.integer :distance