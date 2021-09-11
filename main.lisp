( defun ret 
    ( x ) 
    ( reverse 
        ( reverse x ) ) )


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
        ( ret amyList ) 
        ( let 
            ( 
                ( j 
                    ( expt base exponent ) ) ) 
            ( if 
                ( > j myNumber ) 
                ( ret amyList ) 
                ( generateListRecursive base 
                    ( + exponent 1 ) 
                    ( cons j amyList ) myNumber ) ) ) ) )


( defun generateList 
    ( base number ) 
    ( generateListRecursive base 0 
Nilnumber))


( defun convertNumberRecursive 
    ( base myNumber generatedList accList ) 
    ( let 
        ( 
            ( targetListLength 
                ( length generatedList ) ) ) 
        ( if 
            ( not generatedList ) 
            ( ret accList ) 
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