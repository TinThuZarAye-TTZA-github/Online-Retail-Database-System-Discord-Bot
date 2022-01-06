# database.py
# Handles all the methods interacting with the database of the application.
# Students must implement their own methods here to meet the project requirements.

import os
import pymysql.cursors

db_host = os.environ['DB_HOST']
db_username = os.environ['DB_USER']
db_password = os.environ['DB_PASSWORD']
db_name = os.environ['DB_NAME']


def connect():
    try:
        conn = pymysql.connect(host=db_host,
                               port=3306,
                               user=db_username,
                               password=db_password,
                               db=db_name,
                               charset="utf8mb4", cursorclass=pymysql.cursors.DictCursor)
        print("Bot connected to database {}".format(db_name))
        return conn
    except:
        print("Bot failed to create a connection with your database because your secret environment variables " +
              "(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME) are not set".format(db_name))
        print("\n")


def get_response(msg):
  data = msg.split()
  errors = []
  response = None 
  command = data[0] 
  if "/each-customer-review-each-product-detail" in command:
    response = business_rule_1()

  elif "/number-product-purchased-between-discount-each-customer" in command:
    response = business_rule_2()
  elif "/product-each-category-has-product-detail" in command:
    response = business_rule_3()
  elif "/customer-pruchased-product-detail" in command:
    response = business_rule_4()
  elif "/employee-each-department" in command:
    response = business_rule_5()
  elif "/customer-order-delivery-address" in command:
    response = business_rule_6()
  elif "/customer-name-who-purchased" in command:
    response = business_rule_7()
  elif "/each-product-category" in command:
    response = business_rule_8()

  

  if len(errors) >= 1:
    return errors
  return response


  # Business Rules
  
def business_rule_1():
  conn = connect()

  if conn:
    cursor = conn.cursor()
    query = """ select 
                cr.customer_review_productDetail_id from CustomerReviewProductDetail cr,
                Customer c WHERE cr.customer_review_productDetail_id = c.customer_id  """

    cursor.execute(query)
    data = cursor.fetchall()
    if data:
      row = []
      for student_data in data:
        row.append(student_data)
      
    output = row
    conn.close()
    return output 
  conn.close()
  return "There is an internal problem. Try later again"


def business_rule_2():
  conn = connect()

  if conn:
    cursor = conn.cursor()
    query = """ select cat.description as "Categories Detail" from Categories cat inner join CategoriesHasProducts p on cat.categories_id = p.categories_id group by p.categoriesHasProducts_id;
               
                """

            

    cursor.execute(query)
    data = cursor.fetchall()
    if data:
      row = []
      for student_data in data:
        row.append(student_data)
      
    output = row
    conn.close()
    return output 
  conn.close()
  return "There is an internal problem. Try later again"


def business_rule_3():
  conn = connect()

  if conn:
    cursor = conn.cursor()
    query = """ select pd.product_detail_id from ProductHasProductDetail pd inner join Products p on pd.product_id = p.products_id group by pd.product_detail_id;
 """

    cursor.execute(query)
    data = cursor.fetchall()
    if data:
      row = []
      for student_data in data:
        row.append(student_data)
      
    output = row
    conn.close()
    return output 
  conn.close()
  return "There is an internal problem. Try later again"

def business_rule_4():
  conn = connect()

  if conn:
    cursor = conn.cursor()
    query = """ select pd.description as "Product Description" from ProductDetail pd inner join CustomerReviewProductDetail crpd on pd.product_detail_id = crpd.product_detail_id group by crpd.customer_id;
  """

    cursor.execute(query)
    data = cursor.fetchall()
    if data:
      row = []
      for student_data in data:
        row.append(student_data)
      
    output = row
    conn.close()
    return output 
  conn.close()
  return "There is an internal problem. Try later again"


def business_rule_5():
  conn = connect()

  if conn:
    cursor = conn.cursor()
    query = """ select a.enum as "Employee number" , b.dnum as "Department number" from (select e.employee_id as enum from Employee e inner join EmployeeBelongTo eb on e.employee_id = eb.employee_id group by eb.employee_id) a join (select d.department_id as dnum from Department d inner join EmployeeBelongTo eb on d.department_id = eb.department_id group by eb.employee_id) b;  """

    cursor.execute(query)
    data = cursor.fetchall()
    if data:
      row = []
      for student_data in data:
        row.append(student_data)
      
    output = row
    conn.close()
    return output 
  conn.close()
  return "There is an internal problem. Try later again"

def business_rule_6():
  conn = connect()

  if conn:
    cursor = conn.cursor()
    query = """ select c.address as "Order Address" from Customer c inner join CustomerReviewProductDetail crpd on c.customer_id = crpd.customer_id group by crpd.customer_review_productDetail_id;
  """

    cursor.execute(query)
    data = cursor.fetchall()
    if data:
      row = []
      for student_data in data:
        row.append(student_data)
      
    output = row
    conn.close()
    return output 
  conn.close()
  return "There is an internal problem. Try later again"

def business_rule_7():
  conn = connect()

  if conn:
    cursor = conn.cursor()
    query = """ select c.name as "Customer Name" from Customer c inner join CustomerReviewProductDetail cr on c.customer_id = cr.customer_id group by cr.customer_review_productDetail_id;
  """

    cursor.execute(query)
    data = cursor.fetchall()
    if data:
      row = []
      for student_data in data:
        row.append(student_data)
      
    output = row
    conn.close()
    return output 
  conn.close()
  return "There is an internal problem. Try later again"

def business_rule_8():
  conn = connect()

  if conn:
    cursor = conn.cursor()
    query = """ select p.products_id as "Product", c.categories_id as "Category" from Products p inner join Categories c on p.descriptions = c.description group by c.categories_id;
 """

    cursor.execute(query)
    data = cursor.fetchall()
    if data:
      row = []
      for student_data in data:
        row.append(student_data)
      
    output = row
    conn.close()
    return output 
  conn.close()
  return "There is an internal problem. Try later again"

# your code here
