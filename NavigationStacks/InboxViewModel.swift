//
//  InboxViewModel.swift
//  NavigationStacks
//
//  Created by Daniel Burke on 6/16/23.
//

import Foundation
import SwiftUI

struct InboxViewModel: Identifiable, Equatable {
    var id = UUID().uuidString
    var inboxPath = [MessageThreadViewModel]()
    var threads = [MessageThreadViewModel(), MessageThreadViewModel()]
}

struct MessageThreadViewModel: Identifiable, Equatable, Hashable {
    var id = UUID().uuidString
    var messages = [
        Message(text: "Message 1"),
        Message(text: "Message 2"),
        Message(text: "Message 3")
    ]
}

struct Message: Identifiable, Hashable {
    var id = UUID().uuidString
    var text: String
}
