//
//  User.swift
//  HackChallenge
//
//  Created by Jason Mun on 12/2/22.
//
import Foundation

class User: Codable {

    let name: String
    let netid: String
    let password: String
    let major: String
    let college: String
    let class_year: String
    
}
struct PostUser: Codable {
    let success: Bool
    let data: [User]
}
