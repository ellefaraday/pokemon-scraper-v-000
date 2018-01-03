class Pokemon
  attr_accessor :db, :name, :type

  def initialize(name:, type:, db:)
    @name = name
    @type = type
    @db = db
  end

end
