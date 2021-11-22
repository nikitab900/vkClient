//
//  UserModel.swift
//  vkClient
//
//  Created by Никита Абакумов on 20.11.2021.
//

import Foundation

public class User {
    init(name: String, avatar: String) {
        self._name = name
        self._avatar = avatar
    }
    
    public func addPhoto(photoName: String) {
        _photos.append(photoName)
    }
    
    public func removePhoto(photoName: String) {
        if _photos.contains(photoName) {
            let _index = _photos.firstIndex(of: photoName)!
            _photos.remove(at: _index)
        }
    }
    
    var _name: String
    var _avatar: String
    var _photos: [String] = []
}

//инициализация друзей
let andrew = User(name: "Andrew", avatar: "AvatarAndrew")
let tom = User(name: "Tom", avatar: "AvatarTom")
let annie = User(name: "Annie", avatar: "AvatarAnnie")

//инициализация альбомов фотографий
func initPhotos() {
    andrew.addPhoto(photoName: "photo1")
    annie.addPhoto(photoName: "photo2")
    annie.addPhoto(photoName: "photo3")
    tom.addPhoto(photoName: "photo3")
}

let myFriends: [User] = [andrew, annie, tom]
