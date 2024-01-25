//
//  ViewController.swift
//  4 month home work 3
//
//  Created by Nurtilek on 1/22/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    private lazy var myLoginLbl: UILabel = MakerView.sharedLB.makeLbl(text: "Login",
                                                               textColor: .black,
                                                               textSize: 18,
                                                               ofSize: .bold)
                                                    
    private lazy var myImage: UIImageView = {
        let Img = UIImageView()
        Img.image = UIImage(named: "User")
        Img.translatesAutoresizingMaskIntoConstraints = false
        return Img
    }()
    
    private lazy var myTexyLbl: UILabel = MakerView.sharedLB.makeLbl(text: "Welcome back , Rohit thakur",
                                                              textColor: .gray,
                                                              textSize: 14)
    
    private lazy var myImage2: UIImageView = {
        let Img = UIImageView()
        Img.image = UIImage(named: "drawKit")
        Img.translatesAutoresizingMaskIntoConstraints = false
        return Img
    }()
    
    private lazy var myEnterlbl: UILabel = MakerView.sharedLB.makeLbl(text: "Enter Your Mobile Number",
                                                               textColor: .red,
                                                               textSize: 17,
                                                               ofSize: .bold)
    
    private lazy var myNumberTF: UITextField = MakerView().makeTF(placeholder: "+996 Enter Number")
    
    private lazy var myNumberLbl: UILabel = MakerView().makeLbl(text: "Change Number ?",
                                                                textColor: .gray,
                                                                textSize: 12)
    
    private lazy var myLoginBT: UIButton = MakerView().makeBTN(title: "Login",
                                                               for: .normal,
                                                               colorBT: .white,
                                                               backgroundColorBT: .systemRed)
    
    private lazy var myGoogleLbl: UILabel = MakerView().makeLbl(text: "Google",
                                                                textColor: .black,
                                                                textSize: 14,
                                                                ofSize: .bold)
    
    private lazy var myImageGoogle: UIImageView = {
        let Img = UIImageView()
        Img.image = UIImage(named: "Google")
        Img.translatesAutoresizingMaskIntoConstraints = false
        return Img
    }()
    
    private lazy var myAccoutLabel: UILabel = {
        let lb = UILabel()
        lb.text = "You Don’t have an account ?"
        lb.font = .systemFont(ofSize: 14, weight: .bold)
        lb.textColor = .black
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    
                                                               

    override func viewDidLoad() {
        super.viewDidLoad()
       
        setupUI()
    }

    private func setupUI() {
        view.backgroundColor = .white
        
        setupmyLoginLbl()
        setupmyImage()
        setupmyTexyLbl()
        setupmyImage2()
        setupmyEnterlbl()
        setupmyNumberTF() 
        setupmyNumberLb()
        setupmyLoginBT()
        setupmyGoogleLb()
        setupmyImageGoogle()
        setupmyAccoutLabel()
        setupsingUpBT()
    }
    
    private func setupmyLoginLbl() {
        view.addSubview(myLoginLbl)
        
        NSLayoutConstraint.activate([
            myLoginLbl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 2),
            myLoginLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            myLoginLbl.widthAnchor.constraint(equalToConstant: 50),
            myLoginLbl.heightAnchor.constraint(equalToConstant: 23)
        ])
    }
    
    private lazy var singUpBT: UIButton = {
        let frg = UIButton(type: .system)
        frg.setTitle("Sign Up", for: .normal)
        frg.tintColor = .systemBlue
        frg.translatesAutoresizingMaskIntoConstraints = false
        return frg
    }()
    
    private func setupmyImage() {
        view.addSubview(myImage)
        
        NSLayoutConstraint.activate([
            myImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 2),
            myImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -300),
            myImage.widthAnchor.constraint(equalToConstant: 20),
            myImage.heightAnchor.constraint(equalToConstant: 19)
        ])
    }
    
    private func setupmyTexyLbl() {
        view.addSubview(myTexyLbl)
        
        NSLayoutConstraint.activate([
            myTexyLbl.topAnchor.constraint(equalTo: myImage.bottomAnchor, constant: 5),
            myTexyLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            myTexyLbl.widthAnchor.constraint(equalToConstant: 210),
            myTexyLbl.heightAnchor.constraint(equalToConstant: 18)
        ])
    }
    
    private func setupmyImage2() {
        view.addSubview(myImage2)
        
        NSLayoutConstraint.activate([
            myImage2.topAnchor.constraint(equalTo: myTexyLbl.bottomAnchor, constant: 49),
            myImage2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 57),
            myImage2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -61),
            myImage2.heightAnchor.constraint(equalToConstant: 231)
        ])
    }
    
    private func setupmyEnterlbl() {
        view.addSubview(myEnterlbl)
        
        NSLayoutConstraint.activate([
            myEnterlbl.topAnchor.constraint(equalTo: myImage2.bottomAnchor, constant: 15),
            myEnterlbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 80),
            myEnterlbl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -78),
            myEnterlbl.heightAnchor.constraint(equalToConstant: 26)
        ])
    }
    
    private func setupmyNumberTF() {
        view.addSubview(myNumberTF)
        
        NSLayoutConstraint.activate([
            myNumberTF.topAnchor.constraint(equalTo: myEnterlbl.bottomAnchor, constant: 31),
            myNumberTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23),
            myNumberTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -23),
            myNumberTF.heightAnchor.constraint(equalToConstant: 43)
        ])
    }
    
    private func setupmyNumberLb() {
        view.addSubview(myNumberLbl)
        
        NSLayoutConstraint.activate([
            myNumberLbl.topAnchor.constraint(equalTo: myNumberTF.bottomAnchor, constant: 8),
            myNumberLbl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -41),
            myNumberLbl.heightAnchor.constraint(equalToConstant: 18),
            myNumberLbl.widthAnchor.constraint(equalToConstant: 110)
        ])
    }
    private func setupmyLoginBT() {
        view.addSubview(myLoginBT)
        
        NSLayoutConstraint.activate([
            myLoginBT.topAnchor.constraint(equalTo: myNumberTF.bottomAnchor, constant: 64),
            myLoginBT.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23),
            myLoginBT.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -23),
            myLoginBT.heightAnchor.constraint(equalToConstant: 43)
        ])
        
        myLoginBT.addTarget(self, action: #selector(secondView( sender:)), for: .touchUpInside)
    }
    
    private func setupmyGoogleLb() {
        view.addSubview(myGoogleLbl)
        
        NSLayoutConstraint.activate([
            myGoogleLbl.topAnchor.constraint(equalTo: myLoginBT.bottomAnchor, constant: 45),
            myGoogleLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 180),
            myGoogleLbl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -160),
            myGoogleLbl.heightAnchor.constraint(equalToConstant: 21)
        ])
    }
    
    private func setupmyImageGoogle() {
        view.addSubview(myImageGoogle)
        
        NSLayoutConstraint.activate([
        myImageGoogle.topAnchor.constraint(equalTo: myLoginBT.bottomAnchor, constant: 45),
        myImageGoogle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 150),
        myImageGoogle.heightAnchor.constraint(equalToConstant: 22),
        myImageGoogle.widthAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    private func setupmyAccoutLabel() {
        view.addSubview(myAccoutLabel)

        NSLayoutConstraint.activate([
            myAccoutLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
          myAccoutLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
            myAccoutLabel.heightAnchor.constraint(equalToConstant: 18),
            myAccoutLabel.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    private func setupsingUpBT() {
        view.addSubview(singUpBT)
        
        NSLayoutConstraint.activate([
            singUpBT.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -75),
            singUpBT.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
            singUpBT.heightAnchor.constraint(equalToConstant: 18),
            singUpBT.widthAnchor.constraint(equalToConstant: 70)
        ])
    }
    
    private func phoneNumberKGZ() -> Bool {
        let countryCode = "+996"
        let phoneNumber = myNumberTF.text ?? ""
        return phoneNumber.hasPrefix(countryCode) && phoneNumber.count == (countryCode.count + 9)
    }
    
    @objc func secondView( sender: UIButton) {
        if phoneNumberKGZ() {
            myNumberTF.layer.borderWidth = 0
            let vc = SecondViewController()
            navigationController?.pushViewController(vc, animated: true)
        } else {
            myNumberTF.placeholder = "Введите номер с кодом страны +996"
            myNumberTF.layer.borderWidth = 2
        }
    }

}
