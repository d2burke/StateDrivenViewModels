//
//  FeedViewModel.swift
//  NavigationStacks
//
//  Created by Daniel Burke on 6/16/23.
//

import Foundation
import SwiftUI

enum FeedPath: Equatable, Hashable {
    case profile(viewModel: PublicProfileViewModel)
    case post(viewModel: PostViewModel)
}

struct FeedViewModel: Identifiable, Equatable {
    var id = UUID().uuidString
    var feedPath = [FeedPath]()
}

struct PostViewModel: Identifiable, Equatable, Hashable {
    var id = UUID().uuidString
}

struct PublicProfileViewModel: Identifiable, Equatable, Hashable {
    var id = UUID().uuidString
}
