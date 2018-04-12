(deffacts Familia 
		  ;familiares directos
		  (Familiar CarlosMediano hombre)
		  (Familiar Victor hombre)
		  (Familiar Feliciano hombre)
		  (Familiar ElenaMayor mujer)

		  ;familiares por parte de padre
		  (Familiar AndresMayor hombre)
		  (Familiar AndresPequenio hombre)
		  (Familiar Sonsoles mujer)
		  (Familiar Julia mujer)
		  (Familiar Jesus hombre)
		  (Familiar Feliciana mujer)

		  ;familiares por parte de madre
		  (Familiar CarlosMayor hombre)
		  (Familiar CarlosPequenio hombre)
		  (Familiar Raul hombre)
		  (Familiar ManoloMayor hombre)
		  (Familiar ElenaPequenia mujer)
		  (Familiar Viqui mujer)
		  (Familiar Victoria mujer)
		  (Familiar ManoloPequenio hombre)
)

;definimos las relaciones padre-hijo dentro de la familia
(deffacts relacionPadre
		  ;familiares directos
		  (Relacion padre Feliciano CarlosMediano)
		  (Relacion padre Feliciano Victor)
		  (Relacion padre Jesus Feliciano)
		  (Relacion padre ManoloMayor ElenaMayor)
		  

		  ;familiares por parte de padre
		  (Relacion padre AndresMayor AndresPequenio)
		  (Relacion padre AndresMayor Sonsoles)
		  (Relacion padre Jesus AndresMayor)

		  ;familiares por parte de madre
		  (Relacion padre CarlosMayor Raul)
		  (Relacion padre CarlosMayor ElenaPequenia)
		  (Relacion padre CarlosMayor CarlosPequenio)
		  (Relacion padre ManoloMayor Viqui)
		  (Relacion padre ManoloMayor ManoloPequenio)
)

;definimos las relaciones de matrimonio dentro de la familia
(deffacts relacionMatrimonio
		  (Relacion marido Feliciano ElenaMayor)
		  (Relacion marido ManoloMayor Victoria)
		  (Relacion marido Jesus Feliciana)
		  (Relacion marido CarlosMayor Viqui)
		  (Relacion marido AndresMayor Julia)
)

;definimos las dualidades entre los componentes de la familia
(deffacts relacionDualidad
		  (dualidad abuelo nieto)
		  (dualidad padre hijo)
		  (dualidad sobrino tio)
		  (dualidad marido marido)
		  (dualidad primo primo)
		  (dualidad cuniado cuniado)
		  (dualidad suegro yerno)
)

;definimos las relaciones no directas entre los componentes
;de la familia
(deffacts relacionNoDirecta
	(Composicion hermano hijo padre)
	(Composicion abuelo padre padre)
	(Composicion abuelo marido abuelo);para el nieto de la abuela
	(Composicion sobrino hijo hermano)
	(Composicion tio marido tio)
	(Composicion cuniado marido hermano)
	(Composicion hijo hijo marido);para el hijo de la madre
	(Composicion padre marido padre)
	(Composicion suegro padre marido)
	(Composicion primo hijo tio)
)

;indicamos a CLIPS como decir el femenino de todas las relaciones
(deffacts relacionesEnFemenino
	(femenino marido mujer)
	(femenino abuelo abuela)
	(femenino padre madre)
	(femenino primo prima)
	(femenino cuniado cuniada)
	(femenino sobrino sobrina)
	(femenino nieto nieta)
	(femenino suegro suegra)
	(femenino yerno nuera)
	(femenino hijo hija)
	(femenino hermano hermana)
	(femenino tio tia)
)

;definimos las relaciones para las explicaciones del parentesco
;definidas de las forma (explicacion relacion1 relacion2)
;relacion1 indica lo que la primera persona indicada es para el
;"intermediario de la relacion".
;relacion2 lo mismo pero con la segunda persona indicada
(deffacts explicacionRelaciones
	;explicacion de abuelo-nieto
	(explicacion padre hijo)
	(explicacion hijo padre)

	;explicacion de tio-sobrino
	(explicacion hermano hijo)
	(explicacion hijo hermano)

	;explicacion yerno-suegro
	(explicacion padre marido)
	(explicacion marido padre)

	;explicacion hermanos
	(explicacion hijo hijo)

	;explicacion cuñado
	(explicacion marido hermano)
	(explicacion hermano marido)

	;explicacion primo
	(explicacion sobrino hijo)
	(explicacion hijo sobrino)

	;explicacion tio no directo
	(explicacion marido sobrino)
	(explicacion sobrino marido)
)


