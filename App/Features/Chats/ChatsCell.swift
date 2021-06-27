import UIKit

final class ChatsCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!

    var title: String {
        get { titleLabel.text ?? "" }
        set { titleLabel.text = newValue }
    }

    var subtitle: String {
        get { subtitleLabel.text ?? "" }
        set { subtitleLabel.text = newValue }
    }
}
