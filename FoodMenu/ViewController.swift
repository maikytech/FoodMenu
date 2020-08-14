//
//  ViewController.swift
//  FoodMenu
//
//  Created by Maiqui Cedeño on 25/07/20.
//  Copyright © 2020 Poseto Studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    //Variables
    let foodImages:[String] = ["Burguer", "HotDogs", "Pizza", "RoastBeef"]
    
    //Outlets
    @IBOutlet weak var foodMenuCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        foodMenuCollectionView.delegate = self
        foodMenuCollectionView.dataSource = self
    }
    
    //System functions
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "menuCell", for: indexPath) as! menuCollectionViewCell
        cell.layer.cornerRadius = 10
        cell.foodImage.image = UIImage(named: foodImages[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return foodImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let screenSize = UIScreen.main.bounds
        
        return CGSize(width: screenSize.width * 0.94, height: 220)
    }
    
    
    //Inset images
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }

}

