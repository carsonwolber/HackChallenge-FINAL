//
//  ViewController.swift
//  HackChallenge
//
//  Created by Carson Wolber on 11/30/22.
//

import UIKit

class ViewController: UIViewController {
    
//UILables for Text on Screen
    let welcomeText = UILabel()
    let memberText = UILabel()
    let memberText2 = UILabel()
    let netidText = UILabel()
    let passwordText = UILabel()
    
//UIButtons for buttons on screen
    let loginButton = UIButton()
    let createAccountButton = UIButton()
    
//UIImages for login image on scren
    let loginImage = UIImageView()
    let backgroundImageView = UIImageView(image: UIImage(named: "Image"))
    
//UITextFields for user to input their net-id and password
    let netidField = UITextField()
    let passwordField = UITextField()
    

    let createProfileButton = UIButton()
    let welcomeImage = UIImage()
    
    var AccountData: [User] = []
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        backgroundImageView.frame = view.frame
        backgroundImageView.contentMode = .scaleAspectFill
        view.addSubview(backgroundImageView)
        view.sendSubviewToBack(backgroundImageView)
        
//        Adding Texts
        memberText.text = "Welcome to Cornell"
        memberText.font = .systemFont(ofSize: 24)
        memberText.textColor = UIColor(rgb: 0x484848)
        memberText.layer.cornerRadius = 5
        memberText.clipsToBounds = true
        memberText.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(memberText)
        
        memberText2.text = "Class Exchange"
        memberText2.font = .systemFont(ofSize: 24)
        memberText2.textColor = UIColor(rgb: 0x484848)
        memberText2.layer.cornerRadius = 5
        memberText2.clipsToBounds = true
        memberText2.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(memberText2)
    
        netidText.text = "NetID"
        netidText.font = .systemFont(ofSize: 16)
        netidText.textColor = UIColor(rgb: 0x484848)
        netidText.layer.cornerRadius = 5
        netidText.clipsToBounds = true
        netidText.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(netidText)
        
        passwordText.text = "Password"
        passwordText.font = .systemFont(ofSize: 16)
        passwordText.textColor = UIColor(rgb: 0x484848)
        passwordText.layer.cornerRadius = 5
        passwordText.clipsToBounds = true
        passwordText.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(passwordText)
        
        
//        Adding Buttons
        loginButton.setTitle("Login", for: .normal)
        loginButton.backgroundColor = UIColor(rgb: 0x484848)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.layer.cornerRadius = 20
        loginButton.layer.borderWidth = 2
        loginButton.layer.borderColor = UIColor(rgb: 0x00FFC2).cgColor
        loginButton.addTarget(self, action: #selector(pushHomeScreenView), for: .touchUpInside)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loginButton)
        
        createAccountButton.setTitle("Get Started", for: .normal)
        createAccountButton.setTitleColor(UIColor(rgb: 0x484848), for: .normal)
        createAccountButton.layer.cornerRadius = 20
        createAccountButton.backgroundColor = .clear
        createAccountButton.layer.borderWidth = 2
        createAccountButton.layer.borderColor = UIColor(rgb: 0x00FFC2).cgColor
        createAccountButton.addTarget(self, action: #selector(pushCreateProfileView), for: .touchUpInside)
        createAccountButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(createAccountButton)
    
        
//        Adding Images
        loginImage.image = UIImage(named: "logo")
        loginImage.tintColor = .white
        loginImage.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loginImage)
        
        
//        Adding TextFields
        netidField.font = .systemFont(ofSize: 20)
        netidField.backgroundColor = .clear
        netidField.textColor = UIColor(rgb: 0x484848)
        netidField.layer.borderColor = UIColor(rgb: 0x484848).cgColor
        netidField.layer.borderWidth = 1
        netidField.layer.cornerRadius = 8
        netidField.textAlignment = .center
        netidField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(netidField)
        

        passwordField.font = .systemFont(ofSize: 20)
        passwordField.backgroundColor = .clear
        passwordField.textColor = UIColor(rgb: 0x484848)
        passwordField.layer.borderColor = UIColor(rgb: 0x484848).cgColor
        passwordField.layer.borderWidth = 1
        passwordField.layer.cornerRadius = 8
        passwordField.textAlignment = .center
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(passwordField)
        
        
        setupConstraints()
    }

    
    func setupConstraints(){
        NSLayoutConstraint.activate([
            loginImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginImage.widthAnchor.constraint(equalToConstant: 120),
            loginImage.heightAnchor.constraint(equalToConstant: 120),
            loginImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 90)
        ])
        
        NSLayoutConstraint.activate([
            memberText.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            memberText.topAnchor.constraint(equalTo: loginImage.bottomAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            memberText2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            memberText2.topAnchor.constraint(equalTo: memberText.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            netidText.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            netidText.topAnchor.constraint(equalTo: memberText2.bottomAnchor, constant: 30)
        ])
        
        NSLayoutConstraint.activate([
            netidField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            netidField.topAnchor.constraint(equalTo: netidText.bottomAnchor, constant: 5),
            netidField.widthAnchor.constraint(equalToConstant: 300),
            netidField.heightAnchor.constraint(equalToConstant: 35),
        ])
        
        NSLayoutConstraint.activate([
            passwordText.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            passwordText.topAnchor.constraint(equalTo: netidField.bottomAnchor, constant: 25)
        ])
        
        NSLayoutConstraint.activate([
            passwordField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordField.topAnchor.constraint(equalTo: passwordText.bottomAnchor, constant: 5),
            passwordField.widthAnchor.constraint(equalToConstant: 300),
            passwordField.heightAnchor.constraint(equalToConstant: 35),
        ])
        
        NSLayoutConstraint.activate([
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 35),
            loginButton.widthAnchor.constraint(equalToConstant: 190),
            loginButton.heightAnchor.constraint(equalToConstant: 40),
        ])
        
        NSLayoutConstraint.activate([
            createAccountButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            createAccountButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 25),
            createAccountButton.widthAnchor.constraint(equalToConstant: 190),
            createAccountButton.heightAnchor.constraint(equalToConstant: 40),

        ])
        
    }
    @objc func pushHomeScreenView(sender: AnyObject) {
        loginButton.isSelected = true
        if netidField.text == "Text we are looking for" && passwordField.text == "Other text we are looking for" {
            navigationController?.pushViewController(AddSomeClassesViewController(), animated: true)
            self.loginButton.isSelected = false
                }
        else {
            self.loginButton.isSelected = false
                    }
            }
    

    @objc func pushCreateProfileView(){
        navigationController?.pushViewController(CreateAccountViewController(delegate: self), animated: true)
    }
    
    
}

extension UIColor {
   convenience init(red: Int, green: Int, blue: Int) {
       assert(red >= 0 && red <= 255, "Invalid red component")
       assert(green >= 0 && green <= 255, "Invalid green component")
       assert(blue >= 0 && blue <= 255, "Invalid blue component")

       self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
   }

   convenience init(rgb: Int) {
       self.init(
           red: (rgb >> 16) & 0xFF,
           green: (rgb >> 8) & 0xFF,
           blue: rgb & 0xFF
       )
   }
}
extension ViewController: CreateAccountDelegate {

    func createAccount(college: String, major: String,class_year: String,name: String, netid: String, password:String) {
        NetWorkManager.createAccount(college: college, major: major, class_year: class_year, name: name, netid: netid, password: password){ post in
            self.AccountData = [post] + self.AccountData

        }

    }

}


