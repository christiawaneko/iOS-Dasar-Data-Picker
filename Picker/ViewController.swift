//
//  ViewController.swift
//  Picker
//
//  Created by Christiawan Eko Saputro on 15/10/18.
//  Copyright © 2018 Dev. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    @IBOutlet weak var dataPickerView: UIPickerView!
    
    @IBOutlet weak var txtDeskripsi: UITextView!
    @IBOutlet weak var LblNegara: UILabel!
    
    @IBOutlet weak var imgBendera: UIImageView!
    
    var bendera : [ String ] = [
        "Bendera-Brunei-Darusalam",
        "bendera-Kamboja",
        "Bendera-Indonesia",
        "Bendera-Laos",
        "Bendera-Malaysia",
        "Bendera-Myanmar",
        "Bendera-Filipina",
        "Bendera-Singapura",
        "Bendera-Thailand",
        "Bendera-Timor-Leste",
        "Bendera-Vietnam"
        
    ]
    
    var negara : [ String ] = [
        "Brunei Darusalam",
        "Kamboja",
        "Indonesia",
        "Laos",
        "Malaysia",
        "Myanmar",
        "Filipina",
        "Singapura",
        "Thailand",
        "Timor Leste",
        "Vietnam"
    ]
    
    var deskripsi : [ String ] = [
        "( Member since 1984 )\n Ministry of Education - Brunei Darussalam",
        "( Member since 1968 )\n Ministry of Education, Youth and Sport - Cambodia",
        "( Member since 1965 )\n Ministry of Education and Culture - Indonesia",
        "( Member since 1965 )\n Ministry of Education and Sports - Lao PDR",
        "( Member since 1965 )\n Ministry of Education - Malaysia",
        "( Member since 1998 )\n Ministry of Education - Myanmar",
        "( Member since 1965 )\n Department of Education - Philippines",
        "( Member since 1965 )\n Ministry of Education - Singapore",
        "( Member since 1965 )\n Ministry of Education - Thailand",
        "( Member since 2006 )\n Government of the Democratic Republic of Timor-Leste",
        "( Member since 1992 )\n Ministry of Education and Training - Vietnam"
    ]
    
    let pickertxtData = UIPickerView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        dataPickerView.delegate = self
        dataPickerView.dataSource = self
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return negara.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return negara[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        txtDeskripsi.text = deskripsi[row]
        LblNegara.text = negara[row]
        
        imgBendera.image = UIImage(named: bendera[row])
       
        
    }

}

