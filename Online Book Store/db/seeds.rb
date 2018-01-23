#This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.delete_all
Product.create!(name: 'C Programming Language',
  description:
    %{
      One of the best-selling programming books published in the last fifty years, "K&R" has been called everything from the "bible" to "a landmark in computer science" and it has influenced generations of programmers. 
    },
  image: '1.jpg',
  price: 38.00)
#. . .

Product.create!(name: 'The Ruby Programming Language',
  description:
    %{
      The Ruby Programming Language is the authoritative guide to Ruby and provides comprehensive coverage of versions 1.8 and 1.9 of the language. 
    },
  image: '2.jpg',
  price: 52.25)
#. . .

Product.create!(name: 'Web Sites: Do it yourself for Dummies',
  description:
    %{
      A step-by-step guide to creating your first Web site
      Everybody's building cool web sites, but how? Web Sites Do-It-Yourself For Dummies, 2nd Edition, shows you how, with simple, step-by-step instruction that will build your confidence as you build your site.
    },
  image: '3.jpg',
  price: 38.95)
# . . .

Product.create!(name: 'CSS Pocket Reference',
  description:
    %{
      When you're working with CSS and need a quick answer, CSS Pocket Reference delivers. This handy, concise book provides all of the essential information you need to implement CSS on the fly. 
    },
  image: '4.jpg',
  price: 43.00)
#. . .

Product.create!(name: 'HTML & CSS: The Complete Reference, Fifth Edition',
  description:
    %{
      Written by web development expert, the fifth edition of this trusted resource has been thoroughly revised and reorganized to address HTML5, the revolutionary new Web standard. The book covers all the elements supported in today's Web browsers--from the standard (X)HTML tags to the archaic and proprietary tags that may be encountered.
    },
  image: '5.jpg',
  price: 60.50)


