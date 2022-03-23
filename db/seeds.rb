# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Master envelopes
# maybe default a world garden and god user for all plants and users to belong to?
# Garden.create(garden_name: "Garden of God", start_date: Time.now.strftime("%Y-%m-%d"), greenhouse: false, public: false, user_id: User.first.id, plant_id: Plant.first.id)
# User.create(email: "god", password: "god", password_confirmation: "god")
# Plant.create(sci_name: "first plant ever", common_name: "first plant ever", green_seed_start: Time.now.strftime("%Y-%m-%d"), seed_start: Time.now.strftime("%Y-%m-%d"), begin_prod: Time.now.strftime("%Y-%m-%d"), end_prod: Time.now.strftime("%Y-%m-%d"), green_end_prod: Time.now.strftime("%Y-%m-%d"))#, garden_id: Garden.first.id)
# Garden.create(garden_name: "Garden of God", start_date: Time.now.strftime("%Y-%m-%d"), greenhouse: false, public: false, user_id: User.first.id, plant_id: Plant.first.id)
# Plant.create(sci_name: "first plant ever", common_name: "first plant ever", green_seed_start: Time.now.strftime("%Y-%m-%d"), seed_start: Time.now.strftime("%Y-%m-%d"), begin_prod: Time.now.strftime("%Y-%m-%d"), end_prod: Time.now.strftime("%Y-%m-%d"), green_end_prod: Time.now.strftime("%Y-%m-%d"), garden_id: 1)

User.create(email: "daniel@example.com", password: "password", password_confirmation: "password")

Plant.create(sci_name: "Beans", common_name: "Beans", green_seed_start: "2022-02-15", seed_start: "2022-03-15", begin_prod: "180", end_prod: "210", green_end_prod: "240")#, garden_id: Garden.first.id)
Plant.create(sci_name: "Beets", common_name: "Beets", green_seed_start: "2022-01-15", seed_start: "2022-02-15", begin_prod: "75", end_prod: "90", green_end_prod: "90")#, garden_id: Garden.first.id)
Plant.create(sci_name: "Broccoli", common_name: "Broccoli", green_seed_start: "2022-01-01", seed_start: "2022-02-01", begin_prod: "75", end_prod: "105", green_end_prod: "105")#, garden_id: Garden.first.id)
Plant.create(sci_name: "Brussel Sprouts", common_name: "Brussel Sprouts", green_seed_start: "2022-03-01", seed_start: "2022-03-01", begin_prod: "120", end_prod: "150", green_end_prod: "150")#, garden_id: Garden.first.id)
# Plant.create(sci_name: "", common_name: "", green_seed_start: "", seed_start: "", begin_prod: "", end_prod: "", green_end_prod: "")
# Plant.create(sci_name: "", common_name: "", green_seed_start: "", seed_start: "", begin_prod: "", end_prod: "", green_end_prod: "")
# Plant.create(sci_name: "", common_name: "", green_seed_start: "", seed_start: "", begin_prod: "", end_prod: "", green_end_prod: "")
# Plant.create(sci_name: "", common_name: "", green_seed_start: "", seed_start: "", begin_prod: "", end_prod: "", green_end_prod: "")
# Plant.create(sci_name: "", common_name: "", green_seed_start: "", seed_start: "", begin_prod: "", end_prod: "", green_end_prod: "")
# Plant.create(sci_name: "", common_name: "", green_seed_start: "", seed_start: "", begin_prod: "", end_prod: "", green_end_prod: "")
# Plant.create(sci_name: "", common_name: "", green_seed_start: "", seed_start: "", begin_prod: "", end_prod: "", green_end_prod: "")
#plantlist{[
#    {sci_name: "", common_name: "",green_seed_start: "", seed_start: "", begin_prod: "", end_prod: "", green_end_prod: "" },
#    {sci_name: "", common_name: "",green_seed_start: "", seed_start: "", begin_prod: "", end_prod: "", green_end_prod: "" },
#    {sci_name: "", common_name: "",green_seed_start: "", seed_start: "", begin_prod: "", end_prod: "", green_end_prod: "" },
#    {sci_name: "", common_name: "",green_seed_start: "", seed_start: "", begin_prod: "", end_prod: "", green_end_prod: "" },
#    {sci_name: "", common_name: "",green_seed_start: "", seed_start: "", begin_prod: "", end_prod: "", green_end_prod: "" },
#    {sci_name: "", common_name: "",green_seed_start: "", seed_start: "", begin_prod: "", end_prod: "", green_end_prod: "" },
#    {sci_name: "", common_name: "",green_seed_start: "", seed_start: "", begin_prod: "", end_prod: "", green_end_prod: "" },
#    {sci_name: "", common_name: "",green_seed_start: "", seed_start: "", begin_prod: "", end_prod: "", green_end_prod: "" },
#    ]}
#
#Plant.create(@plantlist.attributes.each do | attr_name, attr_value |
#
#end)

    10.times do |x|
        Garden.create(garden_name: "Garden #{x}", start_date: Time.now.strftime("%Y-%m-%d"), greenhouse: false, public: false, user_id: User.first.id, plant_id: Plant.first.id)
    end

    obj = {
        name: "John",
        age: 10
    }
