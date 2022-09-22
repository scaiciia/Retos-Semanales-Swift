//: [Previous](@previous)

import Foundation

/*
 * Reto #13
 * FACTORIAL RECURSIVO
 * Fecha publicación enunciado: 28/03/22
 * Fecha publicación resolución: 04/04/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Escribe una función que calcule y retorne el factorial de un número dado de forma recursiva.
 *
 */

func factorial(num: Int) -> Int? {
    if (num >= 0) {
        if num <= 1 {
            return 1
        } else {
            return num * factorial(num: num - 1)!
        }
    } else {
        return nil
    }
}

print (factorial(num: 4) ?? "No tiene factorial")
print (factorial(num: 1) ?? "No tiene factorial")
print (factorial(num: 0) ?? "No tiene factorial")
print (factorial(num: -4) ?? "No tiene factorial")

//: [Next](@next)
