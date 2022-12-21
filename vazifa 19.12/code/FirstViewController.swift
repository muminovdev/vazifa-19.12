
//
//  FirstViewController.swift
//  19.12 dars
//
//  Created by Mac on 19/12/22.
//

import UIKit

class FirstViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    let arr = ["rasm 1", "rasm 2", "rasm 3","rasm 4","rasm 5"]
    
    var collectionView: UICollectionView?
    var size = 50

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "collection view"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "change", style: .plain, target: self, action: #selector(changeSize))

        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: size, height: size)
        collectionView = UICollectionView(frame: view.frame, collectionViewLayout: layout)
        collectionView?.register(CollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        view.addSubview(collectionView ?? UICollectionView())
        collectionView?.delegate = self
        collectionView?.dataSource = self
        
        @objc func changeSize() {
            size = 100
            collectionView?.reloadData()
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension FirstViewController{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return  100
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.image.image = UIImage(named: arr[indexPath.row % 5])
        
        return cell
    }
    
}

