//
//  HomeTableViewHeader.swift
//  aluraviagens
//
//  Created by William Bueno on 06/03/25.
//

import UIKit

class HomeTableViewHeader: UIView {

  // Outlets
    @IBOutlet weak var tituloLabel: UILabel!
    
    @IBOutlet weak var headerView: UIView!
    
    @IBOutlet weak var bannerImageView: UIImageView!
    
    func configuraView() {
     headerView.backgroundColor = UIColor(_colorLiteralRed: 30.0/255.0, green: 59.0/255.0, blue: 119.0/255.0, alpha: 1)
    }
}
