//
//  ContinueBuildingYourProfileViewController.swift
//  HackChallenge
//
//  Created by Jason Mun on 12/2/22.
//

import UIKit

class ContinueBuildingYourProfileViewController: UIViewController {
    let backgroundImageView = UIImageView(image: UIImage(named: "Image 1"))
    let continueProfileimage = UIImageView(image: UIImage(named: "Image 2"))
    let schooltext = UILabel()
    let majortext = UILabel()
    let graduationtext = UILabel()
    let schoolfield = UITextField()
    let majorfield = UITextField()
    let graduationfield = UITextField()
    let nextbutton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImageView.frame = view.frame
        backgroundImageView.contentMode = .scaleAspectFill
        view.addSubview(backgroundImageView)
        view.sendSubviewToBack(backgroundImageView)
        
        view.addSubview(continueProfileimage)
        continueProfileimage.translatesAutoresizingMaskIntoConstraints = false
        
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
        
        nextbutton.setTitle("Next", for: .normal)
        nextbutton.setTitleColor(UIColor(rgb: 0x484848), for: .normal)
        nextbutton.layer.cornerRadius = 20
        nextbutton.layer.borderWidth = 2
        nextbutton.layer.borderColor = UIColor(rgb: 0x00FFC2).cgColor
        nextbutton.addTarget(self, action: #selector(pushAddSomeClassesView), for: .touchUpInside)
        nextbutton.backgroundColor = .clear
        nextbutton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nextbutton)
        
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
            nextbutton.topAnchor.constraint(equalTo: view.topAnchor, constant: 598)
        ])
        
        NSLayoutConstraint.activate([
            continueProfileimage.widthAnchor.constraint(equalToConstant: 281),
            continueProfileimage.heightAnchor.constraint(equalToConstant: 100),
            continueProfileimage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 64),
            continueProfileimage.topAnchor.constraint(equalTo: view.topAnchor, constant: 226)
        ])
        
        NSLayoutConstraint.activate([
            majortext.widthAnchor.constraint(equalToConstant: 50),
            majortext.heightAnchor.constraint(equalToConstant: 19),
            majortext.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 47),
            majortext.topAnchor.constraint(equalTo: view.topAnchor, constant: 433)
        ])
        
        NSLayoutConstraint.activate([
            schooltext.widthAnchor.constraint(equalToConstant: 100),
            schooltext.heightAnchor.constraint(equalToConstant: 19),
            schooltext.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 47),
            schooltext.topAnchor.constraint(equalTo: view.topAnchor, constant: 353)
        ])
        
        NSLayoutConstraint.activate([
            graduationtext.widthAnchor.constraint(equalToConstant: 150),
            graduationtext.heightAnchor.constraint(equalToConstant: 19),
            graduationtext.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 47),
            graduationtext.topAnchor.constraint(equalTo: view.topAnchor, constant: 513)
        ])
//
        NSLayoutConstraint.activate([
            schoolfield.widthAnchor.constraint(equalToConstant: 300),
            schoolfield.heightAnchor.constraint(equalToConstant: 36),
            schoolfield.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 45),
            schoolfield.topAnchor.constraint(equalTo: view.topAnchor, constant: 377)
        ])
        
        NSLayoutConstraint.activate([
            majorfield.widthAnchor.constraint(equalToConstant: 300),
            majorfield.heightAnchor.constraint(equalToConstant: 36),
            majorfield.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 45),
            majorfield.topAnchor.constraint(equalTo: view.topAnchor, constant: 457)
        ])
        
        NSLayoutConstraint.activate([
            graduationfield.widthAnchor.constraint(equalToConstant: 300),
            graduationfield.heightAnchor.constraint(equalToConstant: 36),
            graduationfield.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 45),
            graduationfield.topAnchor.constraint(equalTo: view.topAnchor, constant: 537),
        ])
        
        
        
        
        
        
    }
    
    
    @objc func pushAddSomeClassesView(){
        navigationController?.pushViewController(AddSomeClassesViewController(), animated: true)
    }
    
    
}
