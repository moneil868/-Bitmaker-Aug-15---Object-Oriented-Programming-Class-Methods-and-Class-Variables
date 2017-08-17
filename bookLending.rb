# Create a class called Book.
class Book

  # Your class should have two class variables: @@on_shelf and @@on_loan. Both should start as empty arrays. @@on_shelf will contain the collection of book objects that are available to be lent out and @@on_loan will contain the collection of books that are currently being borrowed.
  @@on_shelf = []
  @@on_loan = []

  # Your class will also need reader and writer methods for due_date.
  def self.get_due_date
  end

  def self.set_due_date
  end

  # a class method create
  def self.create(title, author, isbn)
    # This class method is how new books are added to the library. This method should call Book.new(...),add the new book object to @@on_shelf, and then return the new book.
    new_book = Book.new(title, author, isbn)
    @@on_shelf << new_book
    return new_book
  end

  # a class method current_due_date
  def self.currnet_due_date
  end

  # a class method overdue_books
  def self.overdue_books
  end

  # a class method browse
  def self.browse
      # This class method should return a random book from @@on_shelf (you may need to consult the Array docs to figure out how to do this).

  end

  # a class method available
  def self.available
    # This class method should return the value of @@on_shelf.
    @@on_shelf
  end

  # a class method borrowed
  def self.borrowed
    # This class method should return the value of @@on_loan.
    @@on_loan
  end



  # an instance method initialize
    # This instance method makes a new book object. It should initialize a book's title, author, and isbn.
  def initialize(title, author, isbn)
    @title = title
    @author = author
    @isbn = isbn

  end

  # an instance method borrow
  def borrow
    # This instance method is how a book is taken out of the library. Otherwise, use current_due_date to set the due_date of the book and move it from the collection of available books to the collection of books on loan, then return true.

    # This method should use lent_out? to check if the book is already on loan,


  end

  # an instance method return_to_library
  def return_to_library
  end

  # an instance method lent_out
  def lent_out?
    puts @@on_shelf



  end

end


sister_outsider = Book.create("Sister Outsider", "Audre Lorde", "9781515905431")
aint_i = Book.create("Ain't I a Woman?", "Bell Hooks", "9780896081307")
if_they_come = Book.create("If They Come in the Morning", "Angela Y. Davis", "0893880221")

# puts Book.browse.inspect
# puts Book.browse.inspect
# puts Book.browse.inspect
# puts Book.available.inspect
# puts Book.borrowed.inspect
puts sister_outsider.lent_out?
# puts sister_outsider.borrow
