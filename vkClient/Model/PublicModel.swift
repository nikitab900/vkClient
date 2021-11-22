//
//  PublicModel.swift
//  vkClient
//
//  Created by Никита Абакумов on 20.11.2021.
//

import Foundation

class Public: Equatable {
    static func == (lhs: Public, rhs: Public) -> Bool {
        return lhs._name == rhs._name && lhs._avatar == rhs._avatar
    }
    
    init(name: String, avatar: String) {
        self._name = name
        self._avatar = avatar
    }
    
    var _name: String
    var _avatar: String
}

let cars = Public(name: "Cars", avatar: "AvatarCars")
let music = Public(name: "Music", avatar: "AvatarMusic")
let sport = Public(name: "Sport", avatar: "AvatarSport")

let allPublicList: [Public] = [cars, music, sport]
var myPublicList: [Public] = []
