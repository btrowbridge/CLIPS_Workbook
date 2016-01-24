;Machine Learning Programming Assignment 2
(deffacts start-point
        (node 2))

(defrule 1-to-2
        (node 1)
        =>
        (assert(node 2)))
(defrule 2-to-3
        (node 2)
        =>
        (assert(node 3))) 
(defrule 2-to-4
        (node 2)
        =>
        (assert(node 4))) 
(defrule 2-to-5
        (node 2)
        =>
        (assert(node 5)))
 (defrule 5-to-6
        (node 5)
        =>
        (assert(node 6)))
(defrule 6-to-7
        (node 6)
        =>
        (assert(node 7)))
(defrule 7-to-6
        (node 7)
        =>
        (assert(node 2)))

(defrule path-found
        (node ?nodeNum)
        =>
        (printout t "There is a path from 2 to " ?nodeNum crlf))
