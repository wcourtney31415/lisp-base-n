
( print "What base?" )
( setq base 
    ( read ) )


( print "What number?" )
( setq myNumber 
    ( read ) )


( defun generateListRecursive 
    ( base exponent myList myNumber ) 
    ( if 
        ( = myNumber 0 ) 
myList
        ( let 
            ( 
                ( j 
                    ( expt base exponent ) ) ) 
            ( if 
                ( > j myNumber ) 
myList
                ( generateListRecursive base 
                    ( + exponent 1 ) 
                    ( cons j myList ) myNumber ) ) ) ) )


( defun generateList 
    ( base number ) 
    ( generateListRecursive base 0 
Nil number))


( defun convertNumberRecursive 
    ( base myNumber generatedList accList ) 
    ( 
if
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
                    ( List answer ) ) ) ) ) ) 


myNumber
( defun convertNumber 
    ( base myNumber ) 
    ( convertNumberRecursive base myNumber 
        ( generateList base myNumber ) 
        ( ) ) )


(defun concatList( list )
  (format nil "~{~a~}" list))

(print (parse-integer ( concatList ( convertNumber base myNumber ) )))
