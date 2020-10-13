//
//  ViewController.swift
//  Exec1_collectionView
//
//  Created by Mizia Lima on 10/13/20.
//

import UIKit

//MARK: Classe Carro - imagem
class Car {
    var imagePhoto: String
    
    init(imagePhoto: String) {
        self.imagePhoto = imagePhoto
    }
}

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    var carros = [Car]()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureCar()
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    func configureCar(){
        carros.append(Car(imagePhoto: "1"))
        carros.append(Car(imagePhoto: "2"))
        carros.append(Car(imagePhoto: "3"))
        carros.append(Car(imagePhoto: "4"))
    }
}

extension ViewController: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Select \(carros[indexPath.row].imagePhoto)")
    }
}

extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        carros.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CarCollectionViewCell", for: indexPath) as! CarCollectionViewCell
        
        cell.setup(car: carros[indexPath.row])
        
        return cell
    }
        
}

