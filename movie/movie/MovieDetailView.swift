//
//  MovieDetailView.swift
//  movie
//
//  Created by Khaled Al-Mushaileh on 1/4/21.
//

import SwiftUI

struct MovieDetailView: View {
    let movie:Movie


    var body: some View {
        ZStack{
            Group{
                Image(movie.name)
                    .resizable()
                    .scaledToFit()
                    .blur(radius: 40)
                Color.black.opacity(0.3)
                    
            }.ignoresSafeArea()
        VStack(alignment: .center){
            Image(movie.name)
                .resizable()
                .scaledToFit()
                .frame(width: 300)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 5))
        
            Text(movie.name)
                    .font(.largeTitle)
                    .font(.system(size: 50))
            Text(movie.characters.joined(separator: ", "))
                    .font(.title)
        }.padding(.vertical)
        .foregroundColor(.white)
        .shadow(radius: 8)
            
        }
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: Movie(name: "Toy Story", characters: ["Woody, Buzz, Jessie"]))
    }
}
