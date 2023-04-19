//
//  ViewController.swift
//  MyFirstLoginDesign
//
//  Created by Yusuf Akeem on 18/04/2023.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var theImage: UIImageView = {
        let imageView = UIImageView()
        let image = UIImage(named: "illust")
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var topLabel: UILabel = {
        let label = UILabel()
        label.text = "Welcome Back!"
        label.backgroundColor = .clear
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 30, weight: .black)
        return label
    }()
    
    lazy var secondLabel: UILabel = {
        let label = UILabel()
        label.text = "Please Log into your existing account"
        label.backgroundColor = .clear
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20, weight: .regular)
        return label
    }()
    
    lazy var bottomButton: UIButton = {
        let button = UIButton()
        button.setTitle("Log in", for: .normal)
        button.backgroundColor = .green
        button.layer.cornerRadius = 15
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 25, weight: .bold)
        return button
    }()
    
    lazy var theEmailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Your Email"
        textField.borderStyle = .roundedRect
        textField.backgroundColor = .clear
        textField.font = UIFont.systemFont(ofSize: 35)
        textField.layer.borderColor = UIColor.white.cgColor
        textField.layer.borderWidth = 3
        textField.layer.cornerRadius = 10
        textField.clipsToBounds = true
        textField.font = .systemFont(ofSize: 16, weight: .semibold)
        textField.tintColor = .white
        
        let placeholderText = "Your Email"
        let placeholderAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        textField.attributedPlaceholder = NSAttributedString(string: placeholderText, attributes: placeholderAttributes)
            
        return textField
        }()


    lazy var thePasswordTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
        textField.placeholder = "Your Email"
        textField.borderStyle = .roundedRect
        textField.textColor = .black
        textField.backgroundColor = .clear
        textField.font = UIFont.systemFont(ofSize: 35)
        textField.layer.borderColor = UIColor.white.cgColor
        textField.layer.borderWidth = 3
        textField.layer.cornerRadius = 10
        textField.clipsToBounds = true
        textField.font = .systemFont(ofSize: 16, weight: .semibold)
        textField.tintColor = .white
        
        let placeholderText = "Your Email"
        let placeholderAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        textField.attributedPlaceholder = NSAttributedString(string: placeholderText, attributes: placeholderAttributes)
        return textField
    }()

        
        
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        
    }
}

extension ViewController {
    func setupViews() {
        view.backgroundColor = .magenta
        prepareView()
        prepareConstraint()
    }
    
    
    func prepareView(){
        view.addSubview(theImage)
        view.addSubview(topLabel)
        view.addSubview(secondLabel)
        view.addSubview(bottomButton)
        view.addSubview(theEmailTextField)
        view.addSubview(thePasswordTextField)
    }
    
    
    func prepareConstraint() {
        theImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        theImage.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 7).isActive = true
        theImage.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 7).isActive = true
        theImage.heightAnchor.constraint(equalToConstant: 200).isActive = true
        theImage.widthAnchor.constraint(equalToConstant: 200).isActive = true
        theImage.translatesAutoresizingMaskIntoConstraints = false
        
        topLabel.topAnchor.constraint(equalTo: theImage.bottomAnchor, constant: 20).isActive = true
        topLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15).isActive = true
        topLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
        topLabel.translatesAutoresizingMaskIntoConstraints = false
        
        secondLabel.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 10).isActive = true
        secondLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15).isActive = true
        secondLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
        secondLabel.translatesAutoresizingMaskIntoConstraints = false
        
        bottomButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30).isActive = true
        bottomButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15).isActive = true
        bottomButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
        bottomButton.heightAnchor.constraint(equalToConstant: 70).isActive = true
        bottomButton.translatesAutoresizingMaskIntoConstraints = false
        
        theEmailTextField.topAnchor.constraint(equalTo: secondLabel.topAnchor, constant: 70).isActive = true
        theEmailTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15).isActive = true
        theEmailTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
        theEmailTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        theEmailTextField.translatesAutoresizingMaskIntoConstraints = false
        
        
        thePasswordTextField.topAnchor.constraint(equalTo: theEmailTextField.topAnchor, constant: 70).isActive = true
        thePasswordTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15).isActive = true
        thePasswordTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15).isActive = true
        thePasswordTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        thePasswordTextField.translatesAutoresizingMaskIntoConstraints = false
    }
    
}
