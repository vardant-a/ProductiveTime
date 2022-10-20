//
//  UIColor + extension.swift
//  ProductiveTime
//
//  Created by Алексей on 13.10.2022.
//

import UIKit

extension UIColor {
    
    // MARK: - Custom ColorList
    
    
    // Basic text color
    static var labelColor = UIColor(named: "labelColor")
    
    // Background color for Navigation and TabBar
    static var navTabColor: UIColor {
        return UIColor { (traits) -> UIColor in
            return traits.userInterfaceStyle == .light
            ? UIColor(red: 1, green: 1, blue: 1, alpha: 1)
            : UIColor(red: 0.155, green: 0.155, blue: 0.155, alpha: 1)
        }
    }
    // Basic color for classic style button
    static var basicButtonColor = UIColor(red: 1 / 255, green: 101 / 255, blue: 255 / 255, alpha: 1)
    
    // MARK: - Setting Hex Color
    convenience init(hexString: String) {
        let hex = hexString.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt64()
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // RGB (32-bit)
            (a, r, g, b) = (int >> 25, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        
        self.init(
            red: CGFloat(r) / 255,
            green: CGFloat(g) / 255,
            blue: CGFloat(b) / 255,
            alpha: CGFloat(a) / 255
        )
    }
}
