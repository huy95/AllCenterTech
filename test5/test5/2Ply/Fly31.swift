//
//  Fly31.swift
//  test5
//
//  Created by Huy on 3/18/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class Fly31: UIViewController {
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "trang")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    let Label11 : UILabel = {
        let Label1 = UILabel()
        Label1.translatesAutoresizingMaskIntoConstraints = false
        Label1.text = "Trip Way"
        Label1.textColor = UIColor.init(named: "xanhdam")
        Label1.textAlignment = .center
        Label1.font = .boldSystemFont(ofSize: 60)
        Label1.alpha = 0.7
        return Label1
    }()
//    let Label11 : UILabel = {
//        let Label1 = UILabel()
//        Label1.translatesAutoresizingMaskIntoConstraints = false
//        Label1.text = "Trip Way"
//
//        Label1.textColor = UIColor.init(named: "xanhdam")
//        Label1.textAlignment = .center
//        Label1.font = .boldSystemFont(ofSize: 60)
//        Label1.alpha = 0.7
//        return Label1
//    }()
    
    let mainView1 : UIView = {
        let mainView1 = UIView()
        mainView1.translatesAutoresizingMaskIntoConstraints = false
        mainView1.backgroundColor = UIColor(named: "xam")
        return mainView1
    }()

    let FlyFrom : UITextField = {
        let FlyFrom = UITextField()
        FlyFrom.translatesAutoresizingMaskIntoConstraints = false
        FlyFrom.backgroundColor = UIColor(named: "mau-xamdam")
        FlyFrom.placeholder = "   ✈︎   Bay từ"
        FlyFrom.borderStyle = .roundedRect
        FlyFrom.font = .boldSystemFont(ofSize: 18)
        return FlyFrom
        
    }()
    let FlyTo : UITextField = {
        let FlyFrom = UITextField()
        FlyFrom.translatesAutoresizingMaskIntoConstraints = false
        FlyFrom.backgroundColor = UIColor(named: "mau-xamdam")
        FlyFrom.placeholder = "   ⍢   Bay đến"
        FlyFrom.borderStyle = .roundedRect
        FlyFrom.font = .boldSystemFont(ofSize: 18)
        return FlyFrom
        
    }()
    let buttonFind : UIButton = {
        let buttonFind = UIButton()
        buttonFind.translatesAutoresizingMaskIntoConstraints = false
        buttonFind.setTitle("Tìm chuyến bay", for: .normal)
        buttonFind.setTitleColor(UIColor.white, for: .normal)
        buttonFind.titleLabel?.font = .boldSystemFont(ofSize: 18)
        buttonFind.contentHorizontalAlignment = .center
        buttonFind.backgroundColor = UIColor.init(named: "xanh")
        return buttonFind
    }()
    let ButtonBook : UIButton = {
        let Label1 = UIButton()
        Label1.translatesAutoresizingMaskIntoConstraints = false
        Label1.setTitle("1 hành khách, Phổ thông", for: .normal)
        Label1.setTitleColor(UIColor.init(named: "xanh"), for: .normal)
        Label1.titleLabel?.font = .boldSystemFont(ofSize: 18)
        Label1.contentHorizontalAlignment = .center
        Label1.backgroundColor = .white
        
        
        return Label1
        
    }()
    let segmentFly : UISegmentedControl = {
       let segmentFly = UISegmentedControl(items: ["Một chiều", "Hai chiều"])
        segmentFly.translatesAutoresizingMaskIntoConstraints = false
        segmentFly.selectedSegmentIndex = 0
        // cài segment
        segmentFly.backgroundColor = .white
        segmentFly.selectedSegmentTintColor = UIColor.init(named: "xamdam")
        segmentFly.addTarget(self, action: #selector(handleSegmentChoose), for: .valueChanged)
        
//        segmentFly.isSelected = true
        return segmentFly
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        setupLay()
        
    }
    
    func setupLay(){
        
        view.addSubview(Label11)
        Label11.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        Label11.bottomAnchor.constraint(equalTo: Label11.topAnchor, constant: 80).isActive = true
        Label11.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        Label11.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        
        view.addSubview(segmentFly)
        segmentFly.topAnchor.constraint(equalTo: Label11.bottomAnchor, constant: 30).isActive = true
        segmentFly.heightAnchor.constraint(equalToConstant: 50).isActive = true
        segmentFly.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        segmentFly.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        view.addSubview(mainView1)
        
        
        mainView1.topAnchor.constraint(equalTo: view.topAnchor, constant: 210).isActive = true
        mainView1.bottomAnchor.constraint(equalTo: mainView1.topAnchor, constant: 480).isActive = true
        mainView1.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        mainView1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        mainView1.layer.cornerRadius = 5
        
        mainView1.addSubview(FlyFrom)
        FlyFrom.topAnchor.constraint(equalTo: mainView1.topAnchor, constant: 40).isActive = true
        FlyFrom.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        FlyFrom.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        FlyFrom.bottomAnchor.constraint(equalTo: FlyFrom.topAnchor, constant: 60).isActive = true
        
        mainView1.addSubview(FlyTo)
        FlyTo.topAnchor.constraint(equalTo: FlyFrom.bottomAnchor, constant: 20).isActive = true
        FlyTo.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        FlyTo.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        FlyTo.bottomAnchor.constraint(equalTo: FlyTo.topAnchor, constant: 60).isActive = true
        
        mainView1.addSubview(buttonFind)
        buttonFind.bottomAnchor.constraint(equalTo: mainView1.bottomAnchor, constant: -20).isActive = true
        buttonFind.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        buttonFind.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        buttonFind.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        buttonFind.layer.cornerRadius = 10
        buttonFind.addTarget(self, action: #selector(Goto), for: .touchUpInside)
        
        mainView1.addSubview(ButtonBook)
        ButtonBook.bottomAnchor.constraint(equalTo: buttonFind.topAnchor, constant: -30).isActive = true
        ButtonBook.leftAnchor.constraint(equalTo: mainView1.leftAnchor, constant: 20).isActive = true
        ButtonBook.rightAnchor.constraint(equalTo: mainView1.rightAnchor, constant: -20).isActive = true
        ButtonBook.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    @objc func Goto(){
        let secondVC = Fly32()
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .done, target: self, action: nil)
        secondVC.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(secondVC, animated: true)
    }
    @objc func handleSegmentChoose(){
        switch segmentFly.selectedSegmentIndex {
        case 0:
            let viewDay = UIView()
            viewDay.frame = CGRect(x: 10, y: 200, width: UIScreen.main.bounds.maxX - 70, height: 110)
            viewDay.backgroundColor = UIColor.init(named: "xamdam")
            viewDay.layer.cornerRadius = 5
            mainView1.addSubview(viewDay)
        
            
            let Label1 : UILabel = {
                let label = UILabel()
                label.text = "Ngày đi"
                label.textAlignment = .center
                label.font = .boldSystemFont(ofSize: 25)
                return label
            }()
            Label1.frame = CGRect(x: 30, y: 210, width: UIScreen.main.bounds.maxX - 80, height: 20)
            mainView1.addSubview(Label1)
            let button1 : UIButton = {
                let button1 = UIButton()
                button1.setTitle("12/11/2020", for: .normal)
                button1.setTitleColor(UIColor.init(named: "xanh"), for: .normal)
                button1.titleLabel?.font = .boldSystemFont(ofSize: 20)
                button1.contentHorizontalAlignment = .center
                return button1
            }()
            button1.frame = CGRect(x: 30, y: 270, width: UIScreen.main.bounds.maxX - 80, height: 20)
            mainView1.addSubview(button1)
            
        default:
            // view chua
            let viewDay2 = UIView()
            viewDay2.frame = CGRect(x: 20, y: 200, width: UIScreen.main.bounds.maxX - 70, height: 110)
            viewDay2.backgroundColor = UIColor.init(named: "xamdam")
            viewDay2.layer.cornerRadius = 5
             mainView1.addSubview(viewDay2)
            // ngay di
            let Label1 : UILabel = {
                let label = UILabel()
                label.text = "Ngày đi"
                label.textAlignment = .left
                label.font = .boldSystemFont(ofSize: 25)
                return label
            }()
            Label1.frame = CGRect(x: 30, y: 210, width: UIScreen.main.bounds.maxX / 2 - 30, height: 20)
            mainView1.addSubview(Label1)
            
            let button1 : UIButton = {
                let button1 = UIButton()
                button1.setTitle("12/11/2020", for: .normal)
                button1.setTitleColor(UIColor.init(named: "xanh"), for: .normal)
                button1.titleLabel?.font = .boldSystemFont(ofSize: 20)
                button1.contentHorizontalAlignment = .left
                return button1
            }()
            button1.frame = CGRect(x: 30, y: 270, width: UIScreen.main.bounds.maxX / 2 - 30, height: 20)
            mainView1.addSubview(button1)
            
            // ngay ve
            let Label2 : UILabel = {
                let label = UILabel()
                label.text = "Ngày về"
                label.textAlignment = .left
                label.font = .boldSystemFont(ofSize: 25)
                return label
            }()
            Label2.frame = CGRect(x: UIScreen.main.bounds.maxX / 2 + 30, y: 210, width: UIScreen.main.bounds.maxX / 2 - 20, height: 20)
            mainView1.addSubview(Label2)
            
           let button12 : UIButton = {
               let button1 = UIButton()
               button1.setTitle("30/12/2020", for: .normal)
               button1.setTitleColor(UIColor.init(named: "xanh"), for: .normal)
               button1.titleLabel?.font = .boldSystemFont(ofSize: 20)
               button1.contentHorizontalAlignment = .left
               return button1
           }()
           button12.frame = CGRect(x: UIScreen.main.bounds.maxX / 2 + 30, y: 270, width: UIScreen.main.bounds.maxX / 2 - 30, height: 20)
           mainView1.addSubview(button12)
            
//            let Label12 : UILabel = {
//                let label = UILabel()
//                label.text = "Chiều về"
//                label.textAlignment = .right
//                label.font = .boldSystemFont(ofSize: 20)
//                return label
//            }()
//            Label1.frame = CGRect(x: 30, y: 210, width: UIScreen.main.bounds.maxX - 80, height: 20)
//            mainView1.addSubview(Label1)
            
            
            
        }

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // set cho navigationBar trong suốt để thấy ảnh ở background (cần đủ 3 dòng)
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
