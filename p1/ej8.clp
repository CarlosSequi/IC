(defrule ComprobarExistenciaEstructuras
    ;si existe un animal sin estructura
    ?g <- (TipoAnimal (Nombre ?N1) (Estructura nil))
    ;si existe otro con etructura (el ~nil es para que no entre en bucle
    ; con un tercer animal que herede del anterior)
    (TipoAnimal (Nombre ?N2) (Estructura ?E & ~nil))
    ;y hay una relación entre ambos del tipo Es_un
    (Es_un ?N1 ?N2)

    =>

    ;eliminamos el animal sin estructura
    (retract ?g)
    ;lo asertamos de nuevo pero con la estructura correspondiente
    (assert 
        (TipoAnimal 
            (Nombre ?N1) 
            (Estructura ?E)
        )    
    ) 
)