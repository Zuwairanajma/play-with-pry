# require_relative 'classroom'
# require_relative 'book'
# require_relative 'rental'
# require_relative 'person'
# require_relative 'student'
# require_relative 'teacher'

# # class App
# #   attr_reader :books, :person, :rentals, :classroom

# #   def initialize
# #     @books = []
# #     @person = []
# #     @rentals = []
# #   end

# #   # Methods to list books and people
# #   def list_all_books()
# #     puts 'All Books:'
# #     @books.each do |book|
# #       puts "Title: #{book.title}, Author: #{book.author}"
# #     end
# #   end

# #   def list_all_people()
# #     puts 'All People:'
# #     @person.each do |person|
# #       puts "#{person.class}, Name: #{person.name}, age: #{person.age}"

# #       if person.instance_of?(Teacher)
# #         puts "Specialization: [#{person.specialization}]"
# #       else
# #         puts "Permission: #{person.parent_permission}"
# #       end
# #     end
# #   end

# #   def create_person()
# #     # puts 'press 1 for student, 2 for teacher'
# #     puts 'Do you want to create a student (1) or a teacher (2)? [Input the number]:'
# #     is_student = gets.chomp.to_i
# #     puts 'Enter person name:'
# #     name = gets.chomp
# #     puts 'Enter person age:'
# #     age = gets.chomp.to_i

# #     case is_student
# #     when 1
# #       puts 'Does student have parent permission [Y/N]: '
# #       permission = gets.chomp.downcase == 'y'
# #       student = Student.new(1, age, permission, name)
# #       @person << student

# #     when 2
# #       print 'What is the teachers specialization: '
# #       specialization = gets.chomp
# #       teacher = Teacher.new(age, specialization, name)
# #       @person << teacher
# #     end

# #     puts 'Person created successfully.'
# #   end

# #   # Creating book method

# #   def create_book
# #     puts 'Enter book title:'
# #     title = gets.chomp
# #     puts 'Enter book author:'
# #     author = gets.chomp

# #     book = Book.new(title, author)
# #     @books << book
# #     puts 'Book created successfully.'
# #   end

# #   # Creating rental method

# #   def create_rental
# #     puts 'select a book by number'
# #     @books.each_with_index do |book, index|
# #       puts "#{index} - Title: #{book.title}, Author: #{book.author}"
# #     end

# #     book_index = gets.chomp.to_i

# #     puts 'select a person by number'
# #     @person.each_with_index do |person, index|
# #       puts "#{index} - #{person.class}, Name: #{person.name}"
# #     end

# #     person_index = gets.chomp.to_i
# #     puts 'Enter date:'
# #     date = gets.chomp

# #     rental = Rental.new(date, @books[book_index], @person[person_index])
# #     @rentals << rental
# #     puts 'Rental created successfully.'
# #   end

# #   # Listing rentals method
# #   def list_rentals_for_person
# #     puts 'All Rentals:'
# #     @rentals.each do |rental|
# #       puts "id of person: #{rental.person.id}"
# #       puts "Name: #{rental.person.name}"
# #     end

# #     puts 'Select ID:'
# #     id = gets.chomp.to_i

# #     rentals_found = @rentals.select { |rental| rental.person.id == id }

# #     if rentals_found.empty?
# #       puts 'No rentals found for the specified ID.'
# #     else
# #       puts 'All Rentals for this ID:'
# #       rentals_found.each do |rental|
# #         puts "Date: #{rental.date}, Title: #{rental.book.title}, Author: #{rental.book.author}"
# #       end
# #     end
# #   end

# # def load_all_data
# #   @books = load_books_from_json
# #   @people = load_people_from_json
# #   @rentals = load_rentals_from_json
# # end
# # end
# #   def save_data_to_json(data, filename)
# #     File.write("#{filename}.json", JSON.dump(data))
# #   end

# #   def load_data_from_json(filename)
# #     actual_filename = "#{filename}.json"
# #     return [] unless File.exist?(actual_filename)

# #     JSON.parse(File.read(actual_filename))
# #   end

# #   def save_books_to_json(data)
# #     save_data_to_json(data, 'books')
# #   end

# #   def load_books_from_json
# #     load_data_from_json('books')
# #   end

# #   def save_people_to_json(data)
# #     save_data_to_json(data, 'people')
# #   end

# #   def load_people_from_json
# #     load_data_from_json('people')
# #   end

# #   def save_rentals_to_json(data)
# #     save_data_to_json(data, 'rentals')
# #   end

# #   def load_rentals_from_json
# #     load_data_from_json('rentals')
# #   end
# # app.rb
# require 'json'  # Add this line at the beginning

# class App
#   attr_reader :books, :people, :rentals

