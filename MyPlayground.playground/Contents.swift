import UIKit

func test(a: Int, b: String) -> String {
    print("\(a) + \(b) 입니다.")
}

func testResult(result: Int) -> (Int, String) -> String {
    return test
}
