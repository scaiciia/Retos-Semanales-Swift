//: [Previous](@previous)

/*
 * Reto #4
 * ÁREA DE UN POLÍGONO
 * Fecha publicación enunciado: 24/01/22
 * Fecha publicación resolución: 31/01/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Crea UNA ÚNICA FUNCIÓN (importante que sólo sea una) que sea capaz de calcular y retornar el área de un polígono.
 * - La función recibirá por parámetro sólo UN polígono a la vez.
 * - Los polígonos soportados serán Triángulo, Cuadrado y Rectángulo.
 * - Imprime el cálculo del área de un polígono de cada tipo.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

import Foundation

protocol Poligono {
    func area() -> Int
    
    func ImprimirArea()
    
}

struct Triangulo: Poligono {
    
    let base, altura: Int
    
    func area() -> Int {
        return base * altura
    }
    
    func ImprimirArea() {
        print("El area del triangulo es: \(area())")
    }
}

struct Rectangulo: Poligono {
    
    let alto, ancho: Int
    
    func area() -> Int {
        return alto * ancho
    }
    
    func ImprimirArea() {
        print("El area del rectangulo es: \(area())")
    }
}

struct Cuadrado: Poligono {
    
    let lado: Int
    
    func area() -> Int {
        return lado * lado
    }
    
    func ImprimirArea() {
        print("El area del cuadrado es: \(area())")
    }
}

func area(poligono: Poligono) {
    poligono.ImprimirArea()
}

area(poligono: Triangulo(base: 3, altura: 2))
area(poligono: Rectangulo(alto: 4, ancho: 3))
area(poligono: Cuadrado(lado: 2))


//: [Next](@next)
