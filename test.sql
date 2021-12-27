CREATE TABLE job_role (
    job_role_id   NUMBER(10),
    role_name     VARCHAR2(20),
    salary        NUMBER(10, 2)
);

SELECT
    *
FROM
    job_role;

ALTER TABLE job_role ADD job_description VARCHAR2(100);

SELECT
    *
FROM
    job_role;

ALTER TABLE job_role DROP COLUMN job_description;

SELECT
    *
FROM
    job_role;

ALTER TABLE job_role RENAME COLUMN role_name TO job_title;

SELECT
    *
FROM
    job_role;

ALTER TABLE job_role RENAME TO job_title;

SELECT
    *
FROM
    job_title;

SELECT
    employee_id,
    first_name,
    last_name
FROM
    employee
WHERE
    last_name LIKE 'Bu%';

SELECT
    employee_id,
    first_name,
    last_name
FROM
    employee
WHERE
    last_name LIKE '%e%';

SELECT
    employee_id,
    first_name,
    last_name
FROM
    employee
WHERE
    first_name LIKE 'Ann_';

SELECT
    employee_id,
    first_name,
    last_name,
    hire_date
FROM
    employee
WHERE
    hire_date = '03-OCT-2010';

SELECT
    value
FROM
    sys.nls_database_parameters
WHERE
    parameter = 'NLS_DATE_FORMAT';

SELECT
    employee_id,
    first_name,
    last_name,
    hire_date
FROM
    employee
WHERE
    hire_date < '03-OCT-2010';

SELECT
    employee_id,
    first_name,
    last_name,
    hire_date
FROM
    employee
WHERE
    hire_date > '23-JAN-2012';

SELECT
    employee_id,
    first_name,
    last_name,
    hire_date
FROM
    employee
WHERE
    hire_date >= '23-JAN-2012';

SELECT
    employee_id,
    first_name,
    last_name
FROM
    employee
WHERE
    first_name = 'John';

SELECT
    employee_id,
    first_name,
    last_name
FROM
    employee
WHERE
    first_name = 'John'
    AND last_name = 'Hayes';

SELECT
    employee_id,
    first_name,
    last_name
FROM
    employee
WHERE
    first_name = 'John'
    OR last_name = 'Foster';

SELECT
    employee_id,
    first_name,
    last_name,
    salary,
    hire_date
FROM
    employee
WHERE
    first_name = 'Barbara'
    AND ( hire_date < '01-DEC-2014'
          OR salary < 70000 );

SELECT
    employee_id,
    first_name,
    last_name,
    salary,
    hire_date
FROM
    employee
WHERE
    ( first_name = 'Barbara'
      AND hire_date < '01-DEC-2014' )
    OR salary < 70000;

SELECT
    employee_id,
    first_name,
    last_name,
    salary,
    hire_date
FROM
    employee
WHERE
    salary IS NULL;

SELECT
    employee_id,
    first_name,
    last_name,
    salary,
    hire_date
FROM
    employee
WHERE
    salary IS NOT NULL;

SELECT
    last_name
FROM
    employee;

SELECT DISTINCT
    last_name
FROM
    employee;

SELECT
    first_name,
    last_name
FROM
    employee;

SELECT DISTINCT
    first_name,
    last_name
FROM
    employee;

SELECT
    *
FROM
    employee
WHERE
    last_name = 'Foster'
    OR last_name = 'Williams';

SELECT
    *
FROM
    employee
WHERE
    last_name IN (
        'Foster',
        'Williams'
    );

SELECT
    *
FROM
    employee
WHERE
    last_name NOT IN (
        'Foster',
        'Williams'
    );

SELECT
    *
FROM
    employee
ORDER BY
    first_name;

SELECT
    *
FROM
    employee
ORDER BY
    first_name ASC;

SELECT
    *
FROM
    employee
ORDER BY
    first_name DESC;

SELECT
    *
FROM
    employee
