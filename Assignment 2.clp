;Assignment 2
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
(defrule link-cost
        (link ?node1 ?node2 ?cost1)
        (link ?node2 ?node3 ?cost2)
=>
        (assert(link (sym-cat ?node1 "-->" ?node2) ?node3 (+ ?cost1 ?cost2))))

(defrule link-print
        (link ?node1 ?node2 ?cost1)
=>

        (printout t "The cost of " ?node1 "-->" ?node2 " is " ?cost1 crlf))