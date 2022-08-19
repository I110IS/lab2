# LAB2

## Objetivos

Familiarizarse con los modelos y sus características.

## Notas
- Las tablas ya existen y tienen datos
- Usar `reload!` en la consola de rails para aplicar cualquier cambio hecho en el código fuente

## Pasos previos

Ver la sección [preparar repositorio](https://github.com/I110IS/lab1/blob/master/README.md#preparar-repositorio)

## Parte 1 - [Validaciones](https://guides.rubyonrails.org/active_record_validations.html)

1. Definir los modelos para las tablas `monsters`, `victims` y `attacks`.
1. ¿Cuántos monstruos hay en la base de datos? (usar la consola de rails)
1. Definir una validación para que el nombre de los monstruos y las víctimas sea obligatorio.
1. Definir una validación para que el nombre de los monstruos no se puedan repetir entre monstruos.
1. Definir una validación custom para que los monstruos con un nivel de susto superior a 5 no puedan tener víctimas menores de 18 años.
1. [rails console] Probar que todas validaciones funcionen como se esperan.
1. Hacer un commit con todos los cambios realizados y pushear el commit al repositorio forkeado.

## Parte 2 - [Asociaciones](https://guides.rubyonrails.org/association_basics.html)

1. Definir las asociaciones necesarias para que un monstruo pueda tener muchas víctimas. Es necesario considerar el modelo de ataques.
1. [rails console] Crear una nueva víctima y asociarla a un monstruo
1. [rails console] Obtener todas las víctimas de Nahuelito
1. [rails console] Obtener todas las víctimas de Nahuelito ordenadas alfabéticamente por su nombre
1. Actualizar los modelos para los monstruos y las víctimas de tal manera que cuando se elimine algún monstruo o víctima, todos sus ataques se eliminen.
1. Hacer un commit con todos los cambios realizados y pushear el commit al repositorio forkeado.
