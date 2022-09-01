//: [Previous](@previous)

/*
 * Reto #3
 * ¿ES UN NÚMERO PRIMO?
 * Fecha publicación enunciado: 17/01/22
 * Fecha publicación resolución: 24/01/22
 * Dificultad: MEDIA
 *
 * Enunciado: Escribe un programa que se encargue de comprobar si un número es o no primo.
 * Hecho esto, imprime los números primos entre 1 y 100.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la acomunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

import Foundation

func esPrimo(n: Int) -> Bool {
    if n > 3 {
        var aux = 1
        while (aux*aux) <= n {
            aux += 1
            //print(aux)
        }
        for i in 2...aux {
            if n.isMultiple(of: i) {
                return false
            }
        }
    }
    if n == 1 {
        return false
    }
    return true
}

for i in 1...100 {
    if esPrimo(n: i) {
        print(i)
    }
}

//: [Next](@next)
