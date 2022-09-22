//: [Previous](@previous)

import Foundation

/*
 * Reto #10
 * EXPRESIONES EQUILIBRADAS
 * Fecha publicación enunciado: 07/03/22
 * Fecha publicación resolución: 14/03/22
 * Dificultad: MEDIA
 *
 * Enunciado: Crea un programa que comprueba si los paréntesis, llaves y corchetes de una expresión están equilibrados.
 * - Equilibrado significa que estos delimitadores se abren y cieran en orden y de forma correcta.
 * - Paréntesis, llaves y corchetes son igual de prioritarios. No hay uno más importante que otro.
 * - Expresión balanceada: { [ a * ( c + d ) ] - 5 }
 * - Expresión no balanceada: { a * ( c + d ) ] - 5 }
 */
let abrir = ["(", "[", "{"]
let cerrar = [")", "]", "}"]

func expresionEquilibrada(expresion: String) -> Bool {
    var arreglo:[String] = []
    var balanceo = true
    for letra in expresion {
        let letraSelec = String(letra)
        if abrir.contains(letraSelec) {
            arreglo.append(letraSelec)
        }else if (!arreglo.isEmpty) {
            if (cerrar.contains(letraSelec)) {
                arreglo.removeLast()
            }
        } else {
            balanceo = false
            return balanceo
        }
    }
    if (balanceo && arreglo.isEmpty) {
        balanceo = true
    } else {
        balanceo = false
    }
    return balanceo
}

print(expresionEquilibrada(expresion: "{ [ a * ( c + d ) ] - 5 }"))
print(expresionEquilibrada(expresion: "{ a * ( c + d ) ] - 5 }"))

//: [Next](@next)
