//
//  CoursesTableViewCell.swift
//  HackChallenge
//
//  Created by Jason Mun on 12/3/22.
//

import UIKit

class CoursesTableViewCell: UITableViewCell {
    let coursetitle = UILabel()
    let coursedescription = UILabel()
    let stackview = UIStackView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews(){
        coursetitle.textAlignment = .left
        coursetitle.font = UIFont.boldSystemFont(ofSize: 20)
        coursetitle.translatesAutoresizingMaskIntoConstraints = false
        coursetitle.textColor = UIColor(red: 0, green: 1, blue: 0.761, alpha: 1)
        coursetitle.font = UIFont(name: "Nunito-SemiBold", size: 20)
        
        stackview.translatesAutoresizingMaskIntoConstraints = false
        stackview.alignment = .leading
        stackview.distribution = .equalSpacing
        stackview.axis = .vertical
        stackview.layer.backgroundColor = UIColor(red: 0.179, green: 0.179, blue: 0.179, alpha: 1).cgColor
        stackview.layer.cornerRadius = 10
        
        stackview.addArrangedSubview(coursetitle)
        contentView.addSubview(stackview)
        
    }
    
    func setupConstraints(){
        NSLayoutConstraint.activate([
            stackview.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            stackview.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20),
            stackview.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            stackview.heightAnchor.constraint(equalToConstant: 50),
            stackview.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10)
        ])
    }
    func configure(course1: course){
        coursetitle.text = course1.coursetitle
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
//extension CoursesTableViewCell: changecellDelegate{
//    func changejoinedcourse(newstatus: String){
//        joinedcourse.text = newstatus
//    }
//}

