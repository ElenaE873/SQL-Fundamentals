/*  (Outer) Left-Join

contains:
a - what is in both left table and right table
b - AND what is in the left table but not in the right table

In essense, it keeps all the data in the left table (ie. original records), 
and brings over data from the right table where matches occur in both tables 
by a unique key.  And marks the values as missing from the columns
in the right table that don't have a match. */

