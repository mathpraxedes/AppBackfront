//
//  LoginScreen.swift
//  AppBackfront
//
//  Created by Matheus  Praxedes on 16/12/23.
//

import UIKit

class LoginScreen: UIView {
    
    lazy var subImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named:"BGLogin")
        return image
    }()
    
    lazy var logoAppImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "BFLogin")
        return image
    }()
    
    lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "BF NFT"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 40)
        return label
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.text = "O Marketplace da BF ACADEMY"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 14)
        return label
    }()
    
    lazy var loginTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.backgroundColor = UIColor(red: 52/255, green: 52/255, blue: 52/255, alpha: 1.0)
        tf.borderStyle = .roundedRect
        tf.keyboardType = .emailAddress
        tf.attributedPlaceholder = NSAttributedString(string: "Login", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white.withAlphaComponent(0.4)])
        tf.textColor = .white
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 12
        tf.layer.borderWidth = 1.0
        tf.layer.borderColor = UIColor.white.cgColor
        return tf
    }()
    
    lazy var passwordTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.backgroundColor = UIColor(red: 52/255, green: 52/255, blue: 52/255, alpha: 1.0)
        tf.borderStyle = .roundedRect
        tf.keyboardType = .emailAddress
        tf.isSecureTextEntry = true
        tf.attributedPlaceholder = NSAttributedString(string: "Senha", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white.withAlphaComponent(0.4)])
        tf.textColor = .white
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 12
        tf.layer.borderWidth = 1.0
        tf.layer.borderColor = UIColor.white.cgColor
        return tf
    }()

    lazy var recoveryPasswordButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Recuperar Senha ?", for: .normal)
        button.setTitleColor(UIColor(red: 231/255, green: 48/255, blue: 214/255, alpha: 1.0), for: .normal)
        button.addTarget(self, action: #selector(tappedRecoveryPasswordButton), for: .touchUpInside)
        return button
    }()
    
    lazy var subLoginImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "gradient3")
        image.clipsToBounds = true
        image.layer.cornerRadius = 8
        image.contentMode = .scaleToFill
        return image
    }()
    
    lazy var loginButton:UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Entrar", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        button.titleLabel?.textAlignment = .center
        button.addTarget(self, action: #selector(tappedloginButton), for: .touchUpInside)
        return button
    }()
    
    lazy var lineView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
  
    
    @objc func tappedRecoveryPasswordButton(_ sender: UIButton) {
        print(#function)
    }
    
    @objc func tappedloginButton(_ sender: UIButton) {
        print(#function)
    }
    
    lazy var signInMetaMaskView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        view.layer.cornerRadius = 8
        view.layer.borderColor = UIColor(red: 207/255, green: 0/255, blue: 192/255, alpha: 1.0).cgColor
        view.layer.borderWidth = 2
        return view
    }()
 
    lazy var signInMetaMaskImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logo")
        return image
    }()
    
    lazy var signInWithMetaMaskLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Entrar com a MetaMask"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 14)
        return label
    }()

    override init(frame:CGRect){
        super.init(frame: frame)
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements(){
        addSubview(subImageView)
        addSubview(logoAppImageView)
        addSubview(loginLabel)
        addSubview(descriptionLabel)
        addSubview(loginTextField)
        addSubview(passwordTextField)
        addSubview(recoveryPasswordButton)
        addSubview(subLoginImageView)
        addSubview(loginButton)
        addSubview(lineView)
        addSubview(signInMetaMaskView)
        signInMetaMaskView.addSubview(signInMetaMaskImageView)
        signInMetaMaskView.addSubview(signInWithMetaMaskLabel)
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            subImageView.topAnchor.constraint(equalTo: topAnchor),
            subImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            subImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            subImageView.bottomAnchor.constraint(equalTo: bottomAnchor),

            logoAppImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 55),
            logoAppImageView.widthAnchor.constraint(equalToConstant: 108),
            logoAppImageView.heightAnchor.constraint(equalToConstant: 108),
            logoAppImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            loginLabel.topAnchor.constraint(equalTo: logoAppImageView.bottomAnchor,constant: 16),
            loginLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            descriptionLabel.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 5),
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            
            loginTextField.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 35),
            loginTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            loginTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            passwordTextField.topAnchor.constraint(equalTo: loginTextField.bottomAnchor, constant: 20),
            passwordTextField.leadingAnchor.constraint(equalTo: loginTextField.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: loginTextField.trailingAnchor),
            
            recoveryPasswordButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 10),
            recoveryPasswordButton.trailingAnchor.constraint(equalTo: loginTextField.trailingAnchor),
            recoveryPasswordButton.heightAnchor.constraint(equalToConstant: 16),
            
            subLoginImageView.topAnchor.constraint(equalTo: recoveryPasswordButton.bottomAnchor, constant: 36),
            subLoginImageView.leadingAnchor.constraint(equalTo: loginTextField.leadingAnchor),
            subLoginImageView.trailingAnchor.constraint(equalTo: loginTextField.trailingAnchor),
            subLoginImageView.heightAnchor.constraint(equalToConstant: 43),
            
            loginButton.topAnchor.constraint(equalTo: subLoginImageView.topAnchor),
            loginButton.leadingAnchor.constraint(equalTo: subLoginImageView.leadingAnchor),
            loginButton.trailingAnchor.constraint(equalTo: subLoginImageView.trailingAnchor),
            loginButton.bottomAnchor.constraint(equalTo: subLoginImageView.bottomAnchor),
            
            lineView.topAnchor.constraint(equalTo: loginButton.bottomAnchor,constant: 48),
            lineView.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 64),
            lineView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -64),
            lineView.heightAnchor.constraint(equalToConstant: 0.5),
            
            signInMetaMaskView.topAnchor.constraint(equalTo: loginButton.bottomAnchor,constant: 48),
            signInMetaMaskView.leadingAnchor.constraint(equalTo: subLoginImageView.leadingAnchor),
            signInMetaMaskView.trailingAnchor.constraint(equalTo: subLoginImageView.trailingAnchor),
            signInMetaMaskView.heightAnchor.constraint(equalToConstant: 41),
            
            signInMetaMaskImageView.leadingAnchor.constraint(equalTo: signInMetaMaskView.leadingAnchor, constant: 53),
            signInMetaMaskImageView.centerYAnchor.constraint(equalTo: signInMetaMaskView.centerYAnchor),
            signInMetaMaskImageView.heightAnchor.constraint(equalToConstant: 20),
            signInMetaMaskImageView.widthAnchor.constraint(equalToConstant: 20),
            
            signInWithMetaMaskLabel.leadingAnchor.constraint(equalTo: signInMetaMaskImageView.trailingAnchor, constant: 17),
            signInWithMetaMaskLabel.centerYAnchor.constraint(equalTo: signInMetaMaskView.centerYAnchor)

        ])
    }
}
