//
//  TableViewController.swift
//  ShoutaKadai13
//
//  Created by 中野翔太 on 2022/02/08.
//

import UIKit

class ViewController: UIViewController{
    // 構造体で定義した値を格納
    private var fruits: [FruitsItems] = []

//    var delegate: FruitsDelegate?

    private let ImageName = "checkMark"

    @IBOutlet private var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        dataLord()
    }

    private func dataLord() {
        fruits.append(FruitsItems.init(fruitName: "りんご", imageViewString: ""))
        fruits.append(FruitsItems.init(fruitName: "みかん", imageViewString: ImageName))
        fruits.append(FruitsItems.init(fruitName: "バナナ", imageViewString: ""))
        fruits.append(FruitsItems.init(fruitName: "パイナップル", imageViewString: ImageName))
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        fruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomCell
        let fruitsName = fruits[indexPath.row].fruitName
        let checkMark =  fruits[indexPath.row].imageViewString
        cell.configure(titleName: fruitsName, imageViewName: checkMark)
        return cell
    }
}
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // セルの選択解除
        tableView.deselectRow(at: indexPath, animated: true)
    }
}



