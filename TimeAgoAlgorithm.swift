import UIKit


extension Date {
    
    func timeAgoDisplay() -> String {
        
        let secondsAgo = Int(Date().timeIntervalSince(self))
        
        let minute = 60
        let hour = minute * 60
        let day = hour * 24
        let week = day * 7
        let month = week * 4
        let year = month * 12
        
        if secondsAgo < minute {
            return "\(secondsAgo) seconds ago"
        }else if secondsAgo < hour {
            return "\(secondsAgo / minute) minutes ago"
        }else if secondsAgo < day {
            return "\(secondsAgo / hour) hours ago"
        }else if secondsAgo < week {
           return "\(secondsAgo / day) days ago"
        }else if secondsAgo < month {
            return "\(secondsAgo / week) weeks ago"
        }else if secondsAgo < year {
            return "\(secondsAgo / month) months ago"
        }else {
            return "\(secondsAgo / year) years ago"
        }
        
    }
}

let now = Date()

let pastDate = Date(timeIntervalSinceNow: -60)


pastDate.timeAgoDisplay()