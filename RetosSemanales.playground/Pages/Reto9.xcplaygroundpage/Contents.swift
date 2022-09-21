//: [Previous](@previous)

import Foundation

/*
 * Reto #9
 * CÓDIGO MORSE
 * Fecha publicación enunciado: 02/03/22
 * Fecha publicación resolución: 07/03/22
 * Dificultad: MEDIA
 *
 * Enunciado: Crea un programa que sea capaz de transformar texto natural a código morse y viceversa.
 * - Debe detectar automáticamente de qué tipo se trata y realizar la conversión.
 * - En morse se soporta raya "—", punto ".", un espacio " " entre letras o símbolos y dos espacios entre palabras "  ".
 * - El alfabeto morse soportado será el mostrado en https://es.wikipedia.org/wiki/Código_morse.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

let dic = [".-": "A",   "-...": "B",   "-.-.": "C",
           "-..": "D",      ".": "E",   "..-.": "F",
           "--.": "G",   "....": "H",     "..": "I",
           ".---": "J",    "-.-": "K",   ".-..": "L",
           "--": "M",     "-.": "N",    "---": "O",
           ".--.": "P",   "--.-": "Q",    ".-.": "R",
           "...": "S",      "-": "T",    "..-": "U",
           "...-": "V",    ".--": "W",   "-..-": "X",
           "-.--": "Y",   "--..": "Z",  "-----": "0",
           ".----": "1",  "..---": "2",  "...--": "3",
           "....-": "4",  ".....": "5",  "-....": "6",
           "--...": "7",  "---..": "8",  "----.": "9",
           ".-.-.-": ".", "--..--": ",", "..--..": "?"]

let mensajeMorse = "-.-. .... --- -.-. .- .--. .. -.-. .-.-.-  . ...  ..- -. .-  -- .- .-. -.-. .-  -.. .  -.-. . .-. . .- .-.. . ... ..--.."
let mensajeNormal = "Chocapic. Es una marca de cereales?"

func deMorseANatural(mensajeMorse: String) -> String {
    let arreglo:[String] = mensajeMorse.components(separatedBy: "  ")
    var mensaje = ""
    for palabra in arreglo {
        let aux = palabra.components(separatedBy: " ")
        for letra in aux {
            mensaje = mensaje + dic[letra]!
        }
        mensaje = mensaje + " "
    }
    return mensaje
}

func deNaturalAMorse(mensajeNautal: String) -> String {
    var dicMorse: [String:String] = [:]
    dic.forEach { key, value in
        dicMorse[value] = key
    }
    var mensajeMorse = ""
    let mensaje = mensajeNautal.uppercased()
    let arreglo:[String] = mensaje.components(separatedBy: " ")
    for palabra in arreglo {
        palabra.forEach { Character in
            mensajeMorse = mensajeMorse + dicMorse[String(Character)]! + " "
        }
        mensajeMorse = mensajeMorse + " "
    }
    return mensajeMorse
}

func decoder(mensaje: String) -> String {
    if (mensaje.rangeOfCharacter(from: CharacterSet.letters) != nil || mensaje.rangeOfCharacter(from: CharacterSet.decimalDigits) != nil) {
        return deNaturalAMorse(mensajeNautal: mensaje)
    } else if (mensaje.contains(".") || mensaje.contains("-")) {
        return deMorseANatural(mensajeMorse: mensaje)
    }
    return "..  ..  .."
}

print(decoder(mensaje: mensajeMorse))
print(decoder(mensaje: mensajeNormal))
//: [Next](@next)
