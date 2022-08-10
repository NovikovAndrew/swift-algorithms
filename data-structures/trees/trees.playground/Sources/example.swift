public func example(of title: String, _ complition: @escaping () -> Void) {
    print(title)
    complition()
}
