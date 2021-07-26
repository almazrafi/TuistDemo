import ProjectDescription

let target = Target(
    name: "App",
    platform: .iOS,
    product: .app,
    bundleId: "io.tuist.Demo",
    deploymentTarget: .iOS(targetVersion: "13.0", devices: .iphone),
    infoPlist: "App/Info.plist",
    sources: ["App/**"],
    resources: [
        "App/Resources/**",
        "App/**/*.storyboard"
    ],
    dependencies: [
        .package(product: "SnapKit"),
        .project(target: "Chat", path: "Features/Chat")
    ],
    settings: Settings(
        configurations: [
            .debug(
                name: "Debug",
                xcconfig: "App/Configurations/Debug.xcconfig"
            ),
            .release(
                name: "Release",
                settings: SettingsDictionary()
                    .bitcodeEnabled(true)
                    .swiftCompilationMode(.wholemodule)
            ),
            .release(
                name: "Beta",
                xcconfig: "App/Configurations/Beta.xcconfig"
            )
        ]
    )
)

let project = Project(
    name: "TuistDemo",
    packages: [
        .remote(
            url: "https://github.com/SnapKit/SnapKit.git",
            requirement: .upToNextMajor(from: "5.0.1")
        )
    ],
    targets: [target]
)
