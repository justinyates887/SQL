/* Justin Yates */
/* Lab 1        */
/* 09/06/2023   */

/* Question One */
/* No, it cannot. The SELECT keyword is only for reading */

/* Question Two */
SELECT * FROM ufo.ufo_sightings;

/* Question Three */
SELECT state, shape 
FROM ufo.ufo_sightings;

/* Question Four */
SELECT state AS ST, shape AS SH
FROM ufo.ufo_sightings
WHERE ROWNUM <= 20;

/* Question Five */
SELECT DISTINCT shape
FROM ufo.ufo_sightings;

/* Question Six */
SELECT DISTINCT shape 
FROM ufo.ufo_sightings
WHERE ROWNUM <= 20;

/* Question Seven */
SELECT description, SUBSTR(description, 1, 3) AS "FIRST THREE"
FROM student.course;

/* Question Eight */
SELECT description, SUBSTR(description, -3) AS "LAST THREE"
FROM student.course;

/* Question Nine */
SELECT DISTINCT employer
FROM student.student
ORDER BY employer;

/* Question Ten */
SELECT description, course_no
FROM student.course
ORDER BY description, course_no;

/* Question Eleven */
SELECT description AS "Course Description", course_no AS "Course #"
FROM student.course
ORDER BY description, course_no;

/* Question Twelve */
SELECT DISTINCT prerequisite
FROM student.course;

/* Question Thirteen */
/*
    The DUAL table is a special one-row, one-column table that exists by default
    in every Oracle database. It's often used as a placeholder or for performing
    calculations when a real table isn't necessary. 
*/

/* Question Fourteen */
SELECT * FROM DUAL;

/* Question Fifteen */
SELECT 2 + 4 FROM DUAL;

/* Question Sixteen */
SELECT 5 * 3,
        5 - 3,
        5 / 3
FROM DUAL;

/* Question Seventeen */
SELECT 5 / 3 AS "Not Rounded",
        ROUND(5/3, 2) AS "Rounded"
FROM DUAL;

/* Question Eighteen */
SELECT SYSDATE FROM DUAL;

/* Question Ninteen */
SELECT CURRENT_DATE FROM DUAL;

/* Question Twenty */
SELECT SYSDATE - 1 AS "Yesterday"
FROM DUAL;