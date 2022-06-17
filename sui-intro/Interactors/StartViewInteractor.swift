//
//  StartViewInteractor.swift
//  sui-intro
//
//  Created by Yury Vozleev on 15.06.2022.
//

import Foundation

class StartViewInteractor {
    weak var presenter: StartViewPresenter!
    
    let dateStart = VarWithDate.init(wrappedValue: "")
    
    private var posts = [Post(title: "    Swift UI   ",
                              body: "   SUI introduction   ",
                              value: "fdg  rd fgr re egrre g",
                              value1: "hello.my name is. viktor")]
    
    func actonOnTapMeButton() {
        presenter.setPost(posts.randomElement()!)
        print("You push'ed button at: \(dateStart.wrappedValue)")
    }
    
}
