//
//  MovieDetailView.swift
//  movie
//
//  Created by Khaled Al-Mushaileh on 1/4/21.
//

import SwiftUI

struct MovieDetailView: View {
    let movieName: String
    let movieChar: [String]


    var body: some View {
        ZStack{
            Group{
                Image(movieName)
                    .resizable()
                    .scaledToFit()
                    .blur(radius: 40)
                Color.black.opacity(0.3)
                    
            }.ignoresSafeArea()
        VStack(alignment: .center){
            Image(movieName)
                .resizable()
                .scaledToFit()
                .frame(width: 300)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 5))
        
                Text(movieName)
                    .font(.largeTitle)
                    .font(.system(size: 50))
                Text(movieChar.joined(separator: ", "))
                    .font(.title)
        }.padding(.vertical)
        .foregroundColor(.white)
        .shadow(radius: 8)
            
        }
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movieName: "Toy Story", movieChar: ["Woody, Buzz, Jessie"])
            .previewDevice("iPhone 12")
    }
}
