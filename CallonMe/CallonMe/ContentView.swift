//
//  ContentView.swift
//  CallonMe
//
//  Created by Charlithia Palmer on 7/4/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(contacts)
                { contact in
                NavigationLink(destination: DetailView(contact: contact)) {
                    ContactRow(contact: contact)
                }
            }
            .navigationBarTitle("Call on Me")
        }
       // .environment(\.colorScheme, .dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ContactRow: View {
    
    let contact: Contact
    
    var body: some View {
        HStack {
            Image(contact.imageName)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 60, height: 60)
                .clipped()
                .cornerRadius(50)
            
            VStack(alignment: .leading) {
                Text(contact.name)
                    .font(.system(size: 21, weight: .medium, design: .default))
                Text(contact.phone)
            }
        }
    }
}
