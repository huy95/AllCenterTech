//
//  Fly32.swift
//  test5
//
//  Created by Huy on 3/19/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class Fly32: UIViewController {
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "trang")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    let viewmainup : UIView = {
        let viewmainup = UIView()
        viewmainup.translatesAutoresizingMaskIntoConstraints = false
        viewmainup.backgroundColor = UIColor.init(named: "xanh")
        return viewmainup
    }()
    let labelHN : UILabel = {
        let buttonReturn  = UILabel()
        buttonReturn.translatesAutoresizingMaskIntoConstraints = false
        buttonReturn.text = "HN đến SG"
        buttonReturn.textColor = .white
        buttonReturn.font = .boldSystemFont(ofSize: 18)
        return buttonReturn
    }()
    let labelngay : UILabel = {
              let buttonReturn  = UILabel()
              buttonReturn.translatesAutoresizingMaskIntoConstraints = false
              buttonReturn.text = "26 thag 12 | 1 hành khách | phổ thông"
              buttonReturn.textColor = .white
              buttonReturn.font = .boldSystemFont(ofSize: 16)
              return buttonReturn
          }()
    let tableview : UITableView = {
        let tableview = UITableView()
        tableview.translatesAutoresizingMaskIntoConstraints = false
        
        return tableview
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout1()
        tableview.delegate = self
        tableview.dataSource = self
        tableview.register(UINib(nibName: "cellPlace", bundle: nil), forCellReuseIdentifier: "cell1")
        // Do any additional setup after loading the view.
    }

    func setupLayout1(){
        view.addSubview(viewmainup)
        viewmainup.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        viewmainup.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.15).isActive = true
        viewmainup.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        viewmainup.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        
        
        viewmainup.addSubview(labelHN)
        labelHN.topAnchor.constraint(equalTo: viewmainup.topAnchor, constant: 50).isActive = true
        labelHN.bottomAnchor.constraint(equalTo: labelHN.topAnchor, constant: 20).isActive = true
        labelHN.leftAnchor.constraint(equalTo: viewmainup.leftAnchor, constant: 55).isActive = true
        labelHN.rightAnchor.constraint(equalTo: viewmainup.rightAnchor, constant: 30).isActive = true
        
        viewmainup.addSubview(labelngay)
        labelngay.topAnchor.constraint(equalTo: labelHN.bottomAnchor, constant: 2).isActive = true
        labelngay.bottomAnchor.constraint(equalTo: labelngay.topAnchor, constant: 20).isActive = true
        labelngay.leftAnchor.constraint(equalTo: viewmainup.leftAnchor, constant: 55).isActive = true
        labelngay.rightAnchor.constraint(equalTo: viewmainup.rightAnchor, constant: 30).isActive = true
        
        view.addSubview(tableview)
        tableview.topAnchor.constraint(equalTo: viewmainup.bottomAnchor, constant: 10).isActive = true
        tableview.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -120).isActive = true
        tableview.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        tableview.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
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
           //        imageView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1).isActive = true
           imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
       }
}
extension Fly32 : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! cellPlace
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let next33 = Fly33()
        present(next33, animated: true, completion: nil)
    }
    
}
