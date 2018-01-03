class Pokemon
  attr_accessor :db, :name, :type, :id

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
    name = db.execute("SELECT name FROM pokemon WHERE id = ?",id)
    type = db.execute("SELECT type FROM pokemon WHERE id = ?",id)
    Pokemon.new(id: id, name: name, type: type, db: db)
  end

end
