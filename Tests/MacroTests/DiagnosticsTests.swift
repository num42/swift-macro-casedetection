internal import SwiftSyntaxMacrosGenericTestSupport
internal import Testing

#if canImport(CaseDetectionMacros)
  import CaseDetectionMacros

  @Suite
  struct CaseDetectionDiagnosticsTests {
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
