create table books (
    isbn text not null unique
    , book_title text
    , book_author text
    , year_of_publication integer
    , publisher text
    , image_url text
    , primary key (isbn)
);

create users (
    user_id integer not null unique
    , location text
    , age int
    , primary key (user_id)
);

create ratings (
    user_id integer not null
    , isbn text not null
    , book_rating int
    , foreign key (user_id) references users(user_id)
    , foreign key (isbn) references books(isbn)
)