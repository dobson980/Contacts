//
//  ContactDetailController.swift
//  contacts
//
//  Created by Tom Dobson on 7/31/17.
//  Copyright © 2017 Dobson Studios. All rights reserved.
//

import UIKit

protocol ContactDetailControllerDelegate: class {
    func didMarkAsFavoriteContact(_ contact: Contact)
}

class ContactDetailController: UITableViewController {
    
    var contact: Contact?
    
    // MARK: - Outlets
    

    @IBOutlet weak var profileView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var streetLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var zipLabel: UILabel!
    
    weak var delegate: ContactDetailControllerDelegate?
    
    // MARK: - ViewController

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureView()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func configureView() {
        
        guard let contact = contact else { return }
        
        phoneNumberLabel.text = contact.phone
        emailLabel.text = contact.email
        streetLabel.text = contact.street
        cityLabel.text = contact.city
        stateLabel.text = contact.state
        zipLabel.text = contact.zip
        profileView.image = contact.image
        nameLabel.text = contact.fullname()
        
    }
    
    @IBAction func markAsFavorite(_ sender: Any) {
        
        guard let contact = contact else { return }
        delegate?.didMarkAsFavoriteContact(contact)
        
    }
    
    
}
