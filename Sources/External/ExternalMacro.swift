@attached(member, names: arbitrary)
public macro CaseDetection(public: Bool = false) =
  #externalMacro(
    module: "CaseDetectionMacros",
    type: "CaseDetectionMacro"
  )
