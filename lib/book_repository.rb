require_relative 'book'
class BookRepository

    def all
      books = []
  
      sql = 'SELECT id, title, author_name FROM books;'
      results = DatabaseConnection.exec_params(sql, [])
      results.each do |record|
          book = Book.new
          book.id = record['id']
          book.title = record['title']
          book.author_name = record['author_name']
          books << book
      end 
      return books
    end
  
end