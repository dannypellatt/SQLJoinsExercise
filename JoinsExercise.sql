/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
 SELECT bestbuy.products.Name, bestbuy.categories.Name 
 FROM bestbuy.products
 LEFT JOIN bestbuy.categories 
 ON bestbuy.categories.CategoryID = bestbuy.categories.CategoryID
 WHERE bestbuy.categories.Name = 'Computers';
 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */

 SELECT bestbuy.products.Name, bestbuy.products.Price, bestbuy.reviews.Rating
 FROM bestbuy.products
 LEFT JOIN bestbuy.reviews 
 ON bestbuy.products.ProductID = bestbuy.reviews.ProductID
 WHERE bestbuy.reviews.Rating = 5;
 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */

 SELECT bestbuy.employees.FirstName , bestbuy.employees.LastName
 FROM bestbuy.employees
 LEFT JOIN bestbuy.reviews 
 ON bestbuy.products.ProductID = bestbuy.reviews.ProductID
 WHERE bestbuy.reviews.Rating = 5;

/* joins: find the name of the department, and the name of the category for Appliances and Games */

SELECT bestbuy.departments.Name AS DepartmentName, bestbuy.categories.Name AS CategoriesName
FROM bestbuy.departments
RIGHT JOIN bestbuy.categories
ON bestbuy.departments.DepartmentID = bestbuy.categories.DepartmentID
WHERE bestbuy.categories.Name = 'Appliances'
OR bestbuy.categories.Name = 'Games';

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
 
 

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */

SELECT bestbuy.products.Name, bestbuy.reviews.Reviewer, bestbuy.reviews.Rating, bestbuy.reviews.Comment
FROM bestbuy.products
RIGHT JOIN bestbuy.reviews
ON bestbuy.products.ProductID = bestbuy.reviews.ProductID
WHERE bestbuy.products.Name = 'Visio TV'
ORDER BY bestbuy.reviews.Rating
LIMIT 1;

-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */

 SELECT bestbuy.employees.EmployeeID , bestbuy.employees.FirstName , bestbuy.employees.LastName, bestbuy.products.Name, bestbuy.sales.Quantity
 FROM bestbuy.employees
 LEFT JOIN bestbuy.reviews 
 ON bestbuy.products.ProductID = bestbuy.reviews.ProductID
 WHERE bestbuy.reviews.Rating = 5;

