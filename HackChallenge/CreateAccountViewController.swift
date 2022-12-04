//
//  CreateAccountViewController.swift
//  HackChallenge
//
//  Created by Carson Wolber on 12/1/22.
//

import UIKit

class CreateAccountViewController: UIViewController {
    
    let backgroundImageView = UIImageView(image: UIImage(named: "Image 1"))
    let continueProfileimage = UIImageView(image: UIImage(named: "Image 3"))
    let nametext = UILabel()
    let netidtext = UILabel()
    let passwordtext = UILabel()
    let namefield = UITextField()
    let netidfield = UITextField()
    let passwordfield = UITextField()
    let schooltext = UILabel()
    let majortext = UILabel()
    let graduationtext = UILabel()
    let schoolfield = UITextField()
    let majorfield = UITextField()
    let graduationfield = UITextField()
    let nextbutton = UIButton()
    

    weak var delegate: CreateAccountDelegate?

    init(delegate: CreateAccountDelegate) {
        self.delegate = delegate
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImageView.frame = view.frame
        backgroundImageView.contentMode = .scaleAspectFill
        view.addSubview(backgroundImageView)
        view.sendSubviewToBack(backgroundImageView)
        
        view.addSubview(continueProfileimage)
        continueProfileimage.translatesAutoresizingMaskIntoConstraints = false
        
        nametext.textColor = UIColor(red: 0.512, green: 0.512, blue: 0.512, alpha: 1)
        nametext.font = UIFont(name: "Nunito-SemiBold", size: 14)
        nametext.text = "Name"
        nametext.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nametext)
        
        netidtext.textColor = UIColor(red: 0.512, green: 0.512, blue: 0.512, alpha: 1)
        netidtext.font = UIFont(name: "Nunito-SemiBold", size: 14)
        netidtext.text = "NetID"
        netidtext.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(netidtext)
        
        passwordtext.textColor = UIColor(red: 0.512, green: 0.512, blue: 0.512, alpha: 1)
        passwordtext.font = UIFont(name: "Nunito-SemiBold", size: 14)
        passwordtext.text = "Create Password"
        passwordtext.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(passwordtext)
        
        nextbutton.setTitle("Next", for: .normal)
        nextbutton.setTitleColor(UIColor(rgb: 0x484848), for: .normal)
        nextbutton.layer.cornerRadius = 20
        nextbutton.layer.borderWidth = 2
        nextbutton.layer.borderColor = UIColor(rgb: 0x00FFC2).cgColor
        nextbutton.addTarget(self, action: #selector(saveAction), for: .touchUpInside)
        nextbutton.backgroundColor = .clear
        nextbutton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nextbutton)
        
        namefield.font = .systemFont(ofSize: 20)
        namefield.backgroundColor = .clear
        namefield.textColor = UIColor(rgb: 0x484848)
        namefield.layer.borderColor = UIColor(rgb: 0x484848).cgColor
        namefield.layer.borderWidth = 1
        namefield.layer.cornerRadius = 8
        namefield.textAlignment = .center
        namefield.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(namefield)
        
        netidfield.font = .systemFont(ofSize: 20)
        netidfield.backgroundColor = .clear
        netidfield.textColor = UIColor(rgb: 0x484848)
        netidfield.layer.borderColor = UIColor(rgb: 0x484848).cgColor
        netidfield.layer.borderWidth = 1
        netidfield.layer.cornerRadius = 8
        netidfield.textAlignment = .center
        netidfield.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(netidfield)
        
        passwordfield.font = .systemFont(ofSize: 20)
        passwordfield.backgroundColor = .clear
        passwordfield.textColor = UIColor(rgb: 0x484848)
        passwordfield.layer.borderColor = UIColor(rgb: 0x484848).cgColor
        passwordfield.layer.borderWidth = 1
        passwordfield.layer.cornerRadius = 8
        passwordfield.textAlignment = .center
        passwordfield.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(passwordfield)
        
        
        schooltext.textColor = UIColor(red: 0.512, green: 0.512, blue: 0.512, alpha: 1)
        schooltext.font = UIFont(name: "Nunito-SemiBold", size: 14)
        schooltext.text = "School"
        schooltext.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(schooltext)
        
        majortext.textColor = UIColor(red: 0.512, green: 0.512, blue: 0.512, alpha: 1)
        majortext.font = UIFont(name: "Nunito-SemiBold", size: 14)
        majortext.text = "Major"
        majortext.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(majortext)
        
        graduationtext.textColor = UIColor(red: 0.512, green: 0.512, blue: 0.512, alpha: 1)
        graduationtext.font = UIFont(name: "Nunito-SemiBold", size: 14)
        graduationtext.text = "Graduation Year"
        graduationtext.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(graduationtext)
        
        schoolfield.font = .systemFont(ofSize: 20)
        schoolfield.backgroundColor = .clear
        schoolfield.textColor = UIColor(rgb: 0x484848)
        schoolfield.layer.borderColor = UIColor(rgb: 0x484848).cgColor
        schoolfield.layer.borderWidth = 1
        schoolfield.layer.cornerRadius = 8
        schoolfield.textAlignment = .center
        schoolfield.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(schoolfield)
        
        majorfield.font = .systemFont(ofSize: 20)
        majorfield.backgroundColor = .clear
        majorfield.textColor = UIColor(rgb: 0x484848)
        majorfield.layer.borderColor = UIColor(rgb: 0x484848).cgColor
        majorfield.layer.borderWidth = 1
        majorfield.layer.cornerRadius = 8
        majorfield.textAlignment = .center
        majorfield.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(majorfield)
        
