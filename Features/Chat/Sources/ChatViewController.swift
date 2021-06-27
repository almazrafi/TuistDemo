import UIKit
import SnapKit

public class ChatViewController: UIViewController {

    private lazy var messageLabel = UILabel()

    let chatID: Int

    public init(chatID: Int) {
        self.chatID = chatID

        super.init(nibName: nil, bundle: nil)

        title = "Chat \(chatID)"
        hidesBottomBarWhenPushed = true
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func configureMessageLabel() {
        view.addSubview(messageLabel)

        messageLabel.text = "Hooray! You made it!"
        messageLabel.font = .systemFont(ofSize: 24.0)

        messageLabel.textColor = UIColor(
            named: "Title",
            in: Bundle.main,
            compatibleWith: nil
        )

        messageLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }

    public override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(
            named: "Background",
            in: Bundle.main,
            compatibleWith: nil
        )

        configureMessageLabel()
    }
}
