;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;DEFINICIÓN DE HECHOS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;deportes posibles
(deffacts Deportes 
                  (Deporte Futbol)
                  (Deporte Baloncesto)
                  (Deporte Volley)
                  (Deporte Tenis)
)

;para poder repetir cuantas veces sea necesario 
;la pregunta en caso de que e equivoque el 
;usuario al introducir la respuesta
(deffacts hechoAceptacion
      (Aceptacion noAceptado)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;DEFINICIÓN DE REGLAS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;pedimos al usuario su deporte favorito
(defrule preguntarDeporte
    ;Comprobamos si la contestación anterior ha sido aceptada o no.
    ;Almacenamos en la variable g la dirección del hecho aceptación.
    ?g <- (Aceptacion noAceptado)
    =>
    (printout t "Deporte preferido:" crlf)
    (printout t "a)Futbol  " "  b)Baloncesto" crlf)
    (printout t "c)Volley  " "  d)Tenis" crlf)
    
    ;leemos de teclado el deporte 
    (assert (deporteElegido (read)))
    ;borramos este hecho para que si el usuario se equivoca
    ;introduciendo el deporte, entonces se ejecute otra vez esta
    ;misma regla. Esto se fundamenta en que cada vez que insertamos
    ;un hecho nuevo, CLIPS vuelve a ejecutar todas las reglas para
    ;ver si ese hecho encaja en alguna regla. La explicación
    ;de que halla que borrarlo es que si introducimos un hecho 
    ;con el mismo nombre "noAceptado", que ya existía, entonces
    ;CLIPS no lo aserta, por lo que no se vuelve a lanzar la regla.
    (retract ?g)
)

;En caso de no existir el deporte que ha introducido por teclado...
(defrule denegarContestacion
    ;almacenamos lo escrito por teclado en D1
    ?g<-(deporteElegido ?D1)
    ;si no existe...
    (not (Deporte ?D1))
    =>
    (printout t ?D1 " no es una opcion valida, vuelva a contestar por favor." crlf)
    (assert (Aceptacion noAceptado))
    (retract ?g)
)

;En caso de que si exista...
(defrule aceptarContestacion
    ;almacenamos lo escrito por teclado en D1
    (deporteElegido ?D1)
    ;si existe...
    (Deporte ?D1) 
    =>
    (printout t "Vaya, mi tambien me gusta mucho el " ?D1 crlf)
)

