CREATE TABLE Students (
    ID INT ,
    Name VARCHAR(100)
);
CREATE TABLE Friends (
    ID INT ,
    Friend_ID INT
);
CREATE TABLE Packages (
    ID INT PRIMARY KEY,
    Salary INT  
);

INSERT INTO Students (ID, Name)
VALUES
(1, 'gowtham'),
(2, 'rahul'),
(3, 'saravana'),
(4, 'nandini'),
(5, 'jaya');

INSERT INTO Friends (ID, Friend_ID)
VALUES
(1, 2),  
(2, 1),  
(3, 4), 
(4, 3),  
(5, 3); 

INSERT INTO Packages (ID, Salary)
VALUES
(1, 40),  
(2, 50),  
(3, 60), 
(4, 70),  
(5, 55);  


SELECT * FROM STUDENTS
SELECT * FROM FRIENDS
SELECT * FROM PACKAGES

/*
Write a query to output the names of those students whose best friends got offered a higher salary than them.
Names must be ordered by the salary amount offered to the best friends. 
It is guaranteed that no two students got same salary offer.
*/

SELECT S.NAME,
	   F.FRIEND_ID,
       P1.SALARY AS STUDENT_SALARY,
       P2.SALARY AS FRIEND_SALARY
FROM STUDENTS S
JOIN FRIENDS F
ON S.ID = F.ID
JOIN PACKAGES P1 
ON S.ID = P1.ID
JOIN PACKAGES P2
ON F.FRIEND_ID = P2.ID
WHERE P2.SALARY > P1.SALARY
ORDER BY P2.SALARY DESC
       


