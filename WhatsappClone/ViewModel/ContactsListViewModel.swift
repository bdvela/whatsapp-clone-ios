//
//  ContactsListViewModel.swift
//  WhatsappClone
//
//  Created by Bryan Vela on 6/05/24.
//

import Foundation

@Observable
class ContactsListViewModel {
    var chats: [ChatsModel] =  load("Chats.json")
}

func load <T: Decodable>(_ filename: String) -> T {
    let data: Data
    guard let file =  Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("No encontrado.")
    }
    
    do{
        data = try Data(contentsOf: file)
    } catch{
        fatalError("No se pudo convertir el archivo en datos.")
    }
    
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch{
        fatalError("No se pudo convertir la data a un objeto.")
    }
}
