define i64 @foo1 () {
  ret i64 42
}
define i64 @foo2 () {
  %_0 = alloca i64
  store i64 42, i64* %_0
  %_1 = load i64, i64* %_0
  ret i64 %_1
}
