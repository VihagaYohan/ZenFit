//
//  UIExtentions.swift
//  ZenFit
//
//  Created by Yohan on 2024-12-30.
//

import SwiftUI

enum FunnelDisplay: String {
    case bold = "FunnelDisplay-Bold"
    case extraBold = "FunnelDisplay-ExtraBold"
    case light = "FunnelDisplay-Light"
    case medium = "FunnelDisplay-Medium"
    case regular = "FunnelDisplay-Regular"
    case semiBold = "FunnelDisplay-SemiBold"
}

extension Font {
    static func customFont(_ font:FunnelDisplay, fontSize: CGFloat) -> Font {
        custom(font.rawValue, size: fontSize)
    }
}

extension CGFloat {
    static var screenWidth: Double {
        return UIScreen.main.bounds.width
    }
    
    static var screenHeight: Double {
        return UIScreen.main.bounds.height
    }
    
    static func widthPer(width: Double) -> Double {
        return screenWidth * width
    }
    
    static func heightPer(height: Double) -> Double {
        return screenHeight * height
    }
}
