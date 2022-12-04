//
//  Courses.swift
//  HackChallenge
//
//  Created by Carson Wolber on 12/1/22.
//

import UIKit
import Foundation
class Courses: Codable {
    
    let id: Int
    var classCode: String
    var name: String
    var posts =  [String]()
    var tas =  [String]()
    var students =  [String]()
    var banned_students = [String]()
    
}
