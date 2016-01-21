         CLIPS (6.30 3/17/15)
CLIPS> (facts)
f-0     (initial-fact)
For a total of 1 fact.
CLIPS> ls
ls
CLIPS> (ls)

[EXPRNPSR3] Missing function declaration for ls.
CLIPS> (defrule duck "Here comes the quack" (sound-is quack) =>(assert (animal-is duck)))
CLIPS> (agenda)
CLIPS> (assert (sound-is duck))
<Fact-1>
CLIPS> (watch all)
CLIPS> (agenda)
CLIPS> (run)
<== Focus MAIN
0 rules fired        Run time is 0.00599999999997181 seconds.
0.0 rules per second.
2 mean number of facts (2 maximum).
1 mean number of instances (1 maximum).
0 mean number of activations (0 maximum).
CLIPS> (facts)
f-0     (initial-fact)
f-1     (sound-is duck)
For a total of 2 facts.
CLIPS> (clear)
<== Focus MAIN
==> Focus MAIN
==> instance [initial-object] of INITIAL-OBJECT
MSG >> create ED:1 (<Instance-initial-object>)
HND >> create primary in class USER
       ED:1 (<Instance-initial-object>)
HND << create primary in class USER
       ED:1 (<Instance-initial-object>)
MSG << create ED:1 (<Instance-initial-object>)
MSG >> init ED:1 (<Instance-initial-object>)
HND >> init primary in class USER
       ED:1 (<Instance-initial-object>)
HND << init primary in class USER
       ED:1 (<Instance-initial-object>)
MSG << init ED:1 (<Instance-initial-object>)
==> f-0     (initial-fact)
CLIPS> (agenda)
CLIPS> (assert (animal-is duck))
==> f-1     (animal-is duck)
<Fact-1>
CLIPS> (defrule duck
   (animal-is duck)
=>
   (assert(sound-is quack)))
==> Activation 0      duck: f-1
CLIPS> (agenda
)
0      duck: f-1
For a total of 1 activation.
CLIPS> (run)
FIRE    1 duck: f-1
==> f-2     (sound-is quack)
<== Focus MAIN
1 rules fired        Run time is 0.01400000000001 seconds.
71.4285714285204 rules per second.
3 mean number of facts (3 maximum).
1 mean number of instances (1 maximum).
1 mean number of activations (1 maximum).
CLIPS> (facts)
f-0     (initial-fact)
f-1     (animal-is duck)
f-2     (sound-is quack)
For a total of 3 facts.
CLIPS> (save "duck.clp")
TRUE
CLIPS> 
