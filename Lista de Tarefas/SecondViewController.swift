//
//  SecondViewController.swift
//  Lista de Tarefas
//
//  Created by Iuri Menin on 02/08/16.
//  Copyright © 2016 Iuri Menin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var item: UITextField!
    
    @IBAction func addItem(sender: UIButton) {
        //if let texto item.text {
         toDoList.append(item.text!)
         item.text = ""
         NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
        //}
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

