//
//  When_Button_is_Pressed_Controller.swift
//  Personal Connetion
//
//  Created by Grant Spraker on 3/25/22.
//

import UIKit

class When_Button_is_Pressed_Controller: UIViewController,UITableViewDataSource
{
    
//  for the value part.
    @IBOutlet weak var valueTable: UITableView!
    @IBOutlet weak var newValue: UITextField!

//  for the biases part.
    @IBOutlet weak var biasesTable: UITableView!
    @IBOutlet weak var newBiases: UITextField!
    
    var values : [Values] = []
    var biases : [Biases] = []

    override func viewDidLoad()
    {
        super.viewDidLoad()
        valueTable.dataSource = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return values.count
    }

//MARK: VALUES
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let valuesCell = tableView.dequeueReusableCell(withIdentifier: "valueTableView", for: indexPath)
        let currentValue = values[indexPath.row]
        valuesCell.textLabel?.text = currentValue.name
        return valuesCell
   
    let biasesCell = tableView.dequeueReusableCell(withIdentifier: "biasesTableView", for: indexPath)
    let currentBiases = biases[indexPath.row]
    biasesCell.textLabel?.text = currentBiases.name
    return biasesCell
    }
    
    @IBAction func whenAddItemButtonPressed(_ sender: Any)
    {
        if let newValuesName = newValue.text
        {
            let newValue = Values(name: newValuesName)
            values.append(newValue)
            valueTable.reloadData()
        }
    }

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
