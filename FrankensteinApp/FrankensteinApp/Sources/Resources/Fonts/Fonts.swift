//
//  Fonts.swift
//  FrankensteinApp
//
//  Created by Софа on 11.12.24.
//
import UIKit

enum Fonts {
    case h0
    case h1
    case h2
    case p1
    case p2
    case p3
    case p4
    case p5
    case p6
    case p7
    case p8
    case p9
    case p10
    case p11
    
    var font: UIFont {
        switch self {
        case .h0: return UIFont.systemFont(ofSize: 36, weight: .heavy)
        case .h1: return UIFont.systemFont(ofSize: 34, weight: .bold)
        case .h2: return UIFont.systemFont(ofSize: 24, weight: .bold)
            
        case .p1: return UIFont.systemFont(ofSize: 18, weight: .semibold)
        case .p2: return UIFont.systemFont(ofSize: 18, weight: .bold)
        case .p3: return UIFont.systemFont(ofSize: 17, weight: .regular)
        case .p4: return UIFont.systemFont(ofSize: 17, weight: .semibold)
        case .p5: return UIFont.systemFont(ofSize: 16, weight: .regular)
        case .p6: return UIFont.systemFont(ofSize: 16, weight: .semibold)
        case .p7: return UIFont.systemFont(ofSize: 16, weight: .regular)
        case .p8: return UIFont.systemFont(ofSize: 16, weight: .semibold)
        case .p9: return UIFont.systemFont(ofSize: 10, weight: .semibold)
        case .p10: return UIFont.systemFont(ofSize: 12, weight: .regular)
        case .p11: return UIFont.systemFont(ofSize: 12, weight: .semibold)
        }
    }
}

extension UIFont {
  class func font(_ font: Fonts) -> UIFont {
    return font.font
  }
}
