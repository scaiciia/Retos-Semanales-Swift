//: [Previous](@previous)

import Foundation

/*
 * Reto #11
 * ELIMINANDO CARACTERES
 * Fecha publicación enunciado: 14/03/22
 * Fecha publicación resolución: 21/03/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Crea una función que reciba dos cadenas como parámetro (str1, str2) e imprima otras dos cadenas como salida (out1, out2).
 * - out1 contendrá todos los caracteres presentes en la str1 pero NO estén presentes en str2.
 * - out2 contendrá todos los caracteres presentes en la str2 pero NO estén presentes en str1.
 *
 *
 */

func eliminandoCaracteres(str1: String, str2: String) -> (String, String) {
    var out1 = ""
    var out2 = ""
    for letra in str1 {
        if (!str2.contains(letra)) {
            out1 = out1 + String(letra)
        }
    }
    for letra in str2 {
        if (!str1.contains(letra)) {
            out2 = out2 + String(letra)
        }
    }
    return (out1, out2)
}

print(eliminandoCaracteres(str1: "hola", str2: "chau"))

//: [Next](@next)
