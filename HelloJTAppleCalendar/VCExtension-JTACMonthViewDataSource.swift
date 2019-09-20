//
//  VCExtension-JTACMonthViewDataSource.swift
//  HelloJTAppleCalendar
//
//  Created by David Kuo on 2019/9/18.
//  Copyright © 2019 David Kuo. All rights reserved.
//

import JTAppleCalendar

extension ViewController: JTACMonthViewDataSource {
    func configureCalendar(_ calendar: JTACMonthView) -> ConfigurationParameters {
        
        // 設定日曆的起始日，以及結束日
        let startDate = Date()
        let endDate = Date().addingTimeInterval(60*60*24*31*3)
        return ConfigurationParameters(startDate: startDate, endDate: endDate)
    }
}
