//
//  ProfileDataFormViewViewModel.swift
//  TwitterClone
//
//  Created by Bula on 1/15/23.
//

import Foundation
import Combine
import UIKit
import FirebaseAuth
import FirebaseStorage

final class ProfileDataFormViewViewModel: ObservableObject {
    
    @Published var displatName: String?
    @Published var username: String?
    @Published var bio: String?
    @Published var avatarPath: String?
}
