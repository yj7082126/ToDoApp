//
//  ToDoListTableViewController.swift
//  ToDoApp
//
//  Created by Yong Jae Kwon on 2/9/17.
//  Copyright © 2017 Jonathan. All rights reserved.
//

import UIKit
 @objc(ToDoListTableViewController)class ToDoListTableViewController:UITableViewController {

    var toDoItems: NSMutableArray = []
    func loadInitialData() {
        var item1 = ToDoItem(name: "Buy milk")
        self.toDoItems.add(item1)
        
        var item2 = ToDoItem(name: "Buy eggs")
        self.toDoItems.add(item2)
        
        var item3 = ToDoItem(name: "Read a book")
        self.toDoItems.add(item3)
    } 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadInitialData()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.toDoItems.count
    }
    
    // Override to show what each cell should have in it based on the note in the list
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let CellIndentifier: NSString = "ListPrototypeCell"
        
        var cell : UITableViewCell
            
            = tableView.dequeueReusableCell(withIdentifier: CellIndentifier as String)! as UITableViewCell
        
        var todoitem: ToDoItem = self.toDoItems.object(at: indexPath.row) as! ToDoItem
        cell.textLabel?.text = todoitem.itemName as String;
        if todoitem.completed{
            cell.accessoryType = .checkmark
        } 
        else {
            cell.accessoryType = .none
        } 
        return cell
    }
    
    // Override to support tapping on an element in the table view.
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        var tappedItem: ToDoItem = self.toDoItems.object(at: indexPath.row) as! ToDoItem
        tappedItem.completed = !tappedItem.completed
        tableView.reloadData()
        
    }
    
    @IBAction func unwind(seque: UIStoryboardSegue) {
        var source: AddToDoViewController = seque.source as! AddToDoViewController
        if var item: ToDoItem = source.toDoItem{
            self.toDoItems.add(item)
            self.tableView.reloadData()
        }
    }
    
    
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