ORDER BY
    salary;

SELECT
    *
FROM
    employee
ORDER BY
    salary DESC;

SELECT
    *
FROM
    employee
ORDER BY
    hire_date;

SELECT
    *
FROM
    employee
ORDER BY
    hire_date DESC;

SELECT
    *
FROM
    employee
ORDER BY
    first_name,
    last_name;

SELECT
    *
FROM
    employee
ORDER BY
    first_name,
    department_id DESC,
    last_name DESC;

INSERT ALL INTO employee (
    employee_id,
    first_name,
    last_name,
    department_id
) VALUES (
    303,
    'Mark',
    'Woods',
    4
) INTO employee (
    employee_id,
    first_name,
    last_name,
    department_id
) VALUES (
    304,
    'Simon',
    'Woods',
    2
) INTO employee (
    employee_id,
    first_name,
    last_name,
    department_id
) VALUES (
    305,
    'Derek',
    'Woods',
    8
) SELECT
      *
  FROM
      dual;

SELECT
    *
FROM
    employee;

SELECT
    first_name,
    last_name
FROM
    customer
WHERE
    customer_id = 1;

INSERT INTO employee (
    employee_id,
    first_name,
    last_name
)
    SELECT
        600,
        first_name,
        last_name
    FROM
        customer
    WHERE
        customer_id = 1;

SELECT
    *
FROM
    employee
WHERE
    employee_id = 600;

SELECT
    *
FROM
    employee
WHERE
    employee_id = 85;

UPDATE employee
SET
    salary = salary + 10000
WHERE
    employee_id = 85;

SELECT
    *
FROM
    employee
WHERE
    employee_id = 85;

UPDATE employee
SET
    salary = 80000
WHERE
    employee_id = 85;

SELECT
    *
FROM
    employee
WHERE
    employee_id = 85;

SELECT
    *
FROM
    employee
WHERE
    employee_id IN (
        102,
        59,
        16
    );

UPDATE employee
SET
    manager_id = 30,
    salary = salary + 5000
WHERE
    employee_id IN (
        102,
        59,
        16
    );

SELECT
    *
FROM
    employee
WHERE
    employee_id IN (
        102,
        59,
        16
    );

SELECT
    *
FROM
    employee
WHERE
    employee_id = 600;

DELETE FROM employee
WHERE
    employee_id = 600;

SELECT
    *
FROM
    employee
WHERE
    employee_id = 600;

SELECT
    *
FROM
    employee
WHERE
    last_name = 'Larson';

DELETE FROM employee
WHERE
    last_name = 'Larson';

SELECT
    *
FROM
    employee
WHERE
    last_name = 'Larson';

SELECT
    *
FROM
    product;

INSERT INTO product (
    product_id,
    product_name,
    price,
    department_id
) VALUES (
    12,
    'Large Table',
    220.50,
    2
);

SELECT
    *
FROM
    product;

COMMIT;

SELECT
    *
FROM
    product;

ROLLBACK;

SELECT
    *
FROM
    product;

ROLLBACK;

SELECT
    *
FROM
    product;

INSERT INTO product (
    product_id,
    product_name,
    price,
    department_id
) VALUES (
    13,
    'Red Chair',
    220.50,
    2
);

SELECT
    *
FROM
    product;

ROLLBACK;

SELECT
    *
FROM
    product;

SELECT
    *
FROM
    customer_order;

DELETE FROM customer_order;

SELECT
    *
FROM
    customer_order;

ROLLBACK;

SELECT
    *
FROM
    customer_order;

TRUNCATE TABLE customer_order;

SELECT
    *
FROM
    customer_order;

ROLLBACK;

SELECT
    *
FROM
    customer_order;

SELECT
    *
FROM
    employee
WHERE
    hire_date >= '01-JAN-2016'
    AND hire_date <= '31-DEC-2016';

SELECT
    *
FROM
    employee
