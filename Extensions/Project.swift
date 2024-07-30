import ProjectDescription

let project = Project(
    name: "Extensions",
    targets: [
        .target(
            name: "ExternalExtension",
            destinations: .macOS,
            product: .appExtension,
            bundleId: "io.tuist.ExternalExtension",
            infoPlist: .default,
            sources: ["ExternalExtension/**"]
        )
    ]
)
