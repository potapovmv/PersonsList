//
//  MoreInfoListViewController.swift
//  PersonsList
//
//  Created by Admin1 on 14.04.2021.
//  Copyright © 2021 potapov_potapov. All rights reserved.
//

import UIKit

class MoreInfoListViewController: UITableViewController {

    
    var personInfo: [Person] = []
    
    // НЕ УСПЕЛ ДОДЕЛАТЬ((

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

  //  override func numberOfSections(in tableView: UITableView) -> Int {
   //
  //  }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       personInfo.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MoreInfo", for: indexPath)
        return cell
    }

    // MARK: - Navigation

        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }

}
