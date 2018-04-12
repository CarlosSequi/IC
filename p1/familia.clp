;PREGUNTAMOS LOS NOMBRES DESEADOS
;Antes que nada preguntamos los nombres de los familiares de 
;los cuales queremos saber su parentesco
(defrule preguntarNombres
    ;Al no poner antecedente la regla se ejecuta de primeras si o si
    =>
    (printout t "Dime el nombre del primer componente de tu familia " crlf)
    (assert (familiar1 (read)))

    (printout t "Dime el nombre del segundo componente de tu familia " crlf)
    (assert (familiar2 (read)))
)

;-----------------------------------------------------------------------------
;-----------------------------------------------------------------------------
;-----------------------------------------------------------------------------
;-----------------------------------------------------------------------------
;ASSERTS


;definimos las relaciones no directas: abuelo, hermano, tio, cuñado
(defrule relacionNoDirecta
        (Relacion ?relacion1 ?nombre1 ?nombre2)
        (Relacion ?relacion2 ?nombre2 ?nombre3 & ~?nombre1)
        (Composicion ?deduccion ?relacion1 ?relacion2)
        =>
        (assert (Relacion ?deduccion ?nombre1 ?nombre3))
)

;definimos las dualidades entre los componentes de la familia: si X es padre 
;de Y, entonces Y es hijo de X
(defrule Dualidad
	(Relacion ?relacion ?nombre1 ?nombre2)
	(dualidad ?relacion ?deduccion)
	=>
	(assert (Relacion ?deduccion ?nombre2 ?nombre1));introducimos un nuevo hecho
)

;-----------------------------------------------------------------------------
;-----------------------------------------------------------------------------
;-----------------------------------------------------------------------------
;-----------------------------------------------------------------------------
;MASCULINO

;imprimir por pantalla masculino con explicación
(defrule impresionMasculinoExplicacion
	(familiar1 ?N1)
	(familiar2 ?N2)
	(Relacion ?tipoRelacion ?N1 ?N2)
    (Familiar ?N1 hombre)
    ;para la explicacion de las relaciones:
    (explicacion ?R1 ?R2)
    (Relacion ?R1 ?N1 ?N3)
    (Relacion ?R2 ?N2 ?N3)
    ;condicion para indicar que ya se ha dado explicación
    ;y no que remos que lo repita más veces
    (not (explicado))
	=>
	(printout t ?N1 " es " ?tipoRelacion " de " ?N2 crlf)
    (printout t "porque " ?N1 " es " ?R1 " de " ?N3 " y " crlf)
    (printout t ?N2 " es " ?R2 " de " ?N3 crlf)
    (assert (explicado))
)

;imprimir por pantalla masculino sin explicacion (relaciones directas)
(defrule impresionMasculino
    (familiar1 ?N1)
    (familiar2 ?N2)
    (Relacion ?tipoRelacion ?N1 ?N2)
    (Familiar ?N1 hombre)
    (Relacion ?tipoRelacion2 ?N1 ?N3)
    (Relacion ?tipoRelacion3 ?N2 ?N3)
    (not (explicado))
    =>
    (printout t ?N1 " es " ?tipoRelacion " de " ?N2 crlf)
    (assert (explicado))
)


;-----------------------------------------------------------------------------
;-----------------------------------------------------------------------------
;-----------------------------------------------------------------------------
;-----------------------------------------------------------------------------
;FEMENINO

;imprimir por pantalla femenino con explicación
(defrule impresionFemeninoExplicacion
    (familiar1 ?N1)
    (familiar2 ?N2)
    (Relacion ?tipoRelacion ?N1 ?N2)
    (Familiar ?N1 mujer)
    (femenino ?tipoRelacion ?relacionFemenina)
    ;para la explicacion de las relaciones:
    (explicacion ?R1 ?R2)
    (Relacion ?R1 ?N1 ?N3)
    (Relacion ?R2 ?N2 ?N3)
    ;definimos el femenino también para la explicación
    (femenino ?R1 ?relacionFemenina2)
    (not (explicado))
    =>
    (printout t ?N1 " es " ?relacionFemenina " de " ?N2 crlf)
    (printout t "porque " ?N1 " es " ?relacionFemenina2 " de " ?N3 " y " crlf)
    (printout t ?N2 " es " ?R2 " de " ?N3 crlf)
    (assert (explicado))
)

;imprimir por pantalla femenino sin explicacion
(defrule impresionFemenino
        (familiar1 ?N1)
        (familiar2 ?N2)
        (Relacion ?tipoRelacion ?N1 ?N2)
        (Familiar ?N1 mujer)
        (femenino ?tipoRelacion ?relacionFemenina)
        (not (explicado))
        =>
        (printout t ?N1 " es " ?relacionFemenina " de " ?N2 crlf)
        (assert (explicado))
)