//
//  UIView+EXT.swift
//  Hanaroga
//
//  Created by chulyeon kim on 2023/02/15.
//

import UIKit

@IBDesignable extension UIView {
	@IBInspectable var borderWidth: CGFloat {
		set {
			layer.borderWidth = newValue
		}
		get {
			return layer.borderWidth
		}
	}
	
	@IBInspectable var cornerRadius: CGFloat {
		set {
			layer.cornerRadius = newValue
		}
		get {
			return layer.cornerRadius
		}
	}
	
	@IBInspectable var borderColor: UIColor? {
		set {
			guard let uicolor = newValue else { return }
			layer.borderColor = uicolor.cgColor
		}
		get {
			guard let color = layer.borderColor else { return nil }
			return UIColor(cgColor: color)
		}
	}
}
