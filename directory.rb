
#first we print the list of students
students = [
 "Dr. Hannibal Lecter",
 "Nurse Ratched",
 "Darth Vader",
 "Michael Corleone",
 "Alex DeLarge",
 "The Wicked Witch of the West",
 "Teminator",
 "Freddy Krueger",
 "The Joker",
 "Joffrey Baratheon",
 "Norman Bates"
]
# and then print them
puts "The students of Villains Academy"
puts "-------------"
students.each do |student|
puts student
end

# finally, we print the total
print "Overall, we have #{students.count} great students"
