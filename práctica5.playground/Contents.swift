//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

//Creamos el liveView
let view = UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
view.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
PlaygroundPage.current.liveView = view

//Instanciamos el textLayer con sus caracteristicas.
let textLayer = CATextLayer()
textLayer.string = "🐠"
textLayer.fontSize = 100
textLayer.frame = view.frame
textLayer.alignmentMode = CATextLayerAlignmentMode.center
view.layer.addSublayer(textLayer)

//Creamos una variable para definir los grados de inclinación
let rotationInDegrees = Measurement(value: 45, unit: UnitAngle.degrees)
//Convertimos los grados de inclinación a Radianes
let rotationInRadians = CGFloat(rotationInDegrees.converted(to: .radians).value)
//Se lo añadimos al textLayer
let transform = CATransform3DMakeRotation(rotationInRadians, 0, 0.0, 1.0)
textLayer.transform = transform


//Creamos la animación para simular el nado
let animation = CABasicAnimation(keyPath: "transform")
animation.fromValue = NSValue(caTransform3D: CATransform3DMakeRotation(CGFloat(Measurement(value: 10, unit: UnitAngle.degrees).converted(to: .radians).value), 0, 0.0, 1.0))
animation.toValue = NSValue(caTransform3D: CATransform3DMakeRotation(CGFloat(Measurement(value: -10, unit: UnitAngle.degrees).converted(to: .radians).value), 0, 0.0, 1.0))
animation.duration = 2.0
animation.repeatCount = Float.infinity
animation.autoreverses = true
textLayer.add(animation, forKey: nil)


//Declaramos la variable para el trayecto del TextLayer
let position = CABasicAnimation(keyPath: "position.x")
position.fromValue = view.frame.width
position.toValue = 0
position.duration = 10.0
position.repeatCount = Float.infinity
//Se lo agregamos al textLayer
textLayer.add(position, forKey: nil)
