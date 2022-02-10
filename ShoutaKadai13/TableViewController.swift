//
//  TableViewController.swift
//  ShoutaKadai13
//
//  Created by 中野翔太 on 2022/02/08.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    let date: [String] = ["りんご", "みかん", "バナナ", "パイナップル"]

    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        date.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CoustomCell
        cell.displayLabel.text = date[indexPath.row]
//        cell.checkMarkImage.imageView!.image = UIImage(named: "checkMark")
       
        if  indexPath.row % 2 == 1 {
            cell.checkMarkImage.image = UIImage(named: "checkMark")
        }
        return cell

    }

   
}
