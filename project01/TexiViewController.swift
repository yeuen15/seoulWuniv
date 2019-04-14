//
//  TexiViewController.swift
//  project01
//
//  Created by yeuen on 13/04/2019.
//  Copyright © 2019 yeuen. All rights reserved.
//

import UIKit

class TexiViewController: UIViewController {

    @IBOutlet var texiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        texiLabel.text = startLabel + "행 택시가 호출되었습니다."
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
