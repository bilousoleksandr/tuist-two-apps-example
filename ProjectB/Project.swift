import ProjectDescription

let project = Project(
    name: "ProjectB",
    targets: [
        .target(
            name: "AppB",
            destinations: .macOS,
            product: .app,
            bundleId: "io.tuist.tuist-two-apps-example",
            infoPlist: .default,
            sources: ["AppB/Sources/**"],
            resources: ["AppB/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "FrameworkC",
            destinations: .macOS,
            product: .framework,
            bundleId: "io.tuist.FrameworkC",
            infoPlist: .default,
            sources: ["FrameworkC/Sources/**"]
        )
    ],
    schemes: [
        .scheme(
            name: "AppB",
            buildAction: .buildAction(
                targets: [
                    .target("AppB"),
                    .target("FrameworkC"),
                    // Doesn't added to scheme because is not the part of ProjectB
//                    .target("FrameworkB"),
                    // Doesn't added to scheme because is not the part of ProjectB and fails on tuist generate
//                    .project(path: .relativeToRoot("../Frameworks"), target: "FrameworkB")
                ]
            ), runAction: .runAction()
        )
    ]
)
