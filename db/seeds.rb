# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

web_dev_technologies = [
  'HTML',
  'CSS',
  'JavaScript',
  'React',
  'Angular',
  'Vue.js',
  'Node.js',
  'Express.js',
  'Ruby on Rails',
  'Django',
  'Flask',
  'ASP.NET',
  'Laravel',
  'Symfony',
  'CodeIgniter',
  'CakePHP',
  'Spring',
  'Struts',
  'Hibernate',
  'JSP'
]

web_dev_technologies.each do |tech_name|
  Technology.create(name: tech_name)
end
