//
//  ViewController.swift
//  times table
//
//  Created by Vyom Unadkat on 19/08/17.
//  Copyright © 2017 Vyom Unadkat. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var slider: UISlider!
   
    @IBOutlet weak var table: UITableView!
    
    @IBAction func sliderChange(_ sender: Any) {
        
        print(Int(slider.value))
        table.reloadData()
        
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 50
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        var cal = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        
        cal.textLabel?.text = "\(Int(slider.value)) * \(indexPath.row) = \(Int(slider.value) * indexPath.row) "
        
        return cal
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

