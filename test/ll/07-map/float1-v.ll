@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct(i64, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %m = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %y = alloca i8 addrspace(1)*
  %4 = alloca i1
  %x.1 = alloca double
  %5 = alloca i1
  %y.1 = alloca double
  %6 = alloca double
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8
  %9 = load i8*, i8** @_bal_stack_guard
  %10 = icmp ult i8* %8, %9
  br i1 %10, label %41, label %11
11:
  %12 = call i8 addrspace(1)* @_bal_mapping_construct(i64 256, i64 2)
  %13 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.5)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %12, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %13)
  %14 = call i8 addrspace(1)* @_bal_float_to_tagged(double 2.0)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %12, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i8 addrspace(1)* %14)
  store i8 addrspace(1)* %12, i8 addrspace(1)** %1
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %15, i8 addrspace(1)** %m
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %17 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %16, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112))
  store i8 addrspace(1)* %17, i8 addrspace(1)** %2
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %18, i8 addrspace(1)** %x
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %20 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %19, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113))
  store i8 addrspace(1)* %20, i8 addrspace(1)** %3
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %21, i8 addrspace(1)** %y
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %23 = icmp ne i8 addrspace(1)* %22, null
  store i1 %23, i1* %4
  %24 = load i1, i1* %4
  br i1 %24, label %25, label %40
25:
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %27 = call double @_bal_tagged_to_float(i8 addrspace(1)* %26)
  store double %27, double* %x.1
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %29 = icmp ne i8 addrspace(1)* %28, null
  store i1 %29, i1* %5
  %30 = load i1, i1* %5
  br i1 %30, label %31, label %39
31:
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %33 = call double @_bal_tagged_to_float(i8 addrspace(1)* %32)
  store double %33, double* %y.1
  %34 = load double, double* %x.1
  %35 = load double, double* %y.1
  %36 = fadd double %34, %35
  store double %36, double* %6
  %37 = load double, double* %6
  %38 = call i8 addrspace(1)* @_bal_float_to_tagged(double %37)
  call void @_Bio__println(i8 addrspace(1)* %38)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  br label %39
39:
  br label %40
40:
  ret void
41:
  %42 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %42)
  unreachable
}
