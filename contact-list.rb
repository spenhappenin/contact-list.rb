require 'pry'

contact_list = ["Michael Scott", "Ronald Swanson", "Frank Reynolds", "Cosmo Kramer"]

puts "What is your name?"
print "> "
@name = gets.strip
puts "Welcome to the ruby contact list, #{@name}!"

def main_menu
  # puts "-" * 20
  puts ""
  puts "--- Contact List Menu ---"
  puts "1) All Contacts"
  puts "2) Create Contact"
  puts "3) Modify Contact"
  puts "4) Remove Contact"
  puts "5) Quit"
  puts ""
  # puts "*" * 20
  print "> "
  main_menu_options
end

def main_menu_options
  main_menu_input = gets.strip.to_i
  puts ""
  case main_menu_input
    when 1
      all_contacts_menu
    when 2
      create_contact_menu
    when 3
      modify_contact_menu
    when 4
      remove_contact_menu
    when 5
      quit_contact_menu
    else
      puts "Please insert valid input!"
      main_menu
    end
end

def all_contacts_menu
  puts "Here are all the listed contacts:"
  contact_list.each_with_index do |name, i|
    puts "#{i + 1}. #{name}"
  end
  main_menu
end
      
def create_contact_menu
  puts "What is the new contact name?"
  new_contact_input = gets.strip
  contact_list << new_contact_input
  puts "#{new_contact} has been added!"
  main_menu
end


def modify_contact_menu
  puts "Which contact do you wish to modify?"
  contact_list.each_with_index do |name, i|
    puts "#{i + 1}. #{name}"
  end
  puts ""
  print "> "
  modified_contact_input = gets.strip.to_i - 1
  puts ""
  puts "You want to modify #{contact_list[modify_contact_input]}"
  puts "What is the new name?"
  print "> "
  new_name_input = gets.strip
  contact_list[modified_contact_input] = new_name_input
  main_menu
end

def remove_contact_menu
  puts "Which contact do you want to remove?"
  contact_list.each_with_index do |name, i|
    puts "#{i + 1}. #{name}"
  end
  puts ""
  print "> "
  remove_contact_input = gets.strip.to_i - 1
  puts ""
  puts "Are you sure you want to remove #{contact_list[remove_contact_input]}?"
  puts "1) Yes"
  puts "2) No"
  puts ""
  print "> "
  # move to 97 case
  remove_question_input = gets.strip.to_i
  puts ""
  case remove_question_input
    when 1
      puts "#{contact_list[remove_contact_input]} has been removed."
      contact_list.delete_at(remove_contact_input)
    when 2
      puts "#{contact_list[remove_contact_input]} was not removed"
    else
      puts "Invalid answer, please try again!"
      remove_contact_menu
    end
    main_menu
end

def quit_contact_menu
   puts "#{@user_name}, thank you for using ruby contact list!"
   puts "Have a lovely day!"
   puts ""
   exit
end


main_menu