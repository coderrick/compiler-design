; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
; RUN: opt < %s -instsimplify -S | FileCheck %s

target datalayout = "e-m:e-p:32:32-i64:64-n32:64-S128"
target triple = "wasm32-unknown-unknown"

declare i32 @llvm.wasm.trunc.saturate.signed.i32.f32(float)
declare i32 @llvm.wasm.trunc.saturate.unsigned.i32.f32(float)
declare i32 @llvm.wasm.trunc.saturate.signed.i32.f64(double)
declare i32 @llvm.wasm.trunc.saturate.unsigned.i32.f64(double)
declare i64 @llvm.wasm.trunc.saturate.signed.i64.f32(float)
declare i64 @llvm.wasm.trunc.saturate.unsigned.i64.f32(float)
declare i64 @llvm.wasm.trunc.saturate.signed.i64.f64(double)
declare i64 @llvm.wasm.trunc.saturate.unsigned.i64.f64(double)

define void @test_i32_trunc_sat_f32_s(i32* %p) {
; CHECK-LABEL: @test_i32_trunc_sat_f32_s(
; CHECK-NEXT:    store volatile i32 0, i32* [[P:%.*]], align 4
; CHECK-NEXT:    store volatile i32 0, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 0, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 0, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 1, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 1, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 1, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 -1, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 -1, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 -1, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 -1, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 -2, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 2147483520, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 -2147483648, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 2147483647, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 -2147483648, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 2147483647, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 -2147483648, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 0, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 0, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 0, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 0, i32* [[P]], align 4
; CHECK-NEXT:    ret void
;
  %t0 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f32(float +0.0)
  store volatile i32 %t0, i32* %p
  %t1 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f32(float -0.0)
  store volatile i32 %t1, i32* %p
  %t2 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f32(float 0x36a0000000000000); 0x1p-149
  store volatile i32 %t2, i32* %p
  %t3 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f32(float 0xb6a0000000000000); -0x1p-149
  store volatile i32 %t3, i32* %p
  %t4 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f32(float 1.0)
  store volatile i32 %t4, i32* %p
  %t5 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f32(float 0x3ff19999a0000000); 0x1.19999ap+0
  store volatile i32 %t5, i32* %p
  %t6 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f32(float 1.5)
  store volatile i32 %t6, i32* %p
  %t7 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f32(float -1.0)
  store volatile i32 %t7, i32* %p
  %t8 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f32(float 0xbff19999a0000000); -0x1.19999ap+0
  store volatile i32 %t8, i32* %p
  %t9 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f32(float -1.5)
  store volatile i32 %t9, i32* %p
  %t10 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f32(float 0xbffe666660000000); -1.9
  store volatile i32 %t10, i32* %p
  %t11 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f32(float -2.0)
  store volatile i32 %t11, i32* %p
  %t12 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f32(float 2147483520.0)
  store volatile i32 %t12, i32* %p
  %t13 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f32(float -2147483648.0)
  store volatile i32 %t13, i32* %p
  %t14 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f32(float 2147483648.0)
  store volatile i32 %t14, i32* %p
  %t15 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f32(float -2147483904.0)
  store volatile i32 %t15, i32* %p
  %t16 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f32(float 0x7ff0000000000000); inf
  store volatile i32 %t16, i32* %p
  %t17 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f32(float 0xfff0000000000000); -inf
  store volatile i32 %t17, i32* %p
  %t18 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f32(float 0x7ff8000000000000); nan
  store volatile i32 %t18, i32* %p
  %t19 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f32(float 0x7ffa000000000000); nan:0x200000
  store volatile i32 %t19, i32* %p
  %t20 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f32(float 0xfff8000000000000); -nan
  store volatile i32 %t20, i32* %p
  %t21 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f32(float 0xfffa000000000000); -nan:0x200000
  store volatile i32 %t21, i32* %p
  ret void
}

define void @test_i32_trunc_sat_f32_u(i32* %p) {
; CHECK-LABEL: @test_i32_trunc_sat_f32_u(
; CHECK-NEXT:    store volatile i32 0, i32* [[P:%.*]], align 4
; CHECK-NEXT:    store volatile i32 0, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 0, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 0, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 1, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 1, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 1, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 1, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 2, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 -2147483648, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 -256, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 0, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 0, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 -1, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 0, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 -1, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 0, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 0, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 0, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 0, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 0, i32* [[P]], align 4
; CHECK-NEXT:    ret void
;
  %t0 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f32(float +0.0)
  store volatile i32 %t0, i32* %p
  %t1 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f32(float -0.0)
  store volatile i32 %t1, i32* %p
  %t2 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f32(float 0x36a0000000000000); 0x1p-149
  store volatile i32 %t2, i32* %p
  %t3 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f32(float 0xb6a0000000000000); -0x1p-149
  store volatile i32 %t3, i32* %p
  %t4 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f32(float 1.0)
  store volatile i32 %t4, i32* %p
  %t5 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f32(float 0x3ff19999a0000000); 0x1.19999ap+0
  store volatile i32 %t5, i32* %p
  %t6 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f32(float 1.5)
  store volatile i32 %t6, i32* %p
  %t7 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f32(float 0x3ffe666660000000); 1.9
  store volatile i32 %t7, i32* %p
  %t8 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f32(float 2.0)
  store volatile i32 %t8, i32* %p
  %t9 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f32(float 2147483648.0)
  store volatile i32 %t9, i32* %p
  %t10 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f32(float 4294967040.0)
  store volatile i32 %t10, i32* %p
  %t11 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f32(float 0xbfecccccc0000000); -0x1.ccccccp-1
  store volatile i32 %t11, i32* %p
  %t12 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f32(float 0xbfefffffe0000000); -0x1.fffffep-1
  store volatile i32 %t12, i32* %p
  %t13 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f32(float 4294967296.0)
  store volatile i32 %t13, i32* %p
  %t14 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f32(float -1.0)
  store volatile i32 %t14, i32* %p
  %t15 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f32(float 0x7ff0000000000000); inf
  store volatile i32 %t15, i32* %p
  %t16 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f32(float 0xfff0000000000000); -inf
  store volatile i32 %t16, i32* %p
  %t17 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f32(float 0x7ff8000000000000); nan
  store volatile i32 %t17, i32* %p
  %t18 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f32(float 0x7ffa000000000000); nan:0x200000
  store volatile i32 %t18, i32* %p
  %t19 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f32(float 0xfff8000000000000); -nan
  store volatile i32 %t19, i32* %p
  %t20 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f32(float 0xfffa000000000000); -nan:0x200000
  store volatile i32 %t20, i32* %p
  ret void
}

define void @test_i32_trunc_sat_f64_s(i32* %p) {
; CHECK-LABEL: @test_i32_trunc_sat_f64_s(
; CHECK-NEXT:    store volatile i32 0, i32* [[P:%.*]], align 4
; CHECK-NEXT:    store volatile i32 0, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 0, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 0, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 1, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 1, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 1, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 -1, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 -1, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 -1, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 -1, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 -2, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 2147483647, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 -2147483648, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 2147483647, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 -2147483648, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 2147483647, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 -2147483648, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 0, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 0, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 0, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 0, i32* [[P]], align 4
; CHECK-NEXT:    ret void
;
  %t0 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f64(double +0.0)
  store volatile i32 %t0, i32* %p
  %t1 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f64(double -0.0)
  store volatile i32 %t1, i32* %p
  %t2 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f64(double 0x0010000000000001); 0x0.0000000000001p-1022
  store volatile i32 %t2, i32* %p
  %t3 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f64(double 0x8010000000000001); -0x1.0000000000001p-1022
  store volatile i32 %t3, i32* %p
  %t4 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f64(double 1.0)
  store volatile i32 %t4, i32* %p
  %t5 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f64(double 0x3ff199999999999a); 0x1.199999999999ap+0
  store volatile i32 %t5, i32* %p
  %t6 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f64(double 1.5)
  store volatile i32 %t6, i32* %p
  %t7 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f64(double -1.0)
  store volatile i32 %t7, i32* %p
  %t8 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f64(double 0xbff199999999999a); -0x1.199999999999ap+0
  store volatile i32 %t8, i32* %p
  %t9 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f64(double -1.5)
  store volatile i32 %t9, i32* %p
  %t10 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f64(double 0xbffe666666666666); -1.9
  store volatile i32 %t10, i32* %p
  %t11 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f64(double -2.0)
  store volatile i32 %t11, i32* %p
  %t12 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f64(double 2147483647.0)
  store volatile i32 %t12, i32* %p
  %t13 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f64(double -2147483648.0)
  store volatile i32 %t13, i32* %p
  %t14 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f64(double 2147483648.0)
  store volatile i32 %t14, i32* %p
  %t15 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f64(double -2147483649.0)
  store volatile i32 %t15, i32* %p
  %t16 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f64(double 0x7ff0000000000000); inf
  store volatile i32 %t16, i32* %p
  %t17 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f64(double 0xfff0000000000000); -inf
  store volatile i32 %t17, i32* %p
  %t18 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f64(double 0x7ff8000000000000); nan
  store volatile i32 %t18, i32* %p
  %t19 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f64(double 0x7ff4000000000000); nan:0x4000000000000
  store volatile i32 %t19, i32* %p
  %t20 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f64(double 0xfff8000000000000); -nan
  store volatile i32 %t20, i32* %p
  %t21 = call i32 @llvm.wasm.trunc.saturate.signed.i32.f64(double 0x7ff4000000000000); -nan:0x4000000000000
  store volatile i32 %t21, i32* %p
  ret void
}

define void @test_i32_trunc_sat_f64_u(i32* %p) {
; CHECK-LABEL: @test_i32_trunc_sat_f64_u(
; CHECK-NEXT:    store volatile i32 0, i32* [[P:%.*]], align 4
; CHECK-NEXT:    store volatile i32 0, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 0, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 0, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 1, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 1, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 1, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 1, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 2, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 -2147483648, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 -1, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 0, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 0, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 100000000, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 -1, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 0, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 -1, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 -1, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 -1, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 -1, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 0, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 0, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 0, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 0, i32* [[P]], align 4
; CHECK-NEXT:    store volatile i32 0, i32* [[P]], align 4
; CHECK-NEXT:    ret void
;
  %t0 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f64(double +0.0)
  store volatile i32 %t0, i32* %p
  %t1 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f64(double -0.0)
  store volatile i32 %t1, i32* %p
  %t2 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f64(double 0x0010000000000001); 0x0.0000000000001p-1022
  store volatile i32 %t2, i32* %p
  %t3 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f64(double 0x8010000000000001); -0x0.0000000000001p-1022
  store volatile i32 %t3, i32* %p
  %t4 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f64(double 1.0)
  store volatile i32 %t4, i32* %p
  %t5 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f64(double 0x3ff199999999999a); 0x1.199999999999ap+0
  store volatile i32 %t5, i32* %p
  %t6 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f64(double 1.5)
  store volatile i32 %t6, i32* %p
  %t7 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f64(double 0x3ffe666666666666); 1.9
  store volatile i32 %t7, i32* %p
  %t8 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f64(double 2.0)
  store volatile i32 %t8, i32* %p
  %t9 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f64(double 2147483648.0)
  store volatile i32 %t9, i32* %p
  %t10 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f64(double 4294967295.0)
  store volatile i32 %t10, i32* %p
  %t11 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f64(double 0xbfeccccccccccccd); -0x1.ccccccccccccdp-1
  store volatile i32 %t11, i32* %p
  %t12 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f64(double 0xbfefffffffffffff); -0x1.fffffffffffffp-1
  store volatile i32 %t12, i32* %p
  %t13 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f64(double 100000000.0); 1e8
  store volatile i32 %t13, i32* %p
  %t14 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f64(double 4294967296.0)
  store volatile i32 %t14, i32* %p
  %t15 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f64(double -1.0)
  store volatile i32 %t15, i32* %p
  %t16 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f64(double 10000000000000000.0); 1e16
  store volatile i32 %t16, i32* %p
  %t17 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f64(double 1000000000000000000000000000000.0); 1e30
  store volatile i32 %t17, i32* %p
  %t18 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f64(double 9223372036854775808.0)
  store volatile i32 %t18, i32* %p
  %t19 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f64(double 0x7ff0000000000000); inf
  store volatile i32 %t19, i32* %p
  %t20 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f64(double 0xfff0000000000000); -inf
  store volatile i32 %t20, i32* %p
  %t21 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f64(double 0x7ff8000000000000); nan
  store volatile i32 %t21, i32* %p
  %t22 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f64(double 0x7ff4000000000000); nan:0x4000000000000
  store volatile i32 %t22, i32* %p
  %t23 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f64(double 0xfff8000000000000); -nan
  store volatile i32 %t23, i32* %p
  %t24 = call i32 @llvm.wasm.trunc.saturate.unsigned.i32.f64(double 0xfff4000000000000); -nan:0x4000000000000
  store volatile i32 %t24, i32* %p
  ret void
}

define void @test_i64_trunc_sat_f32_s(i64* %p) {
; CHECK-LABEL: @test_i64_trunc_sat_f32_s(
; CHECK-NEXT:    store volatile i64 0, i64* [[P:%.*]], align 8
; CHECK-NEXT:    store volatile i64 0, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 0, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 0, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 1, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 1, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 1, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 -1, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 -1, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 -1, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 -1, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 -2, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 4294967296, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 -4294967296, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 9223371487098961920, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 -9223372036854775808, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 9223372036854775807, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 -9223372036854775808, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 9223372036854775807, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 -9223372036854775808, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 0, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 0, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 0, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 0, i64* [[P]], align 8
; CHECK-NEXT:    ret void
;
  %t0 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f32(float +0.0)
  store volatile i64 %t0, i64* %p
  %t1 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f32(float -0.0)
  store volatile i64 %t1, i64* %p
  %t2 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f32(float 0x36a0000000000000); 0x1p-149
  store volatile i64 %t2, i64* %p
  %t3 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f32(float 0xb6a0000000000000); -0x1p-149
  store volatile i64 %t3, i64* %p
  %t4 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f32(float 1.0)
  store volatile i64 %t4, i64* %p
  %t5 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f32(float 0x3ff19999a0000000); 0x1.19999ap+0
  store volatile i64 %t5, i64* %p
  %t6 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f32(float 1.5)
  store volatile i64 %t6, i64* %p
  %t7 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f32(float -1.0)
  store volatile i64 %t7, i64* %p
  %t8 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f32(float 0xbff19999a0000000); -0x1.19999ap+0
  store volatile i64 %t8, i64* %p
  %t9 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f32(float -1.5)
  store volatile i64 %t9, i64* %p
  %t10 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f32(float 0xbffe666660000000); -1.9
  store volatile i64 %t10, i64* %p
  %t11 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f32(float -2.0)
  store volatile i64 %t11, i64* %p
  %t12 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f32(float 4294967296.0)
  store volatile i64 %t12, i64* %p
  %t13 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f32(float -4294967296.0)
  store volatile i64 %t13, i64* %p
  %t14 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f32(float 9223371487098961920.0)
  store volatile i64 %t14, i64* %p
  %t15 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f32(float -9223372036854775808.0)
  store volatile i64 %t15, i64* %p
  %t16 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f32(float 9223372036854775808.0)
  store volatile i64 %t16, i64* %p
  %t17 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f32(float -9223373136366403584.0)
  store volatile i64 %t17, i64* %p
  %t18 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f32(float 0x7ff0000000000000); inf
  store volatile i64 %t18, i64* %p
  %t19 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f32(float 0xfff0000000000000); -inf
  store volatile i64 %t19, i64* %p
  %t20 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f32(float 0x7ff8000000000000); nan
  store volatile i64 %t20, i64* %p
  %t21 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f32(float 0x7ffa000000000000); nan:0x200000
  store volatile i64 %t21, i64* %p
  %t22 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f32(float 0xfff8000000000000); -nan
  store volatile i64 %t22, i64* %p
  %t23 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f32(float 0xfffa000000000000); -nan:0x200000
  store volatile i64 %t23, i64* %p
  ret void
}

define void @test_i64_trunc_sat_f32_u(i64* %p) {
; CHECK-LABEL: @test_i64_trunc_sat_f32_u(
; CHECK-NEXT:    store volatile i64 0, i64* [[P:%.*]], align 8
; CHECK-NEXT:    store volatile i64 0, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 0, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 0, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 1, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 1, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 1, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 4294967296, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 -1099511627776, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 0, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 0, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 -1, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 0, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 -1, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 0, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 0, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 0, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 0, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 0, i64* [[P]], align 8
; CHECK-NEXT:    ret void
;
  %t0 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f32(float +0.0)
  store volatile i64 %t0, i64* %p
  %t1 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f32(float -0.0)
  store volatile i64 %t1, i64* %p
  %t2 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f32(float 0x36a0000000000000); 0x1p-149
  store volatile i64 %t2, i64* %p
  %t3 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f32(float 0xb6a0000000000000); -0x1p-149
  store volatile i64 %t3, i64* %p
  %t4 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f32(float 1.0)
  store volatile i64 %t4, i64* %p
  %t5 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f32(float 0x3ff19999a0000000); 0x1.19999ap+0
  store volatile i64 %t5, i64* %p
  %t6 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f32(float 1.5)
  store volatile i64 %t6, i64* %p
  %t7 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f32(float 4294967296.0)
  store volatile i64 %t7, i64* %p
  %t8 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f32(float 18446742974197923840.0)
  store volatile i64 %t8, i64* %p
  %t9 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f32(float 0xbfecccccc0000000); -0x1.ccccccp-1
  store volatile i64 %t9, i64* %p
  %t10 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f32(float 0xbfefffffe0000000); -0x1.fffffep-1
  store volatile i64 %t10, i64* %p
  %t11 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f32(float 18446744073709551616.0)
  store volatile i64 %t11, i64* %p
  %t12 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f32(float -1.0)
  store volatile i64 %t12, i64* %p
  %t13 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f32(float 0x7ff0000000000000); inf
  store volatile i64 %t13, i64* %p
  %t14 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f32(float 0xfff0000000000000); -inf
  store volatile i64 %t14, i64* %p
  %t15 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f32(float 0x7ff8000000000000); nan
  store volatile i64 %t15, i64* %p
  %t16 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f32(float 0x7ffa000000000000); nan:0x200000
  store volatile i64 %t16, i64* %p
  %t17 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f32(float 0xfff8000000000000); -nan
  store volatile i64 %t17, i64* %p
  %t18 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f32(float 0xfffa000000000000); -nan:0x200000
  store volatile i64 %t18, i64* %p
  ret void
}

define void @test_i64_trunc_sat_f64_s(i64* %p) {
; CHECK-LABEL: @test_i64_trunc_sat_f64_s(
; CHECK-NEXT:    store volatile i64 0, i64* [[P:%.*]], align 8
; CHECK-NEXT:    store volatile i64 0, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 0, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 0, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 1, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 1, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 1, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 -1, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 -1, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 -1, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 -1, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 -2, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 4294967296, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 -4294967296, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 9223372036854774784, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 -9223372036854775808, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 9223372036854775807, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 -9223372036854775808, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 9223372036854775807, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 -9223372036854775808, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 0, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 0, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 0, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 0, i64* [[P]], align 8
; CHECK-NEXT:    ret void
;
  %t0 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f64(double +0.0)
  store volatile i64 %t0, i64* %p
  %t1 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f64(double -0.0)
  store volatile i64 %t1, i64* %p
  %t2 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f64(double 0x0010000000000001); 0x0.0000000000001p-1022
  store volatile i64 %t2, i64* %p
  %t3 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f64(double 0x8010000000000001); -0x1.0000000000001p-1022
  store volatile i64 %t3, i64* %p
  %t4 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f64(double 1.0)
  store volatile i64 %t4, i64* %p
  %t5 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f64(double 0x3ff199999999999a); 0x1.199999999999ap+0
  store volatile i64 %t5, i64* %p
  %t6 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f64(double 1.5)
  store volatile i64 %t6, i64* %p
  %t7 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f64(double -1.0)
  store volatile i64 %t7, i64* %p
  %t8 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f64(double 0xbff199999999999a); -0x1.199999999999ap+0
  store volatile i64 %t8, i64* %p
  %t9 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f64(double -1.5)
  store volatile i64 %t9, i64* %p
  %t10 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f64(double 0xbffe666666666666); -1.9
  store volatile i64 %t10, i64* %p
  %t11 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f64(double -2.0)
  store volatile i64 %t11, i64* %p
  %t12 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f64(double 4294967296.0)
  store volatile i64 %t12, i64* %p
  %t13 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f64(double -4294967296.0)
  store volatile i64 %t13, i64* %p
  %t14 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f64(double 9223372036854774784.0)
  store volatile i64 %t14, i64* %p
  %t15 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f64(double -9223372036854775808.0)
  store volatile i64 %t15, i64* %p
  %t16 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f64(double 9223372036854775808.0)
  store volatile i64 %t16, i64* %p
  %t17 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f64(double -9223372036854777856.0)
  store volatile i64 %t17, i64* %p
  %t18 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f64(double 0x7ff0000000000000); inf
  store volatile i64 %t18, i64* %p
  %t19 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f64(double 0xfff0000000000000); -inf
  store volatile i64 %t19, i64* %p
  %t20 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f64(double 0x7ff8000000000000); nan
  store volatile i64 %t20, i64* %p
  %t21 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f64(double 0x7ff4000000000000); nan:0x4000000000000
  store volatile i64 %t21, i64* %p
  %t22 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f64(double 0xfff8000000000000); -nan
  store volatile i64 %t22, i64* %p
  %t23 = call i64 @llvm.wasm.trunc.saturate.signed.i64.f64(double 0x7ff4000000000000); -nan:0x4000000000000
  store volatile i64 %t23, i64* %p
  ret void
}

define void @test_i64_trunc_sat_f64_u(i64* %p) {
; CHECK-LABEL: @test_i64_trunc_sat_f64_u(
; CHECK-NEXT:    store volatile i64 0, i64* [[P:%.*]], align 8
; CHECK-NEXT:    store volatile i64 0, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 0, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 0, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 1, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 1, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 1, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 4294967295, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 4294967296, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 -2048, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 0, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 0, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 100000000, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 10000000000000000, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 -9223372036854775808, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 -1, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 0, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 -1, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 0, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 0, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 0, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 0, i64* [[P]], align 8
; CHECK-NEXT:    store volatile i64 0, i64* [[P]], align 8
; CHECK-NEXT:    ret void
;
  %t0 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f64(double +0.0)
  store volatile i64 %t0, i64* %p
  %t1 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f64(double -0.0)
  store volatile i64 %t1, i64* %p
  %t2 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f64(double 0x0010000000000001); 0x0.0000000000001p-1022
  store volatile i64 %t2, i64* %p
  %t3 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f64(double 0x8010000000000001); -0x0.0000000000001p-1022
  store volatile i64 %t3, i64* %p
  %t4 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f64(double 1.0)
  store volatile i64 %t4, i64* %p
  %t5 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f64(double 0x3ff199999999999a); 0x1.199999999999ap+0
  store volatile i64 %t5, i64* %p
  %t6 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f64(double 1.5)
  store volatile i64 %t6, i64* %p
  %t7 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f64(double 4294967295.0)
  store volatile i64 %t7, i64* %p
  %t8 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f64(double 4294967296.0)
  store volatile i64 %t8, i64* %p
  %t9 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f64(double 18446744073709549568.0)
  store volatile i64 %t9, i64* %p
  %t10 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f64(double 0xbfeccccccccccccd); -0x1.ccccccccccccdp-1
  store volatile i64 %t10, i64* %p
  %t11 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f64(double 0xbfefffffffffffff); -0x1.fffffffffffffp-1
  store volatile i64 %t11, i64* %p
  %t12 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f64(double 100000000.0); 1e8
  store volatile i64 %t12, i64* %p
  %t13 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f64(double 10000000000000000.0); 1e16
  store volatile i64 %t13, i64* %p
  %t14 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f64(double 9223372036854775808.0);
  store volatile i64 %t14, i64* %p
  %t15 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f64(double 18446744073709551616.0)
  store volatile i64 %t15, i64* %p
  %t16 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f64(double -1.0)
  store volatile i64 %t16, i64* %p
  %t17 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f64(double 0x7ff0000000000000); inf
  store volatile i64 %t17, i64* %p
  %t18 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f64(double 0xfff0000000000000); -inf
  store volatile i64 %t18, i64* %p
  %t19 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f64(double 0x7ff8000000000000); nan
  store volatile i64 %t19, i64* %p
  %t20 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f64(double 0x7ff4000000000000); nan:0x4000000000000
  store volatile i64 %t20, i64* %p
  %t21 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f64(double 0xfff8000000000000); -nan
  store volatile i64 %t21, i64* %p
  %t22 = call i64 @llvm.wasm.trunc.saturate.unsigned.i64.f64(double 0xfff4000000000000); -nan:0x4000000000000
  store volatile i64 %t22, i64* %p
  ret void
}
