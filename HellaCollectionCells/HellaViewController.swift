//
//  ViewController.swift
//  HellaCollectionCells
//
//  Created by Flatiron School on 10/6/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionViewCell: UICollectionView!
    var fib : [Int] = [ ]
    var numbers = [Int]()
    
    func FibonacciNumbers() -> [Int] {
        var array = [0,1]
        for i in 0...15 {
            let fibNumber = array[array.count - 2] + array[array.count - 1]
            array.append(fibNumber)
        }
        return array
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        self.fib = FibonacciNumbers()
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1000
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath)
        if fib.contains(indexPath.row){
            cell.backgroundColor = UIColor.purple
        } else {
            cell.backgroundColor = UIColor.yellow
        }
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueDetailView"{
            if let dest = segue.destination as? HellaDetailViewController  ,
                let arrayIndex = collectionViewCell.indexPathsForSelectedItems{
                dest.numberText = String(arrayIndex[0].row)
            }
        }
    }
    
        
        
}

