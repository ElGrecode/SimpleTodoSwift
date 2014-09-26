//
//  FirstViewController.swift
//  TodoTutorial
//
//  Created by Adam Schuld on 9/26/14.
//  Copyright (c) 2014 Adam Schuld. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // A reference to our table
    @IBOutlet weak var tblTasks: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // When returning to this view
    override func viewWillAppear(animated: Bool) {
        // This will recall the tableView Data Source everytime the view appears again
        tblTasks.reloadData()
    }
    
    // UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskMGR.tasks.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "test")
        cell.textLabel?.text = taskMGR.tasks[indexPath.row].name
        cell.detailTextLabel?.text = taskMGR.tasks[indexPath.row].desc

        return cell
    }


}

