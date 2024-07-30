import ProjectDescription

let project = Project(
    name: "ProjectA",
    targets: [
        .target(
            name: "AppA",
            destinations: .macOS,
            product: .app,
            bundleId: "io.tuist.tuist-two-apps-example",
            infoPlist: .default,
            sources: ["AppA/Sources/**"],
            resources: ["AppA/Resources/**"],
            dependencies: [
                .project(target: "FrameworkA", path: "../Frameworks"),
                .project(target: "ExternalExtension", path: "../Extensions"),
                .target(name: "Extension"),
            ]
        ),
        .target(
            name: "Extension",
            destinations: .macOS,
            product: .appExtension,
            bundleId: "io.tuist.Extension",
            infoPlist: .default,
            sources: ["Extension/Sources/**"],
            resources: ["Extension/Resources/**"]
        )
    ]
)
