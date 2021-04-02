//
//  NextViewController.swift
//  MapAndProtocol
//
//  Created by Kenta Yamada on 2021/04/02.
//

import UIKit

protocol SearchLocationDalegate {
    
    func searchlocation(idoValue:String,keidoValue:String)
}

class NextViewController: UIViewController {
    
    
    @IBOutlet weak var idoTextField: UITextField!
    @IBOutlet weak var keidoTextField: UITextField!
    
    var delegate:SearchLocationDalegate?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func okAction(_ sender: Any) {
        
        //入力された値を取得
        let idoValue = idoTextField.text!
        let keidoValue = keidoTextField.text!
        
        //両方のTFが空でなけれな戻る
        if idoTextField.text != nil && keidoTextField.text != nil {
            
            //デリゲートメソッドの引数に入れる
            delegate?.searchlocation(idoValue: idoValue, keidoValue: keidoValue)
            
            dismiss(animated: true, completion: nil)
            
        }
        
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
