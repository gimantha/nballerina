@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca double
  %f = alloca double
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i64
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %17, label %8
8:
  %9 = call i8 addrspace(1)* @_B_g()
  store i8 addrspace(1)* %9, i8 addrspace(1)** %1
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  %11 = addrspacecast i8 addrspace(1)* %10 to i8*
  %12 = ptrtoint i8* %11 to i64
  %13 = and i64 %12, 2233785415175766016
  %14 = icmp eq i64 %13, 576460752303423488
  br i1 %14, label %18, label %23
15:
  %16 = load i64, i64* %4
  call void @_bal_panic(i64 %16)
  unreachable
17:
  call void @_bal_panic(i64 772)
  unreachable
18:
  %19 = call double @_bal_tagged_to_float(i8 addrspace(1)* %10)
  store double %19, double* %2
  %20 = load double, double* %2
  store double %20, double* %f
  %21 = load double, double* %f
  %22 = call i8 addrspace(1)* @_bal_float_to_tagged(double %21)
  call void @_Bio__println(i8 addrspace(1)* %22)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  ret void
23:
  store i64 1027, i64* %4
  br label %15
}
define i8 addrspace(1)* @_B_g() {
  %1 = alloca i8
  %2 = load i8*, i8** @_bal_stack_guard
  %3 = icmp ult i8* %1, %2
  br i1 %3, label %8, label %4
4:
  %5 = zext i1 0 to i64
  %6 = or i64 %5, 72057594037927936
  %7 = getelementptr i8, i8 addrspace(1)* null, i64 %6
  ret i8 addrspace(1)* %7
8:
  call void @_bal_panic(i64 2052)
  unreachable
}