WHERE
    hire_date BETWEEN '01-JAN-2016' AND '31-DEC-2016';

SELECT
    *
FROM
    employee
WHERE
    employee_id BETWEEN 10 AND 15;

SELECT
    *
FROM
    employee
WHERE
    hire_date NOT BETWEEN '01-JAN-2016' AND '31-DEC-2016';

SELECT
    *
FROM
    employee
WHERE
    employee_id NOT BETWEEN 10 AND 15;

SELECT
    *
FROM
    employee
WHERE
    salary > 30000
    AND salary > 40000
    AND salary > 50000;

SELECT
    *
FROM
    employee
WHERE
    salary > ALL (
        30000,
        40000,
        50000
    );

SELECT
    *
FROM
    employee
WHERE
    salary >= ALL (
        30000,
        40000,
        50000
    );

SELECT
    *
FROM
    employee
WHERE
    salary < ALL (
        30000,
        40000,
        50000
    );

SELECT
    *
FROM
    employee
WHERE
    salary <= ALL (
        30000,
        40000,
        50000
    );

SELECT
    *
FROM
    employee
WHERE
    salary = ALL (
        30000,
        40000,
        50000
    );

SELECT
    *
FROM
    employee
WHERE
    salary <> ALL (
        30000,
        40000,
        50000
    );

SELECT
    *
FROM
    employee
WHERE
    salary != ALL (
        30000,
        40000,
        50000
    );

SELECT
    *
FROM
    employee
WHERE
    salary > 30000
    OR salary > 40000
    OR salary > 50000;

SELECT
    *
FROM
    employee
WHERE
    salary > ANY (
        30000,
        40000,
        50000
    );

SELECT
    *
FROM
    employee
WHERE
    salary >= ANY (
        30000,
        40000,
        50000
    );

SELECT
    *
FROM
    employee
WHERE
    salary < ANY (
        30000,
        40000,
        50000
    );

SELECT
    *
FROM
    employee
WHERE
    salary <= ANY (
        30000,
        40000,
        50000
    );

SELECT
    *
FROM
    employee
WHERE
    salary = ANY (
        30000,
        40000,
        50000
    );

SELECT
    *
FROM
    employee
WHERE
    salary <> ANY (
        30000,
        40000,
        50000
    );

SELECT
    *
FROM
    employee
WHERE
    salary != ANY (
        30000,
        40000,
        50000
    );

SELECT
    'CUSTOMER' AS user_type,
    first_name,
    last_name
FROM
    customer
UNION
SELECT
    'EMPLOYEE',
    first_name,
    last_name
FROM
    employee
ORDER BY
    last_name;

SELECT
    'CUSTOMER' AS user_type,
    first_name,
    last_name
FROM
    customer
UNION
SELECT
    'EMPLOYEE',
    first_name,
    last_name
FROM
    employee
ORDER BY
    1,
    2;

SELECT
    first_name,
    last_name
FROM
    customer
UNION
SELECT
    first_name,
    last_name
FROM
    employee;

SELECT
    first_name,
    last_name
FROM
    customer
UNION ALL
SELECT
    first_name,
    last_name
FROM
    employee;

SELECT
    first_name,
    last_name
FROM
    customer
INTERSECT
SELECT
    first_name,
    last_name
FROM
    employee;

SELECT
    first_name,
    last_name
FROM
    customer;

SELECT
    first_name,
    last_name
FROM
    employee;

SELECT
    first_name,
    last_name
FROM
    customer
MINUS
SELECT
    first_name,
    last_name
FROM
    employee;

SELECT
    first_name,
    last_name,
    salary
FROM
    employee
WHERE
    salary BETWEEN 28000 AND 40000
UNION
SELECT
    first_name,
    last_name,
    salary
FROM
    employee
WHERE
    salary BETWEEN 20000 AND 30000;

SELECT
    first_name,
    last_name,
    salary
FROM
    employee
WHERE
    salary BETWEEN 28000 AND 40000
