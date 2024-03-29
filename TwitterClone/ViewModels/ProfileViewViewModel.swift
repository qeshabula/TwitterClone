//
//  ProfileViewViewModel.swift
//  TwitterClone
//
//  Created by Bula on 1/16/23.
//

import Foundation
import Combine
import FirebaseAuth

final class ProfileViewViewModel: ObservableObject {
    
    private var subscriptions: Set< AnyCancellable> = []
    
    @Published var user: TwitterUser?
    @Published var error: String?
    
    func retreiveUser() {
        guard let id = Auth.auth().currentUser?.uid else { return }
        DatabaseManager.shared.collectionUsers(retreive: id)
            .sink { [weak self] completion in
                if case .failure(let error) = completion {
                    self?.error = error.localizedDescription
                }
            } receiveValue: { [weak self] user in
                self?.user = user
            }
            .store(in: &subscriptions)
    }
    
    func getFormattedDate(with date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM YYYY"
        return dateFormatter.string(from: date)
    }
}
