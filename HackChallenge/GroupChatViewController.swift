//
//  GroupChatViewController.swift
//  HackChallenge
//
//  Created by Carson Wolber on 12/4/22.
//

import UIKit

class GroupChatViewController: UIViewController {

    let banner = UITextField() // done
    let back_button = UIButton() // done
    let course_info = UIButton() // done
    let messages = UITableView()
    let sender = UITextField()
    let send_button = UIButton()

        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .white
            banner.text = "CS 1110" //should be replaced for whatever the selected courses text is
            banner.backgroundColor = UIColor(red: 72/255, green: 72/255, blue: 72/255, alpha: 1.0)
            banner.font = .systemFont(ofSize: 20)
            banner.isEnabled = false
            banner.textAlignment = .center
            banner.textColor = .white
            banner.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(banner)
            
            back_button.setImage(UIImage(systemName: "chevron.backward"), for: .normal)
    //        back_button.addTarget(self, action: #selector(backwards_push), for: .touchUpInside)
            back_button.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview( back_button)
            
            course_info.setImage(UIImage(systemName: "line.3.horizontal"), for: .normal)
            course_info.addTarget(self, action: #selector(show_info), for: .touchUpInside)
            course_info.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(course_info)
            
            sender.layer.cornerRadius = 5
            sender.placeholder = "send a messsage"
            sender.layer.borderColor = .init(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
            sender.layer.borderWidth = 1
            sender.textAlignment = .left
            sender.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(sender)
            
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
                back_button.bottomAnchor.constraint(equalTo: banner.bottomAnchor, constant: -5),
                back_button.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
                back_button.heightAnchor.constraint(equalToConstant: 25)
            ])
            NSLayoutConstraint.activate([
                course_info.bottomAnchor.constraint(equalTo: banner.bottomAnchor, constant: -5),
                course_info.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
                course_info.heightAnchor.constraint(equalToConstant: 25)
            ])
            NSLayoutConstraint.activate([
                sender.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                sender.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
                sender.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
                sender.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50)
            
            ])
        }
    //    @objc func backwards_push() {
    //        navigationController?.pushViewController(//otherview, animated: true)
    //    }
        @objc func show_info() {
            
            present(CourseInfoViewController(), animated: true, completion: nil)
            // I'm choosing not to include the instructors names, this seems like a minor detail that to fully implement we'd need access to cornells course roster.
        }
        }