UNION
SELECT
    first_name,
    last_name,
    salary
FROM
    employee
WHERE
    salary BETWEEN 20000 AND 30000
INTERSECT
SELECT
    first_name,
    last_name,
    salary
FROM
    employee
WHERE
    salary BETWEEN 30000 AND 55000;

SELECT
    first_name,
    last_name,
    salary
FROM
    employee
WHERE
    salary BETWEEN 28000 AND 40000
UNION
SELECT
    first_name,
    last_name,
    salary
FROM
    employee
WHERE
    salary BETWEEN 20000 AND 30000
INTERSECT
SELECT
    first_name,
    last_name,
    salary
FROM
    employee
WHERE
    salary BETWEEN 30000 AND 55000
MINUS
SELECT
    first_name,
    last_name,
    salary
FROM
    employee
WHERE
    salary BETWEEN 31000 AND 33000;

SELECT
    first_name,
    last_name,
    salary
FROM
    employee
WHERE
    salary BETWEEN 20000 AND 30000
INTERSECT
SELECT
    first_name,
    last_name,
    salary
FROM
    employee
WHERE
    salary BETWEEN 30000 AND 55000;

SELECT
    first_name,
    last_name,
    salary
FROM
    employee
WHERE
    salary BETWEEN 28000 AND 40000
UNION
( SELECT
    first_name,
    last_name,
    salary
FROM
    employee
WHERE
    salary BETWEEN 20000 AND 30000
INTERSECT
SELECT
    first_name,
    last_name,
    salary
FROM
    employee
WHERE
    salary BETWEEN 30000 AND 55000
);

SELECT
    first_name,
    last_name,
    salary
FROM
    employee
WHERE
    salary BETWEEN 28000 AND 40000
UNION
( SELECT
    first_name,
    last_name,
    salary
FROM
    employee
WHERE
    salary BETWEEN 20000 AND 30000
INTERSECT
SELECT
    first_name,
    last_name,
    salary
FROM
    employee
WHERE
    salary BETWEEN 30000 AND 55000
)
MINUS
SELECT
    first_name,
    last_name,
    salary
FROM
    employee
WHERE
    salary BETWEEN 31000 AND 33000;

SELECT
    length(first_name)
FROM
    employee
WHERE
    salary = 37000;

SELECT
    COUNT(*)
FROM
    employee;

SELECT
    COUNT(1)
FROM
    employee;

SELECT
    *
FROM
    employee
WHERE
    first_name = 'Barbara';

SELECT
    COUNT(*)
FROM
    employee
WHERE
    first_name = 'Barbara';

SELECT
    COUNT(*)
FROM
    employee;

SELECT
    COUNT(salary)
FROM
    employee;

SELECT
    *
FROM
    employee
WHERE
    salary IS NULL;

SELECT
    *
FROM
    employee
WHERE
    salary IS NOT NULL;

SELECT DISTINCT
    last_name sirname
FROM
    employee;

SELECT
    COUNT(last_name) "name count"
FROM
    employee;

SELECT
    COUNT(DISTINCT last_name) AS name_count
FROM
    employee;

SELECT DISTINCT
    COUNT(last_name) AS "name count"
FROM
    employee;

SELECT
    employee_id,
    salary,
    e.salary / 12 AS monthly_salary
FROM
    employee e;

SELECT
    department_id,
    COUNT(*) AS employee_count
FROM
    employee
GROUP BY
    department_id
ORDER BY
    department_id;

SELECT
    AVG(salary)
FROM
    employee;

SELECT
    *
FROM
    employee
WHERE
    salary > (
        SELECT
            AVG(salary)
        FROM
            employee
    );

SELECT
    department_id
FROM
    department
WHERE
    department_name IN (
        'Sales',
        'Finance'
    );

SELECT
    *
FROM
    employee
WHERE
    department_id IN (
        SELECT
            department_id
        FROM
            department
        WHERE
            department_name IN (
                'Sales',
                'Finance'
            )
    );

