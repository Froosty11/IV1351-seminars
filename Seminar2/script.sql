INSERT INTO person (first_name,full_name )VALUES('Joel','Joel Hanson');
INSERT INTO person (first_name,full_name )VALUES('Kevin','Kevin Castaneda');
INSERT INTO person (first_name,full_name )VALUES('Armando','Armando Bradford');
INSERT INTO person (first_name,full_name )VALUES('Liberty','Liberty Meyer');
INSERT INTO person (first_name,full_name )VALUES('Devin','Devin Roberson');

INSERT INTO adress (zipcode,street,city,streetnumber) VALUES('52162','P.O. Box 353, 3020 Ac Avenue','Bhilai',6);
INSERT INTO adress (zipcode,street,city,streetnumber) VALUES('15858','Ap #334-7316 Ullamcorper. St.','Otukpo',10);
INSERT INTO adress (zipcode,street,city,streetnumber) VALUES('5132','P.O. Box 574, 5832 Facilisis, Ave','Kraków',5);
INSERT INTO adress (zipcode,street,city,streetnumber) VALUES('60715','648-2820 Mauris St.','Mora',5);
INSERT INTO adress (zipcode,street,city,streetnumber) VALUES('12273','P.O. Box 746, 4194 Natoque Avenue','Bydgoszcz',5);

INSERT INTO contact_details(telephone_nmr, email) VALUES('(779) 625-6418','in.condimentum@outlook.edu');
INSERT INTO contact_details(telephone_nmr, email) VALUES('(420) 423-5022','malesuada.fringilla@aol.org');
INSERT INTO contact_details(telephone_nmr, email) VALUES('(431) 755-6560','tellus.faucibus@aol.com');
INSERT INTO contact_details(telephone_nmr, email) VALUES('(717) 873-3782','vehicula@yahoo.com');
INSERT INTO contact_details(telephone_nmr, email) VALUES('1-426-178-3608','nec.tempus.scelerisque@yahoo.org');

INSERT INTO student (person_number ,first_name,full_name) VALUES(200309097584,'Cassidy','Cassidy Puckett');
INSERT INTO student (person_number ,first_name,full_name) VALUES(202012126785,'Maryam','Maryam Cherry');
INSERT INTO student (person_number ,first_name,full_name) VALUES(201011111576,'Jesse','Jesse Weeks');
INSERT INTO student (person_number ,first_name,full_name) VALUES(183702301234,'Erasmus','Erasmus Olson');
INSERT INTO student (person_number ,first_name,full_name) VALUES(196009111343,'Gage','Gage Glass'); 

INSERT INTO lease (startTime,endTime,amount_paid) VALUES('Feb 9, 2022','Jan 4, 2023',1125);
INSERT INTO lease (startTime,endTime,amount_paid) VALUES('Aug 28, 2022','Jul 5, 2022',2683);
INSERT INTO lease (startTime,endTime,amount_paid) VALUES('Oct 8, 2022','Aug 23, 2022',1755);
INSERT INTO lease (startTime,endTime,amount_paid) VALUES('Dec 4, 2022','Oct 10, 2023',2330);
INSERT INTO lease (startTime,endTime,amount_paid) VALUES('Jun 24, 2022','Jan 19, 2023',752);

INSERT INTO intstrumentitem (price,description, serial_number) VALUES(32113,'Piano from 1892, slightly discoloured','ABC');
INSERT INTO intstrumentitem (price,description, serial_number) VALUES(5737,'Violin 3/4 size age range 10-12','BCD');
INSERT INTO intstrumentitem (price,description, serial_number) VALUES(29433,'Guitarr teenage to adult size','DAH');
INSERT INTO intstrumentitem (price,description, serial_number) VALUES(31501,'Saxaphone golden vintage 1432','SAD');
INSERT INTO intstrumentitem (price,description, serial_number) VALUES(41942,'Electric guitarr, newly bought','DSA');

INSERT INTO staff_member (person_number ,identification_card) VALUES(198412123454,3245);
INSERT INTO staff_member (person_number ,identification_card) VALUES(199003034,3456);
INSERT INTO staff_member (person_number ,identification_card) VALUES(1999090983,9385);
INSERT INTO staff_member (person_number ,identification_card) VALUES(2001080876,7543);
INSERT INTO staff_member (person_number ,identification_card) VALUES(2002141475,6546);

