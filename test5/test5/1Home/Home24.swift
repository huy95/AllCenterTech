//
//  Home24.swift
//  test5
//
//  Created by Huy on 3/19/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class Home24: UIViewController {
    let viewmain : UIView = {
        let viewmain = UIView()
        viewmain.translatesAutoresizingMaskIntoConstraints = false
        viewmain.backgroundColor = .white
        return viewmain
    }()
    let viewmainup : UIView = {
        let viewmainup = UIView()
        viewmainup.translatesAutoresizingMaskIntoConstraints = false
        viewmainup.backgroundColor = UIColor.init(named: "xanh")
        return viewmainup
    }()
    let buttonReturn : UIButton = {
        let buttonReturn  = UIButton()
        buttonReturn.translatesAutoresizingMaskIntoConstraints = false
        buttonReturn.setImage(UIImage.init(named: "left"), for: .normal)
        return buttonReturn
    }()
    let Label1 : UILabel = {
        let textup = UILabel()
        textup.translatesAutoresizingMaskIntoConstraints = false
        textup.text = "Chọn lọc"
        textup.textAlignment = .center
        textup.font = .boldSystemFont(ofSize: 26)
        textup.textColor = .white
        return textup
    }()
    let buttonChoose : UIButton = {
        let buttonReturn  = UIButton()
        buttonReturn.translatesAutoresizingMaskIntoConstraints = false
        buttonReturn.setTitle("Chọn lọc", for: .normal)
        buttonReturn.contentHorizontalAlignment = .center
        buttonReturn.setTitleColor(.white, for: .normal)
        buttonReturn.backgroundColor = UIColor.init(named: "mau-xanh-nhe")
        buttonReturn.titleLabel?.font = .boldSystemFont(ofSize: 20)
        return buttonReturn
    }()
    let scrollViewmain : UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    let Labelxapxep : UILabel = {
        let textup = UILabel()
        textup.translatesAutoresizingMaskIntoConstraints = false
        textup.text = "Sắp xếp theo :"
        //        textup.textAlignment = NSTextAlignment(rawValue: )!
        textup.font = .boldSystemFont(ofSize: 20)
        textup.textColor = .white
        textup.backgroundColor = UIColor.init(named: "xanh nhat")
        return textup
    }()
    let viewSapxep : UIView = {
        let viewmain = UIView()
        viewmain.translatesAutoresizingMaskIntoConstraints = false
        viewmain.backgroundColor = UIColor.init(named: "xanh nhat")
        return viewmain
    }()
    let buttonPhuhop : UIButton = {
        let buttonReturn  = UIButton()
        buttonReturn.translatesAutoresizingMaskIntoConstraints = false
        buttonReturn.setTitle("Phù hợp nhất ▼", for: .normal)
        buttonReturn.contentHorizontalAlignment = .center
        buttonReturn.setTitleColor(.black, for: .normal)
        buttonReturn.backgroundColor = .white
        buttonReturn.layer.borderWidth = 1
        buttonReturn.titleLabel?.font = .systemFont(ofSize: 20)
        return buttonReturn
    }()
    
    let Labelchonloc : UILabel = {
        let textup = UILabel()
        textup.translatesAutoresizingMaskIntoConstraints = false
        textup.text = "Chọn lọc theo :"
        //        textup.textAlignment = NSTextAlignment(rawValue: )!
        textup.font = .boldSystemFont(ofSize: 20)
        textup.textColor = .white
        textup.backgroundColor = UIColor.init(named: "xanh nhat")
        return textup
    }()
    let viewchonloc : UIView = {
        let viewmain = UIView()
        viewmain.translatesAutoresizingMaskIntoConstraints = false
        viewmain.backgroundColor = UIColor.init(named: "xanh nhat")
        return viewmain
    }()
    let Labeltenks : UILabel = {
        let textup = UILabel()
        textup.translatesAutoresizingMaskIntoConstraints = false
        textup.text = "Tên khách sạn :"
        //        textup.textAlignment = NSTextAlignment(rawValue: )!
        textup.font = .boldSystemFont(ofSize: 16)
        textup.textColor = .black
        return textup
    }()
    let textPlace : UITextField = {
        let textup = UITextField()
        textup.translatesAutoresizingMaskIntoConstraints = false
        textup.backgroundColor = .white
        textup.placeholder = "Nhập tên cần tìm"
        textup.textAlignment = .center
        textup.font = .boldSystemFont(ofSize: 16)
        return textup
    }()
    let viewgach1 : UIView = {
        let viewmain = UIView()
        viewmain.translatesAutoresizingMaskIntoConstraints = false
        viewmain.backgroundColor = .brown
        return viewmain
    }()
    let Labeldg : UILabel = {
        let textup = UILabel()
        textup.translatesAutoresizingMaskIntoConstraints = false
        textup.text = "Đánh giá sao :"
        //        textup.textAlignment = NSTextAlignment(rawValue: )!
        textup.font = .boldSystemFont(ofSize: 16)
        //                textup.textColor = .black
        return textup
    }()
    
    let stackView1 : UIStackView = {
        let stackView1 = UIStackView()
        stackView1.translatesAutoresizingMaskIntoConstraints = false
        stackView1.axis = .horizontal
        stackView1.alignment = .fill
        stackView1.distribution = .equalSpacing
        stackView1.spacing = 10
        return stackView1
    }()
    let Labelkg : UILabel = {
        let textup = UILabel()
        textup.translatesAutoresizingMaskIntoConstraints = false
        textup.text = "Khoảng giá :"
        //        textup.textAlignment = NSTextAlignment(rawValue: )!
        textup.font = .boldSystemFont(ofSize: 16)
        textup.textColor = .black
        return textup
    }()
    let alidergia : UISlider = {
        let alidergia = UISlider()
        alidergia.translatesAutoresizingMaskIntoConstraints = false
        return alidergia
    }()
    let LabelLh : UILabel = {
        let textup = UILabel()
        textup.translatesAutoresizingMaskIntoConstraints = false
        textup.text = "Loại hình nơi ở :"
        //        textup.textAlignment = NSTextAlignment(rawValue: )!
        textup.font = .boldSystemFont(ofSize: 16)
        textup.textColor = .black
        return textup
    }()
    let buttonLH : UIButton = {
        let buttonReturn  = UIButton()
        buttonReturn.translatesAutoresizingMaskIntoConstraints = false
        buttonReturn.setTitle("Nơi nghỉ ▼", for: .normal)
        buttonReturn.contentHorizontalAlignment = .center
        buttonReturn.setTitleColor(.black, for: .normal)
        //        buttonReturn.backgroundColor = UIColor.init(named: "mau-xanh-nhe")
        buttonReturn.layer.borderWidth = 1
        buttonReturn.titleLabel?.font = .boldSystemFont(ofSize: 20)
        return buttonReturn
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupName()
        setupLayout()
        setupScroll()
        setupStackView()
        buttonReturn.addTarget(self, action: #selector(returnHome22), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    @objc func returnHome22(){
        self.dismiss(animated: true, completion: nil)
    }
    func setupName(){
        view.addSubview(viewmain)
        viewmain.addSubview(viewmainup)
        viewmainup.addSubview(Label1)
        viewmainup.addSubview(buttonReturn)
        viewmain.addSubview(buttonChoose)
        buttonPhuhop.layer.cornerRadius = 5
        buttonChoose.layer.cornerRadius = 5
        
        viewmain.addSubview(scrollViewmain)
        scrollViewmain.addSubview(viewSapxep)
        viewSapxep.addSubview(Labelxapxep)
        scrollViewmain.addSubview(buttonPhuhop)
        scrollViewmain.addSubview(viewchonloc)
        viewchonloc.addSubview(Labelchonloc)
        scrollViewmain.addSubview(Labeltenks)
        
        scrollViewmain.addSubview(textPlace)
        scrollViewmain.addSubview(viewgach1)
        
        scrollViewmain.addSubview(Labeldg)
        scrollViewmain.addSubview(stackView1)
        scrollViewmain.addSubview(Labelkg)
        scrollViewmain.addSubview(alidergia)
        scrollViewmain.addSubview(LabelLh)
        scrollViewmain.addSubview(buttonLH)
        buttonLH.layer.cornerRadius = 5
        
        
        
        
    }
    func setupLayout(){
        viewmain.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        viewmain.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        viewmain.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        viewmain.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        
        viewmainup.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        viewmainup.bottomAnchor.constraint(equalTo: viewmainup.topAnchor, constant: 90).isActive = true
        viewmainup.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        viewmainup.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        
        Label1.topAnchor.constraint(equalTo: viewmainup.topAnchor, constant: 30).isActive = true
        Label1.bottomAnchor.constraint(equalTo: Label1.topAnchor, constant: 40).isActive = true
        Label1.leftAnchor.constraint(equalTo: viewmainup.leftAnchor, constant: 40).isActive = true
        Label1.rightAnchor.constraint(equalTo: viewmainup.rightAnchor, constant: -40).isActive = true
        
        
        buttonReturn.topAnchor.constraint(equalTo: viewmainup.topAnchor, constant: 30).isActive = true
        buttonReturn.bottomAnchor.constraint(equalTo: buttonReturn.topAnchor, constant: 40).isActive = true
        buttonReturn.leftAnchor.constraint(equalTo: viewmainup.leftAnchor, constant: 10).isActive = true
        buttonReturn.rightAnchor.constraint(equalTo: buttonReturn.leftAnchor, constant: 30).isActive = true
        
        buttonChoose.topAnchor.constraint(equalTo: view.bottomAnchor, constant: -45).isActive = true
        buttonChoose.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        buttonChoose.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 45).isActive = true
        buttonChoose.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -45).isActive = true
        
        scrollViewmain.topAnchor.constraint(equalTo: viewmainup.bottomAnchor, constant: 0).isActive = true
        scrollViewmain.bottomAnchor.constraint(equalTo: buttonChoose.topAnchor, constant: 0).isActive = true
        scrollViewmain.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        scrollViewmain.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        
        viewSapxep.topAnchor.constraint(equalTo: viewmainup.bottomAnchor, constant: 0).isActive = true
        viewSapxep.bottomAnchor.constraint(equalTo: viewSapxep.topAnchor, constant: 35).isActive = true
        viewSapxep.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        viewSapxep.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        
        Labelxapxep.topAnchor.constraint(equalTo: viewmainup.bottomAnchor, constant: 15).isActive = true
        Labelxapxep.bottomAnchor.constraint(equalTo: viewSapxep.bottomAnchor, constant: -10).isActive = true
        Labelxapxep.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        Labelxapxep.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        
        
    }
    func setupScroll(){
        buttonPhuhop.topAnchor.constraint(equalTo: viewSapxep.bottomAnchor, constant: 15).isActive = true
        buttonPhuhop.bottomAnchor.constraint(equalTo: buttonPhuhop.topAnchor, constant: 30).isActive = true
        buttonPhuhop.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        buttonPhuhop.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        viewchonloc.topAnchor.constraint(equalTo: buttonPhuhop.bottomAnchor, constant: 15).isActive = true
        viewchonloc.bottomAnchor.constraint(equalTo: viewchonloc.topAnchor, constant: 35).isActive = true
        viewchonloc.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        viewchonloc.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        
        Labelchonloc.topAnchor.constraint(equalTo: viewchonloc.topAnchor, constant: 10).isActive = true
        Labelchonloc.bottomAnchor.constraint(equalTo: viewchonloc.bottomAnchor, constant: -10).isActive = true
        Labelchonloc.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        Labelchonloc.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        
        Labeltenks.topAnchor.constraint(equalTo: viewchonloc.bottomAnchor, constant: 10).isActive = true
        Labeltenks.bottomAnchor.constraint(equalTo: Labeltenks.topAnchor, constant: 20).isActive = true
        Labeltenks.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        Labeltenks.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        
        textPlace.topAnchor.constraint(equalTo: Labeltenks.bottomAnchor, constant: 10).isActive = true
        textPlace.bottomAnchor.constraint(equalTo: textPlace.topAnchor, constant: 20).isActive = true
        textPlace.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        textPlace.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        viewgach1.topAnchor.constraint(equalTo: textPlace.bottomAnchor, constant: 2).isActive = true
        viewgach1.bottomAnchor.constraint(equalTo: viewgach1.topAnchor, constant: 1).isActive = true
        viewgach1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        viewgach1.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        Labeldg.topAnchor.constraint(equalTo: viewgach1.bottomAnchor, constant: 15).isActive = true
        Labeldg.bottomAnchor.constraint(equalTo: Labeldg.topAnchor, constant: 20).isActive = true
        Labeldg.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        Labeldg.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        
        stackView1.topAnchor.constraint(equalTo: Labeldg.bottomAnchor, constant: 15).isActive = true
        stackView1.bottomAnchor.constraint(equalTo: stackView1.topAnchor, constant: 30).isActive = true
        stackView1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        stackView1.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        Labelkg.topAnchor.constraint(equalTo: stackView1.bottomAnchor, constant: 15).isActive = true
        Labelkg.bottomAnchor.constraint(equalTo: Labelkg.topAnchor, constant: 30).isActive = true
        Labelkg.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        Labelkg.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        
        alidergia.topAnchor.constraint(equalTo: Labelkg.bottomAnchor, constant: 25).isActive = true
        alidergia.bottomAnchor.constraint(equalTo: alidergia.topAnchor, constant: 30).isActive = true
        alidergia.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        alidergia.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        LabelLh.topAnchor.constraint(equalTo: alidergia.bottomAnchor, constant: 20).isActive = true
        LabelLh.bottomAnchor.constraint(equalTo: LabelLh.topAnchor, constant: 25).isActive = true
        LabelLh.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        LabelLh.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        buttonLH.topAnchor.constraint(equalTo: LabelLh.bottomAnchor, constant: 20).isActive = true
        buttonLH.bottomAnchor.constraint(equalTo: buttonLH.topAnchor, constant: 40).isActive = true
        buttonLH.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        buttonLH.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
    }
    func setupStackView(){
        var onestar = UIButton()
        onestar.translatesAutoresizingMaskIntoConstraints = false
        onestar.setTitle("1 ★", for: .normal)
        onestar.backgroundColor = .white
        onestar.setTitleColor(.black, for: .normal)
        onestar.layer.borderWidth = 1
        stackView1.addArrangedSubview(onestar)
        var twoStar = UIButton()
        twoStar.translatesAutoresizingMaskIntoConstraints = false
        twoStar.setTitle("2 ★", for: .normal)
        twoStar.backgroundColor = .white
        twoStar.setTitleColor(.black, for: .normal)
        twoStar.layer.borderWidth = 1
        stackView1.addArrangedSubview(twoStar)
        var threeStar = UIButton()
        threeStar.translatesAutoresizingMaskIntoConstraints = false
        threeStar.setTitle("3 ★", for: .normal)
        threeStar.backgroundColor = .white
        threeStar.setTitleColor(.black, for: .normal)
        threeStar.layer.borderWidth = 1
        stackView1.addArrangedSubview(threeStar)
        var fourStar = UIButton()
        fourStar.translatesAutoresizingMaskIntoConstraints = false
        fourStar.setTitle("4 ★", for: .normal)
        fourStar.setTitleColor(.black, for: .normal)
        fourStar.backgroundColor = .white
        fourStar.layer.borderWidth = 1
        stackView1.addArrangedSubview(fourStar)
        var fiveStar = UIButton()
        fiveStar.translatesAutoresizingMaskIntoConstraints = false
        fiveStar.setTitle("5 ★", for: .normal)
        fiveStar.setTitleColor(.black, for: .normal)
        fiveStar.layer.borderWidth = 1
        fiveStar.backgroundColor = .white
        stackView1.addArrangedSubview(fiveStar)
        
        onestar.layer.cornerRadius = 5
        twoStar.layer.cornerRadius = 5
        threeStar.layer.cornerRadius = 5
        fourStar.layer.cornerRadius = 5
        fiveStar.layer.cornerRadius = 5
    }
    
}


//let buttonLH : UIButto
extension UIButton {
    convenience init(text : String,fontSize : CGFloat, parentStack : UIStackView){
        self.init()
        self.translatesAutoresizingMaskIntoConstraints = false
        self.setTitle(text, for: .normal)
        self.contentHorizontalAlignment = .center
        self.titleLabel?.font = .boldSystemFont(ofSize: fontSize)
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
