//
//  When_Button_is_Pressed_Controller.swift
//  Personal Connetion
//
//  Created by Grant Spraker on 3/25/22.
//

import UIKit

class When_Button_is_Pressed_Controller: UIViewController , UITableViewDelegate , UITableViewDataSource
{
    

//  for the value outlets.
    @IBOutlet weak var valueTable: UITableView!
    @IBOutlet weak var newValue: UITextField!

    
//  for the biases outlets.
    @IBOutlet weak var biasesTable: UITableView!
    @IBOutlet weak var newBiases: UITextField!
    
    
    var values : [Values] = []
    var biases = [Biases]()

    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        valueTable.dataSource = self
        
        biasesTable.dataSource = self
        
    }
    
//MARK: VALUES & BIASES PART 1
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        var numberOfRow = 1
        
        switch tableView
        {
            case valueTable:
            numberOfRow = values.count
        
            case biasesTable:
            numberOfRow = biases.count
        
        default:
            print("")
        }
    
        return numberOfRow
    }

//MARK: VALUES & BIASES PART 2
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        var v1 = newValue.text ?? ""
        var Value1 = String (v1)
        
        var b1 = newBiases.text ?? ""
        var Biase1 = String (b1)
        
        
        let cell = UITableViewCell()
        
        switch tableView
        {

    case valueTable:
        let cell = tableView.dequeueReusableCell(withIdentifier: "valueTableView", for: indexPath)
        let currentValue = values[indexPath.row]
        cell.textLabel?.text = currentValue.name
 
            
    case biasesTable:
        let cell = tableView.dequeueReusableCell(withIdentifier: "biasesTableView", for: indexPath)
        let currentBiases = biases[indexPath.row]
        cell.textLabel?.text = currentBiases.name
        
        
    default:
        print("")
        }
        
        return cell
        
    }
    
//MARK: Add values
    @IBAction func addValues(_ sender: Any)
    {
    
          if let newValuesName = newValue.text
        {
            let newValue = Values(name: newValuesName)
            values.append(newValue)
            valueTable.reloadData()
        }
    }

    
//MARK: Add biases
    @IBAction func addBiases(_ sender: Any)
    {
    
        if let newBiasesName = newBiases.text
        {
            let newBiases = Biases(name: newBiasesName)
            biases.append(newBiases)
            biasesTable.reloadData()
        }
    }
    
}
