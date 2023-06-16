//
//  InboxView.swift
//  NavigationStacks
//
//  Created by Daniel Burke on 6/16/23.
//

import SwiftUI

struct InboxView: View {
    @Binding var viewModel: InboxViewModel
    
    //Send a viewModel instead of a navigationPath item
    var body: some View {
        NavigationStack(path: $viewModel.inboxPath) {
            List($viewModel.threads) { thread in
                NavigationLink {
                    MessageThreadView(viewModel: thread)
                } label: {
                    Text("\(thread.id)")
                }

            }
        }
    }
}

struct InboxView_Previews: PreviewProvider {
    static var previews: some View {
        InboxView(viewModel: .constant(InboxViewModel()))
    }
}
