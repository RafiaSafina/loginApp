//
//  User.swift
//  loginApp
//
//  Created by Рафия Сафина on 06.10.2022.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
            User(
            login: "User",
            password: "password",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let job: String
    let photo: String
    let bio: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Rafia",
            surname: "Safina",
            job: "Fitness coach",
            photo: "myPhoto",
            bio: """
            I was born in Kazan. dkjfskdjfksdjflkjdsljfldsksd
            dlnflsdjhfljhdjfhskhhsdkjfhjdhfjhsdjfhsdkjfhsdkfhdsjkf
            jdshfkjhsdfkjhdskjfhdskjfhdksjhfkjdshfkjdhskfjhskjfhksjdhfk.
            """
        )
    }
}


