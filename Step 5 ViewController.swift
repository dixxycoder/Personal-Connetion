//
//  Step 5 ViewController.swift
//  Personal Connetion
//
//  Created by Grant Spraker on 4/11/22.
//

import UIKit

class Step_5_ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource
{
    @IBOutlet weak var objectiveTable: UITableView!
    @IBOutlet weak var newObjective: UITextField!
    
    var objective : [Objective] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        objectiveTable.dataSource = self
        
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return objective.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "objectiveTableView", for: indexPath)
        let currentItem = objective[indexPath.row]
        cell.textLabel?.text = currentItem.name
        return cell
    }
    

    @IBAction func addObjective(_ sender: Any)
    {
        if let newObjectiveName = newObjective.text
        {
            let newObjective = Objective(name: newObjectiveName)
            objective.append(newObjective)
            objectiveTable.reloadData()
        }
    }
    

}
