//
//  Home22.swift
//  test5
//
//  Created by Huy on 3/18/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class Home22: UIViewController {
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "trang")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    let view1 : UIView = {
        let view1 = UIView()
        view1.translatesAutoresizingMaskIntoConstraints = false
        view1.backgroundColor = .white
        return view1
    }()
    let viewmainup : UIView = {
        let viewmainup = UIView()
        viewmainup.translatesAutoresizingMaskIntoConstraints = false
        viewmainup.backgroundColor = UIColor.init(named: "xanh")
        return viewmainup
    }()
    let textup : UITextField = {
        let textup = UITextField()
        textup.translatesAutoresizingMaskIntoConstraints = false
        textup.backgroundColor = .white
        textup.text = "🔍  Hoàn Kiếm Hà Nội"
        textup.font = .boldSystemFont(ofSize: 16)
        return textup
    }()
    let view2 : UIView = {
        let view2 = UIView()
        view2.translatesAutoresizingMaskIntoConstraints = false
        view2.backgroundColor = .brown
        return view2
    }()
    let button21 : UIButton = {
        let buttonReturn1  = UIButton()
        buttonReturn1.translatesAutoresizingMaskIntoConstraints = false
        buttonReturn1.setTitle("◎ Chọn lọc", for: .normal)
        buttonReturn1.contentHorizontalAlignment = .center
        buttonReturn1.setTitleColor(UIColor.init(named: "xanh"), for: .normal)
        buttonReturn1.backgroundColor = .white
        buttonReturn1.titleLabel?.font = .boldSystemFont(ofSize: 14)
        return buttonReturn1
    }()
    let button22 : UIButton = {
        let buttonReturn  = UIButton()
        buttonReturn.translatesAutoresizingMaskIntoConstraints = false
        buttonReturn.setTitle("Phù hợp ▼", for: .normal)
        buttonReturn.contentHorizontalAlignment = .center
        buttonReturn.setTitleColor(.white, for: .normal)
        buttonReturn.backgroundColor = UIColor.init(named: "xanh")
        buttonReturn.titleLabel?.font = .boldSystemFont(ofSize: 14)
        return buttonReturn
    }()
    let viewMap : UIButton = {
        let view2 = UIButton()
        view2.translatesAutoresizingMaskIntoConstraints = false
        
        view2.setImage(UIImage(named: "diachi1"), for: .normal)
        view2.contentMode = .scaleToFill
        return view2
    }()
    let tableView1 : UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout1()
        
        tableView1.delegate = self
        tableView1.dataSource = self

        tableView1.register(UINib(nibName: "tablecellPhong", bundle: nil), forCellReuseIdentifier: "cellPhong")
        button21.addTarget(self, action: #selector(touchOp), for: .touchUpInside)
        button22.addTarget(self, action: #selector(nextPhu), for: .touchUpInside)
//
    }
    @objc func nextPhu(){
        let nc = Home24()
        nc.modalPresentationStyle = .fullScreen
        present(nc, animated: true, completion: nil)
        
    }
    @objc func touchOp(){
        print("111")
        let alert = UIAlertController(title: "Sắp xếp theo :", message: nil, preferredStyle: .actionSheet)
        let d1 = UIAlertAction(title: "Phù hợp nhất", style: .default)
        let d2 = UIAlertAction(title: "Giá thấp nhất", style: .default)
        let d3 =  UIAlertAction(title: "Giá cao nhất", style: .default)
        let d4 = UIAlertAction(title: "Đánh giá sao nhiều nhất", style: .default)
        let d5 = UIAlertAction(title: "Đánh giá sao (5 đến 0)", style: .default)
        alert.addAction(d1)
        alert.addAction(d2)
        alert.addAction(d3)
        alert.addAction(d4)
        alert.addAction(d5)
        present(alert, animated:  true, completion:  nil)
    
    }
    func setupLayout1(){
        view.addSubview(view1)
        view1.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        view1.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        view1.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        //        imageView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1).isActive = true
        view1.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        view1.addSubview(viewmainup)
        viewmainup.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        viewmainup.heightAnchor.constraint(equalTo: view1.heightAnchor, multiplier: 0.1).isActive = true
        viewmainup.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        viewmainup.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        
        viewmainup.addSubview(textup)
        textup.heightAnchor.constraint(equalToConstant: 40).isActive = true
        textup.bottomAnchor.constraint(equalTo: viewmainup.bottomAnchor, constant: -5).isActive = true
        textup.leftAnchor.constraint(equalTo: viewmainup.leftAnchor, constant: 40).isActive = true
        textup.rightAnchor.constraint(equalTo: viewmainup.rightAnchor, constant: -30).isActive = true
        textup.layer.cornerRadius = 5
        
        view1.addSubview(view2)
        view2.topAnchor.constraint(equalTo: viewmainup.bottomAnchor, constant: 0).isActive = true
        view2.bottomAnchor.constraint(equalTo: view2.topAnchor, constant: 60).isActive = true
        view2.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        view2.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        
        
        
        view.addSubview(button22)
        button22.topAnchor.constraint(equalTo: view2.topAnchor, constant: 10).isActive = true
        button22.bottomAnchor.constraint(equalTo: view2.bottomAnchor, constant: -10).isActive = true
        button22.rightAnchor.constraint(equalTo: view2.rightAnchor, constant: -30).isActive = true
        button22.widthAnchor.constraint(equalToConstant: 150).isActive = true
        button22.layer.cornerRadius = 10
        
        view2.addSubview(button21)
        button21.topAnchor.constraint(equalTo: view2.topAnchor, constant: 10).isActive = true
        button21.bottomAnchor.constraint(equalTo: view2.bottomAnchor, constant: -10).isActive = true
        button21.leftAnchor.constraint(equalTo: view2.leftAnchor, constant: 30).isActive = true
        button21.widthAnchor.constraint(equalToConstant: 150).isActive = true
        button21.layer.cornerRadius = 10
        
        view1.addSubview(viewMap)
        viewMap.topAnchor.constraint(equalTo: view2.bottomAnchor, constant: 0).isActive = true
        viewMap.heightAnchor.constraint(equalToConstant: 80).isActive = true
        viewMap.leftAnchor.constraint(equalTo: view1.leftAnchor, constant: 0).isActive = true
        viewMap.rightAnchor.constraint(equalTo: view1.rightAnchor, constant: 0).isActive = true
        
        view1.addSubview(tableView1)
        
        tableView1.topAnchor.constraint(equalTo: viewMap.bottomAnchor, constant: 10).isActive = true
        tableView1.bottomAnchor.constraint(equalTo: view1.bottomAnchor, constant: -130).isActive = true
//         tableView.heightAnchor.constraint(equalToConstant: 450).isActive = true
        tableView1.leftAnchor.constraint(equalTo: view1.leftAnchor, constant: 5).isActive = true
        tableView1.rightAnchor.constraint(equalTo: view1.rightAnchor, constant: -5).isActive = true
        
        //
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
extension Home22: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 230
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellPhong", for: indexPath) as! tablecellPhong
        cell.myView = self
        return cell
    }
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let next25 = Home25()
//        present(next25, animated: true, completion: nil)
//    }
}
