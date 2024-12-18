//
//  testLaura.swift
//  Route66
//
//  Created by Igor Tarantino on 18/12/24.
//

import SwiftUI
import SwiftData

@Model
class Book {
    
    var id = UUID()
    var name: String
    var author: String
    var imageName: String
    var isFavorite: Bool
    
    init(id: UUID = UUID(), name: String, author: String, imageName: String, isFavorite: Bool) {
        self.id = id
        self.name = name
        self.author = author
        self.imageName = imageName
        self.isFavorite = isFavorite
    }

}

class BookView: ObservableObject {
    
    @Published var library = [
        Book(name: "Captive Prince", author: "C.S. Pacat", imageName: "captive", isFavorite: true),
        Book(name: "A Court of Thorns and Roses", author: "Sarah J. Maas", imageName: "acotar", isFavorite: false),
        Book(name: "Sorcery of Thorns", author: "Margaret Rogerson", imageName: "sorcery", isFavorite: false),
        Book(name: "A Court of Wings and Ruins", author: "Sarah J. Maas", imageName: "acowar", isFavorite: false),
        Book(name: "A Court of Mist and Fury", author: "Sarah J. Maas", imageName: "acomaf", isFavorite: false),
        Book(name: "Six of Crows", author: "Leigh Bardugo", imageName: "sixofcrows", isFavorite: false),
        Book(name: "Crooked Kingdom", author: "Leigh Bardugo", imageName: "crooked", isFavorite: false)
    ]
    
}

struct Favorites: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var favoritebooks: [Book] = [Book(name: "Captive Prince", author: "C.S. Pacat", imageName: "captive", isFavorite: true)]
    
    
    var body: some View {
        NavigationStack {
            List {
                if favoritebooks.isEmpty {
                    Text("No favorites yet")
                        .font(.title2)
                        .foregroundStyle(.secondary)
                        .padding()
                        .accessibilityLabel("No favorites yet")
                } else {
                    List(favoritebooks) { book in
                        Text(book.name)
                    }
                }
            } // scroll
            .navigationTitle("Favorites")
        } // navigation
    } // BODY
}

#Preview {
    Favorites()
}
