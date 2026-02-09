# CaseDetection

Adds `is<Case>` helpers for enum cases.

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
