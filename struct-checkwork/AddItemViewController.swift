//
//  AddItemViewController.swift
//  struct-checkwork
//
//  Created by JotaroSugiyama on 2023/02/05.
//

import UIKit

class AddItemViewController: UIViewController {
    
    @IBOutlet var titleTextField: UITextField!
    @IBOutlet var artistTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func addButonTapped() {
        let music = Music(
            title: titleTextField.text ?? "",
            artist: artistTextField.text ?? ""
        )
        
        let navigationController = self.navigationController!
        let tableViewController = navigationController.viewControllers[navigationController.viewControllers.count-2] as! TableViewController
        tableViewController.musics.append(music)
        
        self.navigationController?.popViewController(animated: true)
    }
    
}
