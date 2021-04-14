//
//  MoreInfoViewController.swift
//  PersonsList
//
//  Created by Admin1 on 13.04.2021.
//  Copyright © 2021 potapov_potapov. All rights reserved.
//

import UIKit

class MoreInfoViewController: UIViewController {

    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var personInfo: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = personInfo[0].name + " " + personInfo[0].surname
        phoneLabel.text = personInfo[0].phone
        emailLabel.text = personInfo[0].email
    }
    
}
