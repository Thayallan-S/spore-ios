//
//  UI.swift
//  Flipper
//
//  Created by Thayallan Srinathan on 2019-01-23.
//  Copyright © 2019 Flipper. All rights reserved.
//

import Foundation
import UIKit

struct UI {
    struct Colors {
        static let white        = UIColor(hexValue: 0xFFFFFF)
        static let black        = UIColor(hexValue: 0x000000)
        static let clear        = UIColor(hexValue: 0x000000).withAlphaComponent(0.0)
        static let grey         = UIColor(hexValue: 0x4A4A4A)
        static let darkGrey    = UIColor(hexValue: 0x717171)
        static let dullGrey  = UIColor(hexValue: 0xA0A0A0)
        static let heatherGrey = UIColor(hexValue: 0xD8D8D8)
        static let whiteGrey    = UIColor(hexValue: 0xF8F8F8)
        
        static let swishBlue = UIColor(hexValue: 0x6186E6)
        static let notifierBlue = UIColor(hexValue: 0x4291EE)
        
        static let green = UIColor(hexValue: 0x43CFA0)
        static let yellow = UIColor(hexValue: 0xF6BC5C)

    }
    
    struct Font {
        
        enum Weight {
            case italic
            case regular
            case bold
        }
        
        static func title(_ weight: Weight = .bold) -> UIFont { return font(weight: weight, size: 28) }
        static func header(_ weight: Weight = .regular) -> UIFont { return font(weight: weight, size: 24)}
        static func subheader(_ weight: Weight = .regular) -> UIFont { return font(weight: weight, size: 20) }
        
        static func font(weight: Weight, size: CGFloat) -> UIFont {
            switch weight {
            case .italic: return italic(size)
            case .regular: return regular(size)
            case .bold: return bold(size)
            }
        }
        
        static let headingA = bold(22)
        static let headingB = regular(22)
        static let button = regular(18)
        
        
        static func italic(_ size: CGFloat = 12) -> UIFont {
            return UIFont(name: "Kollektif-Italic", size: size)!
        }
        
        static func boldItalic(_ size: CGFloat = 12) -> UIFont {
            return UIFont(name: "Kollektif-BoldItalic", size: size)!
        }
        
        static func regular(_ size: CGFloat = 12) -> UIFont {
            return UIFont(name: "Kollektif", size: size)!
        }
        
        static func bold(_ size: CGFloat = 12) -> UIFont {
            return UIFont(name: "Kollektif-Bold", size: size)!
        }
    }
    
    struct Constants {
        static let statusBarHeight: CGFloat = FlipperDevice().isiPhoneX() ? 44.0 : 20.0
        static let navBarHeight: CGFloat = FlipperDevice().isiPhoneX() ? 88 : 64
    }
}
