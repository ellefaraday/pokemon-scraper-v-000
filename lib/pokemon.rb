class Pokemon
  attr_accessor :db, :name, :type

  def initialize(id: 'id', name: 'name', type:'type', db: 'db')
    @name = name
    @type = type
    @db = db
  end

end
