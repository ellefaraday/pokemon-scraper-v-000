require 'pry'
class Pokemon
  attr_accessor :db, :name, :type, :id, :hp

  @@counter = 1

  def initialize(id: 'id', name: 'name', type:'type', db: 'db')
    @id = id
    @name = name
    @type = type
    @db = db
    @@counter += 1
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon(name, type) VALUES ( ?, ?)",name, type)
  end

  def self.find(id, db)
    details = db.execute("SELECT name, type FROM pokemon WHERE id = ?",id)
    Pokemon.new(id: id, name: details[0][0], type: details[0][1], db: db)
  end

  def alter_hp(hp, db)
    db.execute('UPDATE pokemon SET hp = ? WHERE name = ?',hp, self.name)
    self.hp = hp
  end

end
