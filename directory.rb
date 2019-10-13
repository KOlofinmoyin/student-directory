
#first we print the list of students
students = [
     {name: "Dr. Hannibal Lecter", cohort: :november, hobbies: "swimming", country_of_birth: "Germany", height: "6.0"},
     {name: "Nurse Ratched", cohort: :november, hobbies: "swimming", country_of_birth: "Germany", height: "6.0"},
     {name: "Darth Vader", cohort: :november, hobbies: "swimming", country_of_birth: "Germany", height: "6.0"},
     {name: "Michael Corleone", cohort: :november, hobbies: "swimming", country_of_birth: "Germany", height: "6.0"},
     {name: "Alex DeLarge", cohort: :november, hobbies: "swimming", country_of_birth: "Germany", height: "6.0"},
     {name: "The Wicked Witch of the West", cohort: :november, hobbies: "swimming", country_of_birth: "Germany", height: "6.0"},
     {name: "Teminator", cohort: :november, hobbies: "swimming", country_of_birth: "Germany", height: "6.0"},
     {name: "Freddy Krueger", cohort: :november, hobbies: "swimming", country_of_birth: "Germany", height: "6.0"},
     {name: "The Joker", cohort: :november, hobbies: "swimming", country_of_birth: "Germany", height: "6.0"},
     {name: "Joffrey Baratheon", cohort: :november, hobbies: "swimming", country_of_birth: "Germany", height: "6.0"},
     {name: "Norman Bates", cohort: :november, hobbies: "swimming", country_of_birth: "Germany", height: "6.0"},
]

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  i = 1
  linewidth = 5
  students_copy = students.clone
  until students_copy.empty?
  student = students_copy.pop
    if student[:name].start_with?('p') and student[:name].length < 12 
    puts ("#{i}. #{student[:name]} (#{student[:cohort]} cohort) #{student[:hobbies]} #{student[:country_of_birth]} #{student[:height].center(4,"i")}")
    i += 1
    end
  end
end

def input_students
  puts "Please enter the names of the students"
  
  # create an empty array
  students = []
  #gets the first name
  name = gets.chomp

  puts "Please enter the names of the student cohort"
  cohort = gets.chomp
  
  puts "To finish, just hit return twice"
  
  # while the name is not empty, repeat this code.
  while !name.empty? do
      #add the student hash to the array
      students << {name: name, cohort: cohort, hobbies: "swimming", country_of_birth: "Germany", height: "6.0"}
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

