//
//  RegisterVC.swift
//  Hanaroga
//
//  Created by chulyeon kim on 2023/02/14.
//

import UIKit

class LoginVC: UIViewController {
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
	@IBOutlet weak var passwordTextField: UITextField! {
		didSet {
			passwordTextField.layer.shadowColor = UIColor.darkGray.cgColor
			passwordTextField.layer.shadowOffset = CGSize(width: 0, height: 2)
			passwordTextField.layer.shadowRadius = 2
			passwordTextField.layer.shadowOpacity = 0.2
			passwordTextField.isSecureTextEntry = true
			passwordTextField.attributedPlaceholder = NSAttributedString(string: "비밀번호를 입력하세요.", attributes: [.foregroundColor: UIColor(red: 131 / 255, green: 145 / 255, blue: 161 / 255, alpha: 1.0), .font: UIFont(name: "OpenSans-Regular", size: 15)!])
			passwordTextField.textColor = UIColor.black
			passwordTextField.font = UIFont(name: "OpenSans-Regular", size: 15)!
			passwordTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
			passwordTextField.leftViewMode = .always
			passwordTextField.delegate = self
		}
	}
	@IBOutlet weak var googleButton: UIButton! {
		didSet {
//			googleButton.setImage(UIImage(named: "google_ic")?.withRenderingMode(.alwaysOriginal), for: .normal)
		}
	}
	@IBOutlet weak var facebookButton: UIButton! {
		didSet {
//			facebookButton.setImage(UIImage(named: "facebook_ic")?.withRenderingMode(.alwaysOriginal), for: .normal)
		}
	}
	
	//MARK: - Lifecycle
	override func viewDidLoad() {
		super.viewDidLoad()
		
		handleTapOutsideOfTextField()
	}
	
	//MARK: - action ============================================
	@IBAction func handleLogin(_ sender: Any) {
		let homeStoryboard = UIStoryboard(name: "HomeVC", bundle: nil)
		let homeVC = homeStoryboard.instantiateViewController(withIdentifier: "HomeVC")
		homeVC.modalPresentationStyle = .fullScreen
		
		present(homeVC, animated: true)
	}
	
	//MARK: - func ============================================
	func handleTapOutsideOfTextField() {
		let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
		view.addGestureRecognizer(tap)
	}
	
	//MARK: - selector ============================================
	@objc func dismissKeyboard() {
		view.endEditing(true)
	}
}

//MARK: - UITextFieldDelegate ============================================
extension LoginVC: UITextFieldDelegate {
	
}

