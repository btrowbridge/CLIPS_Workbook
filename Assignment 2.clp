;Assignment 2v2
;Machine Learning
;Bradley Trowbridge

;Database
(deffacts given
        (link e a 1)
        (link a b 5)
        (link a c 1)
        (link c b 1)
        (link b d 1))


;Knowledge base
(defrule link-to-path
        (link ?node1 ?node2 ?cost1)
=>
        (assert(path ?node1 ?node2 (sym-cat ?node1 "-->" ?node2) ?cost1)))

(defrule add-link-to-route
        (link ?node1 ?node2 ?cost1)
        (path ?node2 ?node3 ?route ?cost2)
=>
        (assert(path ?node1 ?node3 (sym-cat ?node1 "-->" ?route) (+ ?cost1 ?cost2))))

(defrule link-print
        (path ?node1 ?node2 ?route ?cost1)
=>

        (printout t "The cost of " ?route " is " ?cost1 crlf))
