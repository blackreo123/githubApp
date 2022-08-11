//
//  Repo.swift
//  githubApp
//
//  Created by JIHA YOON on 2022/08/11.
//

import Foundation

struct Repo: Decodable {
    let id: Int
    let name: String
    let description: String
    let stargazersCount: Int
    let language: String
    
    enum CodingKeys: String, CodingKey {
        case id, name, description, language
        case stargazersCount = "stargazers_count"
    }
}
