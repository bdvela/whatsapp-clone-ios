//
//  CellContactsListView.swift
//  WhatsappClone
//
//  Created by Bryan Vela on 5/05/24.
//

import SwiftUI

struct CellContactsListView: View {
    var chat: ChatsModel
    
    var body: some View {
        HStack{
            chat.image
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundStyle(.gray)
                .clipShape(.circle)
            VStack{
                HStack{
                    Text(chat.name)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .offset(y: -10)
                        .font(.headline)
                        .bold()
                    Spacer()
                }
                HStack{
                    checkmarks(sent: chat.sent, received: chat.received, seen: chat.seen)
                    Text(chat.text)
                    Spacer()
                    
                }.offset(y:-10)
                    .font(.subheadline)
            }
            Spacer()
            VStack{
                Text(chat.time)
                    .font(.footnote)
                if chat.silenced {
                    Image(systemName: "bell.slash.fill")
                }
            }
            .offset(y:-10)
        }
    }
}

struct checkmarks: View{
    var sent: Bool
    var received: Bool
    var seen: Bool
    
    var body: some View{
        
        if sent && received && seen {
            ZStack{
                Image(systemName: "checkmark")
                Image(systemName: "checkmark")
                    .offset(x:4)
            }.foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        } else if sent && received && !seen{
            ZStack{
                Image(systemName: "checkmark")
                Image(systemName: "checkmark")
                    .offset(x:4)
            }.foregroundColor(.gray)
        } else if sent  && !received && !seen{
            ZStack{
                Image(systemName: "checkmark")
            }.foregroundColor(.gray)
        }
    }
}

