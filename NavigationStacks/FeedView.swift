//
//  FeedView.swift
//  NavigationStacks
//
//  Created by Daniel Burke on 6/16/23.
//

import SwiftUI

struct FeedView: View {
    @Binding var viewModel: FeedViewModel
    
    var body: some View {
        //Send a FeedPath type to the navigation path instead of a viewModel
        NavigationStack(path: $viewModel.feedPath) {
            List {
                NavigationLink("Someone updated their profile", value: FeedPath.profile(viewModel: PublicProfileViewModel()))
                NavigationLink("Comment was made on a post", value: FeedPath.post(viewModel: PostViewModel()))
            }
            .navigationDestination(for: FeedPath.self) { path in
                switch path {
                case .profile(let viewModel):
                    PublicProfileView(viewModel: viewModel)
                case .post(let viewModel):
                    PostView(viewModel: viewModel)
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView(viewModel: .constant(FeedViewModel()))
    }
}
