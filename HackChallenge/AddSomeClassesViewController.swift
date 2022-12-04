//
//  AddSomeClassesViewController.swift
//  HackChallenge
//
//  Created by Jason Mun on 12/2/22.
//

import UIKit

class AddSomeClassesViewController: UIViewController {
    let greytop = UIImageView(image: UIImage(named: "Image 4"))
    let coursestableview = UITableView()
    let reuseidentifier = "ReuseIdentifier"
    var courses: [course] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        greytop.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(greytop)
        
        let CS1110 = course(coursetitle: "CS1110")
        let CS2110 = course(coursetitle: "CS2110")
        let CS3110 = course(coursetitle: "CS3110")
        let CS2112 = course(coursetitle: "CS2112")
        
        courses  = [CS1110,CS2110,CS2112,CS3110]
        
        
        coursestableview.backgroundColor = .white
        coursestableview.register(CoursesTableViewCell.self, forCellReuseIdentifier: reuseidentifier)
        coursestableview.translatesAutoresizingMaskIntoConstraints = false
//        coursestableview.delegate = self
        coursestableview.dataSource = self
        view.addSubview(coursestableview)
        
        
        setupConstraints()
        
    }
    func setupConstraints(){
        NSLayoutConstraint.activate([
            greytop.widthAnchor.constraint(equalToConstant: 400),
            greytop.heightAnchor.constraint(equalToConstant: 120),
            greytop.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            greytop.topAnchor.constraint(equalTo: view.topAnchor, constant: 0)
        ])
        
        NSLayoutConstraint.activate([
            coursestableview.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            coursestableview.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            coursestableview.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            coursestableview.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
    }
}


extension AddSomeClassesViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return courses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = coursestableview.dequeueReusableCell(withIdentifier: reuseidentifier, for: indexPath) as? CoursesTableViewCell{
            cell.configure(course1: courses[indexPath.row])
            return cell
        }
        else{
            return UITableViewCell()
        }
    }
}
//extension AddSomeClassesViewController: UITableViewDelegate{
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let cell = coursestableview.cellForRow(at: indexPath) as! CoursesTableViewCell;
//            present(HomeScreenViewController(course1: courses[indexPath.row], delegate: cell), animated: true)
//    }
//}
