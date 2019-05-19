import UIKit

func getNthNumber(_ n: Int) -> Int {
    var count = 0
    var value = n

    while value != 1 {
        if value % 2 == 0 {
            value = value / 2
        } else {
            value = (3 * value) + 1
        }
        count = count + 1
    }
return count
}
