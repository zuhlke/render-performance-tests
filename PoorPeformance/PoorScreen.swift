import UIKit

struct PoorScreen {
    func makeViewController() -> UIViewController {
        let viewController = UIViewController()
        
        let makeView: () -> UIView = {
            let view = UILabel()
            view.text = "Welcome to ZeTeam!"
            view.backgroundColor = .white
            view.textAlignment = .center
            return view
        }
        
        viewController.view = makeView()
        
        (1...100).forEach { _ in
            viewController.view.addSubview(makeView())
        }
        
        return viewController
    }
}
