//
//  NetWorkManager.swift
//  HackChallenge
//
//  Created by Carson Wolber on 12/1/22.
//

import Alamofire
import Foundation

class NetWorkManager {
    
    static let host = "http://35.186.170.158"
    
    
    static func getAllCourses(completion: @escaping([Courses]) -> Void){
        let endpoint = "\(host)/api/courses/"
        AF.request(endpoint, method: .get).validate().responseData { response in
            switch response.result {
            case .success(let data):
                let jsonDecoder = JSONDecoder()
                jsonDecoder.dateDecodingStrategy = .iso8601
                if let userResponse = try? jsonDecoder.decode([Courses].self, from: data) {
                    completion(userResponse)
                } else {
                    print("Failed to decode getAllCourses")
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    
    static func searchCourses(course_id: Int, completion: @escaping(Courses) -> Void){
        let endpoint = "\(host)/api/courses/\(course_id)/"
        let params: Parameters = [
            "course_id": course_id
        ]
        AF.request(endpoint, method: .post, parameters: params).validate().responseData { response in
            switch response.result{
            case .success(let data):
                let jsondecoder = JSONDecoder()
                if let userResponse = try? jsondecoder.decode(Courses.self, from: data){
                    completion(userResponse)
                } else{
                    print("Failed to decode SearchCourses")
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    static func deleteCourses(course_id: Int, completion: @escaping(Courses) -> Void){
        let endpoint = "\(host)/api/courses/\(course_id)/"
        let params: Parameters = [
            "course_id": course_id
        ]
        AF.request(endpoint, method: .post, parameters: params).validate().responseData { response in
            switch response.result{
            case .success(let data):
                let jsondecoder = JSONDecoder()
                if let userResponse = try? jsondecoder.decode(Courses.self, from: data){
                    completion(userResponse)
                } else{
                    print("Failed to decode deleteCourses")
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    static func createPost(course_id: Int, content: String, completion: @escaping(post) -> Void){
        let endpoint = "\(host)/api/courses/\(course_id)/post/"
        let params: Parameters = ["content": content]
        AF.request(endpoint, method: .post, parameters: params).validate().responseData {
            reponse in switch reponse.result {
            case.success(let data):
                let jsonDecoder = JSONDecoder()
                if let userReponse = try? jsonDecoder.decode(post.self, from: data) {
                    completion(userReponse)
                } else {
                    print("failed to decode createPost")
                }
            case.failure(let error):
                print(error.localizedDescription)
            }
        }
    }

    static func deletePost(post_id: Int, course_id: Int, content: String, completion: @escaping(post) -> Void){

        let endpoint = "\(host)/api/courses/\(course_id)/post/\(post_id)/"
        let params: Parameters = [
            "content": content
        ]
        AF.request(endpoint, method: .post, parameters: params).validate().responseData { response in
            switch response.result {
            case .success(let data):
                let jsonDecoder = JSONDecoder()
                if let userResponse = try? jsonDecoder.decode(post.self, from: data) {
                    completion(userResponse)
                } else {
                    print("failed to decode deletePost")
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
        
    }
    
    
    static func createAccount(college: String, major: String,class_year: String,name: String, netid: String, password:String, completion: @escaping(User) -> Void){
        
        let endpoint = "\(host)/api/register/"
        let params: Parameters = [
            "college":college,
            "major":major,
            "class_year":class_year,
            "name":name,
            "netid":netid,
            "password":password
        ]
        
        AF.request(endpoint, method: .post , parameters: params).validate().responseData { response in
            switch response.result {
            case .success(let data):
                let jsonDecoder = JSONDecoder()
                if let userResponse = try? jsonDecoder.decode(User.self, from: data) {
                    completion(userResponse)
                } else {
                    print("failed to decode createPost")
                }
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
            
        }
}





