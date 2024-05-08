//
//  NavigationContactList.swift
//  WhatsappClone
//
//  Created by Bryan Vela on 5/05/24.
//

import SwiftUI

struct NavigationContactList: View {
    var body: some View {
        NavigationStack {
            ContactsList()
                .toolbar{
                    ToolbarItemGroup(placement: .topBarLeading)
                        {
                            Button(action: {}, label: {
                                Image(systemName: "ellipsis.circle")
                            })
                    }
                    ToolbarItemGroup(placement: .topBarTrailing)
                        {
                            Button(action: {}, label: {
                                Image(systemName: "camera")
                            })
                            Button(action: {}, label: {
                                Image(systemName: "plus.circle.fill")
                            })
                    }
                }
        }
        
    }
    
}

#Preview {
    NavigationContactList()
}
