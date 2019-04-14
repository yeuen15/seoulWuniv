//
//  ViewController.swift
//  project01
//
//  Created by yeuen on 10/04/2019.
//  Copyright © 2019 yeuen. All rights reserved.
//

import UIKit

//택시 호출,약도 보기 기능을 위해 전역 변수 선언
var startLabel: String = " "
var arriveLabel: String = " "

class ViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet var startPicker: UIPickerView!
    

    let startArray: Array<String> = ["50주년 기념관", "기독교 교육관", "대강당", "인문 사회관", "제1과학관", "제2과학관"]
    
    let arriveArray: Array<String> = ["50주년 기념관", "기독교 교육관", "대강당", "인문 사회관", "제1과학관", "제2과학관"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{return startArray.count}
        else{return arriveArray.count}
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0{return startArray[row]}
        else{return arriveArray[row]}
    }
    
    @IBOutlet var subView: UIView!
    @IBOutlet var timeLabel: UILabel!
    
    @IBAction func timeAction(_ sender: UIButton) {
        subView.isHidden = false
        var time: Int = 0
        let start: String = startArray[self.startPicker.selectedRow(inComponent: 0)]
        let arrive: String = arriveArray[self.startPicker.selectedRow(inComponent: 1)]
        
        if start == "50주년 기념관" && arrive == "인문 사회관" || start == "인문 사회관" && arrive == "50주년 기념관"{
            time = 3
        }
        else if start == "50주년 기념관" && arrive == "기독교 교육관" || start == "기독교 교육관" && arrive == "50주년 기념관"{
            time = 1
        }
        else if start == "50주년 기념관" && arrive == "대강당" || start == "대강당" && arrive == "50주년 기념관"{
            time = 6
        }
        else if start == "50주년 기념관" && arrive == "제1과학관" || start == "제1과학관" && arrive == "50주년 기념관" || start == "50주년 기념관" && arrive == "제2과학관" || start == "제2과학관" && arrive == "50주년 기념관"{
            time = 10
        }
        else if start == "기독교 교육관" && arrive == "인문 사회관" || start == "인문 사회관" && arrive == "기독교 교육관"{
            time = 1
        }
        else if start == "기독교 교육관" && arrive == "대강당" || start == "대강당" && arrive == "기독교 교육관"{
            time = 4
        }
        else if start == "기독교 교육관" && arrive == "제1과학관" || start == "제1과학관" && arrive == "기독교 교육관" || start == "기독교 교육관" && arrive == "제2과학관" || start == "제2과학관" && arrive == "기독교 교육관"{
            time = 8
        }
        else if start == "대강당" && arrive == "인문 사회관" || start == "인문 사회관" && arrive == "대강당"{
            time = 5
        }
        else if start == "대강당" && arrive == "제1과학관" || start == "제1과학관" && arrive == "대강당" || start == "대강당" && arrive == "제2과학관" || start == "제2과학관" && arrive == "대강당"{
            time = 4
        }
        else if start == "인문 사회관" && arrive == "제1과학관" || start == "제1과학관" && arrive == "인문 사회관" || start == "인문 사회관" && arrive == "제2과학관" || start == "제2과학관" && arrive == "인문 사회관"{
            time = 8
        }
        else if start == "제1과학관" && arrive == "제2과학관" || start == "제2과학관" && arrive == "제1과학관"{
            time = 1
        }
        
        
        timeLabel.text = start + "에서 " + arrive + "까지 " + String(time) + "분 소요됩니다!"
        
        //택시호출,약도보기할 때 사용하는 변수
        startLabel = start
        arriveLabel = arrive
    }
    
    
    override func viewDidLoad() {
        subView.isHidden = true
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

