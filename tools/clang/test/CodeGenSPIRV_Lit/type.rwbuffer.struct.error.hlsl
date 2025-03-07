// RUN: not %dxc -T vs_6_0 -E main -fcgl  %s -spirv  2>&1 | FileCheck %s

struct S {
  float a;
  float b;
};

// CHECK: error: cannot instantiate RWBuffer with struct type 'S'
RWBuffer<S> MyRWBuffer;

float4 main() : A {
  return 1.0;
}
