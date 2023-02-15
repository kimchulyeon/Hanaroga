//
//  RegisterVC.swift
//  Hanaroga
//
//  Created by chulyeon kim on 2023/02/15.
//

import UIKit

class RegisterVC: UIViewController {
	//MARK: - Properties
	@IBOutlet weak var emailTextField: UITextField! {
		didSet {
			emailTextField.layer.shadowColor = UIColor.darkGray.cgColor
			emailTextField.layer.shadowOffset = CGSize(width: 0, height: 2)
			emailTextField.layer.shadowRadius = 2
			emailTextField.layer.shadowOpacity = 0.2
			emailTextField.attributedPlaceholder = NSAttributedString(string: "이메일을 입력하세요.", attributes: [.foregroundColor: UIColor(red: 131 / 255, green: 145 / 255, blue: 161 / 255, alpha: 1.0), .font: UIFont(name: "OpenSans-Regular", size: 15)!])
			emailTextField.textColor = UIColor.black
			emailTextField.font = UIFont(name: "OpenSans-Regular", size: 15)!
			emailTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
			emailTextField.leftViewMode = .always
			emailTextField.delegate = self
		}
	}
	@IBOutlet weak var nicknameTextField: UITextField! {
		didSet {
			nicknameTextField.layer.shadowColor = UIColor.darkGray.cgColor
			nicknameTextField.layer.shadowOffset = CGSize(width: 0, height: 2)
			nicknameTextField.layer.shadowRadius = 2
			nicknameTextField.layer.shadowOpacity = 0.2
			nicknameTextField.attributedPlaceholder = NSAttributedString(string: "닉네임을 입력하세요.", attributes: [.foregroundColor: UIColor(red: 131 / 255, green: 145 / 255, blue: 161 / 255, alpha: 1.0), .font: UIFont(name: "OpenSans-Regular", size: 15)!])
			nicknameTextField.textColor = UIColor.black
			nicknameTextField.font = UIFont(name: "OpenSans-Regular", size: 15)!
			nicknameTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
			nicknameTextField.leftViewMode = .always
			nicknameTextField.delegate = self
		}
	}
	@IBOutlet weak var passwordTextField: UITextField! {
		didSet {
			passwordTextField.layer.shadowColor = UIColor.darkGray.cgColor
			passwordTextField.layer.shadowOffset = CGSize(width: 0, height: 2)
			passwordTextField.layer.shadowRadius = 2
			passwordTextField.layer.shadowOpacity = 0.2
			passwordTextField.attributedPlaceholder = NSAttributedString(string: "비밀번호를 입력하세요.", attributes: [.foregroundColor: UIColor(red: 131 / 255, green: 145 / 255, blue: 161 / 255, alpha: 1.0), .font: UIFont(name: "OpenSans-Regular", size: 15)!])
			passwordTextField.textColor = UIColor.black
			passwordTextField.font = UIFont(name: "OpenSans-Regular", size: 15)!
			passwordTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
			passwordTextField.leftViewMode = .always
			passwordTextField.delegate = self
		}
	}
	
	//MARK: - Lifecycle
	override func viewDidLoad() {
		super.viewDidLoad()
		
	}
	
	//MARK: - func ============================================
	
}

//MARK: - UITextFieldDelegate ============================================
extension RegisterVC: UITextFieldDelegate {
	
}
