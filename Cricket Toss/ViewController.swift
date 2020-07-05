//
//  ViewController.swift
//  Cricket Toss
//
//  Created by Samyak Pawar on 28/06/20.
//  Copyright © 2020 ArtistSamyak. All rights reserved.
//

import UIKit

import UIKit

class ViewController: UIViewController {
    //array of images of both sides on the coin.
    var coinImages = [ #imageLiteral(resourceName: "tales"), #imageLiteral(resourceName: "heads") ]
    //outlets of the coin image & result.
    @IBOutlet weak var coinImage: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //making alpha of coin and result = 0
        coinImage.alpha = 0
        
        resultLabel.alpha = 0
        
        
    }
   //whae the toss button is tapped.
    @IBAction func tossButton(_ sender: UIButton) {
        spinningAnimation()
        coinImage.alpha = 1 //making the coin visible
        resultLabel.alpha = 0
        let seconds = 3.0
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            // this code should be executed with the delay of 3 seconds..
            self.coinImage.image = self.coinImages.randomElement() //randomly choose heads or tails.
            if self.coinImage.image == self.coinImages[0] {
                self.resultLabel.text = "Tails!"
                self.resultLabel.alpha = 1
            }else{
                self.resultLabel.text = "Heads!"
                self.resultLabel.alpha = 1
            }
        }

    }
    
    //when phone is shaked..
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        spinningAnimation()
        coinImage.alpha = 1 //making the coin visible
        resultLabel.alpha = 0
        let seconds = 3.0
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            // this code should be executed with the delay of 3 seconds..
            self.coinImage.image = self.coinImages.randomElement() //randomly choose heads or tails.
            if self.coinImage.image == self.coinImages[0] {
                self.resultLabel.text = "Tails!"
                self.resultLabel.alpha = 1
            }else{
                self.resultLabel.text = "Heads!"
                self.resultLabel.alpha = 1
            }
        }
    }
    
    func spinningAnimation() {
        //this function keeps switching with the heads and tales image with the time delay of 0.3 seconds between every switch.
        coinImage.image = coinImages[0]
        let seconds = 0.3
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            // this code should be executed with the delay of 0.3 seconds..
            self.coinImage.image = self.coinImages[1]
            DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                // this code should be executed with the delay of 0.3 seconds..
                self.coinImage.image = self.coinImages[0]
                DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                    // this code should be executed with the delay of 0.3 seconds..
                    self.coinImage.image = self.coinImages[1]
                    DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                        // this code should be executed with the delay of 0.3 seconds..
                        self.coinImage.image = self.coinImages[0]
                        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                            // this code should be executed with the delay of 0.3 seconds..
                            self.coinImage.image = self.coinImages[1]
                            DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                                // this code should be executed with the delay of 0.3 seconds..
                                self.coinImage.image = self.coinImages[0]
                                DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                                    // this code should be executed with the delay of 0.3 seconds..
                                    self.coinImage.image = self.coinImages[1]
                                    DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                                        // this code should be executed with the delay of 0.3 seconds..
                                        self.coinImage.image = self.coinImages[0]
                                        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                                            // this code should be executed with the delay of 0.3 seconds..
                                            self.coinImage.image = self.coinImages[1]
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

