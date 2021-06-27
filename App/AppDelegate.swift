import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    // MARK: - Private Methods

    private func configureNavigationBarAppearance() {
        let appearance = UINavigationBar.appearance()

        appearance.prefersLargeTitles = true
        appearance.tintColor = UIColor(named: "Important")
    }

    private func configureTabBarAppearance() {
        let appearance = UITabBar.appearance()

        appearance.tintColor = UIColor(named: "Important")
        appearance.unselectedItemTintColor = UIColor(named: "Unimportant")
    }

    // MARK: - UIApplicationDelegate

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        configureNavigationBarAppearance()
        configureTabBarAppearance()

        return true
    }

    func application(
        _ application: UIApplication,
        configurationForConnecting connectingSceneSession: UISceneSession,
        options: UIScene.ConnectionOptions
    ) -> UISceneConfiguration {
        UISceneConfiguration(
            name: "Default",
            sessionRole: connectingSceneSession.role
        )
    }
}
