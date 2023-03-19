// * D -> SOLID
// ? Dependency Inversion Principle (DIP)
// ? states that high-level modules should not depend on low-level modules, but
// ? on abstractions. Abstractions should not depend on details,  but on 
// ? other abstractions.
void main() {
  Book book = Book(
    title: 'title',
    author: 'author',
    publisher: 'pub',
    publicationYear: 2010,
  );
  Library lib = Library(books: [
    Book(
      title: 'title',
      author: 'author',
      publisher: 'pub',
      publicationYear: 2010,
    )
  ]);

  book.printDetails();
  lib.printAllBooksDetails();

  BookA bookA = BookA(
    title: 'title',
    author: 'author',
    publisher: 'pub',
    publicationYear: 2010,
  );
  LibraryA libA = LibraryA(books: [
    BookA(
      title: 'title',
      author: 'author',
      publisher: 'pub',
      publicationYear: 2010,
    )
  ]);

  bookA.printDetails();
  libA.printDetails();
}

// antes
class Book {
  final String title;
  final String author;
  final String publisher;
  final int publicationYear;

  Book({
    required this.title,
    required this.author,
    required this.publisher,
    required this.publicationYear,
  });

  void printDetails() {
    print('Title: $title');
    print('Author: $author');
    print('Publisher: $publisher');
    print('Publication Year: $publicationYear');
  }
}

class Library {
  final List<Book> books;

  Library({required this.books});

  void printAllBooksDetails() {
    for (final book in books) {
      book.printDetails();
    }
  }
}

// depois
abstract class PrintableBookDetails {
  void printDetails();
}

class BookA implements PrintableBookDetails {
  final String title;
  final String author;
  final String publisher;
  final int publicationYear;

  BookA({
    required this.title,
    required this.author,
    required this.publisher,
    required this.publicationYear,
  });

  @override
  void printDetails() {
    print('Title: $title');
    print('Author: $author');
    print('Publisher: $publisher');
    print('Publication Year: $publicationYear');
  }
}

class LibraryA implements PrintableBookDetails {
  final List<BookA> books;

  LibraryA({required this.books});

  @override
  void printDetails() {
    for (final book in books) {
      book.printDetails();
    }
  }
}
