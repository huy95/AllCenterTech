//
//  Home21.swift
//  test5
//
//  Created by Huy on 3/18/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class Home21: UIViewController {
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "trang")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    let Label1 : UILabel = {
        let Label1 = UILabel()
        Label1.translatesAutoresizingMaskIntoConstraints = false
        Label1.text = "Bạn muốn nghỉ ngơi ở đâu ?"
        Label1.textColor = UIColor.init(named: "xanhdam")
        Label1.textAlignment = .center
        Label1.font = .boldSystemFont(ofSize: 30)
        return Label1
    }()
    let textplace : UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.systemFill.cgColor
        textField.textAlignment = .center
        textField.placeholder = "Địa điểm tìm kiếm"
        textField.font = .systemFont(ofSize: 24)
        return textField
        
    }()
    let buttonFind : UIButton = {
        let buttonFind = UIButton()
        buttonFind.translatesAutoresizingMaskIntoConstraints = false
        buttonFind.setTitle("Tìm kiếm", for: .normal)
        buttonFind.contentHorizontalAlignment = .center
        buttonFind.backgroundColor = UIColor.init(named: "xanh")
        return buttonFind
    }()
    
    let viewmainup : UIView = {
        let viewmainup = UIView()
        viewmainup.translatesAutoresizingMaskIntoConstraints = false
        viewmainup.backgroundColor = UIColor.init(named: "xam")
        return viewmainup
    }()
    let Label12 : UILabel = {
        let Label12 = UILabel()
        Label12.translatesAutoresizingMaskIntoConstraints = false
        Label12.text = "Dịch vụ du lịch mới "
        Label12.textAlignment = .left
        Label12.font = .boldSystemFont(ofSize: 16)
        return Label12
    }()
    
    let ButtonDV1 : UIButton = {
        let label1 = UIButton()
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.setImage(UIImage(named: "taxi1"), for: .normal)
        label1.backgroundColor = #colorLiteral(red: 0.4801121227, green: 0.8980392157, blue: 0.4469951447, alpha: 1)
        return label1
    }()
    let LabelDV1 : UILabel = {
        let Label12 = UILabel()
        Label12.translatesAutoresizingMaskIntoConstraints = false
        Label12.text = "Đặt xe taxi "
        Label12.textAlignment = .center
        Label12.font = .boldSystemFont(ofSize: 12)
        return Label12
    }()
    
    let ButtonDV2 : UIButton = {
        let label1 = UIButton()
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.setImage(UIImage(named: "car"), for: .normal)
        label1.backgroundColor = .orange
        return label1
    }()
    let LabelDV2 : UILabel = {
        let Label12 = UILabel()
        Label12.translatesAutoresizingMaskIntoConstraints = false
        Label12.text = "Đặt xe"
        Label12.textAlignment = .center
        Label12.font = .boldSystemFont(ofSize: 12)
        return Label12
    }()
    let viewupcuoi : UIScrollView = {

        let viewmainup = UIScrollView()
        viewmainup.translatesAutoresizingMaskIntoConstraints = false
        viewmainup.backgroundColor = UIColor.init(named: "xam")
        return viewmainup
    }()
    let LabelView3 : UILabel = {
        let Label12 = UILabel()
        Label12.translatesAutoresizingMaskIntoConstraints = false
        Label12.text = "Tìm kiếm trước đó "
        Label12.textAlignment = .left
        Label12.font = .boldSystemFont(ofSize: 16)
        return Label12
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupdesign()
        buttonFind.addTarget(self, action: #selector(nextScreen1), for: .touchUpInside)
        
        
    }
    
    func setupdesign(){
        view.addSubview(Label1)
        Label1.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        Label1.bottomAnchor.constraint(equalTo: Label1.topAnchor, constant: 60).isActive = true
        Label1.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        Label1.leftAnchor.constraint(equalTo: view.leftAnchor, constant:  20).isActive = true
        
        view.addSubview(textplace)
        textplace.topAnchor.constraint(equalTo: Label1.bottomAnchor, constant: 20).isActive = true
        textplace.heightAnchor.constraint(equalToConstant: 50).isActive = true
        textplace.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        textplace.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        textplace.layer.cornerRadius = 5
        
        view.addSubview(buttonFind)
        buttonFind.topAnchor.constraint(equalTo: textplace.bottomAnchor, constant: 30).isActive = true
        buttonFind.heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttonFind.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        buttonFind.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        buttonFind.layer.cornerRadius = 5
        
        view.addSubview(viewmainup)
        viewmainup.topAnchor.constraint(equalTo: buttonFind.bottomAnchor, constant: 30).isActive = true
        viewmainup.heightAnchor.constraint(equalToConstant: 120).isActive = true
        viewmainup.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        viewmainup.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        viewmainup.layer.cornerRadius = 5
        
        viewmainup.addSubview(Label12)
        Label12.topAnchor.constraint(equalTo: viewmainup.topAnchor, constant: 10).isActive = true
        Label12.heightAnchor.constraint(equalToConstant: 20).isActive = true
        Label12.rightAnchor.constraint(equalTo: viewmainup.rightAnchor, constant: -50).isActive = true
        Label12.leftAnchor.constraint(equalTo: viewmainup.leftAnchor, constant: 10).isActive = true
        
        viewmainup.addSubview(ButtonDV1)
        ButtonDV1.topAnchor.constraint(equalTo: Label12.bottomAnchor, constant: 15).isActive = true
        ButtonDV1.heightAnchor.constraint(equalToConstant: 30).isActive = true
        ButtonDV1.widthAnchor.constraint(equalTo: ButtonDV1.heightAnchor, multiplier: 1).isActive = true
        ButtonDV1.leftAnchor.constraint(equalTo: viewmainup.leftAnchor, constant: 80).isActive = true
        ButtonDV1.layer.cornerRadius = 15
        
        viewmainup.addSubview(LabelDV1)
        LabelDV1.topAnchor.constraint(equalTo: ButtonDV1.bottomAnchor, constant: 10).isActive = true
        LabelDV1.heightAnchor.constraint(equalToConstant: 20).isActive = true
        LabelDV1.widthAnchor.constraint(equalToConstant: 80).isActive = true
        LabelDV1.leftAnchor.constraint(equalTo: viewmainup.leftAnchor, constant: 65).isActive = true
        
        viewmainup.addSubview(ButtonDV2)
        ButtonDV2.topAnchor.constraint(equalTo: Label12.bottomAnchor, constant: 15).isActive = true
        ButtonDV2.heightAnchor.constraint(equalToConstant: 30).isActive = true
        ButtonDV2.widthAnchor.constraint(equalTo: ButtonDV1.heightAnchor, multiplier: 1).isActive = true
        ButtonDV2.rightAnchor.constraint(equalTo: viewmainup.rightAnchor, constant: -80).isActive = true
        ButtonDV2.layer.cornerRadius = 15
        
        viewmainup.addSubview(LabelDV2)
        LabelDV2.topAnchor.constraint(equalTo: ButtonDV2.bottomAnchor, constant: 10).isActive = true
        LabelDV2.heightAnchor.constraint(equalToConstant: 20).isActive = true
        LabelDV2.widthAnchor.constraint(equalToConstant: 40).isActive = true
        LabelDV2.rightAnchor.constraint(equalTo: viewmainup.rightAnchor, constant: -75).isActive = true
        
        view.addSubview(viewupcuoi)
        viewupcuoi.topAnchor.constraint(equalTo: viewmainup.bottomAnchor, constant: 10).isActive = true
        viewupcuoi.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        viewupcuoi.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        viewupcuoi.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        viewupcuoi.layer.cornerRadius = 5
        
        viewupcuoi.addSubview(LabelView3)
        LabelView3.topAnchor.constraint(equalTo: viewupcuoi.bottomAnchor, constant: 10).isActive = true
        LabelView3.heightAnchor.constraint(equalToConstant: 20).isActive = true
        LabelView3.rightAnchor.constraint(equalTo: viewupcuoi.rightAnchor, constant: -80).isActive = true
        LabelView3.leftAnchor.constraint(equalTo: viewupcuoi.leftAnchor, constant: 10).isActive = true
    }
    
    @objc func nextScreen1() {
        print("abc")
        let secondVC = Home22()
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .done, target: self, action: nil)
        secondVC.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(secondVC, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //
        //        // set cho navigationBar trong suốt để thấy ảnh ở background (cần đủ 3 dòng)
        self.navigationController!.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController!.navigationBar.shadowImage = UIImage()
        self.navigationController!.navigationBar.isTranslucent = true
    }

    // khi view sắp sửa bị ẩn thì set lại thuộc tính isTranslucent = false để các navigationBar trước đó không bị ảnh hưởng
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController!.navigationBar.isTranslucent = false

    }
    func setupLayout(){
        view.addSubview(imageView)
        imageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true

        imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
}
