//
//  ViewController.swift
//  HyoGangs Challenge
//
//  Created by 김시훈 on 2022/09/25.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        secondButton = makeSecondButton()
        fouthButton = makeFouthButton()
        [firstButton,
         secondButton,thirdButton,fouthButton].forEach{self.view.addSubview($0)}
        
        autoLayout()
        
    }
    
    func autoLayout() {
        NSLayoutConstraint.activate([
            firstButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            firstButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -70),
            firstButton.widthAnchor.constraint(equalToConstant: 250),
            firstButton.heightAnchor.constraint(equalToConstant: 50),
            secondButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            secondButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0),
            secondButton.widthAnchor.constraint(equalToConstant: 250),
            secondButton.heightAnchor.constraint(equalToConstant: 50),
            thirdButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            thirdButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -140),
            thirdButton.widthAnchor.constraint(equalToConstant: 250),
            thirdButton.heightAnchor.constraint(equalToConstant: 50),
            fouthButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            fouthButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 140),
            fouthButton.widthAnchor.constraint(equalToConstant: 250),
            fouthButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        
    }
    //MARK: 버튼 생성 코드
    lazy var firstButton:UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("클로저 선언으로 만든 버튼입니다", for: .normal)
        btn.backgroundColor = .green
        btn.addTarget(self, action: #selector(firstButtonTapped), for: .touchUpInside)
        return btn
    }()
    
    var secondButton = UIButton()
    
    func makeSecondButton() -> UIButton {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("함수로 만든 버튼입니다", for: .normal)
        btn.backgroundColor = .green
        btn.addTarget(self, action: #selector(secondButtonTapped), for: .touchUpInside)
        
        return btn
    }
    
    lazy var thirdButton:UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("코드로 푸시", for: .normal)
        btn.backgroundColor = .white
        btn.setTitleColor(.blue, for: .normal)
        btn.addTarget(self, action: #selector(pushButtonTapped), for: .touchUpInside)
        
        return btn
    }()
    
    var fouthButton = UIButton()
    
    func makeFouthButton() -> UIButton{
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("코드로 만든 테이블뷰", for: .normal)
        btn.setTitleColor(.blue, for: .normal)
        btn.addTarget(self, action: #selector(fouthButtonTapped), for: .touchUpInside)
        
        return btn
    }
    
    //MARK: 버튼 실행 함수
    @objc func firstButtonTapped() {
        print("클로저로 만든 버튼이 눌렸다")
    }
    
    @objc func secondButtonTapped() {
        print("함수로 만든 버튼을 눌렸다")
        
    }
    
    @objc func pushButtonTapped() {
//        let vc = self.storyboard?.instantiateViewController(withIdentifier: "PopViewController")
        let vc = PopViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func fouthButtonTapped() {
        let vc = ThirdViewController()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
        
    }
    

    //    func pushView() {
    //       let vc = ViewController()
    //        let naviC = UINavigationController(rootViewController: vc)
    //
    //        // 화면 띄우기
    //        self.present(naviC, animated: true)
    //
    //
    //     }
    //    func showPush() {
    //           let secondVC = PopViewController()
    //           self.navigationController?.pushViewController(secondVC, animated: true)
    //       }
    
}

