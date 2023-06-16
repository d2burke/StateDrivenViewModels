//
//  ContentView.swift
//  NavigationStacks
//
//  Created by Daniel Burke on 6/16/23.
//

import SwiftUI

struct ContentView: View {
    @State var appModel = AppModel()
    
    var body: some View {
        Group {
            if !appModel.loginViewModel.isLoggedIn {
                LoginView(viewModel: $appModel.loginViewModel)
            } else {
                MainView(appModel: $appModel)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

enum AppTabs {
    case feed, inbox, profile
}

struct AppModel: Identifiable {
    var id = UUID().uuidString
    var selectedTab: Int = 0
    
    var loginViewModel = LoginViewModel()
    var feedViewModel = FeedViewModel()
    var profileViewModel = ProfileViewModel()
    var inboxViewModel = InboxViewModel()
}
