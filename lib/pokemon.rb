class Pokemon
  attr_accessor :db, :name, :type, :id

  def initialize(id: 'id', name: 'name', type:'type', db: 'db')
    @id = id
    @name = name
    @type = type
    @db = db
  end

end
