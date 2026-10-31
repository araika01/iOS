//
//  Favorite.swift
//  FoodRoulette
//
//  Created by Арай Жумат on 30.10.2026.
//

import UIKit

struct Favorite {
    let imageName: String
    let title: String
    let description: String
}

let favorites: [Favorite] = [
    Favorite(imageName: "burger",
             title: "Burger",
             description: "A juicy beef patty topped with melted cheese, fresh lettuce, and tomato in a toasted bun."),
    Favorite(imageName: "dumpling",
             title: "Dumplings",
             description: "Soft, steamed dough pockets filled with seasoned meat and vegetables."),
    Favorite(imageName: "pasta",
             title: "Pasta",
             description: "Al dente noodles tossed in a rich, savory tomato sauce with herbs."),
    Favorite(imageName: "pizza",
             title: "Pizza",
             description: "A slice of heaven with crispy crust, tangy tomato sauce, and stretchy mozzarella."),
    Favorite(imageName: "ramen",
             title: "Ramen",
             description: "Warm, comforting noodle soup with a rich broth and fresh toppings."),
    Favorite(imageName: "salad",
             title: "Fresh Salad",
             description: "A healthy mix of crisp greens, colorful vegetables, and a light vinaigrette."),
    Favorite(imageName: "steake",
             title: "Steake",
             description: "A perfectly seared, tender cut of premium beef cooked to your liking."),
    Favorite(imageName: "sushi",
             title: "Sushi",
             description: "Delicate slices of fresh fish and vegetables rolled with perfectly seasoned rice."),
    Favorite(imageName: "taco",
             title: "Taco",
             description: "A crunchy shell filled with seasoned meat, cheese, and zesty salsa.")
]
