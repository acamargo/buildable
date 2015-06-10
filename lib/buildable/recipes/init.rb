module Buildable::Recipe
  recipe :init do
    puts "Creating .buildable.yml"
    Buildable::FileMaker.template '.buildable.yml'
    puts "Creating .env"
    Buildable::FileMaker.template '.env'
    puts "Creating Procfile"
    Buildable::FileMaker.template 'Procfile'

    puts "Please edit all files above to setup your application"
  end
end