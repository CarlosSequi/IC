;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



                    ;Práctica final Ingeniería del conocimiento
                           ;Carlos Manuel Sequí Sánchez
                                ;Curso 2016-2017




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;DEFINICIÓN DE HECHOS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;licencias libres
(deffacts tiposLicencias 
    (libres ApacheSoftware BSDOriginal GNUPublic MozillaPublic GNUReducida)
    (noLibres RP)

    (compatGNU GNUPublic GNUReducida)
    (noCompatGnu ApacheSoftware BSDOriginal MozillaPublic)

    (licenciasDobles MozillaPublic)
    (sinLicenciasDobles ApacheSoftware BSDOriginal)

    (OSI ApacheSoftware)
    (noOSI BSDOriginal)

    (copyleft GNUPublic)
    (noCopyleft GNUReducida)
)

;posibles respuestas
(deffacts respuestaPosible
    (respuesta si no SI NO)
    (respuestaEscogida puede)
    (respuestaEscogida2 puede)
    (respuestaEscogida3 puede)
    (respuestaEscogida4 puede)
    (respuestaEscogida5 puede)
)

;para comprobar si ha dicho que si
(deffacts respuestaAfirmativa
    (afirmacion si)
    (afirmacion SI)
)

;eleccion del modulo a ejecutar
(deffacts moduloAEjecutar
    (modulo 1 2 3)
    (moduloEscogido 8)
)

