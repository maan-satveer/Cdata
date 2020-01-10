//
//  DetailController.swift
//  Cdata
//
//  Created by MacStudent on 2020-01-08.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

import UIKit
protocol DefaultChangeControllerDelegate {
    
    
    func detailController(_ controller: DetailController, didFinishAdding changedRate: String)
}

class DetailController: UIViewController {

    
    @IBOutlet weak var rateText: UITextField!
    
    var delegateDF: DefaultChangeControllerDelegate?
    
    
    
    @IBAction func ChangedPress(_ sender: Any) {
        if(rateText.text == ""){
            
            let alert = UIAlertController(title: "Field is Empty", message: "Please Enter Amount", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            return
        }else{
            
           delegateDF?.detailController(self, didFinishAdding: rateText.text!)
        }}
    
    
 
    var itemToEdit: String?
    
    override func viewDidLoad() {
      super.viewDidLoad()
      if let itemToEdit = itemToEdit {
        title = "Edit Item"
        rateText.text = itemToEdit
      
      }
    }
    
    
}
