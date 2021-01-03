//
//  ContentView.swift
//  movie
//
//  Created by Khaled Al-Mushaileh on 12/29/20.
//

import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    var body: some View {
        NavigationView{
            
            List{
                
                NavigationLink(
                    destination: MovieDetailView(movie: Movie(name: "Lion King", characters:["Simba , Scar , Nala"])),
                    label: {
                        MovieRow(movie: Movie( name: "Lion King", characters: ["Simba , Scar , Nala"]))})
                        
                NavigationLink(
                    destination: MovieDetailView(movie: Movie( name: "Toy Story", characters:["Woody, Buzz, Jessie"])),
                    label: {
                        MovieRow(movie: Movie( name: "Toy Story", characters:["Woody, Buzz, Jessie"]))})
                     
                   
                    NavigationLink(
                        destination:MovieDetailView(movie: Movie( name: "Skyscraper", characters:["Dwayne, Neve, Chin Han"])),
                        label: {
                            MovieRow(movie: Movie( name: "Skyscraper", characters:["Dwayne, Neve, Chin Han"]))})
          
                
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