SELECT
    last_name,
    COUNT(*)
FROM
    employee
GROUP BY
    last_name;

SELECT
    department_id,
    COUNT(*)
FROM
    product
GROUP BY
    department_id;

SELECT
    last_name,
    COUNT(*)
FROM
    employee
WHERE
    last_name LIKE 'B%'
GROUP BY
    last_name
ORDER BY
    last_name;

SELECT
    salary,
    COUNT(*)
FROM
    employee
WHERE
    salary > 100000
GROUP BY
    salary
ORDER BY
    COUNT(*) DESC;

SELECT
    salary,
    COUNT(*) AS count
FROM
    employee
WHERE
    salary > 100000
GROUP BY
    salary
ORDER BY
    count DESC;

SELECT
    first_name,
    last_name,
    COUNT(*)
FROM
    employee
GROUP BY
    first_name,
    last_name
ORDER BY
    COUNT(*) DESC;

SELECT
    last_name,
    COUNT(*)
FROM
    employee
WHERE
    last_name LIKE 'B%'
GROUP BY
    last_name
HAVING
    COUNT(*) > 1
ORDER BY
    last_name;

SELECT
    SUM(salary)
FROM
    employee;

SELECT
    department_id,
    SUM(salary) total
FROM
    employee
GROUP BY
    department_id
HAVING
    department_id IS NOT NULL
ORDER BY
    total DESC;

SELECT
    MAX(salary),
    MIN(salary)
FROM
    employee;

SELECT
    department_id,
    MAX(salary),
    MIN(salary)
FROM
    employee
GROUP BY
    department_id
HAVING
    department_id IS NOT NULL
ORDER BY
    department_id;

SELECT
    department_id,
    MAX(hire_date),
    MIN(hire_date)
FROM
    employee
GROUP BY
    department_id
HAVING
    department_id IS NOT NULL
ORDER BY
    department_id;

SELECT
    department_id,
    MAX(last_name),
    MIN(last_name)
FROM
    employee
GROUP BY
    department_id
HAVING
    department_id IS NOT NULL
ORDER BY
    department_id;

SELECT
    AVG(salary)
FROM
    employee;

SELECT
    department_id,
    AVG(salary)
FROM
    employee
GROUP BY
    department_id
HAVING
    department_id IS NOT NULL
ORDER BY
    department_id;

SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    d.department_id,
    d.department_name,
    e.salary
FROM
    employee     e
    JOIN department   d ON e.department_id = d.department_id
WHERE
    e.salary > 60000
ORDER BY
    salary DESC;

SELECT
    d.department_id,
    d.department_name,
    e.employee_id,
    e.first_name,
    e.last_name,
    e.salary
FROM
    department   d
    LEFT JOIN employee     e ON d.department_id = e.department_id;

SELECT
    *
FROM
    employee
WHERE
    department_id = 9;

SELECT
    d.department_id,
    d.department_name,
    e.employee_id,
    e.first_name,
    e.last_name,
    e.salary
FROM
    employee     e
    RIGHT JOIN department   d ON e.department_id = d.department_id;

SELECT
    d.department_id,
    d.department_name,
    e.employee_id,
    e.first_name,
    e.last_name,
    e.salary
FROM
    department   d
    RIGHT JOIN employee     e ON d.department_id = e.department_id;

SELECT
    d.department_id,
    d.department_name,
    e.employee_id,
    e.first_name,
    e.last_name,
    e.salary
FROM
    department   d
    FULL JOIN employee     e ON d.department_id = e.department_id
ORDER BY
    d.department_id,
    e.employee_id;

SELECT
    department_id,
    d.department_name,
    e.employee_id,
    e.first_name,
    e.last_name
FROM
    department   d
    NATURAL JOIN employee     e;

SELECT
    department_id,
    d.department_name,
    e.employee_id,
    e.first_name,
    e.last_name
