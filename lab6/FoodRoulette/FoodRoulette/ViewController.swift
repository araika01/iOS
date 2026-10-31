//
//  ViewController.swift
//  FoodRoulette
//
//  Created by Арай Жумат on 30.10.2026.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var innerView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var foodImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var spinButton: UIButton!
    @IBAction func spinButtonTapped(_ sender: UIButton) {
        showRandomFood()
    }
    
    private var currentIndex: Int = -1
 
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        showRandomFood()
    }
    
    private func showRandomFood() {
            var newIndex = Int.random(in: 0..<favorites.count)
            
            while newIndex == currentIndex {
                newIndex = Int.random(in: 0..<favorites.count)
            }
            
            currentIndex = newIndex
            let food = favorites[newIndex]
            
            titleLabel.text = food.title
            foodImageView.image = UIImage(named: food.imageName)
            descriptionLabel.text = food.description
        
    }
    
    private func setupUI() {
        mainView.layer.cornerRadius = 24
        mainView.layer.shadowColor = UIColor.black.cgColor
        mainView.layer.shadowOpacity = 0.1
        mainView.layer.shadowRadius = 15
        
        
        innerView.layer.cornerRadius = 20
        innerView.layer.borderWidth = 1
        innerView.layer.borderColor = UIColor(red: 0.94, green: 0.87, blue: 0.78, alpha: 1).cgColor
        innerView.layer.shadowRadius = 10
        
    
        foodImageView.clipsToBounds = true
        foodImageView.layer.cornerRadius = 20
        
        descriptionLabel.numberOfLines = 0
        descriptionLabel.textAlignment = .center
        titleLabel.textAlignment = .center
        spinButton.layer.cornerRadius = 20
        
    }
}
