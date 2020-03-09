//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport


//DECLARAR EL DISPLAY
let view = UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
view.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
PlaygroundPage.current.liveView = view

//CREAR VARIABLE TIPO CORE ANIMATION
//Crear el espacio para la animación
let iconLayer = CATextLayer()
//Alinear al centro el string
iconLayer.alignmentMode = CATextLayerAlignmentMode.center
//Crear el fondo gris
iconLayer.frame = view.frame.insetBy(dx: 160, dy: 160)
//Tamaño del incono
iconLayer.fontSize = 60
// El icono que se va a aparecer en el centro
iconLayer.string = "🎸"
//Declarar que color el fondo de la aplicacion
iconLayer.backgroundColor = UIColor.lightGray.cgColor
//formar las esquinas del boton
iconLayer.cornerRadius = 15
//Añadir a la vista
view.layer.addSublayer(iconLayer)

//Insertar la animación de tambalear
let animation = CABasicAnimation(keyPath: "transform")
//Duración de la animación
animation.duration = 0.1
//Transformar el objeto a una animación
animation.fromValue = NSValue(caTransform3D: CATransform3DIdentity)
//Crear la rotacion de la animación inicial
animation.fromValue =
    NSValue(caTransform3D:CATransform3DMakeRotation(
	-CGFloat.pi * 0.01, 0, 0, 1))
//Crear la animación de la animación final
animation.toValue = NSValue(caTransform3D:CATransform3DMakeRotation(
	CGFloat.pi * 0.01, 0, 0, 1))
//Crear la repetición.
animation.autoreverses = true
//Numero de repeticiones.
animation.repeatCount = HUGE

iconLayer.add(animation, forKey: nil)

