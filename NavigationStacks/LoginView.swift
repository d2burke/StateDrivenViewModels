//
//  LoginView.swift
//  NavigationStacks
//
//  Created by Daniel Burke on 6/16/23.
//

import SwiftUI

struct LoginView: View {
    @Binding var viewModel: LoginViewModel
    
    var body: some View {
        Button {
            viewModel.isLoggedIn = true
        } label: {
            Text("Log In")
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(viewModel: .constant(LoginViewModel()))
    }
}
