//
//  ChatsModel.swift
//  WhatsappClone
//
//  Created by Bryan Vela on 5/05/24.
//

import SwiftUI
import Foundation

struct ChatsModel: Hashable, Codable, Identifiable{
    var id: Int
    var name: String
    var text: String
    var time: String
    var sent: Bool
    var received: Bool
    var seen: Bool
    var silenced: Bool
    
    private var imageName: String
    var image: Image {
        if imageName.elementsEqual(""){
            return Image(systemName: "person.crop.circle.fill")
        } else{
            return Image(imageName)
        }
    }
}
