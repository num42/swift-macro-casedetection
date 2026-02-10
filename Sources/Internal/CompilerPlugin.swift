internal import SwiftCompilerPlugin
internal import SwiftSyntaxMacros

@main
struct CaseDetectionPlugin: CompilerPlugin {
  let providingMacros: [Macro.Type] = [
    CaseDetectionMacro.self
  ]
}
