(deftemplate TipoAnimal 
    (slot Nombre) 
    (slot Estructura)
) 

;definimos a los animales existentes
(deffacts Animales
    (TipoAnimal 
        (Nombre mamifero) 
        (Estructura vertebrado)
    )

    (TipoAnimal 
        (Nombre felino)
    )

    (TipoAnimal 
        (Nombre gato)
    )

    (TipoAnimal
        (Nombre caballo)
    )

    (TipoAnimal
        (Nombre vaca)
    )


)

;relaciones entre los animales Es-un
(deffacts Relacion
    (Es_un felino mamifero)
    (Es_un mamifero felino)
    (Es_un gato felino)
    (Es_un caballo mamifero)
    (Es_un vaca mamifero)
)