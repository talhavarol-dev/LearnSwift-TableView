//
//  ImageViewController.swift
//  LandmarkBook
//
//  Created by Talha Varol on 19.03.2022.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var landmarkLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    
    var selectedLandmarkName = ""
    var selectedLandmarkImaga = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        landmarkLabel.text = selectedLandmarkName
        imageView.image = selectedLandmarkImaga
        
       
    }
    
    
    /*
    // MARK: - Navigation

    
    */

}
