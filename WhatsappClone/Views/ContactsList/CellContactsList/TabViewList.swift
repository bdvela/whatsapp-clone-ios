//
//  TabViewList.swift
//  WhatsappClone
//
//  Created by Bryan Vela on 5/05/24.
//

import SwiftUI

struct TabViewList: View {
    var body: some View {
        TabView {
            Text("Updates")
                .tabItem {
                    VStack {
                        Image(systemName: "message")
                        Text("Updates")
                    }
                }
            Text("Calls")
                .tabItem {
                    VStack {
                        Image(systemName: "phone")
                        Text("Call")
                    }
                }
            Text("Communities")
                .tabItem {
                    VStack {
                        Image(systemName: "person.3")
                        Text("Communities")
                    }
                }
            NavigationContactList()
                .tabItem {
                    VStack {
                        Image(systemName: "bubble.left.and.bubble.right.fill")
                        Text("Chats")
                    }
                }
            Text("Settings")
                .tabItem {
                    VStack {
                        Image(systemName: "person.crop.circle")
                        Text("Settings")
                    }
                }
        }
    }
}

#Preview {
    TabViewList()
}
