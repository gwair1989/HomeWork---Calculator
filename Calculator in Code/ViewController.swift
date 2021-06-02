//
//  ViewController.swift
//  Calculator in Code
//
//  Created by Aleksandr Khalupa on 27.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    let topText = UITextField()
    let lowText = UITextField()
    let label = UILabel()
    let plusButton = UIButton()
    let minusButton = UIButton()
    let multiplyButton = UIButton()
    let divideButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUI()
    }

    
    @objc func pressedButton(_ sender:UIButton){
        
        if topText.text == ""{
        label.text = "Fill in the first text field!"
        } else if lowText.text == ""{
            label.text = "Fill in the second text field!"
        }

        
        guard let num1 = topText.text, let num2 = lowText.text else{
            return
        }
        
        
        if topText.text != "" && lowText.text != ""{
            guard let numInt1 = Int(num1), let numInt2 = Int(num2) else {
                label.text = "Enter only numbers"
                return
            }
        


        if sender.tag == 1{
        label.text = "\(numInt1) + \(numInt2) = \(numInt1 + numInt2)"
        }else if sender.tag == 2{
            label.text = "\(numInt1) - \(numInt2) = \(numInt1 - numInt2)"
        }else if sender.tag == 3{
            label.text = "\(numInt1) * \(numInt2) = \(numInt1 * numInt2)"
        }else{
            label.text = "\(numInt1) ÷ \(numInt2) = \(numInt1 / numInt2)"
        }

        }
    }

    
    func setUI(){
        
        view.backgroundColor = .darkGray
        
        view.addSubview(topText)
        topText.frame = CGRect(x: view.frame.width / 3, y: view.frame.height / 7, width: view.frame.width / 3, height: 35)
        topText.backgroundColor = .white
        topText.placeholder = "Enter text"
        topText.textAlignment = .center
        
        view.addSubview(lowText)
        lowText.backgroundColor = .white
        lowText.frame = CGRect(x: view.frame.width / 3, y: view.frame.height / 4, width: view.frame.width / 3, height: 35)
        lowText.placeholder = "Enter text"
        lowText.textAlignment = .center
        
        
        view.addSubview(label)
        label.frame = CGRect(x: 20 / 2, y: view.frame.height / 2.7, width: view.frame.width - 20, height: 35)
        label.textAlignment = .center
        label.font = UIFont(name: "Kefa", size: 30)
        label.textColor = .white
        
        
        
        
        view.addSubview(plusButton)
        plusButton.frame = CGRect(x: view.frame.width / 3, y: view.frame.height / 2, width: view.frame.width / 3, height: 55)
        plusButton.backgroundColor = .systemGreen
        plusButton.setTitle("Plus", for: .normal)
        plusButton.titleLabel?.textColor = .white
        plusButton.titleLabel?.font = UIFont(name: "Kefa", size: 35)
        plusButton.addTarget(nil, action: #selector(pressedButton), for: .touchUpInside)
        plusButton.tag = 1
        
        
        view.addSubview(minusButton)
        minusButton.frame = CGRect(x: view.frame.width / 3, y: view.frame.height / 1.6, width: view.frame.width / 3, height: 55)
        minusButton.backgroundColor = .systemIndigo
        minusButton.setTitle("Minus", for: .normal)
        minusButton.titleLabel?.textColor = .white
        minusButton.titleLabel?.font = UIFont(name: "Kefa", size: 35)
        minusButton.addTarget(nil, action: #selector(pressedButton), for: .touchUpInside)
        minusButton.tag = 2
        
        view.addSubview(multiplyButton)
        multiplyButton.frame = CGRect(x: view.frame.width / 3, y: view.frame.height / 1.33, width: view.frame.width / 3, height: 55)
        multiplyButton.backgroundColor = .systemTeal
        multiplyButton.setTitle("Multiply", for: .normal)
        multiplyButton.titleLabel?.textColor = .white
        multiplyButton.titleLabel?.font = UIFont(name: "Kefa", size: 35)
        multiplyButton.addTarget(nil, action: #selector(pressedButton), for: .touchUpInside)
        multiplyButton.tag = 3
        
        
        view.addSubview(divideButton)
        divideButton.frame = CGRect(x: view.frame.width / 3, y: view.frame.height / 1.14, width: view.frame.width / 3, height: 55)
        divideButton.backgroundColor = .systemYellow
        divideButton.setTitle("Divide", for: .normal)
        divideButton.titleLabel?.textColor = .white
        divideButton.titleLabel?.font = UIFont(name: "Kefa", size: 35)
        divideButton.addTarget(nil, action: #selector(pressedButton), for: .touchUpInside)
        divideButton.tag = 4
        
    }
}

