//
//  AuthManager.swift
//  TwitterClone
//
//  Created by Bula on 1/14/23.
//

import Foundation
import Firebase
import FirebaseAuthCombineSwift
import Combine

class AuthManager {
    static let shared = AuthManager()
    
    
    func registerUser(with email: String, password: String) -> AnyPublisher<User, Error> {
        return Auth.auth().createUser(withEmail: email, password: password)
            .map(\.user)
            .eraseToAnyPublisher()
    }
    
    func loginUser(with email: String, password: String) -> AnyPublisher<User, Error> {
        return Auth.auth().signIn(withEmail: email, password: password)
            .map(\.user)
            .eraseToAnyPublisher()
    }
}
