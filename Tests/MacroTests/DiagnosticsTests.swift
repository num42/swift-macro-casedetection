import MacroTester
import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import Testing

#if canImport(CaseDetectionMacros)
  import CaseDetectionMacros

  @Suite struct CaseDetectionMacroDiagnosticsTests {
    let testMacros: [String: Macro.Type] = [
      "CaseDetection": CaseDetectionMacro.self
    ]

    @Test func structThrowsError() throws {
      assertMacroExpansion(
        """
        @CaseDetection
        struct AStruct {}
        """,
        expandedSource: """
          struct AStruct {}
          """,
        diagnostics: [
          .init(
            message: CaseDetectionMacro.MacroDiagnostic.requiresEnum.message,
            line: 1,
            column: 1
          )
        ],
        macros: testMacros
      )
    }
  }
#endif
