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
    let description: String
}


class ViewController: UIViewController, UITableViewDataSource {
    
    var movies: [FavoriteItem] = [
        FavoriteItem(
            title: "Parasite",
            subtitle: "2019 · Drama",
            imageName: "movie1",
            rating: 5,
            description: "A poor family finds a way to work for a rich family. They slowly become part of the rich family's life. The movie explores social inequality and the differences between rich and poor people."),
        FavoriteItem(
            title: "The Notebook",
            subtitle: "2004 · Romance, Drama",
            imageName: "movie2",
            rating: 5,
            description: "Noah and Allie fall in love during the summer. Their different social backgrounds create problems for their relationship. The movie tells a beautiful story about love and memories."),
        FavoriteItem(
            title: "Interstellar",
            subtitle: "2014 · Sci-Fi, Adventure",
            imageName: "movie3",
            rating: 5,
            description: "A team of astronauts travels through space to find a new home for humanity. They explore distant planets and face difficult challenges. The story is about family, love, and survival."),
        FavoriteItem(
            title: "Three Steps Above Heaven",
            subtitle: "2010 · Romance, Drama",
            imageName: "movie4",
            rating: 4,
            description: "Babi is a young girl from a wealthy family. She falls in love with Hache, a rebellious young man. Their relationship is full of passion, conflicts, and difficult choices."),
        FavoriteItem(
            title: "Atonement",
            subtitle: "2007 · Drama, Romance, War",
            imageName: "movie5",
            rating: 5,
            description: "A young girl makes a serious mistake that changes several lives. Two lovers are separated because of her actions. The movie explores guilt, love, and forgiveness."),
        FavoriteItem(
            title: "Me Before You",
            subtitle: "2016 · Romance, Drama",
            imageName: "movie6",
            rating: 4,
            description: "Louisa starts working as a caregiver for a young man named Will. They develop a close friendship and learn important lessons from each other. The movie explores love, happiness, and personal choices."),
        FavoriteItem(
            title: "Pride & Prejudice",
            subtitle: "2005 · Romance, Drama",
            imageName: "movie7",
            rating: 5,
            description: "Elizabeth Bennet meets the wealthy and proud Mr. Darcy. At first, they misunderstand each other and have different opinions. Their relationship slowly changes as they learn more about one another."),
        FavoriteItem(
            title: "Shutter Island",
            subtitle: "2010 · Thriller, Mystery",
            imageName: "movie8",
            rating: 5,
            description: "Two investigators visit a mysterious psychiatric hospital on an island. They try to solve the disappearance of a patient. As the investigation continues, strange secrets begin to appear."),
        FavoriteItem(
            title: "The Devil Wears Prada",
            subtitle: "2006 · Comedy, Drama",
            imageName: "movie9",
            rating: 4,
            description: "Andy gets a job at a famous fashion magazine. She works for a very demanding editor named Miranda. The movie shows the challenges of balancing career, friendship, and personal life."),
        FavoriteItem(
            title: "Legally Blonde",
            subtitle: "2001 · Comedy, Romance",
            imageName: "movie10",
            rating: 4,
            description: "Elle Woods decides to study law at Harvard University. Many people underestimate her because of her personality and appearance. She proves that intelligence and determination are more important than stereotypes."),
        FavoriteItem(
            title: "Mean Girls",
            subtitle: "2004 · Comedy",
            imageName: "movie11",
            rating: 4,
            description: "Cady starts attending a new high school after living abroad. She becomes friends with a popular group of girls. The movie explores friendship, popularity, and teenage problems."),
        FavoriteItem(
            title: "Green Book",
            subtitle: "2018 · Biography, Comedy, Drama",
            imageName: "movie12",
            rating: 5,
            description: "A talented pianist hires a driver for a concert tour across America. During their journey, they face prejudice and social challenges. They slowly develop a strong friendship and learn from each other."),
        FavoriteItem(
            title: "The Lord of the Rings: The Fellowship of the Ring",
            subtitle: "2001 · Adventure, Fantasy",
            imageName: "movie13",
            rating: 5,
            description: "Frodo receives a powerful ring that must be destroyed. He begins a dangerous journey with a group of companions. Together, they face enemies and try to protect Middle-earth."),
        FavoriteItem(
            title: "Schindler's List",
            subtitle: "1993 · Biography, Drama, History",
            imageName: "movie14",
            rating: 5,
            description: "Oskar Schindler is a businessman living during World War II. He uses his position to protect Jewish workers from Nazi persecution. The movie tells a powerful story about courage and humanity."),
        FavoriteItem(
            title: "The Lord of the Rings: The Return of the King",
            subtitle: "2003 · Adventure, Fantasy",
            imageName: "movie15",
            rating: 5,
            description: "Frodo continues his dangerous journey to destroy the ring. Meanwhile, his friends prepare for a final battle against evil forces. The movie explores courage, friendship, and sacrifice."),
        FavoriteItem(
            title: "The Godfather",
            subtitle: "1972 · Crime, Drama",
            imageName: "movie16",
            rating: 5,
            description: "The Corleone family is one of the most powerful crime families in New York. Michael becomes involved in the family business despite his original plans. The movie explores family loyalty, power, and difficult decisions."),
        FavoriteItem(
            title: "The Shawshank Redemption",
            subtitle: "1994 · Drama",
            imageName: "movie17",
            rating: 5,
            description: "Andy is sent to prison for a crime he says he did not commit. He develops a friendship with another prisoner named Red. The movie is about hope, friendship, and freedom."),
        FavoriteItem(
            title: "The Intouchables",
            subtitle: "2011 · Biography, Comedy, Drama",
            imageName: "movie18",
            rating: 5,
            description: "A wealthy man hires a young man to help him with daily activities. Despite their different backgrounds, they become close friends. The movie shows how friendship can change people's lives."),
        FavoriteItem(
            title: "The Green Mile",
            subtitle: "1999 · Crime, Drama, Fantasy",
            imageName: "movie19",
            rating: 5,
            description: "A prison guard meets a mysterious prisoner with unusual abilities. He begins to question what he believes about justice. The movie explores kindness, compassion, and humanity."),
        FavoriteItem(
            title: "The Dark Knight",
            subtitle: "2008 · Action, Crime, Drama",
            imageName: "movie20",
            rating: 5,
            description: "Batman tries to protect Gotham City from dangerous criminals. A mysterious villain called the Joker creates chaos throughout the city. Batman must make difficult choices to protect innocent people.")
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
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            guard let detailVC = segue.destination as? DetailViewController,
                  let indexPath = tableView.indexPathForSelectedRow else {
                return
            }

            detailVC.item = movies[indexPath.row]
        }
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        if let indexPath = tableView.indexPathForSelectedRow {
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }

}

