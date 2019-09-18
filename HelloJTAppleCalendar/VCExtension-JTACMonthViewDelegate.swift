//
//  VCExtension-JTACMonthViewDelegate.swift
//  HelloJTAppleCalendar
//
//  Created by David Kuo on 2019/9/18.
//  Copyright © 2019 David Kuo. All rights reserved.
//

import JTAppleCalendar

extension ViewController: JTACMonthViewDelegate {
    func calendar(_ calendar: JTACMonthView, cellForItemAt date: Date, cellState: CellState, indexPath: IndexPath) -> JTACDayCell {
        // 設定 reuse 的 Cell，並給予 Cell 上的 dateLabel 對應的值
        let cell = calendar.dequeueReusableJTAppleCell(withReuseIdentifier: "dateCell", for: indexPath) as! DateCell
        cell.dateLabel.text = cellState.text
        return cell
    }
    
    func calendar(_ calendar: JTACMonthView, willDisplay cell: JTACDayCell, forItemAt date: Date, cellState: CellState, indexPath: IndexPath) {
    }
}
