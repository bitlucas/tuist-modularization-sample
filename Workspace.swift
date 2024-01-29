import ProjectDescription
import ProjectDescriptionHelpers
import MyPlugin

/*
                +-------------+
                |             |
                |     App     | Contains ModTuist App target and ModTuist unit-test target
                |             |
         +------+-------------+-------+
         |         depends on         |
         |                            |
 +----v-----+                   +-----v-----+
 |          |                   |           |
 |   Kit    |                   |     UI    |   Two independent frameworks to share code and start modularising your app
 |          |                   |           |
 +----------+                   +-----------+

 */

// MARK: - Project

import Foundation
import ProjectDescription
import ProjectDescriptionHelpers

let workspace = Workspace(
    name: "Modular",
    projects: [
        "Projects/Main",
        "Projects/Red"
    ]
)
