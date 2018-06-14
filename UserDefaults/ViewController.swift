//
//  ViewController.swift
//  UserDefaults
//
//  Created by Ririka on 2018/06/02.
//  Copyright © 2018年 litech. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    var dic:[String:String] = [:]
    let userDefault = UserDefaults.standard
    
    @IBOutlet var fruit: UITextField!
    @IBOutlet var vege: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if userDefault.dictionary(forKey: "Dictionary") != nil{
            dic = userDefault.dictionary(forKey: "Dictionary") as! Dictionary<String, String>
            fruit.text = dic["F"]
            vege.text = dic["V"]
        }
    }
    
    
    @IBAction func save(){
        dic["F"] = fruit.text
        dic["V"] = vege.text
        
        userDefault.set(dic, forKey: "Dictionary")
    }
}