INSERT INTO application_st (wantedInstrument ,person_number, first_name, full_name) VALUES('Guitarr', 199903031234, 'Courtney','Courtney Cox');
INSERT INTO application_st (wantedInstrument ,person_number, first_name, full_name) VALUES('Piano', 201012148948, 'Linn','Linn Cox');
INSERT INTO application_st (wantedInstrument ,person_number, first_name, full_name) VALUES('Violin', 201003034545, 'Addison','Addison Leaf');
INSERT INTO application_st (wantedInstrument ,person_number, first_name, full_name) VALUES('Saxaphone', 200304045858, 'Lauren','Lauren May');
INSERT INTO application_st (wantedInstrument ,person_number, first_name, full_name) VALUES('Piano', 200312125869, 'Amy','Amy Vale');

INSERT INTO instrument (instrumentName ,skill_level, ensemble) VALUES('Piano',5,true);
INSERT INTO instrument (instrumentName ,skill_level, ensemble) VALUES('Violin',3,false);
INSERT INTO instrument (instrumentName ,skill_level, ensemble) VALUES('Saxaphone',2,true);
INSERT INTO instrument (instrumentName ,skill_level, ensemble) VALUES('Violin',1,false);
INSERT INTO instrument (instrumentName ,skill_level, ensemble) VALUES('Guitarr',1,true);

INSERT INTO booking_manager (sibling_discount ,senior_discount) VALUES(32, 12);
INSERT INTO booking_manager (sibling_discount ,senior_discount) VALUES(12, 90);
INSERT INTO booking_manager (sibling_discount ,senior_discount) VALUES(45, 34);
INSERT INTO booking_manager (sibling_discount ,senior_discount) VALUES(16, 45);

INSERT INTO schedule (single_price ,ensemble_price,group_price,difficulty_price) VALUES(567, 675,987,231);
INSERT INTO schedule (single_price ,ensemble_price,group_price,difficulty_price) VALUES(123, 343,545,654);
INSERT INTO schedule (single_price ,ensemble_price,group_price,difficulty_price) VALUES(234, 565,767,123);
INSERT INTO schedule (single_price ,ensemble_price,group_price,difficulty_price) VALUES(345, 565,999,65);
INSERT INTO schedule (single_price ,ensemble_price,group_price,difficulty_price) VALUES(678, 786,435,456);


INSERT INTO instructor (ensemble_genres) VALUES('Clasical');
INSERT INTO instructor (ensemble_genres) VALUES('Jazz');
INSERT INTO instructor (ensemble_genres) VALUES('Electric');
INSERT INTO instructor (ensemble_genres) VALUES('Pop');
INSERT INTO instructor (ensemble_genres) VALUES('Hiphop');


INSERT INTO lesson (date_and_time, location) VALUES('Feb 3, 2022', 'Aula');
INSERT INTO lesson (date_and_time, location) VALUES('May 9, 2022', 'Aula');
INSERT INTO lesson (date_and_time, location) VALUES('Aug 11, 2022', 'Aula');
INSERT INTO lesson (date_and_time, location) VALUES('Sep 21, 2022', 'Aula');
INSERT INTO lesson (date_and_time, location) VALUES('Jan 9, 2022', 'Aula');


INSERT INTO single_p_lesson (difficulty, instrument) VALUES(2, 'Piano');
INSERT INTO single_p_lesson (difficulty, instrument) VALUES(4, 'Saxaphone');
INSERT INTO single_p_lesson (difficulty, instrument) VALUES(5, 'Violin');
INSERT INTO single_p_lesson (difficulty, instrument) VALUES(1, 'Piano');
INSERT INTO single_p_lesson (difficulty, instrument) VALUES(1, 'Guitarr');


INSERT INTO ensemble (genre) VALUES('Classical');
INSERT INTO ensemble (genre) VALUES('Jazz');
INSERT INTO ensemble (genre) VALUES('Hiphop');
INSERT INTO ensemble (genre) VALUES('Pop');
INSERT INTO ensemble (genre) VALUES('Electrical');


INSERT INTO multilesson (min_students,max_students) VALUES(32, 12);
INSERT INTO multilesson (min_students,max_students) VALUES(23, 56);
INSERT INTO multilesson (min_students,max_students) VALUES(32, 66);
INSERT INTO multilesson (min_students,max_students) VALUES(11, 32);
INSERT INTO multilesson (min_students,max_students) VALUES(4, 12);


INSERT INTO group_lesson (instrument,skill_level) VALUES('Piano', 2);
INSERT INTO group_lesson (instrument,skill_level) VALUES('Saxaphone', 4);
INSERT INTO group_lesson (instrument,skill_level) VALUES('Guitarr', 4);
INSERT INTO group_lesson (instrument,skill_level) VALUES('Violin', 1);
INSERT INTO group_lesson (instrument,skill_level) VALUES('Piano', 3);





