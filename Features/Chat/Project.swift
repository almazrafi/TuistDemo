import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.feature(
    name: "Chat",
    packages: [],
    dependencies: [
        .cocoapods(path: .relativeToRoot("."))
    ]
)
