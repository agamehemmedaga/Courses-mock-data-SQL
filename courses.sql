DROP TABLE IF EXISTS courses CASCADE;

CREATE TABLE courses (
    id SERIAL PRIMARY KEY ,
    course_adi VARCHAR (100) NOT NULL ,
    price NUMERIC(10 , 2) NOT NULL CHECK ( price >=0 ),
    teacher_name_lastname VARCHAR (100)NOT NULL
);

INSERT INTO courses (course_adi, price, teacher_name_lastname) VALUES
                                                        ('Compar Academy' , 800 ,'Nihad Amirov' ),
                                                        ('Code Academy' , 700 , 'Resul Alizade'),
                                                        ('Caps Academy', 600, 'Murad Asadov'),
                                                        ('Jet Academy', 500 , 'Qumral Agayeva'),
                                                        ('codekcloud' , 500 , 'Hesen Xankisiyev');
SELECT *FROM courses;