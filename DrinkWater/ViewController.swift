//
//  ViewController.swift
//  DrinkWater
//
//  Created by Eunchan Kim on 2022/09/28.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelGoodjob: UILabel!
    
    @IBOutlet weak var percent: UILabel!
    
    
    @IBOutlet weak var yourWater: UILabel!
    
    
    @IBOutlet weak var profileBtn: UIBarButtonItem!
    
    @IBOutlet weak var ml: UILabel!
    
    
    @IBOutlet weak var textFieldWater: UITextField!
    
    @IBOutlet weak var img: UIImageView!
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        print("첫번재화면")
        
        self.view.backgroundColor = UIColor(red: 65/255, green: 148/255, blue: 115/255, alpha: 1)
        
        // 잘하셨어요 부분
        labelGoodjob.text = "잘하셨어요! \n오늘 마신 양은"
        labelGoodjob.textColor = .white
        labelGoodjob.font = UIFont.systemFont(ofSize: 26, weight: .medium)
        
        //yourWater
        yourWater.textColor = .white
       
        yourWater.textAlignment = .center
        yourWater.font = UIFont.systemFont(ofSize: 13)
        
        //textfield
        textFieldWater.backgroundColor = UIColor(red: 65/255, green: 148/255, blue: 115/255, alpha: 1)
        textFieldWater.borderStyle = .none
        textFieldWater.font = UIFont.systemFont(ofSize: 40)
        textFieldWater.textColor = .white
        
    }
    
    @IBAction func waterBtn(_ sender: UIButton) {
       
       
        perposerWater = Double((UserDefaults.standard.integer(forKey: "height") + UserDefaults.standard.integer(forKey: "weight")) / 100)
        yourWater.text = "\(UserDefaults.standard.string(forKey: "nickname"))님의 하루 물 섭취 권장량은 \(perposerWater)L 입니다"
        print(perposerWater)
        //  (160 + 50) / 100  2.1 L
        
        
        
        
       insertWater = UserDefaults.standard.integer(forKey: "water")
        let insertWaterSet = ml.text
        UserDefaults.standard.set(insertWaterSet, forKey: "water")
        
        totalWater += UserDefaults.standard.integer(forKey: "water")
        
        print(totalWater)
       
        
        
        
        //목표의 몇퍼센트구하기
        
        
      
//        totalWater += UserDefaults.standard.double(forKey: "water")
        purposeWaterPer =
        Double(totalWater) / perposerWater * 100
        let waterPer = String(format: "%.0f", purposeWaterPer)
        let totalWater = String(format: "%.0f", totalWater)
        //퍼센트
        // 출력
        // 퍼센트
        percent.textColor = .white
        percent.text = "목표의 \(waterPer)%"
        percent.font = UIFont.systemFont(ofSize: 15)
        // 오늘 섭취량
        ml.font = UIFont.systemFont(ofSize: 30, weight: .heavy)
        ml.text = "\(totalWater)ml"
        ml.textColor = .white
        
        
        //이미지 바꾸기
        let img1: UIImage = UIImage(named: "1-1")!
        let img2: UIImage = UIImage(named: "1-2")!
        let img3: UIImage = UIImage(named: "1-3")!
        let img4: UIImage = UIImage(named: "1-4")!
        let img5: UIImage = UIImage(named: "1-5")!
        let img6: UIImage = UIImage(named: "1-6")!
        let img7: UIImage = UIImage(named: "1-7")!
        let img8: UIImage = UIImage(named: "1-8")!
        
        
        
    }
    
    
    @IBAction func resetBtn(_ sender: UIButton) {
        UserDefaults.standard.removeObject(forKey: "nickname")
        yourWater.text = ""
        UserDefaults.standard.removeObject(forKey: "height")
        percent.text = ""
        UserDefaults.standard.removeObject(forKey: "weight")
        ml.text = ""
        
    }
    
    
    
    
    
    var perposerWater = 0.0 // 하루권장량
    var purposeWaterPer = 0.0 // 목표대비퍼센트
    var totalWater = 0
    // 오늘 마신 양
    var insertWater = 0
    
    
}
