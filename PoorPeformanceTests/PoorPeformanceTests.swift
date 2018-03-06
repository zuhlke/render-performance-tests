import XCTest
@testable import PoorPeformance

func render(_ viewController: UIViewController) {
    UIGraphicsBeginImageContextWithOptions(viewController.view.bounds.size, true, 0)
    defer { UIGraphicsEndImageContext() }
    viewController.view.drawHierarchy(in: viewController.view.bounds, afterScreenUpdates: true)
}

class PoorPeformanceTests: XCTestCase {
    func testPerformanceExample() {
        self.measure {
            render(PoorScreen().makeViewController())
        }
    }
}
