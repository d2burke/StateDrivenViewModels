//
//  PublicProfileView.swift
//  NavigationStacks
//
//  Created by Daniel Burke on 6/16/23.
//

import SwiftUI

struct PublicProfileView: View {
    var viewModel: PublicProfileViewModel
    
    var body: some View {
        Text("Public Profile")
    }
}

struct PublicProfileView_Previews: PreviewProvider {
    static var previews: some View {
        PublicProfileView(viewModel: PublicProfileViewModel())
    }
}
