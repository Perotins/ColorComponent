//: Playground - noun: a place where people can play

import UIKit

enum ColorComponent {
    case rgb (CGFloat, CGFloat, CGFloat, CGFloat)
    case hsb (CGFloat, CGFloat, CGFloat, CGFloat)
    
    func color() -> UIColor {
        switch self {
        case .rgb(let red, let green, let blue, let alpha):
            return UIColor(displayP3Red: red/255.0, green: green / 255.0, blue: blue / 255.0, alpha: alpha)
        case .hsb(let hue, let saturation, let brightness, let alpha):
            return UIColor(hue: hue/360.0, saturation: saturation / 100.0, brightness: brightness / 100.0, alpha: alpha)
        }
    }
}

let color = ColorComponent.rgb(CGFloat(88.0), CGFloat(11.0), CGFloat(40.0), CGFloat(1))
color.color()
