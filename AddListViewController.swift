//
//  AddListViewController.swift
//  TablevViewApp
//
//  Created by 待寺翼 on 2023/08/28.
//

import UIKit

class AddListViewController: UIViewController {
    
    @IBOutlet weak var addTextField: UITextField!
    var taskArray: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        let userDfaults = UserDefaults.standard
        if userDfaults.object(forKey: "add") != nil {
            taskArray = userDfaults.object(forKey: "add") as! [String]
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTask(_ sender: Any) {
        let userDefaults = UserDefaults.standard
        if addTextField.text != "" {
            taskArray.append(addTextField.text!)
            userDefaults.set(taskArray, forKey: "add")
            self.navigationController?.popViewController(animated: true)
        }
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }
}
