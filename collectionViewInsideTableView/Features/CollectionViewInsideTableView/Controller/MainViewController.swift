//
//  MainViewController.swift
//  collectionViewInsideTableView
//
//  Created by Nathaniel Andrian on 01/01/22.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Collection inside table"
        tableView.register(UINib(nibName: "\(HighlightTableViewCell.self)", bundle: nil), forCellReuseIdentifier: "highlight")
        tableView.allowsSelection = false
    }




}

extension MainViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "highlight") as! HighlightTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }

    
    
    
}
