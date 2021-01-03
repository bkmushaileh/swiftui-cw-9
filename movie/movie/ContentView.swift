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
                    destination: MovieDetailView(movieName: "Lion King", movieChar: ["Simba , Scar , Nala"]),
                    label: {
                        MovieRow(movieName: "Lion King", movieChar: ["Simba , Scar , Nala"])                    })
                    
                NavigationLink(
                    destination: MovieDetailView(movieName: "Toy Story", movieChar: ["Woody, Buzz, Jessie"]),
                    label: {
                        MovieRow(movieName: "Toy Story", movieChar: ["Woody, Buzz, Jessie"])
                        
                    })
                    NavigationLink(
                        destination: MovieDetailView(movieName: "Skyscraper", movieChar: ["Dwayne, Neve, Chin Han"]),
                        label: {
                MovieRow(movieName: "Skyscraper", movieChar: ["Dwayne, Neve, Chin Han"])
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
    let movieName: String
    let movieChar: [String]
    var body: some View {
        HStack{
            Image(movieName)
                .resizable()
                .scaledToFit()
                .frame(width: 100)
                .clipShape(Circle())
            VStack(alignment: .leading)
            {
                Text(movieName)
                    .font(.largeTitle)
                Text(movieChar.joined(separator: ", "))
            }
            
            
            
        }
    }
}
