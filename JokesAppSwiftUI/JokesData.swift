//
//  JokesData.swift
//  JokesAppSwiftUI
//
//  Created by Onur Bulut on 30.09.2023.
//

import Foundation

/*struct JokesData :Identifiable, Codable {
    let id = UUID()
    let type : String
    let value : [Value]
    
}

struct Value :Identifiable, Codable {
    let id : Int
    let joke : String
    let categories : [String]
}*/




struct JokesData :Identifiable, Codable {
    let id = UUID()
    let categories: [String?]?
    let createdAt: String?
    let iconURL: String?
    let updatedAt: String?
    let url: String?
    let value: String?
}
