//
//  ViewController.swift
//  MoviesFavorites
//
//  Created by Арай Жумат on 06.11.2026.
//

import UIKit

struct FavoriteItem {
    let title: String
    let subtitle: String
    let imageName: String
    let rating: Int
}


class ViewController: UIViewController, UITableViewDataSource {
    
    var movies: [FavoriteItem] = [
        FavoriteItem(
            title: "Parasite",
            subtitle: "2019 · Drama",
            imageName: "movie1",
            rating: 5),
        FavoriteItem(
            title: "The Notebook",
            subtitle: "2004 · Romance, Drama",
            imageName: "movie2",
            rating: 5),
        FavoriteItem(
            title: "Interstellar",
            subtitle: "2014 · Sci-Fi, Adventure",
            imageName: "movie3",
            rating: 5),
        FavoriteItem(
            title: "Three Steps Above Heaven",
            subtitle: "2010 · Romance, Drama",
            imageName: "movie4",
            rating: 4),
        FavoriteItem(
            title: "Atonement",
            subtitle: "2007 · Drama, Romance, War",
            imageName: "movie5",
            rating: 5),
        FavoriteItem(
            title: "Me Before You",
            subtitle: "2016 · Romance, Drama",
            imageName: "movie6",
            rating: 4),
        FavoriteItem(
            title: "Pride & Prejudice",
            subtitle: "2005 · Romance, Drama",
            imageName: "movie7",
            rating: 5),
        FavoriteItem(
            title: "Shutter Island",
            subtitle: "2010 · Thriller, Mystery",
            imageName: "movie8",
            rating: 5),
        FavoriteItem(
            title: "The Devil Wears Prada",
            subtitle: "2006 · Comedy, Drama",
            imageName: "movie9",
            rating: 4),
        FavoriteItem(
            title: "Legally Blonde",
            subtitle: "2001 · Comedy, Romance",
            imageName: "movie10",
            rating: 4),
        FavoriteItem(
            title: "Mean Girls",
            subtitle: "2004 · Comedy",
            imageName: "movie11",
            rating: 4),
        FavoriteItem(
            title: "Green Book",
            subtitle: "2018 · Biography, Comedy, Drama",
            imageName: "movie12",
            rating: 5),
        FavoriteItem(
            title: "The Lord of the Rings: The Fellowship of the Ring",
            subtitle: "2001 · Adventure, Fantasy",
            imageName: "movie13",
            rating: 5),
        FavoriteItem(
            title: "Schindler's List",
            subtitle: "1993 · Biography, Drama, History",
            imageName: "movie14",
            rating: 5),
        FavoriteItem(
            title: "The Lord of the Rings: The Return of the King",
            subtitle: "2003 · Adventure, Fantasy",
            imageName: "movie15",
            rating: 5),
        FavoriteItem(
            title: "The Godfather",
            subtitle: "1972 · Crime, Drama",
            imageName: "movie16",
            rating: 5),
        FavoriteItem(
            title: "The Shawshank Redemption",
            subtitle: "1994 · Drama",
            imageName: "movie17",
            rating: 5),
        FavoriteItem(
            title: "The Intouchables",
            subtitle: "2011 · Biography, Comedy, Drama",
            imageName: "movie18",
            rating: 5),
        FavoriteItem(
            title: "The Green Mile",
            subtitle: "1999 · Crime, Drama, Fantasy",
            imageName: "movie19",
            rating: 5),
        FavoriteItem(
            title: "The Dark Knight",
            subtitle: "2008 · Action, Crime, Drama",
            imageName: "movie20",
            rating: 5)
    ]
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FavoriteCell", for: indexPath) as! FavoriteCell
        let movie = movies[indexPath.row]
        cell.configure(with: movie)
        return cell
    }
}