#   def initialize
#     @books = []
#     @people = []
#     @rentals = []
#   end

#   # Methods to list books and people
#   def list_all_books
#     puts 'All Books:'
#     @books.each do |book|
#       puts "Title: #{book.title}, Author: #{book.author}"
#     end
#   end

#   def list_all_people
#     puts 'All People:'
#     @people.each do |person|
#       puts "#{person.class}, Name: #{person.name}, age: #{person.age}"

#       if person.instance_of?(Teacher)
#         puts "Specialization: [#{person.specialization}]"
#       else
#         puts "Permission: #{person.parent_permission}"
#       end
#     end
#   end

#   def create_person
#     puts 'Do you want to create a student (1) or a teacher (2)? [Input the number]:'
#     is_student = gets.chomp.to_i
#     puts 'Enter person name:'
#     name = gets.chomp
#     puts 'Enter person age:'
#     age = gets.chomp.to_i

#     case is_student
#     when 1
#       puts 'Does student have parent permission [Y/N]: '
#       permission = gets.chomp.downcase == 'y'
#       student = Student.new(1, age, permission, name)
#       @people << student

#     when 2
#       print 'What is the teachers specialization: '
#       specialization = gets.chomp
#       teacher = Teacher.new(age, specialization, name)
#       @people << teacher
#     end

#     puts 'Person created successfully.'

#     save_data_to_json
#   end

#   # Creating book method
#   def create_book
#     puts 'Enter book title:'
#     title = gets.chomp
#     puts 'Enter book author:'
#     author = gets.chomp

#     book = Book.new(title, author)
#     @books << book
#     puts 'Book created successfully.'

#     save_data_to_json
#   end

#   # Creating rental method
#   def create_rental
#     puts 'Select a book by number'
#     @books.each_with_index do |book, index|
#       puts "#{index} - Title: #{book.title}, Author: #{book.author}"
#     end

#     book_index = gets.chomp.to_i

#     puts 'Select a person by number'
#     @people.each_with_index do |person, index|
#       puts "#{index} - #{person.class}, Name: #{person.name}"
#     end

#     person_index = gets.chomp.to_i
#     puts 'Enter date:'
#     date = gets.chomp

#     rental = Rental.new(date, @books[book_index], @people[person_index])
#     @rentals << rental
#     puts 'Rental created successfully.'

#     save_data_to_json
#   end

#   # Listing rentals method
#   def list_rentals_for_person
#     puts 'All Rentals:'
#     @rentals.each do |rental|
#       puts "ID of person: #{rental.person.id}"
#       puts "Name: #{rental.person.name}"
#     end

#     puts 'Select ID:'
#     id = gets.chomp.to_i

#     rentals_found = @rentals.select { |rental| rental.person.id == id }

#     if rentals_found.empty?
#       puts 'No rentals found for the specified ID.'
#     else
#       puts 'All Rentals for this ID:'
#       rentals_found.each do |rental|
#         puts "Date: #{rental.date}, Title: #{rental.book.title}, Author: #{rental.book.author}"
#       end
#     end
#   end

#   def load_all_data
#     load_books_from_json
#     load_people_from_json
#     load_rentals_from_json
#   end

#   def save_data_to_json
#     save_books_to_json
#     save_people_to_json
#     save_rentals_to_json
#   end

#   def save_data_to_json
#     File.write('books.json', JSON.dump(@books))
#     File.write('people.json', JSON.dump(@people))
#     File.write('rentals.json', JSON.dump(@rentals))
#   end

#   def load_data_from_json(filename)
#     actual_filename = "#{filename}.json"
#     return [] unless File.exist?(actual_filename)

#     JSON.parse(File.read(actual_filename))
#   end

#   def save_books_to_json
#     File.write('books.json', JSON.dump(@books))
#   end

#   def load_books_from_json
#     @books = load_data_from_json('books')
#   end

  
#   def save_people_to_json
#     people_data = @people.map(&:to_h)

#     File.write('people.json', JSON.dump(people_data))
#   end

#   def load_people_from_json
#     people_data = load_data_from_json('people')

#     @people = people_data.map do |person_info|
#       case person_info['type']
#       when 'Student'
#         Student.new(person_info['classroom'], person_info['age'], person_info['parent_permission'], person_info['name'])
#       when 'Teacher'
#         Teacher.new(person_info['age'], person_info['specialization'], person_info['name'], parent_permission: person_info['parent_permission'])
#       else
#         Person.new(person_info['age'], person_info['parent_permission'], person_info['name'])
#       end
#     end
#   end
#   def save_rentals_to_json
#     File.write('rentals.json', JSON.dump(@rentals))
#   end

#   def load_rentals_from_json
#     @rentals = load_data_from_json('rentals')
#   end
# end

