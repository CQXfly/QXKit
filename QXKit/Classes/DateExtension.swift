//
//  DateExtension.swift
//  FBSnapshotTestCase
//
//  Created by fox on 2018/3/23.
//

import Foundation

public enum DateTimeStampLengthType {
    case None
    case Long
}
public extension Date {
    
     public static let formatter1 = DateFormatter()
    
    /// MARK: 获取当前时间戳
    /// - parameters:
    ///   - type: DateTimeStampLengthType long 是 13位 None 是10位
     public static func currentTimeStamp(_ type:DateTimeStampLengthType)->TimeInterval{
        let d = Date(timeIntervalSinceNow: 0)
        switch type {
        case .None:
            return d.timeIntervalSince1970
        case .Long:
            return d.timeIntervalSince1970 * 1000
        }
    }
}

public extension String {
    
    /// MARK: 时间戳转时间
    public func transform<T,U>(_ transform:(T)->U,type:DateTimeStampLengthType ) -> U {
        let time :T
        switch type {
        case .None:
            time = TimeInterval(self)! as! T
        case .Long:
            time = TimeInterval(self)!/1000 as! T
        }
        return transform(time)
    }
    
    public func getDateDescription1(type:DateTimeStampLengthType) -> String {

        return transform({ (time:TimeInterval) -> String in
            let dateFormatter = Date.formatter1
            let detailDate = Date(timeIntervalSince1970: time)
            let currnetTime = Date.currentTimeStamp(type)
            dateFormatter.dateFormat = "yyyy"
            let d0 = dateFormatter.string(from: Date(timeIntervalSince1970: currnetTime))
            let d1 = dateFormatter.string(from: detailDate)
            
            if(Int(d0)! > Int(d1)!) {
                dateFormatter.dateFormat = "yyyy-MM-dd"
                return dateFormatter.string(from: Date(timeIntervalSince1970: time))
            } else {
                //15天前
                if(currnetTime - time > 60 * 60 * 24 * 15) {
                    dateFormatter.dateFormat = "MM-dd"
                    return dateFormatter.string(from: Date(timeIntervalSince1970: time))
                } else {
                    //一天前
                    if (currnetTime - time > 60 * 60 * 24 ) {
                        return  "\(Int((currnetTime - time)/(60 * 60 * 24)))天前"
                    } else {
                        return  "\(Int((currnetTime - time)/(60 * 60 )))小时前"
                    }
                }
            }
        }, type: type)
    }
}


