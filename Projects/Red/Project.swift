import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "Red",
    organizationName: "bitlucas.module.red",
    packages: [],
    targets: [
        .init(
            name: "Red",
            destinations: .iOS,
            product: .framework,
            bundleId: "bitlucas.red.module",
            sources: ["Sources/**/*.swift"],
            dependencies: [
                .project(target: "RedContract", path: .relativeToManifest("./"))
            ]
        ),
        .init(
            name: "RedContract",
            destinations: .iOS,
            product: .framework,
            bundleId: "bitlucas.red.contract",
            sources: ["Contract/**/*.swift"]
        )
    ])
