require_relative 'lib/database_connection'
require_relative 'lib/book_repository'

DatabaseConnection.connect('book_store')

result = BookRepository.new

result.all.each do |record|
  p record
end
