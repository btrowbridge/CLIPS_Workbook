;Programming assignment 1 v2

;fact base
(deffacts given-facts
        (link 1 2)
        (link 2 3)
        (link 2 4)
        (link 2 5)
        (link 5 6)
        (link 6 7)
        (link 6 7)
        (link 7 2))

;knowledge base
(defrule direct-path
        (link ?src ?dest)
=>
        (assert(path ?src ?dest)))

(defrule indirect-path
        (path ?a ?b)
        (path ?b ?c)
=>
        (assert (path ?a ?c)))
(defrule path-from-2
        (path 2 ?dest)
=>
        (printout t "There is a path from 2 to " ?dest crlf))