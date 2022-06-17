//
//  Post.swift
//  sui-intro
//
//  Created by Yury Vozleev on 15.06.2022.
//

import Foundation

struct Post: Hashable {

    static func == (lhs: Post, rhs: Post) -> Bool {
        return lhs.title == rhs.title && lhs.body == rhs.body
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(title)
        hasher.combine(body)
    }
    
    @Trimmed var title: String 
    @Trimmed var body: String
    @TrimmedSpaces var value: String
    @UpperCaseAfterDot var value1: String
}
