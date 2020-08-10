//
//  tablecellPhong.swift
//  test5
//
//  Created by Huy on 3/19/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class tablecellPhong: UITableViewCell {

    @IBOutlet weak var viewcheck: UIView!
    var myView : UIViewController? = nil
    override func awakeFromNib() {
        super.awakeFromNib()
        
        viewcheck.layer.cornerRadius = 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

    @IBAction func nextScreen(_ sender: Any) {
                let next25 = Home25()
                let navi25 = UINavigationController(rootViewController: next25)
                navi25.modalPresentationStyle = .fullScreen
        myView!.present(navi25, animated: true, completion: nil)
        
    }
    
//    @IBAction func nextscreen(_ sender: Any) {
//        let next25 = Home25()
//        let navi25 = UINavigationController(rootViewController: next25)
//        navi25.modalPresentationStyle = .fullScreen
//        self.present(navi25, animated: true, completion: nil)
//    }
}
