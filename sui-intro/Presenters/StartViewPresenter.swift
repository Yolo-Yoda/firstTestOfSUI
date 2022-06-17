//
//  StartViewPresenter.swift
//  sui-intro
//
//  Created by Yury Vozleev on 15.06.2022.
//

import SwiftUI

class StartViewPresenter: ObservableObject {
    weak var interactor: StartViewInteractor!
    
    @Published var postTitle = "Title"
    @Published var postBody = "body"
    @Published var task1 = "Trimmed Spaces"
    @Published var task2 = "Upper Case After Dots"
    
    func setPost(_ newPost: Post) {
        postTitle = newPost.title
        postBody = newPost.body
        task1 = newPost.value
        task2 = newPost.value1
    }
    
    
}

