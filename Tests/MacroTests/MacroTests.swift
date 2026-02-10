internal import MacroTester
internal import SwiftSyntaxMacros
internal import SwiftSyntaxMacrosTestSupport
internal import Testing

#if canImport(CaseDetectionMacros)
  import CaseDetectionMacros

  private let testMacros: [String: Macro.Type] = [
    "CaseDetection": CaseDetectionMacro.self
  ]

  @Suite struct CaseDetectionMacroTests {
    @Test func caseDetection() {
      MacroTester.testMacro(macros: testMacros)
    }

    @Test func publicCaseDetection() {
      MacroTester.testMacro(macros: testMacros)
    }

    @Test func emptyEnumCaseDetection() {
      MacroTester.testMacro(macros: testMacros)
    }

    @Test func complicatedEnumCaseDetection() {
      MacroTester.testMacro(macros: testMacros)
    }
  }
#endif
