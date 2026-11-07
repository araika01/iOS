//
//  FavoriteCell.swift
//  MoviesFavorites
//
//  Created by Арай Жумат on 06.11.2026.
//
import UIKit

class FavoriteCell: UITableViewCell {

    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!

    
    @IBOutlet weak var star1: UIImageView!
    @IBOutlet weak var star2: UIImageView!
    @IBOutlet weak var star3: UIImageView!
    @IBOutlet weak var star4: UIImageView!
    @IBOutlet weak var star5: UIImageView!

    func configure(with item: FavoriteItem) {
        posterImageView.image = UIImage(named: item.imageName)
        titleLabel.text = item.title
        subtitleLabel.text = item.subtitle
        
        let stars: [UIImageView] = [star1, star2, star3, star4, star5]
        
        for (index, star) in stars.enumerated() {
            let filled = index < item.rating
            star.image = UIImage(systemName: filled ? "star.fill" : "star")
            star.tintColor = .systemYellow
        }
    }
}

