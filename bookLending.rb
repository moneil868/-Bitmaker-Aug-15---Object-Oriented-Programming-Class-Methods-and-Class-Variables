# Create a class called Book.
class Book

  # Your class should have two class variables: @@on_shelf and @@on_loan. Both should start as empty arrays. @@on_shelf will contain the collection of book objects that are available to be lent out and @@on_loan will contain the collection of books that are currently being borrowed.
  @@on_shelf = []
  @@on_loan = []
  @@due_date = Time.now

  # Your class will also need reader and writer methods for due_date.
  def self.due_date
    @@due_date
  end

  def self.due_date=(due_date)

  end

  # a class method create
  def self.create(title, author, isbn)
    # This class method is how new books are added to the library. This method should call Book.new(...),add the new book object to @@on_shelf, and then return the new book.
    new_book = Book.new(title, author, isbn)
    @@on_shelf << new_book
    return new_book
  end

  # a class method current_due_date
  def self.current_due_date
    Time.now + 6000
  end

  # a class method overdue_books
  def self.overdue_books
    @@on_loan.each do |book|
      if @@due_date < Time.now
        return book
      end
    end
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

  def due_date
    @due_date
  end


  # an instance method initialize
    # This instance method makes a new book object. It should initialize a book's title, author, and isbn.
  def initialize(title, author, isbn)
    @title = title
    @author = author
    @isbn = isbn

    @due_date = @@due_date
  end

  # an instance method borrow
  def borrow
    # This instance method is how a book is taken out of the library. Otherwise, use current_due_date to set the due_date of the book and move it from the collection of available books to the collection of books on loan, then return true.
    # This method should use lent_out? to check if the book is already on loan,
    if self.lent_out? == false
      @@due_date = Book.current_due_date
      @@on_shelf.delete(self)
      @@on_loan << self
      return true
    else
      return false
    end

  end

  # an instance method return_to_library
  def return_to_library

    if self.lent_out?
      puts @@on_loan.delete(self)
      @@on_shelf << self
      @@due_date = nil
      return true
    else
      return false
    end

  end

  # an instance method lent_out
  def lent_out?
    @@on_loan.include?(self)
  end

  def get_book_name
    @title
  end


end


sister_outsider = Book.create("Sister Outsider", "Audre Lorde", "9781515905431")
aint_i = Book.create("Ain't I a Woman?", "Bell Hooks", "9780896081307")
if_they_come = Book.create("If They Come in the Morning", "Angela Y. Davis", "0893880221")
puts Book.borrowed.inspect # []
puts sister_outsider.lent_out? # false
puts sister_outsider.borrow # true
puts sister_outsider.lent_out? # true
puts sister_outsider.borrow # false
puts sister_outsider.due_date # 2017-02-25 20:52:20 -0500 (this value will be different for you)
puts Book.available.inspect # [#<Book:0x00562314676118 @title="Ain't I a Woman?", @author="Bell Hooks", @isbn="9780896081307">, #<Book:0x00562314675fd8 @title="If They Come in the Morning", @author="Angela Y. Davis", @isbn="0893880221">]
puts Book.borrowed.inspect # [#<Book:0x00562314676208 @title="Sister Outsider", @author="Audre Lorde", @isbn="9781515905431", @due_date=2017-02-25 20:55:17 -0500>]
puts Book.overdue_books.inspect # []
puts sister_outsider.return_to_library # true
puts sister_outsider.lent_out? # false
puts Book.available.inspect # [#<Book:0x00562314676118 @title="Ain't I a Woman?", @author="Bell Hooks", @isbn="9780896081307">, #<Book:0x00562314675fd8 @title="If They Come in the Morning", @author="Angela Y. Davis", @isbn="0893880221">, #<Book:0x00562314676208 @title="Sister Outsider", @author="Audre Lorde", @isbn="9781515905431", @due_date=nil>]
puts Book.borrowed.inspect # []
