//
//  UIDatePicker.swift
//  Scorebb
//
//  Created by 高田早記 on 2015/06/21.
//  Copyright (c) 2015年 高田早記. All rights reserved.
//


import UIKit

public class UIDatePickerTextField: UITextField {
    
    override public func awakeFromNib() {
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("handleFocused:"), name: UITextFieldTextDidBeginEditingNotification, object: nil)
    }
    
    public func handleFocused(notification: NSNotification!) {
        var datePickerView  : UIDatePicker = UIDatePicker()
        datePickerView.datePickerMode = UIDatePickerMode.Date
        self.inputView = datePickerView
        datePickerView.addTarget(self, action: Selector("handleDatePicker:"), forControlEvents: UIControlEvents.ValueChanged)
    }
    
    public func handleDatePicker(sender: UIDatePicker) {
        var dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy/MM/dd"
        super.text = dateFormatter.stringFromDate(sender.date)
    }
}
