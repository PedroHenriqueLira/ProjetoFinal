-- Active: 1689704378308@@127.0.0.1@3306
CREATE TABLE users(

    id TEXT PRIMARY KEY NOT NULL,
    name TEXT NOT NULL,
    email TEXT NOT NULL,
    password TEXT NOT NULL,
    role NOT NULL,
    created_at TEXT DEFAULT(DATETIME())


);

INSERT INTO users (id, name, email, password, role)
VALUES
("us0001", "carlos", "carlos@hotmail.com", "180532", "ADMIN"),
("us0002", "mariana", "mariana@hotmail.com", "135048", "NORMAL"),
("us0003", "pedro", "pedro@hotmail.com", "321083", "NORMAL")
;

SELECT * FROM users;

CREATE TABLE posts(

    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    creator_id TEXT NOT NULL,
    content TEXT NOT NULL,
    likes TEXT DEFAULT(0) NOT NULL,
    dislikes TEXT DEFAULT(0) NOT NULL,
    created_at TEXT DEFAULT(DATETIME()) NOT NULL,
    updated_at TEXT DEFAULT(DATETIME()) NOT NULL,
    FOREIGN KEY (creator_id) REFERENCES users (id)

);

INSERT INTO posts (id, creator_id, content )
VALUES
("ps0001", "us0001", "O ceu está tão lindo hoje!"),
("ps0002", "us0002", "Para alcançar metas jamais alcançadas é preciso fazer coisas que jamais foram feitas"),
("ps0003", "us0003", "Confia no processo");


CREATE TABLE likes_dislikes(

    user_id TEXT NOT NULL,
    post_id TEXT NOT NULL,
    like INTEGER NOT NULL,
    FOREIGN KEY(user_id) REFERENCES users(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    FOREIGN KEY(post_id) REFERENCES post(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE

);

INSERT INTO likes_dislikes (user_id, post_id, like)
VALUES
("us0001", "ps0002", 1),
("us0002", "ps0003", 1),
("us0003", "ps0001", 0)
;

SELECT * FROM posts;
SELECT * FROM users;

SELECT * FROM likes_dislikes;

DROP TABLE users;
DROP TABLE posts;

CREATE TABLE comment_post(
    id TEXT UNIQUE PRIMARY KEY NOT NULL,
    id_user NOT NULL,
    id_post NOT NULL,
    content TEXT NOT NULL,
    likes INTEGER NOT NULL,
    dislikes INTEGER NOT NULL,
    created_at TEXT NOT NULL,
    updated_at TEXT ,


    Foreign Key (id_user) REFERENCES users(id),
    Foreign Key (id_post) REFERENCES post(id)
);
CREATE TABLE like_dislike_comment_post(
    id_user TEXT NOT NULL,
    id_comment TEXT NOT NULL,
    like INTEGER,

    Foreign Key (id_user) REFERENCES users(id),
    Foreign Key (id_comment) REFERENCES comment_post(id)
);
