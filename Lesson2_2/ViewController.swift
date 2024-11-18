//
//  ViewController.swift
//  Lesson2_2
//
//  Created by Ilnar on 17.11.2024.
//

import UIKit

class ViewController: UIViewController {
    let mountainsImageView = UIImageView()
    let coupleImageView = UIImageView()
    var imageContent = UIImage()
    
    let nameLabel = UILabel()
    let addDescriptionLabel = UILabel()
    let changePasswordLabel = UILabel()
    
    let descriptionTextView = UITextView()
    
    let editButton = UIButton()
    let saveButton = UIButton()
    
    var oldPasswordTextField = UITextField()
    var newPasswordTextField = UITextField()
    
    lazy var screenWidht = view.frame.width - 64
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageContent = .mountains
        mountainsImageView.frame = CGRect(x: 0, y: 0, width: view.frame.maxX, height: 156)
        mountainsImageView.contentMode = .scaleAspectFill
        mountainsImageView.clipsToBounds = true
        mountainsImageView.image = imageContent
        
        imageContent = .couple
        coupleImageView.frame = CGRect(x: 32, y: mountainsImageView.frame.maxY + 20, width: 100, height: 100)
        coupleImageView.contentMode = .scaleAspectFill
        coupleImageView.layer.cornerRadius = 50
        coupleImageView.clipsToBounds = true
        coupleImageView.image = imageContent
        
        nameLabel.frame = CGRect(x: coupleImageView.frame.maxX + 20, y: mountainsImageView.frame.maxY + 40, width: screenWidht, height: 19)
        nameLabel.text = "Имя Фамилия"
        nameLabel.font = .boldSystemFont(ofSize: 16)
        
        editButton.frame = CGRect(x: coupleImageView.frame.maxX + 20, y: mountainsImageView.frame.maxY + 70, width: 147, height: 34)
        editButton.setTitle("Редактировать", for: .normal)
        editButton.titleLabel?.font = .systemFont(ofSize: 14)
        editButton.backgroundColor = .systemBlue
        editButton.setTitleColor(.white, for: .normal)
        editButton.layer.cornerRadius = 10
        
        addDescriptionLabel.frame = CGRect(x: 32, y: coupleImageView.frame.maxY + 50, width: screenWidht, height: 19)
        addDescriptionLabel.text = "Добавить описание"
        
        descriptionTextView.frame = CGRect(x: 32, y: addDescriptionLabel.frame.maxY + 10, width: screenWidht, height: 150)
        descriptionTextView.backgroundColor = .systemGray5
        descriptionTextView.layer.cornerRadius = 10
        
        changePasswordLabel.frame = CGRect(x: 32, y: descriptionTextView.frame.maxY + 20, width: screenWidht, height: 19)
        changePasswordLabel.text = "Изменить пароль"
        
        oldPasswordTextField = passwordTextFild(offsetY: changePasswordLabel.frame.maxY + 10, placeholder: "Старый пароль")
        newPasswordTextField = passwordTextFild(offsetY: oldPasswordTextField.frame.maxY + 10, placeholder: "Новый пароль")
        
        saveButton.frame = CGRect(x: 32, y: view.frame.maxY - 100, width: screenWidht, height: 55)
        saveButton.setTitle("Сохранить", for: .normal)
        saveButton.titleLabel?.font = .systemFont(ofSize: 14)
        saveButton.backgroundColor = .systemBlue
        saveButton.layer.cornerRadius = 15
        
        
        view.addSubview(mountainsImageView)
        view.addSubview(coupleImageView)
        view.addSubview(nameLabel)
        view.addSubview(editButton)
        view.addSubview(addDescriptionLabel)
        view.addSubview(descriptionTextView)
        view.addSubview(changePasswordLabel)
        view.addSubview(oldPasswordTextField)
        view.addSubview(newPasswordTextField)
        view.addSubview(saveButton)
    }
    
    func passwordTextFild(offsetY: CGFloat, placeholder: String) -> UITextField {
        let passwordButton = UITextField()
        passwordButton.frame = CGRect(x: 32, y: offsetY, width: screenWidht, height: 52)
        passwordButton.placeholder = placeholder
        passwordButton.backgroundColor = .systemGray6
        passwordButton.layer.cornerRadius = 10
        passwordButton.isSecureTextEntry = true
        passwordButton.leftViewMode = .always
        passwordButton.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 0))
        return passwordButton
    }
}
