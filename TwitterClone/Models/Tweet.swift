//
//  Tweet.swift
//  TwitterClone
//
//  Created by Bula on 1/21/23.
//

import Foundation

struct Tweet: Codable {
    var id = UUID().uuidString
    let author: TwitterUser
    let tweetContent: String
    var likesCount: Int
    var likers: [String]
    let isReply: Bool
    let parentReference: String?
}
