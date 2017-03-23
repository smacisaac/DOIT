//
//  ViewController.swift
//  Mac Workout
//
//  Created by Seamus MacIsaac on 2017-03-22.
//  Copyright © 2017 Seamus MacIsaac. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView1: UITableView!
    
    var menuSelectionItems = ["Thing 1","Thing 2","Thing 3","Thing 4","Thing 5",]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView1.dataSource = self
        tableView1.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuSelectionItems.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        cell.textLabel?.text = menuSelectionItems[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let menuSelection = menuSelectionItems[indexPath.row]
        performSegue(withIdentifier: "moveSegue1", sender: menuSelection)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC1 = segue.destination as! EntryViewController
        defVC1.menuName = sender as! String
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

