//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

//Creamos el liveView.
let view = UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
PlaygroundPage.current.liveView = view

//Añadimos al frame el CAShapeLayer para las animaciones.
let shapeLayer = CAShapeLayer()
shapeLayer.frame = view.frame
view.layer.addSublayer(shapeLayer)

//Primer Elipse para la animación.
let path = CGPath(ellipseIn: shapeLayer.frame.insetBy(dx: 30, dy: 30), transform: nil)
shapeLayer.path = path
shapeLayer.fillColor = UIColor.white.cgColor

//Animación para el efecto shade o difuminación.
let animation = CABasicAnimation(keyPath: "opacity")
animation.duration = 2.0
animation.repeatCount = Float.infinity
animation.fromValue = 1.0
animation.toValue = 0.3
animation.autoreverses = true
animation.repeatCount = Float.infinity
shapeLayer.add(animation, forKey: "opacity")

//Segundo elipse para la animación
let path2 = CGPath(ellipseIn: shapeLayer.frame.insetBy(dx: 10, dy: 70), transform: nil)

//Animación para la transición del primer elipse al otro.
let animation2 = CABasicAnimation(keyPath: "path")
animation2.duration = 1.5
animation2.repeatCount = Float.infinity
animation2.fromValue = path
animation2.toValue = path2
animation2.autoreverses = true
animation2.repeatCount = Float.infinity
shapeLayer.add(animation2, forKey: nil)



