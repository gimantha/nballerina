declare void @_Bio__println (i64)
define void @_B_main () {
  %_0 = alloca i8*
  %_1 = alloca i8*
  %_2 = alloca i8*
  %_3 = alloca i8*
  call void @_B_printIfFalse (i1 1)
  store i8* null, i8** %_0
  call void @_B_printIfFalse (i1 0)
  store i8* null, i8** %_1
  call void @_B_printIfTrue (i1 1)
  store i8* null, i8** %_2
  call void @_B_printIfTrue (i1 0)
  store i8* null, i8** %_3
  ret void
}
define internal void @_B_printIfFalse (i1 %_0) {
  %b = alloca i1
  %_1 = alloca i8*
  store i1 %_0, i1* %b
  %_2 = load i1, i1* %b
  br i1 %_2, label %L1, label %L2
L1:
  br label %L3
L2:
  call void @_Bio__println (i64 0)
  store i8* null, i8** %_1
  br label %L3
L3:
  ret void
}
define internal void @_B_printIfTrue (i1 %_0) {
  %b = alloca i1
  %_1 = alloca i8*
  store i1 %_0, i1* %b
  %_2 = load i1, i1* %b
  br i1 %_2, label %L1, label %L2
L1:
  call void @_Bio__println (i64 1)
  store i8* null, i8** %_1
  br label %L2
L2:
  ret void
}
