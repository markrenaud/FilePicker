# FilePicker
> A cross platform file picker for SwiftUI.

[![License][license-image]][license-url]

The `FilePicker` package implements a SwiftUI view that can be used in **both** iOS and macOS.
The `FilePicker`  provides a `Button` that presents a platform-native file picker that is a modern way for use in SwiftUI.

## Installation

Add the `FilePicker` package to your Xcode project using the package manager.
Import `FilePicker` to your file.

If you are using the package with macOS, ensure that you grant appropriate `File Access` permissions for `User Selected File` under `Signing & Capabilities`  (on the macOS target)

## Example Usage

```swift
import SwiftUI
import FilePicker

struct DebugView: View {
    
    var body: some View {
        HStack {
            //  
        
            // Use custom content for the button label
            FilePicker(types: [.plainText], allowMultiple: true) { urls in
                print("selected \(urls.count) files")
            } label: {
                HStack {
                    Image(systemName: "doc.on.doc")
                    Text("Pick Files")
                }
            }
            
            FilePicker(types: [.plainText], allowMultiple: false, title: "pick single file") { urls in
                print("selected \(urls.count) files")
            }
            
        }
    }
    
}
```

## Licence
Distributed under the MIT license. See ``LICENSE`` for more information.

[license-image]: https://img.shields.io/badge/License-MIT-blue.svg
[license-url]: LICENSE
