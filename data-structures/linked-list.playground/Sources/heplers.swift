public func example(_ label: String, _ closure: @escaping () -> ()) {
    print(label)
    closure()
}
