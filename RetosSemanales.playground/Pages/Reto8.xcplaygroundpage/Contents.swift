//: [Previous](@previous)

import Foundation

/*
 * Reto #8
 * DECIMAL A BINARIO
 * Fecha publicación enunciado: 18/02/22
 * Fecha publicación resolución: 02/03/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Crea un programa se encargue de transformar un número decimal a binario sin utilizar funciones propias del lenguaje que lo hagan directamente.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */



func decimalABinarioRecursivo(num: Int) -> Int {
    var aux:String
    if (num > 2) {
        aux = String(decimalABinario(num: num / 2))
        aux = aux + String(num % 2)
    } else {
        aux = String(num / 2) + String(num % 2)
    }
    return Int(aux)!
}

func decimalABinario(num: Int) -> Int {
    var aux:String = ""
    var auxNum = num
    while (auxNum > 2) {
        aux = String(auxNum % 2) + aux
        auxNum = auxNum / 2
    }
    aux = String(auxNum / 2) + String(auxNum % 2) + aux
    return Int(aux)!
}

print(decimalABinarioRecursivo(num: 220))
print(decimalABinario(num: 220))

//: [Next](@next)
