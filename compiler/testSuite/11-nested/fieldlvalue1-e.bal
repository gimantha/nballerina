type A record {|
    B b;
|};

type B record {|
    C c;
|};

type C record {|
    int i;
|};

public function main() {
    A a = {b: {c: {i: 1}}};
    a.b.c.i.x = 32; // @error
}
