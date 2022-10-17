//
//  UIColor + extension.swift
//  ProductiveTime
//
//  Created by Алексей on 13.10.2022.
//

import UIKit

extension UIColor {
    
    // MARK: - Custom ColorList
    
    // Background color for Navigation and TabBar
    static var navTabColor: UIColor {
        return UIColor { (traits) -> UIColor in
            return traits.userInterfaceStyle == .light
            ? UIColor(red: 1, green: 1, blue: 1, alpha: 1)
            : UIColor(red: 0.155, green: 0.155, blue: 0.155, alpha: 1)
        }
    }
}
