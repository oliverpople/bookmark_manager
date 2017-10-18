require 'data_mapper'
require 'dm-postgres-adapter'


DataMapper::Logger.new($stdout, :debug)
DataMapper.setup(:default, 'postgres:/database_play')

class Student
  include DataMapper::Resource

  property :id, Serial
  property :name, String
end

DataMapper.finalize
DataMapper.auto_upgrade!

student = Student.create(:name => 'Alexander')
puts student.name

# student.destroy
