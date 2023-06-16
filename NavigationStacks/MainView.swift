//
//  MainView.swift
//  NavigationStacks
//
//  Created by Daniel Burke on 6/16/23.
//

import SwiftUI

struct MainView: View {
    @Binding var appModel: AppModel
    var body: some View {
        TabView (selection: $appModel.selectedTab) {
            FeedView(viewModel: $appModel.feedViewModel)
                .tabItem({
                    Image(systemName: "list.bullet.below.rectangle")
                })
                .tag(AppTabs.feed)
            InboxView(viewModel: $appModel.inboxViewModel)
                .tabItem({
                    Image(systemName: "tray")
                })
                .tag(AppTabs.inbox)
            ProfileView(viewModel: $appModel.profileViewModel)
                .tabItem({
                    Image(systemName: "person")
                })
                .tag(AppTabs.profile)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(appModel: .constant(AppModel()))
    }
}
