//
//  Chapter.swift
//  Bhagavad Gita
//
//  Created by gur on 05/08/24.
//

import Foundation

struct Chapter: Identifiable, Decodable, Hashable {
    let id: Int
    let name: String
    let summary: String
    
    init(id: Int, name: String, summary: String) {
        self.id = id
        self.name = name
        self.summary = summary
    }
}
