class Dog

  attr_accessor :name, :breed, :id

  def initialize(attr_hash)
    attr_hash.each do |k, v|
      self.send("#{k}=", v)
    end
  end

  def self.create_table
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS dogs (
          id INTEGER PRIMARY KEY,
          name TEXT,
          breed TEXT
      )
    SQL

    DB[:conn].execute(sql)
  end

  def self.drop_table
    sql = <<-SQL
      DROP TABLE IF EXISTS dogs
    SQL
  end

  def save

  end

  def self.create

  end

  def self.new_from_db

  end

  def self.find_by_id

  end

  def self.find_or_create_by

  end

  def self.find_by_name

  end

  def update

  end

end
