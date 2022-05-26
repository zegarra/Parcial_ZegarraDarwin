//
//  HomeViewController.swift
//  Parcial_NRC1147_DarwinZegarra
//
//  Created by Darwin Zegarra on 25/05/22.
//

import UIKit

class HomeViewController: UIViewController{
    @IBAction private func tapToCloseKeyboard(sender: UITapGestureRecognizer){
        self.view.endEditing(true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("HomeViewController - viewDidLoad")
    }
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(animated)
        print(verTeclado)
    }
        override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("HomeViewController - ViewDidAppear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(dejarTeclado)
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("HomeViewController - viewDidDisappear")
    }
    
    private func verTeclado(){
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(self.keyboardWillShow(_:)),
                                              name: UIResponder.keyboardWillShowNotification,
                                              object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(self.keyboardWillHide(_:)),
                                               name: UIResponder.keyboardWillHideNotification,
                                               object: nil)
    }
    private func dejarTeclado(){
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    @objc private func keyboardWillShow(_ notification: Notification){
        print("Aparece")
    }
    @objc private func keyboardWillHide(_ notification: Notification){
        print("Desaparece")
    }
}



