class Contact

  @@counter = 0

  attr_accessor :notes, :name, :id

  def initialize
    @id = Contact.get_id
  end

  def to_s
    "ID: #{@id} Name: #{@name}\nNotes:#{@notes}"
  end

  def self.get_id
    @@counter += 1
    @@counter 
  end

end

