import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "Main",
    organizationName: "bitlucas.module.main",
    targets: [
        .init(
            name: "Main",
            destinations: .iOS,
            product: .app,
            bundleId: "bitlucas.module.main",
            sources: ["Sources/**/*.swift"],
            dependencies: [
                .project(target: "Red", path: .relativeToManifest("../Red")),
                .project(target: "RedContract", path: .relativeToManifest("../Red"))
            ]
        )
    ]
)
