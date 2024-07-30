import ProjectDescription

let project = Project(
    name: "Frameworks",
    targets: [
        .target(
            name: "FrameworkA",
            destinations: .macOS,
            product: .framework,
            bundleId: "io.tuist.FrameworkA",
            infoPlist: .default,
            sources: ["FrameworkA/Sources/**"]
        ),
        .target(
            name: "FrameworkB",
            destinations: .macOS,
            product: .framework,
            bundleId: "io.tuist.FrameworkB",
            infoPlist: .default,
            sources: ["FrameworkB/Sources/**"]
        )
    ]
)
