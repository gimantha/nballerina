// @productions map-type-descriptor mapping-constructor-expr string-literal equality if-else-stmt equality-expr floating-point-literal additive-expr local-var-decl-stmt
import ballerina/io;

public function main() {
    map<float> m = {x: 1.5, y: 2.0};
    float? x = m["x"];
    float? y = m["y"];
    if x != () {
        if y != () {
            io:println(x + y); // @output 3.5
        }
    }
}
