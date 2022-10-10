//
//  BioViewController.swift
//  loginApp
//
//  Created by Рафия Сафина on 06.10.2022.
//

import UIKit

class UserDataViewController: UIViewController {
    
    @IBOutlet var photo: UIImageView! {
        didSet {
            photo.layer.cornerRadius = photo.frame.width / 2
        }
    }
   
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var jobLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.person.fullName
        photo.image = UIImage(named: "myPhoto")
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        jobLabel.text = user.person.job
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else { return }
        bioVC.user = user
    }
}
