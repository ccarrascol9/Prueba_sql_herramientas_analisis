SELECT City, COUNT(City),SUM(TicketPrice)
FROM VISITOR v INNER JOIN PERSON p ON v.VisitorFullName=p.FullName 
GROUP BY City
ORDER BY SUM(TicketPrice) DESC

SELECT US_State, COUNT(US_State),SUM(TicketPrice)
FROM VISITOR v INNER JOIN PERSON p ON v.VisitorFullName=p.FullName 
GROUP BY US_State
ORDER BY SUM(TicketPrice) DESC


SELECT VisitorAge, COUNT(VisitorAge),SUM(TicketPrice)
FROM VISITOR v INNER JOIN PERSON p ON v.VisitorFullName=p.FullName 
GROUP BY VisitorAge
ORDER BY COUNT(VisitorAge) DESC


SELECT VisitorCategory, COUNT(VisitorCategory),SUM(TicketPrice)
FROM VISITOR v INNER JOIN PERSON p ON v.VisitorFullName=p.FullName 
GROUP BY VisitorCategory
ORDER BY SUM(TicketPrice) DESC

SELECT MAX(VisitorAge)
FROM VISITOR

SELECT MIN(VisitorAge)
FROM VISITOR

SELECT COUNT(DISTINCT Fullname)
FROM PERSON

SELECT COUNT(DISTINCT VisitorFullName)
FROM VISITOR

SELECT COUNT(DISTINCT EmployeeFullName)
FROM EMPLOYEE

SELECT AVG(TicketPrice)
FROM VISITOR v INNER JOIN PERSON p ON v.VisitorFullName=p.FullName 
WHERE US_State='Massachusetts'

SELECT US_State, COUNT(US_State)
FROM VISITOR v INNER JOIN PERSON p ON v.VisitorFullName = p.FullName 
WHERE VisitorCategory = 'ADULTO/A'
GROUP BY US_State
ORDER BY COUNT(US_State) DESC


SELECT City, COUNT(City)
FROM VISITOR v INNER JOIN PERSON p ON v.VisitorFullName=p.FullName 
WHERE TicketType = "Day"
GROUP BY City
ORDER BY COUNT(City) DESC