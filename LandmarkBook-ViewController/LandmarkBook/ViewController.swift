//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Talha Varol on 19.03.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var lendmarkNames = [String]()
    var lendmarkImages = [UIImage]()
    var choseLandmarkName = ""
    var choseLandmarkImage = UIImage()
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
       
        // data load
        
        lendmarkNames.append("Colosseum")
        lendmarkNames.append("great wall")
        lendmarkNames.append("kremlin")
        lendmarkNames.append("tac mahal")
        
        
        lendmarkImages.append(UIImage(named: "collosseum.jpeg")!)
        lendmarkImages.append(UIImage(named: "cinseddi.jpeg")!)
        lendmarkImages.append(UIImage(named: "kremlin.jpeg")!)
        lendmarkImages.append(UIImage(named: "tacmahal.jpeg")!)
        
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            lendmarkNames.remove(at: indexPath.row)
            lendmarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // sıralar içinde ne göstereceksin.
       
        let cell = UITableViewCell()
        cell.textLabel?.text = lendmarkNames[indexPath.row]
        
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Kaç tane sıra olacak
        //Bunlar tableview Fonksiyonu
        
        return lendmarkNames.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
         choseLandmarkName = lendmarkNames[indexPath.row]
         choseLandmarkImage = lendmarkImages[indexPath.row]
        
        
        performSegue(withIdentifier: "toImageViewControllerSegue", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toImageViewControllerSegue"{
            let destinationVC = segue.destination as! ImageViewController
            destinationVC.selectedLandmarkName = choseLandmarkName
            destinationVC.selectedLandmarkImaga = choseLandmarkImage
            
        }
    }


}

