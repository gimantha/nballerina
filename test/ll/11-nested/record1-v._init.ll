%UniformSubtype = type {i1(%UniformSubtype*, i8 addrspace(1)*)*}
%Type0 = type {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, [2 x {i8 addrspace(1)*, i32}]}
@_Bi04root0 = constant {i32, i32, i64, [2 x i64]} {i32 0, i32 2, i64 1, [2 x i64] [i64 2049, i64 2049]}
@.subtype0 = internal constant %Type0 {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_record_subtype_contains, i32 2, [2 x {i8 addrspace(1)*, i32}] [{i8 addrspace(1)*, i32} {i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475944272357734), i32 1024}, {i8 addrspace(1)*, i32} {i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541289652588), i32 1024}]}, align 8
@.member0 = internal constant {i32, i32, [1 x %UniformSubtype*]} {i32 0, i32 524288, [1 x %UniformSubtype*] [%UniformSubtype* bitcast(%Type0* @.subtype0 to %UniformSubtype*)]}
@_Bi04root1 = constant {i32, i32, i64, [2 x i64]} {i32 1, i32 2, i64 1, [2 x i64] [i64 257, i64 ptrtoint({i32, i32, [1 x %UniformSubtype*]}* @.member0 to i64)]}
declare i1 @_bal_record_subtype_contains(%UniformSubtype*, i8 addrspace(1)*)
declare void @_B04rootmain()
define void @_bal_main() {
  call void @_B04rootmain()
  ret void
}