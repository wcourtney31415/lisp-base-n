( print "What base?" )
( setq base 
    ( read ) )


( print "What number?" )
( setq myNumber 
    ( read ) )


( defun generateListRecursive 
    ( base exponent amyList myNumber ) 
    ( if 
        ( = myNumber 0 ) 
amyList
        ( let 
            ( 
                ( j 
                    ( expt base exponent ) ) ) 
            ( if 
                ( > j myNumber ) 
amyList
                ( generateListRecursive base 
                    ( + exponent 1 ) 
                    ( cons j amyList ) myNumber ) ) ) ) )


( defun generateList 
    ( base number ) 
    ( generateListRecursive base 0 
 Nil number))


( defun convertNumberRecursive 
    ( base myNumber generatedList accList ) 
    ( let 
        ( 
            ( targetListLength 
                ( length generatedList ) ) ) 
        ( if 
            ( not generatedList ) 
accList
            ( let* 
                ( 
                    ( answer 
                        ( floor 
                            ( / myNumber 
                                ( first generatedList ) ) ) ) 
                    ( nextNum 
                        ( - myNumber 
                            ( * answer 
                                ( first generatedList ) ) ) ) ) 
                ( convertNumberRecursive base nextnum 
                    ( cdr generatedList ) 
                    ( append accList 
                        ( List answer ) ) ) ) ) ) )


myNumber
( defun convertNumber 
    ( base myNumber ) 
    ( convertNumberRecursive base myNumber 
        ( generateList base myNumber ) 
        ( ) ) )


( print 
    ( convertNumber base myNumber ) )