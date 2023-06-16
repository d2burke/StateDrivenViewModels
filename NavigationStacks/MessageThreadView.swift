//
//  MessageThreadView.swift
//  NavigationStacks
//
//  Created by Daniel Burke on 6/16/23.
//

import SwiftUI

struct MessageThreadView: View {
    @Binding var viewModel: MessageThreadViewModel
    var body: some View {
        List($viewModel.messages) { message in
            Text("\(message.wrappedValue.text)")
        }
    }
}

struct MessageThreadView_Previews: PreviewProvider {
    static var previews: some View {
        MessageThreadView(viewModel: .constant(MessageThreadViewModel()))
    }
}
