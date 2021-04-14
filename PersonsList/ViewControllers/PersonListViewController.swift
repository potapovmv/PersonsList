//
//  PersonListViewController.swift
//  PersonsList
//
//  Created by Admin1 on 13.04.2021.
//  Copyright © 2021 potapov_potapov. All rights reserved.
//

import UIKit

class PersonListViewController: UITableViewController {
    
    var person = DataManager()
    var personIndex = DataManager()
    var personInfo: [Person] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        personsInfo()
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personIndex.nameArray.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "\(personInfo[indexPath.row].name) \(personInfo[indexPath.row].surname)"
        return cell
        
    }
 
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let moreInfoVC = segue.destination as? MoreInfoViewController else {return}
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        moreInfoVC.personInfo.append(personInfo[indexPath.row])
        
        
    }
    
   func personsInfo() -> [Person] {
    for _ in 0...personIndex.nameArray.count - 1 {
            let randomName = Int(arc4random_uniform(UInt32(person.nameArray.count)))
            let randomSurname = Int(arc4random_uniform(UInt32(person.surnameArray.count)))
            let randomEmail = Int(arc4random_uniform(UInt32(person.emailArray.count)))
            let randomPhone = Int(arc4random_uniform(UInt32(person.phoneArray.count)))
            personInfo.append(Person(name: String(person.nameArray[randomName]),
            surname: String(person.surnameArray[randomSurname]),
            email: String(person.emailArray[randomEmail]),
            phone: String(person.phoneArray[randomPhone])))
        person.nameArray.remove(at: randomName)
        person.surnameArray.remove(at: randomSurname)
        person.emailArray.remove(at: randomEmail)
        person.phoneArray.remove(at: randomPhone)
        }
        return personInfo
    }
}
