//
//  AddToDoViewController.swift
//  ToDoApp
//
//  Created by Yong Jae Kwon on 2/9/17.
//  Copyright © 2017 Jonathan. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {
    
    var toDoItem: ToDoItem?
    
    @IBOutlet var doneButton: UIBarButtonItem!
    
    @IBOutlet var textField: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any!) {
        if sender as? NSObject != self.doneButton{
            return
        }
        if (self.textField.text?.utf16.count)! > 0{
            self.toDoItem = ToDoItem(name: NSString(string: self.textField.text!))
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
