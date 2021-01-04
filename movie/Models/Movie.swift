
import Foundation

struct Movie : Identifiable {
    let name: String
    let characters: [String]
    let id = UUID()
}

let movies = [
    Movie(name: "Lion King", characters:["Simba , Scar , Nala"]),
    Movie( name: "Toy Story", characters:["Woody, Buzz, Jessie"]),
    Movie( name: "Skyscraper", characters:["Dwayne, Neve, Chin Han"])
]
