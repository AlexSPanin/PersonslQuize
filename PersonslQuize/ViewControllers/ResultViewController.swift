//
//  ResultViewController.swift
//  PersonslQuize
//
//  Created by Александр Панин on 20.12.2021.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    var answersChoosen: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        animalTypeResult()
    }
}
// MARK - private metod

extension ResultViewController {
    private func animalTypeResult() {
        var (dog, cat, rabbit, turtle) = (0, 0, 0, 0)
        var type: AnimalType = .dog
        
        for item in answersChoosen {
            switch item.type {
            case .dog:
                dog += 1
                if dog == max(dog, cat, rabbit, turtle) {
                    type = item.type }
            case .cat:
                cat += 1
                if cat == max(dog, cat, rabbit, turtle) {
                    type = item.type }
            case .rabbit:
                rabbit += 1
                if rabbit == max(dog, cat, rabbit, turtle) {
                    type = item.type }
            case .turtle:
                turtle += 1
                if turtle == max(dog, cat, rabbit, turtle) {
                    type = item.type }
            }
        }
        
        typeLabel.text = "Вы \(type.rawValue)!"
        resultLabel.text = type.definition
        
        return
    }
}
