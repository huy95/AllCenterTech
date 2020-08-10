//
//  Order4.swift
//  test5
//
//  Created by Huy on 3/18/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class Order4: UIViewController {
    let mainview  : UIView = {
        let mainview = UIView()
        mainview.translatesAutoresizingMaskIntoConstraints = false
        mainview.backgroundColor = .white
        return mainview
    }()
    let viewOver  : UIView = {
        let mainview1 = UIView()
        mainview1.translatesAutoresizingMaskIntoConstraints = false
        mainview1.backgroundColor = UIColor.init(named: "xanh")
        return mainview1
    }()
    let labelOver : UILabel = {
        let labelOver = UILabel()
        labelOver.translatesAutoresizingMaskIntoConstraints = false
        labelOver.text = "Đơn đặt phòng của tôi"
        labelOver.textAlignment = .center
        labelOver.font = .boldSystemFont(ofSize: 32)
        labelOver.textColor = .white
        return labelOver
    }()
    let segmentControl1 : UISegmentedControl = {
        let segment = UISegmentedControl(items: ["Sắp tới", "Hoàn tất", "Đã huỷ"])
        segment.translatesAutoresizingMaskIntoConstraints = false
        segment.selectedSegmentIndex = 0
        segment.selectedSegmentTintColor = UIColor.init(named: "xanh")
        segment.backgroundColor = UIColor.white
        return segment
    }()
    let image : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage.init(named: "playstore")
        image.contentMode = .scaleToFill
        
        return image
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        
    }
    func setupLayout(){
        view.addSubview(mainview)
        mainview.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        mainview.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        mainview.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        mainview.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        
        view.addSubview(viewOver)
        viewOver.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        viewOver.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.15).isActive = true
        viewOver.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        viewOver.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        
        
        view.addSubview(labelOver)
        
        labelOver.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        labelOver.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1).isActive = true
        labelOver.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive = true
        labelOver.leftAnchor.constraint(equalTo: viewOver.leftAnchor, constant: 0).isActive = true
        
        mainview.addSubview(segmentControl1)
        segmentControl1.topAnchor.constraint(equalTo: viewOver.bottomAnchor, constant: 0).isActive = true
        segmentControl1.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.08).isActive = true
        segmentControl1.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive = true
        segmentControl1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        
        view.addSubview(image)
        image.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        image.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.4).isActive = true
        image.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
        image.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 30).isActive = true   
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
