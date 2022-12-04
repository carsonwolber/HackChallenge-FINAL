//
//  CourseInfoViewController.swift
//  hackchallengemessage
//
//  Created by Carson Wolber on 12/3/22.
//

import UIKit

class CourseInfoViewController: UIViewController {
    
    let banner = UITextField()
//    I'm just going to show these feautes as a table view since interacting with a 'mute' feature and the rest seems outside the scope of what I know how to do
    var menu: [Options] = []
    let reuseIdentifier = "reuseidentifier"
    let optionstable = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        
        let option1 = Options(icon_name: "bell.slash", name: "Mute")
        let option2 = Options(icon_name: "photo.fill.on.rectangle.fill", name: "Gallery")
        let option3 = Options(icon_name: "magnifyingglass", name: "Search messages")
        let option4 = Options(icon_name: "person.2.fill", name: "Members list")
        
        menu = [option1, option2, option3, option4]
        optionstable.translatesAutoresizingMaskIntoConstraints = false
        optionstable.register(ChatOptionsTableViewCell.self, forCellReuseIdentifier: reuseIdentifier)
        optionstable.dataSource = self
        optionstable.rowHeight = 80
        view.addSubview(optionstable)
        
        banner.textColor = .white
        banner.textAlignment = .center
        banner.text = "CS 1110"
        banner.font = .systemFont(ofSize: 20)
        banner.translatesAutoresizingMaskIntoConstraints = false
        banner.backgroundColor = UIColor(red: 72/255, green: 72/255, blue: 72/255, alpha: 1.0)
        view.addSubview(banner)
       
        
        
        constraints()
    }
    func constraints() {
        NSLayoutConstraint.activate([
            banner.topAnchor.constraint(equalTo: view.topAnchor),
            banner.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            banner.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            banner.heightAnchor.constraint(equalToConstant: 135)
            
        ])
        NSLayoutConstraint.activate([
            optionstable.topAnchor.constraint(equalTo: banner.bottomAnchor),
            optionstable.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            optionstable.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            optionstable.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        
        
        ])
        
        
        
        
    }
    
    
}

extension CourseInfoViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menu.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell  = optionstable.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as? ChatOptionsTableViewCell {
            cell.configure(Options: menu[indexPath.row])
            return cell
        }
        else{
            return UITableViewCell()
        }
    }
    
}

