// RUN: not %dxc -T ps_6_6 -E main -fcgl %s -spirv 2>&1 | FileCheck %s

// CHECK: error: rasterizer ordered views are unimplemented
RasterizerOrderedStructuredBuffer<uint> rob;

void main() { }
