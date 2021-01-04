//
//  ContentView.swift
//  movie
//
//  Created by Khaled Al-Mushaileh on 12/29/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            
            List(movies){ movie in
                
                NavigationLink(
                    destination: MovieDetailView(movie: movie),
                    label: {
                        MovieRow(movie: movie)
                        })

            }.navigationBarTitle("Movies")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}

struct MovieRow: View {
    let movie: Movie
    var body: some View {
        HStack{
            Image(movie.name)
                .resizable()
                .scaledToFit()
                .frame(width: 100)
                .clipShape(Circle())
            VStack(alignment: .leading)
            {
                Text(movie.name)
                    .font(.largeTitle)
                Text(movie.characters.joined(separator: ", "))
            }
            
            
            
        }
    }
}
