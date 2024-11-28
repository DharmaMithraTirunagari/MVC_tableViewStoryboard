//
//  User.swift
//  MVC_tableViewStroryboard
//
//  Created by Srikanth Kyatham on 11/27/24.
//
import Foundation

struct User {
    let id: Int
    let name: String
    let email: String
}

extension User {
    static let staticData: [User] = [
        User(id: 1, name: "Dharma Mithra", email: "dharmamithrat@gmail.com"),
        User(id: 2, name: "John Doe", email: "john.doe@gmail.com"),
        User(id: 3, name: "Jane Smith", email: "jane.smith@gmail.com"),
        User(id: 4, name: "Bob Johnson", email: "bob.johnson@gmail.com"),
        User(id: 5, name: "Harsha Vardhan", email: "harsha.vardhan@example.com"),
        User(id: 6, name: "Sampath", email: "sam.path@gmail.com"),
        User(id: 7, name: "Kiran Kumar", email: "kiran.kumar@gmail.com"),
        User(id: 8, name: "Shabaz Ahmed", email: "shabaz.amed@gmail.com")
    ]
    
    }

