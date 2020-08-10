//
//  ViewController.swift
//  test5
//
//  Created by Huy on 3/13/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let imageCT : UIImageView = {
        let imageCT = UIImageView()
        imageCT.translatesAutoresizingMaskIntoConstraints = false
        imageCT.image = UIImage(named: "login")
        imageCT.contentMode = .scaleToFill
        return imageCT
    }()
    let Logintk : UITextField = {
        let Logintk = UITextField()
        Logintk.translatesAutoresizingMaskIntoConstraints = false
        Logintk.backgroundColor = .white
        Logintk.placeholder = "👤 Nhập tài khoản"
        Logintk.textAlignment = .center
        Logintk.font = .boldSystemFont(ofSize: 18)
        return Logintk
        
    }()
    let Label1 : UILabel = {
        let Label1 = UILabel()
        Label1.translatesAutoresizingMaskIntoConstraints = false
        Label1.text = "Trip Way"
        
        Label1.textColor = UIColor.init(named: "xanhdam")
        Label1.textAlignment = .center
        Label1.font = .boldSystemFont(ofSize: 90)
        Label1.alpha = 0.7
        return Label1
    }()
    let Loginmk : UITextField = {
        let Logintk = UITextField()
        Logintk.translatesAutoresizingMaskIntoConstraints = false
        Logintk.backgroundColor = .white
        Logintk.placeholder = "🔓 Mật khẩu"
        Logintk.textAlignment = .center
        Logintk.font = .boldSystemFont(ofSize: 18)
        return Logintk
        
    }()
    let buttonlogin : UIButton = {
        let buttonFind = UIButton()
        buttonFind.translatesAutoresizingMaskIntoConstraints = false
        buttonFind.setTitle("Đăng nhập", for: .normal)
        buttonFind.contentHorizontalAlignment = .center
        buttonFind.backgroundColor = UIColor.init(named: "xanh")
        return buttonFind
    }()
    let LabelWh : UILabel = {
        let LabelWh = UILabel()
        LabelWh.translatesAutoresizingMaskIntoConstraints = false
        LabelWh.text = "Bạn chưa có tài khoản ?"
        LabelWh.textColor = .white
        LabelWh.textAlignment = .center
        LabelWh.font = .boldSystemFont(ofSize: 16)
        return LabelWh
    }()
    
    let buttonForget : UIButton = {
        let buttonForget = UIButton()
        buttonForget.translatesAutoresizingMaskIntoConstraints = false
        buttonForget.setTitle("Quên mật khẩu ?", for: .normal)
        buttonForget.contentHorizontalAlignment = .center
        buttonForget.setTitleColor(.red, for: .normal)
        
        return buttonForget
    }()
    
    let buttonRes : UIButton = {
        let buttonRes = UIButton()
        buttonRes.translatesAutoresizingMaskIntoConstraints = false
        buttonRes.setTitle("Đăng kí tài khoản.", for: .normal)
        buttonRes.setTitleColor(.yellow, for: .normal)
        buttonRes.contentHorizontalAlignment = .center
        
        return buttonRes
    }()
    
    //    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        // Do any additional setup after loading the view.
        //        button.addTarget(self, action: #selector(search), for: .touchUpInside)
    }
    func setup(){
        view.addSubview(imageCT)
//        imageCT.alpha = 0.7
        imageCT.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        imageCT.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        imageCT.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        imageCT.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        
        view.addSubview(Label1)
        Label1.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        Label1.bottomAnchor.constraint(equalTo: Label1.topAnchor, constant: 100).isActive = true
        Label1.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 20).isActive = true
        Label1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: -20).isActive = true
        Label1.alpha = 0.5
        
        view.addSubview(Logintk)
        Logintk.topAnchor.constraint(equalTo: Label1.bottomAnchor, constant: 50).isActive = true
        Logintk.bottomAnchor.constraint(equalTo: Logintk.topAnchor, constant: 50).isActive = true
        Logintk.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        Logintk.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        Logintk.layer.cornerRadius = 5
        
        view.addSubview(Loginmk)
        Loginmk.topAnchor.constraint(equalTo: Logintk.bottomAnchor, constant: 30).isActive = true
        Loginmk.bottomAnchor.constraint(equalTo: Loginmk.topAnchor, constant: 50).isActive = true
        Loginmk.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        Loginmk.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        Loginmk.layer.cornerRadius = 5
        
        view.addSubview(buttonlogin)
        buttonlogin.topAnchor.constraint(equalTo: Loginmk.bottomAnchor, constant: 50).isActive = true
        buttonlogin.heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttonlogin.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        buttonlogin.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        buttonlogin.layer.cornerRadius = 5
        buttonlogin.addTarget(self, action: #selector(outLogin), for: .touchUpInside)
        
        view.addSubview(buttonForget)
        buttonForget.topAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        buttonForget.heightAnchor.constraint(equalToConstant: 20).isActive = true
        buttonForget.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        buttonForget.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4).isActive = true
        buttonForget.addTarget(self, action: #selector(register), for: .touchUpInside)
        
        view.addSubview(LabelWh)
        LabelWh.topAnchor.constraint(equalTo: buttonForget.bottomAnchor, constant: 10).isActive = true
        LabelWh.heightAnchor.constraint(equalToConstant: 20).isActive = true
        LabelWh.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.44).isActive = true
        LabelWh.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -80).isActive = true
        
        view.addSubview(buttonRes)
        buttonRes.topAnchor.constraint(equalTo: buttonForget.bottomAnchor, constant: 10).isActive = true
        buttonRes.heightAnchor.constraint(equalToConstant: 20).isActive = true
        buttonRes.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
        buttonRes.leftAnchor.constraint(equalTo: LabelWh.rightAnchor, constant: -20).isActive = true
        buttonRes.addTarget(self, action: #selector(register), for: .touchUpInside)
        
        
        
        
        
        
    }
    @objc func outLogin(){
        
        let secondVC = TabbarCT()
        
        secondVC.modalPresentationStyle = .fullScreen
        present(secondVC, animated: true, completion: nil)
        
    }
    @objc func register(){
        let secondVC = TabbarCT()
        
        secondVC.modalPresentationStyle = .fullScreen
        present(secondVC, animated: true, completion: nil)
    }
    @objc func forgetPa(){
        let secondVC = TabbarCT()
        
        secondVC.modalPresentationStyle = .fullScreen
        present(secondVC, animated: true, completion: nil)
    }
    
}

