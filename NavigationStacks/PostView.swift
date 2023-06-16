//
//  PostView.swift
//  NavigationStacks
//
//  Created by Daniel Burke on 6/16/23.
//

import SwiftUI

struct PostView: View {
    var viewModel: PostViewModel
    
    var body: some View {
        Text("Post")
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(viewModel: PostViewModel())
    }
}
