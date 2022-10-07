//
//  BioViewController.swift
//  loginApp
//
//  Created by Рафия Сафина on 07.10.2022.
//

import UIKit

final class BioViewController: UIViewController {

    @IBOutlet var bioLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bioLabel.text = user.person.bio
    }
}
