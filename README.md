# CaseDetection

Adds `is<Case>` helpers for enum cases.

## Requirements

- Swift 6.3 toolchain or later (tested with Xcode 27)
- Platforms: macOS 14, iOS 13, tvOS 13, watchOS 6, macCatalyst 13

## Usage

```swift
enum TestEnum {
  case firstCase
  case secondCase

    var isFirstCase: Bool {
      if case .firstCase = self {
        true
      } else {
        false
      }
    }

    var isSecondCase: Bool {
      if case .secondCase = self {
        true
      } else {
        false
      }
    }
}
```

## Notes

Apply to enums only.
