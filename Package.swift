// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "trueid-community",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
//        .executable(name: "trueid-community", targets: ["trueid-community"])
        .library(
            name: "trueid-community",
            targets: ["trueid-community","AmityUIKit", "AmitySDK", "Realm"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", from: "5.0.1"),
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.4.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
                   name: "AmityUIKit",
                   url: "https://s3-ap-southeast-1.amazonaws.com/ekosdk-release/ios-uikit-frameworks/2.4.3/AmityUIKit.xcframework.zip",
                   checksum: "6fe493bfa7b289a54905a18e525e97304a753686944f6999ee78e5f8c7293720"
               ),
               .binaryTarget(
                   name: "AmitySDK",
                   url: "https://s3-ap-southeast-1.amazonaws.com/ekosdk-release/ios-uikit-frameworks/2.4.3/AmitySDK.xcframework.zip",
                   checksum: "b3668000455a7fd10a9c718ec5c6f5e570190cebe564e06ae085e2cef8a043d0"
               ),
               .binaryTarget(
                   name: "Realm",
                   url: "https://s3-ap-southeast-1.amazonaws.com/ekosdk-release/ios-uikit-frameworks/2.4.3/Realm.xcframework.zip",
                   checksum: "6d8e472570e97656448ace2798c2e550af111fda281fd5ca25cf9fbad557e58f"
               ),
        .target(
            name: "trueid-community",
            dependencies: ["SwiftyJSON", "Alamofire"]),
        .testTarget(
            name: "trueid-communityTests",
            dependencies: ["trueid-community"]),
    ],
    swiftLanguageVersions: [.v5]
)
