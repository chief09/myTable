//
//  ViewController.swift
//  MyTable
//
//  Created by Cyberjaya 17 iTrain on 13/09/2017.
//  Copyright © 2017 Newera. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    let array = ["Malaysia", "Singapore", "Sri Lanka"]
    let imgArray = ["img1.png","img2.png","img3.png"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = array[indexPath.row]
        cell.imageView?.image = UIImage(named: imgArray[indexPath.row])
        
        return cell
    }
}

