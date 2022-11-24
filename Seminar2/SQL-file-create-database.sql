CREATE TABLE booking_manager (
 sibling_discount FLOAT(20),
 senior_discount FLOAT(20)
);


CREATE TABLE full_schedule (
);


CREATE TABLE person (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 first_name VARCHAR(20),
 full_name VARCHAR(50)
);

ALTER TABLE person ADD CONSTRAINT PK_person PRIMARY KEY (id);


CREATE TABLE staff_member (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 person_number VARCHAR(12) UNIQUE NOT NULL,
 identification_card VARCHAR(20) UNIQUE NOT NULL
);

ALTER TABLE staff_member ADD CONSTRAINT PK_staff_member PRIMARY KEY (id);


CREATE TABLE adress (
 address_key INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 zipcode  VARCHAR(5),
 street VARCHAR(32),
 city VARCHAR(10),
 streetnumber SMALLINT,
 id INT
);

ALTER TABLE adress ADD CONSTRAINT PK_adress PRIMARY KEY (address_key);


CREATE TABLE application_st (
 application_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 wantedInstrument VARCHAR(10),
 person_number VARCHAR(12) UNIQUE NOT NULL,
 first_name  VARCHAR(20),
 full_name VARCHAR(50) NOT NULL,
 handler_id INT NOT NULL
);

ALTER TABLE application_st ADD CONSTRAINT PK_application_st PRIMARY KEY (application_id);


CREATE TABLE contact_details (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 telephone_nmr  VARCHAR(24) UNIQUE NOT NULL,
 email VARCHAR(30) UNIQUE NOT NULL
);

ALTER TABLE contact_details ADD CONSTRAINT PK_contact_details PRIMARY KEY (id);


CREATE TABLE guardian (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL
);

ALTER TABLE guardian ADD CONSTRAINT PK_guardian PRIMARY KEY (id);


CREATE TABLE instructor (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 ensemble_genres TEXT
);

ALTER TABLE instructor ADD CONSTRAINT PK_instructor PRIMARY KEY (id);


CREATE TABLE instrument (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 instrumentName VARCHAR(20),
 skill_level VARCHAR(10),
 ensemble BOOLEAN
);

ALTER TABLE instrument ADD CONSTRAINT PK_instrument PRIMARY KEY (id);


CREATE TABLE schedule (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 single_price INT,
 ensemble_price INT,
 group_price INT,
 difficulty_price INT
);

ALTER TABLE schedule ADD CONSTRAINT PK_schedule PRIMARY KEY (id);


CREATE TABLE student (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 person_number VARCHAR(12) UNIQUE NOT NULL,
 first_name VARCHAR(20),
 full_name VARCHAR(50) NOT NULL
);

ALTER TABLE student ADD CONSTRAINT PK_student PRIMARY KEY (id);


CREATE TABLE lease (
leaseID INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 studentID int,
 startTime TIMESTAMP(4),
 endTime TIMESTAMP(4)
);

ALTER TABLE lease ADD CONSTRAINT PK_lease PRIMARY KEY (studentID);


CREATE TABLE lesson (
 instructors_pid INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 date_and_time  TIMESTAMP(4),
 location VARCHAR(30),
 lesson_id INT NOT NULL
);

ALTER TABLE lesson ADD CONSTRAINT PK_lesson PRIMARY KEY (instructors_pid);


CREATE TABLE multilesson (
 instructors_pid INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 min_students INT,
 max_students INT
);

ALTER TABLE multilesson ADD CONSTRAINT PK_multilesson PRIMARY KEY (instructors_pid);


CREATE TABLE single_p_lesson (
 instructors_pid INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 difficulty VARCHAR(10),
 instrument VARCHAR(20)
);

ALTER TABLE single_p_lesson ADD CONSTRAINT PK_single_p_lesson PRIMARY KEY (instructors_pid);


CREATE TABLE ensemble (
 instructors_pid INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 genre VARCHAR(10)
);

ALTER TABLE ensemble ADD CONSTRAINT PK_ensemble PRIMARY KEY (instructors_pid);


CREATE TABLE group_lesson (
 instructors_pid INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 instrument VARCHAR(20),
 skill_level VARCHAR(10)
);

ALTER TABLE group_lesson ADD CONSTRAINT PK_group_lesson PRIMARY KEY (instructors_pid);


CREATE TABLE intstrumentItem (
 serial_number VARCHAR(10) UNIQUE NOT NULL,
 price INT,
 description TEXT,
 studentID INT NOT NULL
);

ALTER TABLE intstrumentItem ADD CONSTRAINT PK_intstrumentItem PRIMARY KEY (serial_number);


ALTER TABLE staff_member ADD CONSTRAINT FK_staff_member_0 FOREIGN KEY (id) REFERENCES person (id);


ALTER TABLE adress ADD CONSTRAINT FK_adress_0 FOREIGN KEY (id) REFERENCES person (id);


ALTER TABLE application_st ADD CONSTRAINT FK_application_st_0 FOREIGN KEY (handler_id) REFERENCES staff_member (id);


ALTER TABLE contact_details ADD CONSTRAINT FK_contact_details_0 FOREIGN KEY (id) REFERENCES person (id);


ALTER TABLE guardian ADD CONSTRAINT FK_guardian_0 FOREIGN KEY (id) REFERENCES person (id);


ALTER TABLE instructor ADD CONSTRAINT FK_instructor_0 FOREIGN KEY (id) REFERENCES staff_member (id);


ALTER TABLE instrument ADD CONSTRAINT FK_instrument_0 FOREIGN KEY (id) REFERENCES instructor (id);


ALTER TABLE schedule ADD CONSTRAINT FK_schedule_0 FOREIGN KEY (id) REFERENCES instructor (id);


ALTER TABLE student ADD CONSTRAINT FK_student_0 FOREIGN KEY (id) REFERENCES person (id);


ALTER TABLE lease ADD CONSTRAINT FK_lease_0 FOREIGN KEY (studentID) REFERENCES student (id);


ALTER TABLE lesson ADD CONSTRAINT FK_lesson_0 FOREIGN KEY (instructors_pid) REFERENCES schedule (id);
ALTER TABLE lesson ADD CONSTRAINT FK_lesson_1 FOREIGN KEY (instructors_pid) REFERENCES instructor (id);


ALTER TABLE multilesson ADD CONSTRAINT FK_multilesson_0 FOREIGN KEY (instructors_pid) REFERENCES lesson (instructors_pid);


ALTER TABLE single_p_lesson ADD CONSTRAINT FK_single_p_lesson_0 FOREIGN KEY (instructors_pid) REFERENCES lesson (instructors_pid);


ALTER TABLE ensemble ADD CONSTRAINT FK_ensemble_0 FOREIGN KEY (instructors_pid) REFERENCES multilesson (instructors_pid);


ALTER TABLE group_lesson ADD CONSTRAINT FK_group_lesson_0 FOREIGN KEY (instructors_pid) REFERENCES multilesson (instructors_pid);


ALTER TABLE intstrumentItem ADD CONSTRAINT FK_intstrumentItem_0 FOREIGN KEY (studentID) REFERENCES lease (studentID);


