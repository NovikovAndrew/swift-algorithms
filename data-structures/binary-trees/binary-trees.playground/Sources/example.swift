public func example(of: String, _ compliton: @escaping () -> Void) {
    print("\n\(of)")
    compliton()
}
