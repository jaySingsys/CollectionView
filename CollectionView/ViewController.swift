//
//  ViewController.swift
//  CollectionView
//
//  Created by singsys on 10/06/22.
//

import UIKit

class ViewController: UIViewController{

// Variabels
    var employeeData = [Employee]()
    let cellIdentifier = "employeeCell"
    
    
    @IBOutlet weak var employeeView: UICollectionView!
    @IBOutlet weak var label: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        employeeView.delegate = self
        employeeView.dataSource = self
        employeeData.append(Employee(name: "Jay", id:12, dept: "Software"))
        employeeData.append(Employee(name: "Jay", id:12, dept: "Software"))
        employeeData.append(Employee(name: "Jay", id:12, dept: "Software"))
        employeeData.append(Employee(name: "Jay", id:12, dept: "Software"))
  
    }
}

//extension ViewController: UICollectionViewCell{

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.employeeView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as UICollectionViewCell
            label.text = "hello"
        print(indexPath.row)
        return cell
    }
}
