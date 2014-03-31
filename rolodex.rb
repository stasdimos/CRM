class Rolodex

  def initialize
    @contacts =[]
    @notes = []
  end

  def create_contact(name)
    contact = Contact.new
    contact.name = name
    @contacts << contact
  end

  def add_notes (id, new_note)
    @contacts.each do |contact|
      if contact.id == id
        contact.notes = new_note
      end
    end
  end

  def show_contacts
    @contacts.each do |contact|
      puts contact
    end    
  end

  def show_notes
    @contacts.each do |contact|
      puts contact.notes
    end
  end

  def remove_contact(id)
    @contacts.delete_if {|c| c.id == id}
  end

  def edit_contact(id, new_name)
    @contacts.each do |contact|
      if contact.id == id
        contact.name = new_name
      end
    end
  end


end




