require './rolodex'
require './contact'

class Runner

  def initialize
    @rolodex = Rolodex.new
  end
    
  def main_menu
    puts "Amazing CRM"
    puts "1. Add a contact"
    puts "2. See all Contacts"
    puts "3. Remove a Contact"    
    puts "4. Edit Contact"
    puts "5. Add Notes to Contact"
    puts "0. to Exit"
  end
  
  def add_contact
    puts "Enter Customer's Name:"
    name = gets.chomp
    @rolodex.create_contact(name)
  end

  def show_contacts
    puts "All Contacts"
    @rolodex.show_contacts
    puts ""
    puts "------"
  end

  def remove_contact
    puts "Who woould you like to kill?"
    id = gets.chomp.to_i
    @rolodex.remove_contact(id)
  end

  def edit_contact
    puts "Who would you like to change?"
    id = gets.chomp.to_i
    puts "Enter New Contact Name"
    new_name = gets.chomp
    @rolodex.edit_contact(id, new_name)
  end

  def add_notes
    puts "Which contact would you like to add a note too?"
    id = gets.chomp.to_i
    puts "Add the Note:"
    notes = gets.chomp
    @rolodex.add_notes(id,notes)
  end

  def run
    done = false
    while !done
      main_menu
      input = gets.chomp.to_i   
      if input == 0
        done = true
      elsif input == 1
        add_contact
      elsif input == 2
        show_contacts
      elsif input == 3
        remove_contact    
      elsif input == 4
        edit_contact
      elsif input == 5
        add_notes        
      end
    end
  end
end

runner = Runner.new
runner.run

