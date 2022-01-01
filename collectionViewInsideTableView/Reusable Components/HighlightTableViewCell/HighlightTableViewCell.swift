//
//  TableViewCell.swift
//  collectionViewInsideTableView
//
//  Created by Nathaniel Andrian on 01/01/22.
//

import UIKit

class HighlightTableViewCell: UITableViewCell {

    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var collectionView: UICollectionView!
    var index: Int = 0 {
        didSet{
            pageControl.currentPage = index
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionView.register(UINib(nibName: "\(CollectionViewCell.self)", bundle: nil), forCellWithReuseIdentifier: "highlightCollection")
        collectionView.delegate = self
        collectionView.dataSource = self
        pageControl.numberOfPages = 5
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
   
}

extension HighlightTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "highlightCollection", for: indexPath) as! CollectionViewCell
        cell.backVIew.layer.cornerRadius = 20.0
        index = indexPath.row - 1
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
    
   
    
    
    
}

