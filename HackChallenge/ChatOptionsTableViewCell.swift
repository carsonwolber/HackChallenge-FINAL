//
//  ChatOptionsTableViewCell.swift
//  hackchallengemessage
//
//  Created by Carson Wolber on 12/3/22.
//

import UIKit

class ChatOptionsTableViewCell: UITableViewCell {
    
    let icon_image = UIImageView()
    let option_name = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        icon_image.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(icon_image)
        
        option_name.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(option_name)
        
        constraints()
        
        
    }
    func configure(Options: Options) {
        icon_image.image = UIImage(systemName: Options.icon_name)
        option_name.text = Options.name
        
    }
    
    func constraints() {
        
        NSLayoutConstraint.activate([
            icon_image.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 50),
            icon_image.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
            
        ])
        NSLayoutConstraint.activate([
            option_name.leadingAnchor.constraint(equalTo: icon_image.trailingAnchor, constant: 10),
            option_name.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}

