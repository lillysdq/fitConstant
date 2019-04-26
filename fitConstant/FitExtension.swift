//
//  FitExtension.swift
//  fitConstant
//
//  Created by yang li on 2019/4/26.
//  Copyright © 2019 lilly. All rights reserved.
//

import Foundation
import UIKit

private var kFitConstant = 0
private var kFitFont = 0

private func scaleVertical(_ v: CGFloat) -> CGFloat {
    return UIScreen.main.bounds.height / 667 * v
}

private func scaleHorizontal(_ v: CGFloat) -> CGFloat {
    return UIScreen.main.bounds.width / 375 * v
}

extension NSLayoutConstraint {

    @IBInspectable var fitConstant: Bool {
        set {
            if newValue {
                switch firstAttribute {
                case .left: fallthrough
                case .right: fallthrough
                case .leading: fallthrough
                case .trailing: fallthrough
                case .width: fallthrough
                case .leftMargin: fallthrough
                case .rightMargin: fallthrough
                case .leadingMargin: fallthrough
                case .trailingMargin:
                    constant = scaleHorizontal(constant)

                case .top: fallthrough
                case .bottom: fallthrough
                case .height: fallthrough
                case .lastBaseline: fallthrough
                case .firstBaseline: fallthrough
                case .topMargin: fallthrough
                case .bottomMargin:
                    constant = scaleVertical(constant)

                case .notAnAttribute: fallthrough
                default: break
                }

            }
            objc_setAssociatedObject(self, &kFitConstant, newValue, .OBJC_ASSOCIATION_ASSIGN)
        }
        get {
            return objc_getAssociatedObject(self, &kFitConstant) as! Bool
        }
    }

}

extension UILabel {
    
    @IBInspectable var isFitFont: Bool {
        set {
            if newValue {
                font = UIFont.systemFont(ofSize: scaleHorizontal(font.pointSize))
            }
            objc_setAssociatedObject(self, &kFitFont, newValue, .OBJC_ASSOCIATION_ASSIGN)
        }
        get {
            return objc_getAssociatedObject(self, &kFitFont) as! Bool
        }
    }

}
