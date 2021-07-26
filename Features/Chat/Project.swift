import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.feature(
    name: "Chat",
    packages: [
        .remote(
            url: "https://github.com/SnapKit/SnapKit.git",
            requirement: .upToNextMajor(from: "5.0.1")
        )
    ],
    dependencies: [.package(product: "SnapKit")]
)
