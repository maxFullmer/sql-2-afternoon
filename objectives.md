- Student can add foreign key to new table
- Student can add foreign key to existing table
- Student can use join
- Student can use sub-selects/nested queries
- Student can set null values
- Student can Group by
- Student can update rows
- Student can delete rows
- Student can use distinct
- Student can describe one-to-one relationships
- Student can describe one-to-many relationships
- Student can describe many-to-many relationships

1st normal form:

columns in a table should have one value that cannot be broken down
example: "string", 5

2nd normal form:

needs to be in first normal form
all non key columns are depended on the tables primary key (contains no partial dependencies)

3rd normal form:

needs to be in both 1st and 2nd normal forms
contains only columns that are non transitively-dependent on a primary key

transitive: If A is greater than B, and B is greater than C, then A is greater than C

SQL - A, B, PrimKey, if the value of A relies on PK, and B relies on PK, and A also relies on B then you can say A relies on PK through B

```sql
personID firstName lastName => non transitively dependent dataset

personID bodyMassIndex isOverWeight => transitively dependent dataset

```

one-to-one relationship (linear)

<img width='500px' src='https://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/CPT-Databases-OnetoOne.svg/500px-CPT-Databases-OnetoOne.svg.png'>

one-to-many relationship (non-linear)

<img width='500px' src="https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/CPT-Databases-OnetoMany2.svg/500px-CPT-Databases-OnetoMany2.svg.png">

many-to-many relationship (non-non-linear?)

- relationship where multiple columns in a table can be associated with multiple columns in another table

<img width='500px' src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/CPT-Databases-ManytoMany.svg/500px-CPT-Databases-ManytoMany.svg.png">

<img width='500px' src="https://upload.wikimedia.org/wikipedia/commons/0/02/Databases-ManyToManyWJunction.jpg">