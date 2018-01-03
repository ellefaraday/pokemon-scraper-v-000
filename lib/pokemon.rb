class Pokemon
  attr_accessor :db, :name, :type, :id

  @@counter = 0

  def initialize(id: 'id', name: 'name', type:'type', db: 'db')
    @id = id
    @name = name
    @type = type
    @db = db
    @@counter += 1
  end

  def self.save(name, type, db)
    self.new(id: @@counter, name: name, type: type, db: db)
  end

end
