//
//  FavoriteMovie.swift
//  MyFavoriteMovies
//
//  Created by Сергей Емелин on 13.12.2024.
//

import Foundation
import SwiftyJSON

struct FavoriteMovie {
    var title = ""
    var year = ""
    var runningTime = ""
    var directedBy = ""
    var photo = ""
    var picture = ""
    
    init(json: JSON) {
        if let item = json["title"].string {
            title = item
        }
        if let item = json["year"].string {
            year = item
        }
        if let item = json["runningTime"].string {
            runningTime = item
        }
        if let item = json["directedBy"].string {
            directedBy = item
        }
        if let item = json["photo"].string {
            photo = item
        }
        if let item = json["picture"].string {
            picture = item
        }
    }
}
