//: [Previous](@previous)

import Foundation
import Darwin

/*
 * Reto #14
 * ¿ES UN NÚMERO DE ARMSTRONG?
 * Fecha publicación enunciado: 04/04/22
 * Fecha publicación resolución: 11/04/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Escribe una función que calcule si un número dado es un número de Armstrong (o también llamado narcisista).
 * Si no conoces qué es un número de Armstrong, debes buscar información al respecto.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

func esNumeroAmstrong(num: Int) -> Bool {
    var aux = num
    var valor = 0
    while (aux != 0) {
        valor = valor + Int(pow(Double(aux%10), Double(num.description.count)))
        aux = aux / 10
    }
    return valor == num
}

print(esNumeroAmstrong(num: 153))
print(esNumeroAmstrong(num: 407))
print(esNumeroAmstrong(num: 40))

//: [Next](@next)
