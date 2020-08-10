//
//  Me5.swift
//  test5
//
//  Created by Huy on 3/18/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class Me5: UIViewController {
    let viewOver  : UIView = {
        let mainview1 = UIView()
        mainview1.translatesAutoresizingMaskIntoConstraints = false
        mainview1.backgroundColor = UIColor.init(named: "xanh")
        return mainview1
    }()
    let ButtonImange : UIButton = {
        let label1 = UIButton()
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.setImage(UIImage(named: "taxi1"), for: .normal)
        label1.setTitleColor(.none, for: .normal)
        return label1
    }()
    let ButtonName : UIButton = {
        let label1 = UIButton()
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.setTitle("NVA", for: .normal)
        return label1
    }()
    let ButtonQuit : UIButton = {
        let label1 = UIButton()
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.setTitle("Thoát", for: .normal)
        return label1
    }()
//    let talview : UITableView = {
//        
//    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        setupLayout()
    }
    func setupLayout(){
        view.addSubview(viewOver)
        viewOver.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        viewOver.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.12).isActive = true
        viewOver.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        viewOver.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        
        viewOver.addSubview(ButtonImange)
        ButtonImange.bottomAnchor.constraint(equalTo: viewOver.bottomAnchor, constant: -20).isActive = true
        ButtonImange.leftAnchor.constraint(equalTo: viewOver.leftAnchor, constant: 20).isActive = true
        ButtonImange.widthAnchor.constraint(equalToConstant: 30).isActive = true
        ButtonImange.heightAnchor.constraint(equalToConstant: 30).isActive = true
        ButtonImange.layer.cornerRadius = 15
        
        viewOver.addSubview(ButtonName)
        ButtonName.leftAnchor.constraint(equalTo: ButtonImange.rightAnchor, constant: 20).isActive = true
        ButtonName.bottomAnchor.constraint(equalTo:viewOver.bottomAnchor, constant: -25).isActive = true
        ButtonName.widthAnchor.constraint(equalToConstant: 40).isActive = true
        ButtonName.heightAnchor.constraint(equalToConstant: 18).isActive = true
        
        viewOver.addSubview(ButtonQuit)
        ButtonQuit.rightAnchor.constraint(equalTo: viewOver.rightAnchor, constant: -20).isActive = true
        ButtonQuit.bottomAnchor.constraint(equalTo:viewOver.bottomAnchor, constant: -20).isActive = true
        ButtonQuit.widthAnchor.constraint(equalToConstant: 50).isActive = true
        ButtonQuit.heightAnchor.constraint(equalToConstant: 30).isActive = true
        ButtonQuit.addTarget(self, action: #selector(quit), for: .touchUpInside)
    }
    @objc func quit(){
        let vc = ViewController()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func returnLogin(_ sender: Any) {
        let vc = ViewController()
               vc.modalPresentationStyle = .fullScreen
               present(vc, animated: true, completion: nil)
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
