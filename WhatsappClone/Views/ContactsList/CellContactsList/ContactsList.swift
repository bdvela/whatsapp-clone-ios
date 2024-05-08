//
//  ContactsList.swift
//  WhatsappClone
//
//  Created by Bryan Vela on 5/05/24.
//

import SwiftUI

struct ContactsList: View {
    @State var searchText: String = ""
    var viewModel: ContactsListViewModel = ContactsListViewModel()
    var body: some View {
        VStack{
        
            List{
                HStack {
                    Image(systemName: "archivebox.fill")
                    Text("Archived")
                }
                ForEach(viewModel.chats){ element in CellContactsListView(chat: element)}
            }
            .navigationTitle("Chats")
            .searchable(text: $searchText)
        }
    }
}

#Preview {
    ContactsList()
}
