
#first we print the list of students
students = [
     {name: "Dr. Hannibal Lecter", cohort: :november},
     {name: "Nurse Ratched", cohort: :november},
     {name: "Darth Vader", cohort: :november},
     {name: "Michael Corleone", cohort: :november},
     {name: "Alex DeLarge", cohort: :november},
     {name: "The Wicked Witch of the West", cohort: :november},
     {name: "Teminator", cohort: :november},
     {name: "Freddy Krueger", cohort: :november},
     {name: "The Joker", cohort: :november},
     {name: "Joffrey Baratheon", cohort: :november},
     {name: "Norman Bates", cohort: :november},
]

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  i = 1
  students.each do |student|
    puts "#{i}. #{student[:name]} (#{student[:cohort]} cohort)"
    i += 1
  end
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  #gets the first name
  name = gets.chomp
  # while the name is not empty, repeat this code.
  while !name.empty? do
      #add the student hash to the array
      students << {name: name, cohort: :november}
      puts "Now we have #{students.count} students"
      # get another name from the user
      name = gets.chomp
  end
  #return the array of students
  students
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)

