//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport
//Crear el view / display
let view = UIView(frame: CGRect(x: 0, y: 0, width: 600, height: 600))
view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
PlaygroundPage.current.liveView = view

let guitarLayer = CATextLayer()
guitarLayer.string = "🎸"
//Tamaño de fuente
guitarLayer.fontSize = 35
//Crear el frame o marco
guitarLayer.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
//Posicionar la guitarra
guitarLayer.position = CGPoint(x: 75, y: 75)

//guitarLayer.cornerRadius = 25

//Crear el efecto shade o sombra
let fadeGuitar = CABasicAnimation(keyPath: "opacity")
//Nivel de opacidad o de intensidad de sombra
fadeGuitar.fromValue = 0.5
fadeGuitar.toValue = 0.0
//Nivel de repeticiones
fadeGuitar.repeatCount = HUGE
//duración o extensión de la opacidad en segundos
fadeGuitar.duration = 1.0
//añadimos al layer
guitarLayer.add(fadeGuitar, forKey: "opacity")

//Crear la replicación
//Instanciamos la variable replication
let replication = CAReplicatorLayer()
//creamos el marco de la guitarra o el circulo
replication.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
//lo centramos dentro del frame
replication.position = view.center
//tiempo de espera de iteracion
replication.instanceCount = 10
//tiempo de iteracion
replication.instanceDelay = 0.1
//transformar la instancia en radio para la circunferencia
replication.instanceTransform = CATransform3DMakeRotation(CGFloat(M_PI/5), 0, 0, 1)
//añadir al display el objeto
replication.addSublayer(guitarLayer)
//añadir al display la animación
view.layer.addSublayer(replication)
