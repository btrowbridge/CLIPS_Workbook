;An Forward Chaining Inference Example

;database (fact base)
(deffacts given-facts
	(is-true A)
	(is-true B)
	(is-true C)
	(is-true D)
	(is-true E))

;Knowledge base (rule base)
(defrule r1
	(is-true Y)
	(is-true D)
=>
	(assert(is-true Z)))
(defrule r2
	(is-true X)
	(is-true B)
	(is-true E)
=>
	(assert(is-true Y)))
(defrule r3
	(is-true A)
=>
	(assert(is-true X)))
(defrule r4
	(is-true C)
=>
	(assert(is-true L)))
(defrule r5
	(is-true L)
	(is-true M)
=>
	(assert(is-true N)))

(defrule resultant-facts
	(is-true ?fact)
=>
	(printout t ?fact " is true" crlf))
	