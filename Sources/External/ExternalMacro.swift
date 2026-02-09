/// Add computed properties named `is<Case>` for each case element in the enum.
@attached(member, names: arbitrary)
public macro CaseDetection(public: Bool = false) =
  #externalMacro(module: "CaseDetectionMacros", type: "CaseDetectionMacro")
