//
//  ViewController.swift
//  Quiz thingy
//
//  Created by iD Student on 7/18/17.
//  Copyright © 2017 ID TECH. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        answerPickerView.dataSource = self;
        answerPickerView.delegate = self;
        setupCardUI()
        
        
        
    
    }
    @IBOutlet weak var questionTextView: UITextView!
    @IBOutlet weak var answerPickerView: UIPickerView!
    @IBOutlet weak var questionLabel: UILabel!

   
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

        
              }

    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    
    }
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return CardCollection.instance.currentCard.options.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return CardCollection.instance.currentCard.options[row];
    }
    
    

    func setupCardUI() {
        questionTextView.text = CardCollection.instance.currentCard.question
        
        questionLabel.text = "(Question \(CardCollection.instance.currentIndex + 1)/\(CardCollection.instance.cards.count)"



}
}

