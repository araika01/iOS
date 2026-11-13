//
//  DetailViewController.swift
//  MoviesFavorites
//
//  Created by Арай Жумат on 13.11.2026.
//

import Foundation

import UIKit

class DetailViewController: UIViewController {
    
    var item: FavoriteItem?
    
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var ratingStackView: UIStackView!
    @IBOutlet weak var descriptionLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let item = item else { return }

            title = "Movie Details"
        
            posterImageView.image = UIImage(named: item.imageName)
            titleLabel.text = item.title
            subtitleLabel.text = item.subtitle
            descriptionLabel.text = item.description
        
        updateRating(item.rating)
        
    }
    
    func updateRating(_ rating: Int) {
        for (index, view) in ratingStackView.arrangedSubviews.enumerated() {
            guard let starImageView = view as? UIImageView else {
                continue
            }

            let symbolName = index < rating ? "star.fill" : "star"

            starImageView.image = UIImage(systemName: symbolName)
            starImageView.tintColor = .systemOrange
            starImageView.contentMode = .scaleAspectFit
        }
    }
}
