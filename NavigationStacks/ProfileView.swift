//
//  ProfileView.swift
//  NavigationStacks
//
//  Created by Daniel Burke on 6/16/23.
//

import SwiftUI

struct ProfileView: View {
    @Binding var viewModel: ProfileViewModel
    
    var body: some View {
        Text("Profile")
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(viewModel: .constant(ProfileViewModel()))
    }
}
