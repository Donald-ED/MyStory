//
//  DetailViewController.swift
//  Project_1
//
//  Created by Donald Echefu on 2/23/23.
//

import UIKit

class DetailViewController: UIViewController {

    var detail: Details?

    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var detailInfo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let detail = detail {
            detailImageView.image = detail.image
            detailInfo.text = detail.info
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