        graduationfield.font = .systemFont(ofSize: 20)
        graduationfield.backgroundColor = .clear
        graduationfield.textColor = UIColor(rgb: 0x484848)
        graduationfield.layer.borderColor = UIColor(rgb: 0x484848).cgColor
        graduationfield.layer.borderWidth = 1
        graduationfield.layer.cornerRadius = 8
        graduationfield.textAlignment = .center
        graduationfield.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(graduationfield)

        
        setupConstraints()
    }
    func setupConstraints(){
        NSLayoutConstraint.activate([
            nextbutton.widthAnchor.constraint(equalToConstant: 74),
            nextbutton.heightAnchor.constraint(equalToConstant: 35),
            nextbutton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 158),
            nextbutton.topAnchor.constraint(equalTo: view.topAnchor, constant: 770)
        ])
        
        NSLayoutConstraint.activate([
            continueProfileimage.widthAnchor.constraint(equalToConstant: 281),
            continueProfileimage.heightAnchor.constraint(equalToConstant: 100),
            continueProfileimage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 64),
            continueProfileimage.topAnchor.constraint(equalTo: view.topAnchor, constant: 150)
        ])
        
        NSLayoutConstraint.activate([
            netidtext.widthAnchor.constraint(equalToConstant: 50),
            netidtext.heightAnchor.constraint(equalToConstant: 19),
            netidtext.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 47),
            netidtext.topAnchor.constraint(equalTo: view.topAnchor, constant: 363)
        ])
        
        NSLayoutConstraint.activate([
            nametext.widthAnchor.constraint(equalToConstant: 100),
            nametext.heightAnchor.constraint(equalToConstant: 19),
            nametext.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 47),
            nametext.topAnchor.constraint(equalTo: view.topAnchor, constant: 283)
        ])
        
        NSLayoutConstraint.activate([
            passwordtext.widthAnchor.constraint(equalToConstant: 150),
            passwordtext.heightAnchor.constraint(equalToConstant: 19),
            passwordtext.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 47),
            passwordtext.topAnchor.constraint(equalTo: view.topAnchor, constant: 443)
        ])
        
        NSLayoutConstraint.activate([
            majortext.widthAnchor.constraint(equalToConstant: 100),
            majortext.heightAnchor.constraint(equalToConstant: 19),
            majortext.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 47),
            majortext.topAnchor.constraint(equalTo: view.topAnchor, constant: 523)
        ])
        
        NSLayoutConstraint.activate([
            schooltext.widthAnchor.constraint(equalToConstant: 100),
            schooltext.heightAnchor.constraint(equalToConstant: 19),
            schooltext.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 47),
            schooltext.topAnchor.constraint(equalTo: view.topAnchor, constant: 603)
        ])
        
        NSLayoutConstraint.activate([
            graduationtext.widthAnchor.constraint(equalToConstant: 150),
            graduationtext.heightAnchor.constraint(equalToConstant: 19),
            graduationtext.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 47),
            graduationtext.topAnchor.constraint(equalTo: view.topAnchor, constant: 683)
        ])
//
        NSLayoutConstraint.activate([
            namefield.widthAnchor.constraint(equalToConstant: 300),
            namefield.heightAnchor.constraint(equalToConstant: 36),
            namefield.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 45),
            namefield.topAnchor.constraint(equalTo: view.topAnchor, constant: 307)
        ])
        
        NSLayoutConstraint.activate([
            netidfield.widthAnchor.constraint(equalToConstant: 300),
            netidfield.heightAnchor.constraint(equalToConstant: 36),
            netidfield.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 45),
            netidfield.topAnchor.constraint(equalTo: view.topAnchor, constant: 387)
        ])
        
        NSLayoutConstraint.activate([
            passwordfield.widthAnchor.constraint(equalToConstant: 300),
            passwordfield.heightAnchor.constraint(equalToConstant: 36),
            passwordfield.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 45),
            passwordfield.topAnchor.constraint(equalTo: view.topAnchor, constant: 467),
        ])
        
        NSLayoutConstraint.activate([
            majorfield.widthAnchor.constraint(equalToConstant: 300),
            majorfield.heightAnchor.constraint(equalToConstant: 36),
            majorfield.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 45),
            majorfield.topAnchor.constraint(equalTo: view.topAnchor, constant: 547)
        ])
        
        NSLayoutConstraint.activate([
            schoolfield.widthAnchor.constraint(equalToConstant: 300),
            schoolfield.heightAnchor.constraint(equalToConstant: 36),
            schoolfield.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 45),
            schoolfield.topAnchor.constraint(equalTo: view.topAnchor, constant:627)
        ])
        
        
        NSLayoutConstraint.activate([
            graduationfield.widthAnchor.constraint(equalToConstant: 300),
            graduationfield.heightAnchor.constraint(equalToConstant: 36),
            graduationfield.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 45),
            graduationfield.topAnchor.constraint(equalTo: view.topAnchor, constant: 707),
        ])
        
        
        
    }
    @objc func saveAction() {
        let name = namefield.text!
        let netid = netidfield.text!
        let password = passwordfield.text!
        let college = schoolfield.text!
        let major = majorfield.text!
        let class_year = graduationfield.text!
        

        delegate?.createAccount(college: college, major: major, class_year: class_year, name: name, netid: netid, password: password)
        navigationController?.pushViewController(AddSomeClassesViewController(), animated: true)
    }
    
    
}
protocol CreateAccountDelegate: UIViewController {
    func createAccount(college: String, major: String,class_year: String,name: String, netid: String, password:String)
}


