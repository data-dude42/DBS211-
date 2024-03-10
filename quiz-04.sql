/* Name - PARAS SINGH
   ID - 165114232
   Quiz - 4
*/

/* Question 1 */

DROP TABLE student;

CREATE TABLE student(
campus_no VARCHAR(1),
mn NUMBER(3),
stud_lname VARCHAR(15),
stud_fname VARCHAR(15),
stud_pgm VARCHAR(3) DEFAULT 'CPA',
locker_no NUMBER(3) UNIQUE,
PRIMARY KEY (campus_no, mn),
CONSTRAINT pgm_fk FOREIGN KEY (stud_pgm) REFERENCES pgm(pgm_id)
);

DROP TABLE pgm;

CREATE TABLE pgm(
    pgm_id VARCHAR(3) PRIMARY KEY,
    pgm_name VARCHAR(40) NOT NULL UNIQUE,
    no_semesters NUMBER(1)DEFAULT 6 NOT NULL,
    CONSTRAINT chk_pgmid CHECK (pgm_id IN ('CPA', 'CPD')),
    CONSTRAINT chk_numSem CHECK (no_semesters >= 0)
);
/* QUESTION-2 */
INSERT ALL
    INTO pgm VALUES ('CPA', 'Computer Programming', 8)
    INTO student VALUES('M', 691, 'Singh', 'Paras', 'CPA', 101)
SELECT * FROM DUAL;