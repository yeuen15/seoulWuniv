//
//  ImageViewController.swift
//  project01
//
//  Created by yeuen on 13/04/2019.
//  Copyright © 2019 yeuen. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet var univImage: UIImageView!
    @IBOutlet var startArrive: UISegmentedControl!
    
    let firstImage = UIImage(named: "image01.jpg")
    
    let image01 = UIImage(named: "image50th.png")
    let image02 = UIImage(named: "imageChristian.png")
    let image03 = UIImage(named: "imageHumanity.png")
    let image04 = UIImage(named: "imageAuditorium.png")
    let image05 = UIImage(named: "imageScience1.png")
    let image06 = UIImage(named: "imageScience2.png")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        univImage.image = firstImage
    }
    
    
    
    @IBAction func showAction(_ sender: Any) {
        if startArrive.selectedSegmentIndex == 0{
            if startLabel == "50주년 기념관"{
                univImage.image = image01
            }
            else if startLabel == "기독교 교육관"{
                univImage.image = image02
            }
            else if startLabel == "인문 사회관"{
                univImage.image = image03
            }
            else if startLabel == "대강당"{
                univImage.image = image04
            }
            else if startLabel == "제1과학관"{
                univImage.image = image05
            }
            else if startLabel == "제2과학관"{
                univImage.image = image06
            }
        }
        
        if startArrive.selectedSegmentIndex == 1{
            if arriveLabel == "50주년 기념관"{
                univImage.image = image01
            }
            else if arriveLabel == "기독교 교육관"{
                univImage.image = image02
            }
            else if arriveLabel == "인문 사회관"{
                univImage.image = image03
            }
            else if arriveLabel == "대강당"{
                univImage.image = image04
            }
            else if arriveLabel == "제1과학관"{
                univImage.image = image05
            }
            else if arriveLabel == "제2과학관"{
                univImage.image = image06
            }
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