;nombres de las licencias para controlar
;que se introducen bien por teclado
(deffacts controlLicenciasEscogidas
    (licenses ApacheSoftware BSDOriginal GNUPublic MozillaPublic GNUReducida ReciprocalPublic)
    (licenciaEscogida1 licenciaNoValida)
    (licenciaEscogida2 licenciaNoValida2)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;HECHOS PARA EL MODULO 2

;caracteristicas licencias
(deffacts caracteristicasLicencias
    (licencia ApacheSoftware noCopyleft sinLicenciasDobles noCompatibilidadGNU certificadoOSI patentes libre)
    (licencia BSDOriginal noCopyleft sinLicenciasDobles noCompatibilidadGNU noCertificadoOSI patentesOpcionales libre)
    (licencia GNUPublic copyleft sinLicenciasDobles compatibilidadGNU certificadoOSI patentes libre)
    (licencia MozillaPublic copyleftLimitado conLicenciasDobles noCompatibilidadGNU certificadoOSI patentes libre)
    (licencia GNUReducida noCopyleft sinLicenciasDobles compatibilidadGNU certificadoOSI patentes libre)
    (licencia ReciprocalPublic copyleft sinLicenciasDobles noCompatibilidadGNU certificadoOSI patentesOpcionales noLibre)
)

;posibles valores para los atributos a evaluar del arbol
(deffacts valoresCopyLeft
    (copy noCopyleft copyleftLimitado copyleft)
)

(deffacts valoresLicenciasDobles
    (dobles sinLicenciasDobles conLicenciasDobles)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;HECHOS PARA EL MODULO 3

;para poder repetir cuantas veces sea necesario 
;la pregunta en caso de que e equivoque el 
;usuario al introducir la respuesta
(deffacts hechoAceptacionDatos
      (AceptacionDatos noAceptado)
)

(deffacts identificacionDePersonas
    (dato_identificacion nula ideologia)
    (dato_identificacion nula afiliacionSindical)
    (dato_identificacion nula religion)
    (dato_identificacion nula creencias)
    (dato_identificacion nula origenRacialEtnico)
    (dato_identificacion parcial salud)
    (dato_identificacion nula vidaSexual)
    (dato_identificacion total DNI)
    (dato_identificacion total direccion)
    (dato_identificacion total imagen)
    (dato_identificacion total voz)
    (dato_identificacion total numSeguridadSocial)
    (dato_identificacion total telefono)
    (dato_identificacion total marcasFisicas)
    (dato_identificacion total nombreApellidos)
    (dato_identificacion total firma)
    (dato_identificacion total firmaElectronia)
    (dato_identificacion total tarjetaSanitaria)
    (dato_identificacion parcial datosEstado)
    (dato_identificacion parcial datosFamilia)
    (dato_identificacion parcial fechaNacimiento)
    (dato_identificacion parcial lugarNacimiento)
    (dato_identificacion parcial edad)
    (dato_identificacion parcial sexo)
    (dato_identificacion parcial nacionalidad)
    (dato_identificacion parcial lenguaMaterna)
    (dato_identificacion parcial caracteristicasFisicas)
    (dato_identificacion parcial caracteristicasAlojamiento)
    (dato_identificacion nula vivienda)
    (dato_identificacion nula situacionFamiliar)
    (dato_identificacion nula propiedades)
    (dato_identificacion nula posesiones)
    (dato_identificacion nula aficionesYEstilosVida)
    (dato_identificacion parcial pertenenciaClubesAsociaciones)
    (dato_identificacion nula licencias)
    (dato_identificacion parcial permisosYAutorizaciones)
    (dato_identificacion parcial formacion)
    (dato_identificacion parcial titulaciones)
    (dato_identificacion parcial historialEstudiante)
    (dato_identificacion nula experienciaProfesional)
    (dato_identificacion parcial pertenenciaAColegiosAsocia)
    (dato_identificacion parcial profesion)
    (dato_identificacion parcial puestoDeTrabajo)
    (dato_identificacion parcial datosNoEconomicosDeNomina)
    (dato_identificacion parcial historialDelTrabajador)
    (dato_identificacion nula actividadesYNegocios)
    (dato_identificacion parcial licenciasComerciales)
    (dato_identificacion nula subscripcionesAPublicacionesOMediosDeComunicacion)
    (dato_identificacion parcial creacionesArtisticas)
    (dato_identificacion parcial creacionesLiterarias)
    (dato_identificacion parcial creacionesCientificas)
    (dato_identificacion parcial creacionesTecnicas)
    (dato_identificacion nula ingresos)
    (dato_identificacion parcial rentas)
    (dato_identificacion parcial inversiones)
    (dato_identificacion parcial bienesPatrimoniales)
    (dato_identificacion nula creditos)
    (dato_identificacion parcial prestamos)
    (dato_identificacion parcial avales)
    (dato_identificacion parcial datosBancarios)
    (dato_identificacion parcial planesDePensiones)
    (dato_identificacion parcial jubilacion)
    (dato_identificacion parcial datosEconomicosDeNomina)
    (dato_identificacion nula impuestos)
    (dato_identificacion parcial seguros)
    (dato_identificacion parcial hipotecas)
    (dato_identificacion nula subsidios)
    (dato_identificacion parcial beneficios)
    (dato_identificacion parcial historialDeCreditos)
    (dato_identificacion parcial tarjetasDeCredito)
    (dato_identificacion parcial bienesYServiciosSuministradosPorElAfectado)
    (dato_identificacion parcial bienesYServiciosRecibidosPorElAfectado)
    (dato_identificacion parcial transaccionesFinancieras)
    (dato_identificacion parcial indemnizaciones)

    ;inicialmente tenemos que los datos escogidos no son identificables
    ;pero, si me meto en una regla que es capaz de decirme que los datos
    ;son identificables, entonces hare un retract para no meterme en las
    ;sucesivas reglas (incluida la que me dice que los datos no son
    ;capaces de identificar a una persona)
    (datosNoIdentificables)
)

(deffacts tiposDatos
    (tipoDato DatosEspecialmenteProtegidos ideologia)
    (tipoDato DatosEspecialmenteProtegidos afiliacionSindical)
    (tipoDato DatosEspecialmenteProtegidos religion)
    (tipoDato DatosEspecialmenteProtegidos creencias)
    (tipoDato DatosEspecialmenteProtegidos origenRacialEtnico)
    (tipoDato DatosEspecialmenteProtegidos salud)
    (tipoDato DatosEspecialmenteProtegidos vidaSexual)
    (tipoDato DatosDeCaracterIdentificativo DNI)
    (tipoDato DatosDeCaracterIdentificativo direccion)
    (tipoDato DatosDeCaracterIdentificativo imagen)
    (tipoDato DatosDeCaracterIdentificativo voz)
    (tipoDato DatosDeCaracterIdentificativo numSeguridadSocial)
    (tipoDato DatosDeCaracterIdentificativo telefono)
    (tipoDato DatosDeCaracterIdentificativo marcasFisicas)
    (tipoDato DatosDeCaracterIdentificativo nombreApellidos)
    (tipoDato DatosDeCaracterIdentificativo firma)
    (tipoDato DatosDeCaracterIdentificativo firmaElectronia)
    (tipoDato DatosDeCaracterIdentificativo tarjetaSanitaria)
    (tipoDato DatosRelativosACaracteristicasPersonales datosEstado)
    (tipoDato DatosRelativosACaracteristicasPersonales datosFamilia)
    (tipoDato DatosRelativosACaracteristicasPersonales fechaNacimiento)
    (tipoDato DatosRelativosACaracteristicasPersonales lugarNacimiento)
    (tipoDato DatosRelativosACaracteristicasPersonales edad)
    (tipoDato DatosRelativosACaracteristicasPersonales sexo)
    (tipoDato DatosRelativosACaracteristicasPersonales nacionalidad)
    (tipoDato DatosRelativosACaracteristicasPersonales lenguaMaterna)
    (tipoDato DatosRelativosACaracteristicasPersonales caracteristicasFisicas)
    (tipoDato DatosAcademicosYProfesionales caracteristicasAlojamiento)
    (tipoDato DatosAcademicosYProfesionales vivienda)
    (tipoDato DatosAcademicosYProfesionales situacionFamiliar)
    (tipoDato DatosAcademicosYProfesionales propiedades)
    (tipoDato DatosAcademicosYProfesionales posesiones)
    (tipoDato DatosAcademicosYProfesionales aficionesYEstilosVida)
    (tipoDato DatosAcademicosYProfesionales pertenenciaClubesAsociaciones)
    (tipoDato DatosAcademicosYProfesionales licencias)
    (tipoDato DatosAcademicosYProfesionales permisosYAutorizaciones)
    (tipoDato DatosAcademicosYProfesionales formacion)
    (tipoDato DatosAcademicosYProfesionales titulaciones)
    (tipoDato DatosAcademicosYProfesionales historialEstudiante)
    (tipoDato DatosAcademicosYProfesionales experienciaProfesional)
    (tipoDato DatosAcademicosYProfesionales pertenenciaAColegiosAsocia)
    (tipoDato DetallesDeEmpleo profesion)
    (tipoDato DetallesDeEmpleo puestoDeTrabajo)
    (tipoDato DetallesDeEmpleo datosNoEconomicosDeNomina)
    (tipoDato DetallesDeEmpleo historialDelTrabajador)
    (tipoDato DatosQueAportanInfoComercial actividadesYNegocios)
    (tipoDato DatosQueAportanInfoComercial licenciasComerciales)
    (tipoDato DatosQueAportanInfoComercial subscripcionesAPublicacionesOMediosDeComunicacion)
    (tipoDato DatosQueAportanInfoComercial creacionesArtisticas)
    (tipoDato DatosQueAportanInfoComercial creacionesLiterarias)
    (tipoDato DatosQueAportanInfoComercial creacionesCientificas)
    (tipoDato DatosQueAportanInfoComercial creacionesTecnicas)
    (tipoDato DatosEconomicosFinancierosSeguros ingresos)
    (tipoDato DatosEconomicosFinancierosSeguros rentas)
    (tipoDato DatosEconomicosFinancierosSeguros inversiones)
    (tipoDato DatosEconomicosFinancierosSeguros bienesPatrimoniales)
    (tipoDato DatosEconomicosFinancierosSeguros creditos)
    (tipoDato DatosEconomicosFinancierosSeguros prestamos)
    (tipoDato DatosEconomicosFinancierosSeguros avales)
    (tipoDato DatosEconomicosFinancierosSeguros datosBancarios)
    (tipoDato DatosEconomicosFinancierosSeguros planesDePensiones)
    (tipoDato DatosEconomicosFinancierosSeguros jubilacion)
    (tipoDato DatosEconomicosFinancierosSeguros datosEconomicosDeNomina)
    (tipoDato DatosEconomicosFinancierosSeguros impuestos)
    (tipoDato DatosEconomicosFinancierosSeguros seguros)
    (tipoDato DatosEconomicosFinancierosSeguros hipotecas)
    (tipoDato DatosEconomicosFinancierosSeguros subsidios)
    (tipoDato DatosEconomicosFinancierosSeguros beneficios)
    (tipoDato DatosEconomicosFinancierosSeguros historialDeCreditos)
    (tipoDato DatosEconomicosFinancierosSeguros tarjetasDeCredito)
    (tipoDato DatosTransaccionesBienesServicios bienesYServicionSuministradosPorElAfectado)
    (tipoDato DatosTransaccionesBienesServicios bienesYServicionRecibidosPorElAfectado)
    (tipoDato DatosTransaccionesBienesServicios transaccionesFinancieras)
    (tipoDato DatosTransaccionesBienesServicios indemnizaciones)

    (salidaFinal fin)
)

(deffacts tiposOrganizaciones
    (tiposOrganizacionesPosibles UD EP ODAP)
    (tipoOrganizacionEscogido AAAA)
)

(deffacts tiposLugares
    (tiposLugaresPosibles asia europa oceania america africa)
    (lugarEscogido AAAA)
)

(deffacts tiposUsos
    (tiposUsosDisponibles domestico negocios judiciales seguridad)
    (usoEscogido AAAA)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule modulosDisponibles
    ;para que entre de primera mano en esta regla...
    (modulo ?n1 ?n2 ?n3)
    ;para comprobar que se introduce un valor valido
    ?q<-(moduloEscogido ?o & ~?n1 & ~?n2 & ~?n3)
    =>
    (printout t "Modulo 1: Elección de licencia de software" crlf) 
    (printout t "Modulo 2: Compatibilidad de software a usar con la licencia de mi software" crlf) 
    (printout t "Modulo 3: Asesoramiento sobre ley de protección de datos" crlf)  
    ;borramos el modulo escogido anteriormente
    (retract ?q)
    ;leemos de teclado el modulo 
    (assert (moduloEscogido (read)))
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;DEFINICIÓN DE REGLAS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule licenciasDisponibles
    ;para controlar que reglas vamos a lanzar y que reglas no:
    (moduloEscogido 1)
    =>
    (printout t "LICENCIAS DISPONIBLES:" crlf)    
    (printout t "1.ApacheSoftware " "2.BSDOriginal " crlf) 
    (printout t "3.GNUPublic " "4.MozillaPublic " crlf) 
    (printout t "5.GNUReducida " "6.ReciprocalPublic " crlf)
    (assert (Aceptacion mod1_1))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;PREGUNTA 1     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;preguntamos al usuario
(defrule pregunta1
    ;Comprobamos si la contestación anterior ha sido aceptada o no.
    ;Almacenamos en la variable g la dirección del hecho aceptación.
    (Aceptacion mod1_1)
    (respuesta ?res1 ?res2 ?res3 ?res4)
    ?u <- (respuestaEscogida ?r1 & ~?res1 & ~?res2 & ~?res3 & ~?res4)
    =>
    (printout t "¿Busca una licencia libre?:" crlf)   
    ;borramos la respuesta escogida anterior para poder volver a leerla
    (retract ?u) 
    ;leemos de teclado la respuesta 
    (assert (respuestaEscogida (read)))
)


;En caso de que si exista...
(defrule aceptarAfirmacion1
    (Aceptacion mod1_1)
    ;almacenamos lo escrito por teclado en r1
    ;para poder enviarlo a la segunda pregunta
    ;en este caso
    (respuestaEscogida ?r1)
    ;si es afirmativa
    (afirmacion ?r1)
    ;licencias libres
    (libres ?l1 ?l2 ?l3 ?l4 ?l5)
    =>
    (printout t "LICENCIAS LIBRES DISPONIBLES:" crlf)
    (printout t "1."?l1 " 2."?l2 " 3."?l3 crlf)
    (printout t "4."?l4 " 5."?l5 crlf)
    (printout t "Se descarta ReciprocalPublic ya que no es una licencia libre" crlf)
    (assert(Aceptacion mod1_2))
)


;En caso de que si exista...
(defrule aceptarNegacion1
    (Aceptacion mod1_1)
    ;tomamos la respuesta escrita por teclado
    (respuestaEscogida ?r1)
    ;si es afirmativa
    (not(afirmacion ?r1))
    ;licencias que no son libres
    (noLibres ?n)
    =>
    (printout t "La licencia que buscas es " ?n", ya que es la unica licencia que no es libre" crlf)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;PREGUNTA 2     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;preguntamos al usuario
(defrule pregunta2
    ;Comprobamos si la contestación anterior ha sido aceptada o no.
    ;Almacenamos en la variable g la dirección del hecho aceptación.
    (Aceptacion mod1_2)
    (respuesta ?res1 ?res2 ?res3 ?res4)
    ?u <- (respuestaEscogida2 ?r2 & ~?res1 & ~?res2 & ~?res3 & ~?res4)
    =>
    (printout t "¿Ha de tener compatibilidad GNU?:" crlf)
    ;borramos la respuesta escogida anterior para poder volver a leerla
    (retract ?u)     
    ;leemos de teclado la respuesta 
    (assert (respuestaEscogida2 (read)))
)

;En caso de que si exista...
(defrule aceptarAfirmacion2
    (Aceptacion mod1_2)
    ;almacenamos lo escrito por teclado en r1
    ;para poder enviarlo a la segunda pregunta
    ;en este caso
    (respuestaEscogida2 ?r2)
    ;si es afirmativa
    (afirmacion ?r2)
    ;lista de licencias compatibles GNU
    (compatGNU ?l1 ?l2)
    =>
    (printout t "LICENCIAS DISPONIBLES:" crlf) 
    (printout t "1."?l1 " 2."?l2 crlf)
    (printout t "Se descartan ApacheSoftware, BSDOriginal y MozillaPublic ya que no tienen compatibilidad GNU" crlf)
    (assert(Aceptacion mod1_3))
)


;En caso de que si exista...
(defrule aceptarNegacion2
    (Aceptacion mod1_2)
    ;tomamos la respuesta escrita por teclado
    (respuestaEscogida2 ?r2)
    ;si es afirmativa
    (not(afirmacion ?r2))
    ;lista licencias no compatibles GNU
    (noCompatGnu ?l1 ?l2 ?l3)
    =>
    (printout t "LICENCIAS DISPONIBLES:" crlf)  
    (printout t "1."?l1 " 2."?l2 " 3."?l3 crlf)
    (printout t "Se descartan GPL y LGPL ya que si que tienen compatibilidad GNU" crlf)
    (assert(Aceptacion mod1_4))
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;PREGUNTA 3     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;preguntamos al usuario
(defrule pregunta3
    ;Comprobamos si la contestación anterior ha sido aceptada o no.
    ;Almacenamos en la variable g la dirección del hecho aceptación.
    (Aceptacion mod1_3)
    (respuesta ?res1 ?res2 ?res3 ?res4)
    ?u <- (respuestaEscogida3 ?r3 & ~?res1 & ~?res2 & ~?res3 & ~?res4)
    =>
    (printout t "¿Debe tener copyleft?:" crlf)  
    ;borramos la respuesta escogida anterior para poder volver a leerla
    (retract ?u)   
    ;leemos de teclado la respuesta 
    (assert (respuestaEscogida3 (read)))
)

;En caso de que si exista...
(defrule aceptarAfirmacion3
    (Aceptacion mod1_3)
    ;almacenamos lo escrito por teclado en r1
    ;para poder enviarlo a la segunda pregunta
    ;en este caso
    (respuestaEscogida3 ?r3)
    ;si es afirmativa
    (afirmacion ?r3)
    ;licencias con copyleft
    (copyleft ?l)
    =>
    (printout t "La licencia que busca es " ?l " ya que posee copyleft" crlf)
)


;En caso de que si exista...
(defrule aceptarNegacion3
    (Aceptacion mod1_3)
    ;tomamos la respuesta escrita por teclado
    (respuestaEscogida3 ?r3)
    ;si es afirmativa
    (not(afirmacion ?r3))
    ;licencias sin copyleft
    (noCopyleft ?l)
    =>
    (printout t "La licencia que busca es " ?l " ya que no posee copyleft" crlf)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;PREGUNTA 4     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;preguntamos al usuario
(defrule pregunta4
    ;Comprobamos si la contestación anterior ha sido aceptada o no.
    ;Almacenamos en la variable g la dirección del hecho aceptación.
    (Aceptacion mod1_4)
    (respuesta ?res1 ?res2 ?res3 ?res4)
    ?u <- (respuestaEscogida4 ?r4 & ~?res1 & ~?res2 & ~?res3 & ~?res4)
    =>
    (printout t "¿Quiere que contenga licencias dobles?:" crlf) 
    ;borramos la respuesta escogida anterior para poder volver a leerla
    (retract ?u)    
    ;leemos de teclado la respuesta 
    (assert (respuestaEscogida4 (read)))
)


;En caso de que si exista...
(defrule aceptarAfirmacion4
    (Aceptacion mod1_4)
    ;almacenamos lo escrito por teclado en r1
    ;para poder enviarlo a la segunda pregunta
    ;en este caso
    (respuestaEscogida4 ?r4)
    ;si es afirmativa
    (afirmacion ?r4)
    ;licencias dobles
    (licenciasDobles ?l)
    =>
    (printout t "Su licencia ideal es " ?l " ya que permite licencias dobles" crlf)
)


;En caso de que si exista...
(defrule aceptarNegacion4
    (Aceptacion mod1_4)
    ;tomamos la respuesta escrita por teclado
    (respuestaEscogida4 ?r4)
    ;si es afirmativa
    (not(afirmacion ?r4))
    ;licencias simples
    (sinLicenciasDobles ?l1 ?l2)
    =>
    (printout t "LICENCIAS DISPONIBLES:" crlf)  
    (printout t "1."?l1 " 2."?l2  crlf)
    (printout t "Se descarta MozillaPublic ya que si permite licencias dobles" crlf)
    (assert(Aceptacion mod1_5))
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;PREGUNTA 5     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;preguntamos al usuario
(defrule pregunta5
    ;Comprobamos si la contestación anterior ha sido aceptada o no.
    ;Almacenamos en la variable g la dirección del hecho aceptación.
    (Aceptacion mod1_5)
    (respuesta ?res1 ?res2 ?res3 ?res4)
    ?u <- (respuestaEscogida5 ?r5 & ~?res1 & ~?res2 & ~?res3 & ~?res4)
    =>
    (printout t "¿Ha de poseer el certificado OSI?:" crlf) 
    ;borramos la respuesta escogida anterior para poder volver a leerla
    (retract ?u)    
    ;leemos de teclado la respuesta 
    (assert (respuestaEscogida5 (read)))
)


;En caso de que si exista...
(defrule aceptarAfirmacion5
    (Aceptacion mod1_5)
    ;almacenamos lo escrito por teclado en r1
    ;para poder enviarlo a la segunda pregunta
    ;en este caso
    (respuestaEscogida5 ?r5)
    ;si es afirmativa
    (afirmacion ?r5)
    ;licencias con aceptacion OSI
    (OSI ?l)
    =>
    (printout t "Su licencia idonea es " ?l " ya que es una licencia con certificado OSI"crlf)
)


;En caso de que si exista...
(defrule aceptarNegacion5
    (Aceptacion mod1_5)
    ;tomamos la respuesta escrita por teclado
    (respuestaEscogida5 ?r5)
    ;si es afirmativa
    (not(afirmacion ?r5))
    ;licencias sin certificado OSI
    (noOSI ?l)
    =>
    (printout t "Su licencia idonea es " ?l " ya que es una licencia sin certificado OSI"crlf)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;MODULO 2


(defrule lecturaLicencia1
    ;para controlar que reglas vamos a lanzar y que reglas no:
    (moduloEscogido 2)
    ;para controlar que se introducen bien los nombres de las licencias
    (licenses ?l1 ?l2 ?l3 ?l4 ?l5 ?l6)
    ?u <- (licenciaEscogida1 ?r1 & ~?l1 & ~?l2 & ~?l3 & ~?l4 & ~?l5 & ~?l6)
    =>
    (printout t "LICENCIAS DISPONIBLES:" crlf)    
    (printout t "1.ApacheSoftware " "2.BSDOriginal " crlf) 
    (printout t "3.GNUPublic " "4.MozillaPublic " crlf) 
    (printout t "5.GNUReducida " "6.ReciprocalPublic " crlf)

    (printout t "Escriba el nombre de la primera licencia (licencia para el software de desarrollo) para comprobar su compatibilidad con la segunda" crlf)
    ;borramos la respuesta escogida anterior para poder volver a leerla
    (retract ?u)    
    (assert (licenciaEscogida1 (read))) 
)

(defrule lecturaLicencia2
    ;para controlar que se introducen bien los nombres de las licencias
    (licenses ?l1 ?l2 ?l3 ?l4 ?l5 ?l6)
    (licenciaEscogida1 ?l1 | ?l2 | ?l3 | ?l4 | ?l5 | ?l6)
    ?i <- (licenciaEscogida2 ?r2 & ~?l1 & ~?l2 & ~?l3 & ~?l4 & ~?l5 & ~?l6)
    =>   

    (printout t "Escriba el nombre de la segunda licencia (del software a utilizar)" crlf) 
    ;borramos la respuesta escogida anterior para poder volver a leerla
    (retract ?i)   
    (assert (licenciaEscogida2 (read)))  
)

(defrule ramaArbolDecision1
    ;recogemos las licencias leidas de teclado
    (licenciaEscogida1 ?l1)
    (licenciaEscogida2 ?l2)
    ;recogemos los valores posibles de las licencias
    (copy ?a ?b ?c)
    (dobles ?nd ?d)
    ;si ninguno tiene licencias dobles
    (licencia ?l1 $? ?nd $?)
    (licencia ?l2 $? ?nd $?)
    ;si ninguno tiene copyleft
    (licencia ?l1 $? ?a $?)
    (licencia ?l2 $? ?a $?)
    =>
    (printout t "La licencia " ?l1 " y la licencia " ?l2 " pueden utilizarse conjuntamente" crlf)
    (printout t "ya que " ?l1 " es " ?nd " y " ?l2 " es " ?nd crlf)
    (printout t "y ademas " ?l1 " es " ?a " y " ?l2 " es " ?a crlf)
    (printout t "las cuales son caracteristicas que hacen que")
    (printout t " ambas licencias sean compatibles.")
)

(defrule ramaArbolDecision2
    ;recogemos las licencias leidas de teclado
    (licenciaEscogida1 ?l1)
    (licenciaEscogida2 ?l2)
    ;recogemos los valores posibles de las licencias
    (copy ?a ?b ?c)
    (dobles ?nd ?d)
    ;si ninguno tiene licencias dobles
    (licencia ?l1 $? ?nd $?)
    (licencia ?l2 $? ?nd $?)
    ;si ninguno tiene copyleft
    (licencia ?l1 $? ?a $?)
    (licencia ?l2 $? ?c $?)
    =>
    (printout t "La licencia " ?l1 " y la licencia " ?l2 " NO pueden utilizarse conjuntamente" crlf)
    (printout t "ya que " ?l1 " es " ?nd " y " ?l2 " es " ?nd crlf)
    (printout t "y ademas " ?l1 " es " ?a " y " ?l2 " es " ?c crlf)
    (printout t "las cuales son caracteristicas que hacen que")
    (printout t " ambas licencias sean incompatibles.")
)

(defrule ramaArbolDecision3
    ;recogemos las licencias leidas de teclado
    (licenciaEscogida1 ?l1)
    (licenciaEscogida2 ?l2)
    ;recogemos los valores posibles de las licencias
    (copy ?a ?b ?c)
    (dobles ?nd ?d)
    ;si ninguno tiene licencias dobles
    (licencia ?l1 $? ?nd $?)
    (licencia ?l2 $? ?nd $?)
    ;si ninguno tiene copyleft
    (licencia ?l1 $? ?c $?)
    =>
    (printout t "La licencia " ?l1 " y la licencia " ?l2 " no son compatibles" crlf)
    (printout t "Porque " ?l1 " es " ?nd " y " ?l2 " es " ?nd crlf)
    (printout t "Y ademas " ?l1 " es " ?c  crlf)
)

(defrule ramaArbolDecision4
    ;recogemos las licencias leidas de teclado
    (licenciaEscogida1 ?l1)
    (licenciaEscogida2 ?l2)
    ;recogemos los valores posibles de las licencias
    (copy ?a ?b ?c)
    (dobles ?nd ?d)
    ;si ninguno tiene licencias dobles
    (licencia ?l1 $? ?nd $?)
    (licencia ?l2 $? ?d $?)
    =>
    (printout t "La licencia " ?l1 " y la licencia " ?l2 " pueden utilizarse conjuntamente" crlf)
    (printout t "ya que " ?l1 " es " ?nd " y " ?l2 " es " ?d crlf)
    (printout t "las cuales son caracteristicas que hacen que")
    (printout t " ambas licencias sean compatibles.")

)

(defrule ramaArbolDecision5
    ;recogemos las licencias leidas de teclado
    (licenciaEscogida1 ?l1)
    (licenciaEscogida2 ?l2)
    ;recogemos los valores posibles de las licencias
    (copy ?a ?b ?c)
    (dobles ?nd ?d)
    ;si ninguno tiene licencias dobles
    (licencia ?l1 $? ?d $?)
    =>
    (printout t "La licencia " ?l1 " y la licencia " ?l2 " pueden utilizarse conjuntamente" crlf)
    (printout t "ya que " ?l1 " es " ?d  crlf)
    (printout t "las cuales son caracteristicas que hacen que")
    (printout t " ambas licencias sean compatibles.")

)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;MODULO 3

(defrule mostrarDatosManejables
    ;para controlar que reglas vamos a lanzar y que reglas no:
    (moduloEscogido 3)
    =>
    ;mostramos al usuario los datos que pueden ser manejados por el sistema
    (printout t "______________________________" crlf)
    (printout t "______________________________" crlf)
    (printout t "DATOS MANEJABLES POR EL SISTEMA:" crlf)  
    (printout t "______________________________" crlf)
    (printout t "______________________________" crlf)
    (printout t "ideologia" crlf)
    (printout t "afiliacionSindical" crlf)
    (printout t "religion" crlf)
    (printout t "creencias" crlf)
    (printout t "origenRacialEtnico" crlf)
    (printout t "salud" crlf)
    (printout t "vidaSexual" crlf)
    (printout t "DNI" crlf)
    (printout t "direccion" crlf)
    (printout t "imagen" crlf)
    (printout t "voz" crlf)
    (printout t "numSeguridadSocial" crlf)
    (printout t "telefono" crlf)
    (printout t "marcasFisicas" crlf)
    (printout t "nombreApellidos" crlf)
    (printout t "firma" crlf)
    (printout t "firmaElectronia" crlf)
    (printout t "tarjetaSanitaria" crlf)
    (printout t "datosEstadoCivil")
    (printout t "datosFamilia" crlf)
    (printout t "fechaNacimiento" crlf)
    (printout t "lugarNacimiento" crlf)
    (printout t "edad" crlf)
    (printout t "sexo" crlf)
    (printout t "nacionalidad" crlf)
    (printout t "lenguaMaterna" crlf)
    (printout t "caracteristicasFisicas" crlf)
    (printout t "caracteristicasAlojamiento" crlf)
    (printout t "vivienda" crlf)
    (printout t "situacionFamiliar" crlf)
    (printout t "propiedades" crlf)
    (printout t "posesiones" crlf)
    (printout t "aficionesYEstilosVida" crlf)
    (printout t "pertenenciaClubesAsociaciones" crlf)
    (printout t "licencias" crlf)
    (printout t "permisosYAutorizaciones" crlf)
    (printout t "formacion" crlf)
    (printout t "titulaciones" crlf)
    (printout t "historialEstudiante" crlf)
    (printout t "experienciaProfesional" crlf)
    (printout t "pertenenciaAColegiosAsociacionesProfesionales" crlf)
    (printout t "profesion" crlf)
    (printout t "puestoDeTrabajo" crlf)
    (printout t "datosNoEconomicosDeNomina" crlf)
    (printout t "historialDelTrabajador" crlf)
    (printout t "actividadesYNegocios" crlf)
    (printout t "licenciasComerciales" crlf)
    (printout t "subscripcionesAPublicacionesOMediosDeComunicacion" crlf)
    (printout t "creacionesArtisticas" crlf)
    (printout t "creacionesLiterarias" crlf)
    (printout t "creacionesCientificas" crlf)
    (printout t "creacionesTecnicas" crlf)
    (printout t "ingresos" crlf)
    (printout t "rentas" crlf)
    (printout t "inversiones" crlf)
    (printout t "bienesPatrimoniales" crlf)
    (printout t "creditos" crlf)
    (printout t "prestamos" crlf)
    (printout t "avales" crlf)
    (printout t "datosBancarios" crlf)
    (printout t "planesDePensiones" crlf)
    (printout t "jubilacion" crlf)
    (printout t "datosEconomicosDeNomina" crlf)
    (printout t "impuestos" crlf)
    (printout t "seguros" crlf)
    (printout t "hipotecas" crlf)
    (printout t "subsidios" crlf)
    (printout t "beneficios" crlf)
    (printout t "historialDeCreditos" crlf)
    (printout t "tarjetasDeCredito" crlf)
    (printout t "bienesYServiciosSuministradosPorElAfectado" crlf)
    (printout t "bienesYServiciosRecibidosPorElAfectado" crlf)
    (printout t "transaccionesFinancieras" crlf)
    (printout t "indemnizaciones" crlf)

    (printout t "Escoja uno por uno los datos que desea tratar (tal y como estan escritos)" crlf)
    (printout t "ESCRIBA ''fin'' PARA CONTINUAR" crlf) 
    (assert (aceptacion mod3_1))
)

(defrule escogerDatos
    ;Comprobamos si la contestación anterior ha sido aceptada o no.
    ;Almacenamos en la variable g la dirección del hecho aceptación.
    ?g <- (aceptacion mod3_1)
    =>
    (assert (tipodatoEscogido (read))) 
    ;borramos este hecho para que si el usuario se equivoca
    ;introduciendo el deporte, entonces se ejecute otra vez esta
    ;misma regla. Esto se fundamenta en que cada vez que insertamos
    ;un hecho nuevo, CLIPS vuelve a ejecutar todas las reglas para
    ;ver si ese hecho encaja en alguna regla. La explicación
    ;de que halla que borrarlo es que si introducimos un hecho 
    ;con el mismo nombre "noAceptado", que ya existía, entonces
    ;CLIPS no lo aserta, por lo que no se vuelve a lanzar la regla.
    (assert (aceptacion datoLeido))
    (retract ?g)
)


(defrule denegarContestacion
    ?h <- (aceptacion datoLeido)
    ;almacenamos lo escrito por teclado en D1
    ?g<-(tipodatoEscogido ?D1)
    ;si no existe...
    (not (tipoDato $? ?D1))
    (not (salidaFinal ?D1))
    =>
    (printout t ?D1 " no es una opcion valida, escoja los tipos de datos tal como vienen escritos." crlf)
    (assert (aceptacion mod3_1))
    (retract ?g)
    (retract ?h)
)

(defrule aceptarContestacion
    ?h <- (aceptacion datoLeido)
    ;almacenamos lo escrito por teclado en D1
    ?g <- (tipodatoEscogido ?D1)
    (tipoDato ?tipo ?D1)
    =>
    (assert (datoEscogido ?tipo ?D1))
    (assert (aceptacion mod3_1))
    (retract ?h)
    (retract ?g)
)


(defrule finRecogidaDatos
    ?h <- (aceptacion datoLeido)
    ;almacenamos lo escrito por teclado en D1
    (tipodatoEscogido ?D1)
    (salidaFinal ?D1)
    =>
    (retract ?h)
    (assert (imprimirEscogidos))
    (assert (finEntrada fin))
)


(defrule impresionTiposEscogidos
    (imprimirEscogidos)
    (datoEscogido ?tipo ?D)
    =>
    (printout t ?tipo " --> " ?D crlf)
    (assert (aniadirTIposDeIdentificacionesPersonas))
)

(defrule tiposDeOrganizaciones
    ?g <- (imprimirEscogidos)
    (tiposOrganizacionesPosibles ?t1 ?t2 ?t3)
    ?u <- (tipoOrganizacionEscogido ?t & ~?t1 & ~?t2 & ~?t3)
    =>
    (printout t "Escoja ahora uno de los siguientes tipos de organizaciones que usaran sus datos (escriba las siglas que hay entre parentesis).")
    (printout t "Tipos de organizaciones:" crlf)
    (printout t "1.Usuarios domesticos(UD)" crlf)
    (printout t "2.Empresas privadas(EP)" crlf)
    (printout t "3.Organizaciones dependientes de las administraciones publicas(ODAP)" crlf)
    (retract ?u)
    (assert (tipoOrganizacionEscogido (read))) 
    (assert (escogidaOrganizacion))
)


(defrule lugaresGeograficosDisponibles
    ?g <- (imprimirEscogidos)
    (tiposLugaresPosibles ?t1 ?t2 ?t3 ?t4 ?t5)
    ?u <- (lugarEscogido ?t & ~?t1 & ~?t2 & ~?t3 & ~?t4 & ~?t5)
    =>
    (printout t "Escoja uno de los siguientes continentes donde se almacenaran los datos" crlf)
    (printout t "1.europa" crlf)
    (printout t "2.asia" crlf)
    (printout t "3.america" crlf)
    (printout t "4.africa" crlf)
    (printout t "5.oceania" crlf)
    (retract ?u)
    (assert (lugarEscogido (read))) 
    (assert (escogidoLugar))
)



(defrule usosDisponiblesDeDatos
    ?g <- (imprimirEscogidos)
    (tiposUsosDisponibles ?t1 ?t2 ?t3 ?t4)
    ?u <- (usoEscogido ?t & ~?t1 & ~?t2 & ~?t3 & ~?t4)
    =>
    (printout t "Diga el fin con el que los datos seran utilizados" crlf)
    (printout t "1.domestico" crlf)
    (printout t "2.negocios" crlf)
    (printout t "3.seguridad" crlf)
    (printout t "4.judiciales" crlf)
    (retract ?u)
    (assert (usoEscogido (read))) 
    (assert (escogidoUso))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;APARTADO 3

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deftemplate identificacionPersonas
    (field dato)
    (field tipoIdentificacion)
)

(defrule insertarTiposIdentificacionsADatos
    (aniadirTIposDeIdentificacionesPersonas)
    (datoEscogido ?tipo ?D1)
    (dato_identificacion ?identificacion ?D1)
    =>
    (assert (identificacionPersonas (dato ?D1) (tipoIdentificacion ?identificacion)))
)

;esta regla restringe la identificacion de una persona
;a que al menos se hayan leido dos datos de identificacion total
(defrule determinarIdentificacionPersona1
    (escogidoUso)
    ?g <- (datosNoIdentificables)
    ;recogemos los datos leidos
    (identificacionPersonas (dato ?D1) (tipoIdentificacion total))
    (identificacionPersonas (dato ?D2 & ~?D1) (tipoIdentificacion total))
    =>
    (printout t "Los datos escogidos:" crlf)
    (printout t "-" ?D1 crlf)
    (printout t "-" ?D2 crlf)
    (printout t "Hacen que la persona sea totalmente identificable" crlf)
    (printout t "ya que tienen un nivel de identificacion total." crlf)
    (retract ?g)
)

;esta regla restringe la identificacion de una persona
;a que al menos se hayan leido 2 datos parciales y uno total
(defrule determinarIdentificacionPersona2
    (escogidoUso)
    ?g <- (datosNoIdentificables)
    ;recogemos los datos leidos
    (identificacionPersonas (dato ?D1) (tipoIdentificacion total))
    (identificacionPersonas (dato ?D2 & ~?D1) (tipoIdentificacion parcial))
    (identificacionPersonas (dato ?D3 & ~?D2 & ~?D1) (tipoIdentificacion parcial))
    (not(exists(identificacionPersonas (dato ?D4 & ~?D1) (tipoIdentificacion total))))
    =>
    (printout t "Los datos escogidos:" crlf)
    (printout t "-" ?D1 crlf)
    (printout t "-" ?D2 crlf)
    (printout t "-" ?D3 crlf)
    (printout t "Hacen que la persona sea totalmente identificable" crlf)
    (printout t "ya que " ?D2 " y " ?D3 " tienen un nivel de identificacion parcial " crlf)
    (printout t "y " ?D1 " tiene un tipo de identificacion total." crlf)
    (retract ?g)
)

;esta regla restringe la identificacion de una persona
;a que al menos se hayan leido cuatro datos de identificacion parcial
(defrule determinarIdentificacionPersona3
    (escogidoUso)
    ?g <- (datosNoIdentificables)
    ;recogemos los datos leidos
    (identificacionPersonas (dato ?D1) (tipoIdentificacion parcial))
    (identificacionPersonas (dato ?D2 & ~?D1) (tipoIdentificacion parcial))
    (identificacionPersonas (dato ?D3 & ~?D2 & ~?D1) (tipoIdentificacion parcial))
    (identificacionPersonas (dato ?D4 & ~?D2 & ~?D1 & ~?D3) (tipoIdentificacion parcial))
    (not(exists(identificacionPersonas (dato ?D5) (tipoIdentificacion total))))
    =>
    (printout t "Los datos escogidos:" crlf)
    (printout t "-" ?D1 crlf)
    (printout t "-" ?D2 crlf)
    (printout t "-" ?D3 crlf)
    (printout t "-" ?D4 crlf)
    (printout t "Hacen que la persona sea totalmente identificable" crlf)
    (printout t "ya que todas ellas tienen un nivel de identificacion parcial." crlf)
    (retract ?g)
)

;esta regla restringe la identificacion de una persona
;a que al menos se hayan leido 3 datos con nivel de 
;identificacion parcial
(defrule determinarIdentificacionPersona4
    (escogidoUso)
    ?g <- (datosNoIdentificables)
    ;recogemos los datos leidos
    (identificacionPersonas (dato ?D1) (tipoIdentificacion parcial))
    (identificacionPersonas (dato ?D2 & ~?D1) (tipoIdentificacion parcial))
    (identificacionPersonas (dato ?D3 & ~?D2 & ~?D1) (tipoIdentificacion parcial))
    (not(exists(identificacionPersonas (dato ?D4) (tipoIdentificacion total))))
    =>
    (printout t "Los datos escogidos:" crlf)
    (printout t "-" ?D1 crlf)
    (printout t "-" ?D2 crlf)
    (printout t "-" ?D3 crlf)
    (printout t "Hacen que la persona sea parcialmente identificable" crlf)
    (printout t "ya que " ?D1 ", " ?D2 " y " ?D3 " tienen un nivel de identificacion parcial " crlf)
    (retract ?g)
)

;esta regla restringe la identificacion de una persona
;a que al menos se hayan leido 2 datos con nivel de 
;identificacion parcial
(defrule determinarIdentificacionPersona5
    (escogidoUso)
    ?g <- (datosNoIdentificables)
    ;recogemos los datos leidos
    (identificacionPersonas (dato ?D1) (tipoIdentificacion parcial))
    (identificacionPersonas (dato ?D2 & ~?D1) (tipoIdentificacion parcial))
    (not(exists(identificacionPersonas (dato ?D3) (tipoIdentificacion total))))
    =>
    (printout t "Los datos escogidos:" crlf)
    (printout t "-" ?D1 crlf)
    (printout t "-" ?D2 crlf)
    (printout t "Hacen que la persona sea parcialmente identificable" crlf)
    (printout t "ya que " ?D1 " y " ?D2 " tienen un nivel de identificacion parcial " crlf)
    (retract ?g)
)

;En caso de no tener datos que ayuden a la identificacion de la persona ejecutamos lo siguiente
(defrule determinarNoIdentificacionPersona
    (datosNoIdentificables)
    (escogidoUso)
    =>
    (printout t "A partir de los datos escogidos no es posible identificar a una persona" crlf)
)
