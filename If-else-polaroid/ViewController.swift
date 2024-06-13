//
//  ViewController.swift
//  If-else-polaroid
//
//  Created by 紀韋如 on 11/06/2024.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var changePicImage: UIImageView!
    //首頁圖片：台北101
    @IBOutlet weak var textLabel: UITextField!
    // 首頁：輸入框
    @IBOutlet weak var SizeLabel: UILabel!
    // 調整大小的按鈕
    @IBOutlet weak var nextPage: UIView!
    // 下一頁的全部View
    @IBOutlet weak var nextPicFrame: UIView!
    // 拍立得白邊
    @IBOutlet weak var nextPicImage: UIImageView!
    // 拍立得照片
    @IBOutlet weak var nextPageTextLabel: UITextField!
    // 拍立得：輸入框
     
    
    
    //利用index 方式，取得使用者輸入的順序
    var index = Int(0)
    let size = ["3:4", "1:1", "4:5"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    // 先將拍立得（第二頁）藏起來
        nextPage.isHidden = true
    }
    

    // 點選圖片前面的按鈕後，自動讓首頁圖片、拍立得圖片均相同
    @IBAction func pic2(_ sender: Any) {
        changePicImage.image = UIImage(named: "Image2")
        nextPicImage.image = UIImage(named: "Image2")
        
    }
    
    @IBAction func pic3(_ sender: Any) {
        changePicImage.image = UIImage(named: "Image3")
        nextPicImage.image = UIImage(named: "Image3")
     
       
        
    }
    
    @IBAction func pic4(_ sender: Any) {
        changePicImage.image = UIImage(named: "Image4")
        nextPicImage.image = UIImage(named: "Image4")
      
      
        
        
    }
    
    @IBAction func pic5(_ sender: Any) {
        changePicImage.image = UIImage(named: "Image5")
        nextPicImage.image = UIImage(named: "Image5")
  
       
        
    }
    
    @IBAction func pic6(_ sender: Any) {
        changePicImage.image = UIImage(named: "Image6")
        nextPicImage.image = UIImage(named: "Image6")
      
        
    }

    
    // 調整大小
    @IBAction func sizeChange(_ sender: Any) {
        
        // 利用餘數方式找出index(0,1,2)分別代表：["3:4", "1:1", "4:5"] 圖片比例
        index = (1 + index) % 3
        SizeLabel.text = size[index]
       
        // 首頁圖片等於拍立得長寬（height and width）、拍立得白邊大於圖片大小、文字高度＝圖片高度再往下（最佳比例可彈性設定）
        if index == 2 {
                    changePicImage.frame = CGRect(x: 30, y: 125, width: 330, height: 413)
                    nextPicFrame.frame = CGRect(x: 20, y: 115, width: 350, height: 500)
                    nextPicImage.frame = CGRect(x: 10, y: 20, width: 330, height: 413)
                    nextPageTextLabel.frame = CGRect(x: 15, y: nextPicImage.frame.maxY + 30 , width: 310, height: 30)
            
                } else if index == 1 {
                    changePicImage.frame = CGRect(x: 30, y: 125, width: 330, height: 330)
                    nextPicFrame.frame = CGRect(x: 20, y: 115, width: 350, height: 450)
                    nextPicImage.frame = CGRect(x: 10, y: 20, width: 330, height: 330)
                    nextPageTextLabel.frame = CGRect(x: 15, y: nextPicImage.frame.maxY + 40, width: 310, height: 30)
                } else {
                    changePicImage.frame = CGRect(x: 30, y: 125, width: 330, height: 440)
                    nextPicFrame.frame = CGRect(x: 20, y: 115, width: 350, height: 520)
                    nextPicImage.frame = CGRect(x: 10, y: 20, width: 330, height: 440)
                    nextPageTextLabel.frame = CGRect(x: 15, y: nextPicImage.frame.maxY + 20, width: 310, height: 30)
                }
        
    }
    
    // 第一頁按鈕：出現第二頁，首頁文字=拍立得文字，拍立得往下移動的動畫
    
    @IBAction func next(_ sender: Any) {
        nextPageTextLabel.text = textLabel.text
        nextPage.isHidden = false
        self.nextPicFrame.frame.origin.y = -635
        UIView.animate(withDuration: 3){
            self.nextPicFrame.frame.origin.y = 115
        }
        
        
    }
    
    
    
    
    
    
    
    // 拍立得打勾按鈕，可進行返回第一頁
    
    @IBAction func back(_ sender: Any) {
        nextPage.isHidden = true
    }
    
    
}
