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
            
            List{
                
                NavigationLink(
                    destination: MovieDetailView(movie: movies[0]),
                    label: {
                        MovieRow(movie: movies[0])
                        })
                        
                  
                        
                NavigationLink(
                    destination: MovieDetailView(movie: movies[1]),
                    label: {
                        MovieRow(movie: movies[1])})
                     
                   
                    NavigationLink(
                        destination:MovieDetailView(movie: movies[2]),
                        label: {
                            MovieRow(movie: movies[2])
                            
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
