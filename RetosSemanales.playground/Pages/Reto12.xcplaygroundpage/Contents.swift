//: [Previous](@previous)

import Foundation

/*
 * Reto #12
 * ¿ES UN PALÍNDROMO?
 * Fecha publicación enunciado: 21/03/22
 * Fecha publicación resolución: 28/03/22
 * Dificultad: MEDIA
 *
 * Enunciado: Escribe una función que reciba un texto y retorne verdadero o falso (Boolean) según sean o no palíndromos.
 * Un Palíndromo es una palabra o expresión que es igual si se lee de izquierda a derecha que de derecha a izquierda.
 * NO se tienen en cuenta los espacios, signos de puntuación y tildes.
 * Ejemplo: Ana lleva al oso la avellana.
 *
 */

let text = "Ana lleva al oso la avellana."

func esPalindromo(text: String) -> Bool {
    var aux = text.lowercased().components(separatedBy: CharacterSet.punctuationCharacters).joined(separator: "")
    aux = aux.folding(options: .diacriticInsensitive, locale: .current)
    aux = aux.components(separatedBy: " ").joined(separator: "")
    let aux2 = String(aux.reversed())
    if (aux == aux2) {
        return true
    } else {
        return false
    }
}

print(esPalindromo(text: text))
print(esPalindromo(text: "Adivina ya te opina, ya ni miles origina, ya ni cetro me domina, ya ni monarcas, a repaso ni mulato carreta, acaso nicotina, ya ni cita vecino, anima cocina, pedazo gallina, cedazo terso nos retoza de canilla goza, de pánico camina, ónice vaticina, ya ni tocino saca, a terracota luminosa pera, sacra nómina y ánimo de mortecina, ya ni giros elimina, ya ni poeta, ya ni vida"))
print(esPalindromo(text: "¿Qué os ha parecido el reto?"))

//: [Next](@next)
