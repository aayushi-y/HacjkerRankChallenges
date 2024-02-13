/*You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N. */

/*Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:

Root: If node is root node.
Leaf: If node is leaf node.
Inner: If node is neither root nor leaf node. */

select DISTINCT a.N, 
CASE 
    WHEN a.P IS null THEN 'Root'
    WHEN b.P IS null THEN 'Leaf' 
    ELSE 'Inner'
END AS status 
from BST a LEFT JOIN BST b ON a.N = b.P
Order by a.N 
