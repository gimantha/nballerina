import ballerina/io;

public function main() {
    int[] iv = [1, 2, 3];
    any v = iv;
    int[] iv2 = <int[]>v;
    io:println(iv2); // @output [1,2,3]
    io:println(iv === iv2); // @output true
}
