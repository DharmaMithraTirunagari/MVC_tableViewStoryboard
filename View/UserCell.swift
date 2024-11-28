//
//  UserCell.swift
//  MVC_tableViewStroryboard
//
//  Created by Srikanth Kyatham on 11/27/24.
//

import UIKit

class UserCell: UITableViewCell {

    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func config(with user: User) {
        nameLabel.text = user.name
        emailLabel.text = user.email
    }

}
