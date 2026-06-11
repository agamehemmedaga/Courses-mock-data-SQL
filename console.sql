DROP TABLE IF EXISTS courses CASCADE;

CREATE TABLE courses (
    id SERIAL PRIMARY KEY ,
    course_adi VARCHAR (100) NOT NULL ,
    price NUMERIC(10 , 2) NOT NULL CHECK ( price >=0 ),
    teacher_id INT NOT NULL ,
    FOREIGN KEY (teacher_id) REFERENCES teachers (id)
);

INSERT INTO courses (course_adi, price, teacher_id) VALUES
                                                        ('Compar Academy' , 800 ,1 ),
                                                        ('Code Academy' , 700 , 2),
                                                        ('Caps Academy', 600, 3),
                                                        ('Jet Academy', 500 , 4),
                                                        ('codekcloud' , 500 , 5);
SELECT *FROM courses;