import XCTest
@testable import PoorPeformance

func render(_ view: UIView) {
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, true, 0)
    defer { UIGraphicsEndImageContext() }
    view.drawHierarchy(in: view.bounds, afterScreenUpdates: true)
}

class PoorPeformanceTests: XCTestCase {
    func testPerformanceExample() {
        self.measure {
            render(PoorScreen().makeViewController().view)
        }
    }
}
