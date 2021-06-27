import UIKit

#if canImport(Chat)
import Chat
#endif

final class ChatsViewController: UITableViewController {

    private var chatCount = Int.random(in: 3...10)

    private func showChat(id: Int) {
        #if canImport(Chat)
        navigationController?.pushViewController(
            ChatViewController(chatID: id),
            animated: true
        )
        #else
        let alert = UIAlertController(
            title: "Complete the training",
            message: "You need to add a new feature to the project",
            preferredStyle: .alert
        )

        alert.addAction(UIAlertAction(title: "OK", style: .cancel))

        present(alert, animated: true)
        #endif
    }
}

extension ChatsViewController {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        chatCount
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChatsCell", for: indexPath)

        if let cell = cell as? ChatsCell {
            cell.title = "Chat \(indexPath.row)"
            cell.subtitle = "Empty chat"
        }

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)

        showChat(id: indexPath.item)
    }
}