FROM
    employee     e
    NATURAL JOIN department   d;

SELECT
    product_id,
    product_name,
    department_id,
    department_name
FROM
    product
    NATURAL JOIN department;

SELECT
    d.department_id,
    department_name,
    employee_id,
    first_name,
    last_name
FROM
    employee     e
    CROSS JOIN department   d;

SELECT
    d.department_id,
    department_name,
    employee_id,
    first_name,
    last_name
FROM
    employee     e,
    department   d;

SELECT
    emp.employee_id,
    emp.first_name,
    emp.last_name,
    mgr.first_name   mgr_first_name,
    mgr.last_name    mgr_last_name
FROM
    employee   emp
    LEFT JOIN employee   mgr ON emp.manager_id = mgr.employee_id;

SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    co.order_id,
    p.product_name,
    d.department_name
FROM
    customer         c
    LEFT JOIN customer_order   co ON c.customer_id = co.customer_id
    LEFT JOIN product          p ON co.product_id = p.product_id
    LEFT JOIN department       d ON p.department_id = d.department_id
ORDER BY
    c.customer_id;

SELECT
    *
FROM
    employee,
    department
WHERE
    salary > 50000
    AND hire_date > '01-JAN-2012'
    AND employee.department_id = department.department_id;

SELECT
    email_address,
    address_state,
    length(address_state),
    instr(email_address, '@')
FROM
    customer
WHERE
    instr(email_address, '@') > 0
    AND length(address_state) = 2
ORDER BY
    length(email_address) DESC;

SELECT
    email_address,
    substr(email_address, instr(email_address, '@') + 1, length(email_address)) email_domain
FROM
    customer;

SELECT
    product_id,
    product_name,
    price,
    round(price),
    round(price, 1),
    ceil(price),
    floor(price),
    price * 9 * 0.85,
    round(price * 9 * 0.85, 2)
FROM
    product;

SELECT
    sysdate,
    add_months(sysdate, 20),
    months_between(sysdate, add_months(sysdate, 10))
FROM
    dual;

SELECT
    hire_date,
    sysdate,
    add_months(hire_date, 6) probation,
    add_months(hire_date, 60) aniiversary,
    add_months(hire_date, - 12) past,
    round(months_between(sysdate, hire_date), 1) months_worked,
    round(months_between(sysdate, hire_date) / 12, 1) years_worked
FROM
    employee;

SELECT
    hire_date,
    to_char(hire_date, 'YYYY_MM_DD')
FROM
    employee;

SELECT
    '2017_05_28',
    TO_DATE('2017_05_28', 'YYYY_MM_DD'),
    '200',
    to_number('200')
FROM
    dual;

SELECT
    product_id,
    product_name,
    price,
    CASE
        WHEN price > 200 THEN
            'Over 200'
        WHEN price > 100
             AND price <= 200 THEN
            'Over 100'
        WHEN price > 50
             AND price <= 100 THEN
            'Over 50'
        ELSE
            'Under 50'
    END text
FROM
    product;

SELECT
    customer_id,
    first_name,
    last_name,
    address_state,
    CASE address_state
        WHEN 'NY'   THEN
            'East'
        WHEN 'CA'   THEN
            'West'
        WHEN 'OR'   THEN
            'West'
        WHEN 'SC'   THEN
            'West'
        WHEN 'TX'   THEN
            'West'
        WHEN 'FL'   THEN
            'East'
        WHEN 'IN'   THEN
            'East'
        ELSE
            'Unknown'
    END state
FROM
    customer;

SELECT
    customer_id,
    first_name,
    last_name,
    address_state,
    CASE
        WHEN address_state IN (
            'NY',
            'FL',
            'IN'
        ) THEN
            'East'
        WHEN address_state IN (
            'CA',
            'OR',
            'SC',
            'TX'
        ) THEN
            'West'
        ELSE
            'Unknown'
    END state
FROM
    customer;
