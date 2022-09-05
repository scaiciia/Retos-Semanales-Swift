//: [Previous](@previous)

/*
 * Reto #5
 * ASPECT RATIO DE UNA IMAGEN
 * Fecha publicación enunciado: 01/02/22
 * Fecha publicación resolución: 07/02/22
 * Dificultad: DIFÍCIL
 *
 * Enunciado: Crea un programa que se encargue de calcular el aspect ratio de una imagen a partir de una url.
 * - Url de ejemplo: https://raw.githubusercontent.com/mouredev/mouredev/master/mouredev_github_profile.png
 * - Por ratio hacemos referencia por ejemplo a los "16:9" de una imagen de 1920*1080px.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

import UIKit

func rationalAspectRatio(width: Int, height: Int) -> (num: Int, den: Int) {
    var aux:[Int] {return (2...width).filter { num1 in
        width % num1 == 0 && num1 * num1 <= width
    }}
    var aux1:[Int] {return (2...height).filter { num1 in
        height % num1 == 0 && num1 * num1 <= height
    }}
    var mcd: Int {return aux.last { num in
        aux1.contains(num)
    }!}
    return (width / mcd, height / mcd)
}

var aspectRationStr: String?

if let url = URL(string: "https://raw.githubusercontent.com/mouredev/mouredev/master/mouredev_github_profile.png"), let data = try? Data(contentsOf: url) {
    
    let imagen = UIImage(data: data)
    if let height = imagen?.size.height, let width = imagen?.size.width {
        let aspectRatio = rationalAspectRatio(width: Int(width), height: Int(height))
        aspectRationStr = "\(aspectRatio.num):\(aspectRatio.den)"
    }
}

if let ratio = aspectRationStr {
    print("El aspect ratio es \(ratio)")
} else {
    print("No se ha podido calcular el aspect ratio")
}

//: [Next](@next)

