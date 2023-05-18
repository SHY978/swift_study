//
//  Article.swift
//  Table
//
//  Created by DSC07 on 2023/05/18.
//

import Foundation

//  Article.swift
struct ArticleResponse : Codable {
    let status : String?
    let totalResults : Int
    let articles : [Article]
}

struct Article : Codable {
    let author : String?
    let title : String?
    let description : String?
    let url : String?
    let urlToImage : String?
    let publishedAt : String?
    let content : String?
}

