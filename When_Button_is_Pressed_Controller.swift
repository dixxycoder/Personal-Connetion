//
//  When_Button_is_Pressed_Controller.swift
//  Personal Connetion
//
//  Created by Grant Spraker on 3/25/22.
//

import UIKit

class When_Button_is_Pressed_Controller: UIViewController,UITableViewDataSource
{
    
//  for the value outlets.
    @IBOutlet weak var valueTable: UITableView!
    @IBOutlet weak var newValue: UITextField!

    
//  for the biases outlets.
    @IBOutlet weak var biasesTable: UITableView!
    @IBOutlet weak var newBiases: UITextField!
    
    
    var values : [Values] = []
    var biases : [Biases] = []

    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        valueTable.dataSource = self
        biasesTable.dataSource = self
    }

    
    //MARK: VALUES
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return values.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "valueTableView", for: indexPath)
        let currentValue = values[indexPath.row]
        cell.textLabel?.text = currentValue.name
        return cell
    }
        
    
//MARK: BIASES
    func biasesView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return biases.count
    }
    
    func biasesView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "biasesTableView", for: indexPath)
        let currentBiases = biases[indexPath.row]
        cell.textLabel?.text = currentBiases.name
        return cell
    }
    
    
//  values button
    @IBAction func whenAddItemButtonPressed(_ sender: Any)
    {
        if let newValuesName = newValue.text
        {
            let newValue = Values(name: newValuesName)
            values.append(newValue)
            valueTable.reloadData()
        }
    }

    
//  biases button
    @IBAction func whenAddBiasesBottonPressed(_ sender: Any)
    {
        if let newBiasesName = newBiases.text
        {
            let newBiases = Biases(name: newBiasesName)
            biases.append(newBiases)
            biasesTable.reloadData()
        }
    }
    
}
