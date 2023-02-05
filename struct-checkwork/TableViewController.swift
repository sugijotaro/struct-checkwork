//
//  TableViewController.swift
//  struct-save-userdefaults-demo
//
//  Created by JotaroSugiyama on 2023/01/22.
//

import UIKit

class TableViewController: UITableViewController {
    
    var musics: [Music] = [
        Music(title: "Soranji", artist: "Mrs. GREEN APPLE")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = musics[indexPath.row].title
        cell.detailTextLabel?.text = musics[indexPath.row].artist
        return cell
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return musics.count
    }
    
}
