import UIKit

class MainTabBarController: UITabBarController {

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground

        let infoVC = GeneralInfoViewController()
        let talksVC = TalksPageViewController()
        let nameCardVC = NameCardDisplayViewController()

        let tabs = (info: infoVC, talks: talksVC, nameCard: nameCardVC)
        
        // TODO: Configure tab bar items for each view controller
        // Use UITabBarItem(title:, image:, tag:)
        // Suggested icons: "info.circle", "speaker", "person.crop.rectangle"

        tabs.info.tabBarItem = UITabBarItem(title: "Info", image: UIImage(systemName: "info.circle"), tag: 0)
        tabs.talks.tabBarItem = UITabBarItem(title: "Talks", image: UIImage(systemName: "speaker"), tag: 1)
        tabs.nameCard.tabBarItem = UITabBarItem(title: "Name Card", image: UIImage(systemName: "person.crop.rectangle"), tag: 2)
        
        // TODO: Wrap each view controller in a navigation controller
        // Use the createNavigationController(for:) helper method below
        // TODO: Set self.viewControllers to an array of the navigation controllers
        
        self.viewControllers = [
            createNavigationController(for: infoVC),
            createNavigationController(for: talksVC),
            createNavigationController(for: nameCardVC)
        ]
    }

    // MARK: - Helper Methods

    /// Creates a navigation controller with large titles enabled
    /// - Parameter rootViewController: The view controller to wrap in navigation
    /// - Returns: Navigation controller containing the root view controller
    private func createNavigationController(for rootViewController: UIViewController) -> UINavigationController {
        // Enable large titles for this view controller
        rootViewController.navigationItem.largeTitleDisplayMode = .always

        // Create navigation controller with this view controller as root
        let navigationController = UINavigationController(rootViewController: rootViewController)
        navigationController.navigationBar.prefersLargeTitles = true

        return navigationController
    }
}

#Preview{
    MainTabBarController()
}
