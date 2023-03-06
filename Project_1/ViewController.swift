//
//  ViewController.swift
//  Project_1
//
//  Created by Donald Echefu on 2/18/23.
//

import UIKit

class ViewController: UIViewController {

    let wealth = Details(image: UIImage(named: "wealth")!, info: "Scrooge McDuck is the richest duck in the world and his immense fortune is said to have come from a dime he earned while shining shoes in his youth. He is a shrewd businessman and tightwad, with hobbies including diving into his money and throwing coins in the air to feel them fall on his head. He is a member of The Billionaires Club of Duckburg, along with his rivals Flintheart Glomgold and John D. Rockerduck. His wealth is disputed, with estimates ranging from multiplujillions to billions of dollars, but he never considers it enough and is always seeking ways to earn more money while living a frugal lifestyle.")
    let personality = Details(image: UIImage(named: "personality")!, info: "Scrooge McDuck is the richest duck in the world who has earned his wealth through hard work, intelligence, honesty, and perseverance. He is an adventurer who loves money, gold, and other valuable treasure, and is extremely protective of his fortune, going to great lengths to keep it safe from threats. He is a lone cheapskate who rarely spends more than necessary and is mistrustful of anyone trying to enter his office. However, he has grown increasingly compassionate and values honesty and fair play. Scrooge's exploits also provide valuable lessons in both practical and moral senses, which he imparts to his nephews, whom he considers his partners and loyal sidekicks in his international treasure hunts.")
    let background = Details(image: UIImage(named: "background")!, info: "Scrooge McDuck was born in Glasgow, Scotland, and had his first encounter with money as a young shoeshiner who earned an American dime. He emigrated to the United States and embarked on numerous adventures in search of treasure, amassing wealth and garnering numerous rivals including Flintheart Glomgold, Glittering Goldie, and the Beagle Boys. As he became increasingly obsessed with his wealth, he lost contact with his family and social circle and earned a reputation as an excessively shrewd and sometimes ruthless businessman who put money above all else. Scrooge lived in McDuck Manor and had a Money Bin filled with his wealth, which he would swim in during his free time.")
    
    var details: [Details] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        details = [wealth, personality, background]
    }

    @IBAction func didTapButton(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
  
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {
            if tappedView.tag == 0 {
                detailViewController.detail = details[2]
            } else if tappedView.tag == 1 {
                detailViewController.detail = details[1]
            } else if tappedView.tag == 2 {
                detailViewController.detail = details[0]
            } else {
                print("no option was tapped, please check your selection.")
            }
        }
    }
}

