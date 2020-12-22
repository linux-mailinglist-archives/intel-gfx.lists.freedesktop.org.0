Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A722E0A92
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Dec 2020 14:24:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E3C76E86A;
	Tue, 22 Dec 2020 13:24:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41A666E85F;
 Tue, 22 Dec 2020 13:24:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23402538-1500050 
 for multiple; Tue, 22 Dec 2020 13:23:55 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Dec 2020 13:23:54 +0000
Message-Id: <20201222132354.2914268-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.30.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/perf_pmu: Measure accuracy of
 busyness
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: igt-dev@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Create a delay loop for a specific duration and see what PMU reports as
how long it was running, and check that it fits to a linear regression.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/perf_pmu.c | 269 +++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 266 insertions(+), 3 deletions(-)

diff --git a/tests/i915/perf_pmu.c b/tests/i915/perf_pmu.c
index da06a28b0..183090553 100644
--- a/tests/i915/perf_pmu.c
+++ b/tests/i915/perf_pmu.c
@@ -29,6 +29,7 @@
 #include <inttypes.h>
 #include <errno.h>
 #include <signal.h>
+#include <sys/ioctl.h>
 #include <sys/stat.h>
 #include <sys/time.h>
 #include <sys/times.h>
@@ -51,6 +52,8 @@
 
 IGT_TEST_DESCRIPTION("Test the i915 pmu perf interface");
 
+#define NSEC64 ((uint64_t)NSEC_PER_SEC)
+
 const double tolerance = 0.05f;
 const unsigned long batch_duration_ns = 500e6;
 
@@ -1784,9 +1787,6 @@ accuracy(int gem_fd, const struct intel_execution_engine2 *e,
 	int link[2];
 	int fd;
 
-	/* Sampling platforms cannot reach the high accuracy criteria. */
-	igt_require(gem_scheduler_has_engine_busy_stats(gem_fd));
-
 	/* Aim for approximately 100 iterations for calibration */
 	cycle_us = min_test_us / target_iters;
 	busy_us = cycle_us * target_busy_pct / 100;
@@ -1918,6 +1918,253 @@ accuracy(int gem_fd, const struct intel_execution_engine2 *e,
 	assert_within(100.0 * busy_r, 100.0 * expected, 2);
 }
 
+static uint32_t __batch_create(int i915, uint32_t offset)
+{
+	const uint32_t bbe = MI_BATCH_BUFFER_END;
+	uint32_t handle;
+
+	handle = gem_create(i915, offset + sizeof(bbe));
+	gem_write(i915, handle, offset, &bbe, sizeof(bbe));
+
+	return handle;
+}
+
+static uint32_t batch_create(int i915)
+{
+	return __batch_create(i915, 0);
+}
+
+static int read_timestamp_frequency(int i915)
+{
+	int value = 0;
+	drm_i915_getparam_t gp = {
+		.value = &value,
+		.param = I915_PARAM_CS_TIMESTAMP_FREQUENCY,
+	};
+	ioctl(i915, DRM_IOCTL_I915_GETPARAM, &gp);
+	return value;
+}
+
+static uint64_t div64_u64_round_up(uint64_t x, uint64_t y)
+{
+	return (x + y - 1) / y;
+}
+
+static uint64_t ns_to_ctx_ticks(int i915, uint64_t ns)
+{
+	int f = read_timestamp_frequency(i915);
+	if (intel_gen(intel_get_drm_devid(i915)) == 11)
+		f = 12500000; /* icl!!! are you feeling alright? CTX vs CS */
+	return div64_u64_round_up(ns * f, NSEC64);
+}
+
+#define MI_INSTR(opcode, flags) (((opcode) << 23) | (flags))
+
+#define MI_MATH(x)                      MI_INSTR(0x1a, (x) - 1)
+#define MI_MATH_INSTR(opcode, op1, op2) ((opcode) << 20 | (op1) << 10 | (op2))
+/* Opcodes for MI_MATH_INSTR */
+#define   MI_MATH_NOOP                  MI_MATH_INSTR(0x000, 0x0, 0x0)
+#define   MI_MATH_LOAD(op1, op2)        MI_MATH_INSTR(0x080, op1, op2)
+#define   MI_MATH_LOADINV(op1, op2)     MI_MATH_INSTR(0x480, op1, op2)
+#define   MI_MATH_LOAD0(op1)            MI_MATH_INSTR(0x081, op1)
+#define   MI_MATH_LOAD1(op1)            MI_MATH_INSTR(0x481, op1)
+#define   MI_MATH_ADD                   MI_MATH_INSTR(0x100, 0x0, 0x0)
+#define   MI_MATH_SUB                   MI_MATH_INSTR(0x101, 0x0, 0x0)
+#define   MI_MATH_AND                   MI_MATH_INSTR(0x102, 0x0, 0x0)
+#define   MI_MATH_OR                    MI_MATH_INSTR(0x103, 0x0, 0x0)
+#define   MI_MATH_XOR                   MI_MATH_INSTR(0x104, 0x0, 0x0)
+#define   MI_MATH_STORE(op1, op2)       MI_MATH_INSTR(0x180, op1, op2)
+#define   MI_MATH_STOREINV(op1, op2)    MI_MATH_INSTR(0x580, op1, op2)
+/* Registers used as operands in MI_MATH_INSTR */
+#define   MI_MATH_REG(x)                (x)
+#define   MI_MATH_REG_SRCA              0x20
+#define   MI_MATH_REG_SRCB              0x21
+#define   MI_MATH_REG_ACCU              0x31
+#define   MI_MATH_REG_ZF                0x32
+#define   MI_MATH_REG_CF                0x33
+
+#define MI_LOAD_REGISTER_REG    MI_INSTR(0x2A, 1)
+
+static unsigned int offset_in_page(void *addr)
+{
+	return (uintptr_t)addr & 4095;
+}
+
+static void delay(int i915,
+		  const struct intel_execution_engine2 *e,
+		  uint32_t handle,
+		  uint64_t addr,
+		  uint64_t ns)
+{
+	const int use_64b = intel_gen(intel_get_drm_devid(i915)) >= 8;
+	const uint32_t base = gem_engine_mmio_base(i915, e->name);
+#define CS_GPR(x) (base + 0x600 + 8 * (x))
+#define RUNTIME (base + 0x3a8)
+	enum { START_TS, NOW_TS };
+	uint32_t *map, *cs, *jmp;
+
+	igt_require(base);
+
+	/* Loop until CTX_TIMESTAMP - initial > @ns */
+
+	cs = map = gem_mmap__device_coherent(i915, handle, 0, 4096, PROT_WRITE);
+
+	*cs++ = MI_LOAD_REGISTER_IMM;
+	*cs++ = CS_GPR(START_TS) + 4;
+	*cs++ = 0;
+	*cs++ = MI_LOAD_REGISTER_REG;
+	*cs++ = RUNTIME;
+	*cs++ = CS_GPR(START_TS);
+
+	while (offset_in_page(cs) & 63)
+		*cs++ = 0;
+	jmp = cs;
+
+	*cs++ = 0x5 << 23; /* MI_ARB_CHECK */
+
+	*cs++ = MI_LOAD_REGISTER_IMM;
+	*cs++ = CS_GPR(NOW_TS) + 4;
+	*cs++ = 0;
+	*cs++ = MI_LOAD_REGISTER_REG;
+	*cs++ = RUNTIME;
+	*cs++ = CS_GPR(NOW_TS);
+
+	/* delta = now - start; inverted to match COND_BBE */
+	*cs++ = MI_MATH(4);
+	*cs++ = MI_MATH_LOAD(MI_MATH_REG_SRCA, MI_MATH_REG(NOW_TS));
+	*cs++ = MI_MATH_LOAD(MI_MATH_REG_SRCB, MI_MATH_REG(START_TS));
+	*cs++ = MI_MATH_SUB;
+	*cs++ = MI_MATH_STOREINV(MI_MATH_REG(NOW_TS), MI_MATH_REG_ACCU);
+
+	/* Save delta for reading by COND_BBE */
+	*cs++ = 0x24 << 23 | (1 + use_64b); /* SRM */
+	*cs++ = CS_GPR(NOW_TS);
+	*cs++ = addr + 4000;
+	*cs++ = addr >> 32;
+
+	/* Delay between SRM and COND_BBE to post the writes */
+	for (int n = 0; n < 8; n++) {
+		*cs++ = MI_STORE_DWORD_IMM;
+		if (use_64b) {
+			*cs++ = addr + 4064;
+			*cs++ = addr >> 32;
+		} else {
+			*cs++ = 0;
+			*cs++ = addr + 4064;
+		}
+		*cs++ = 0;
+	}
+
+	/* Break if delta [time elapsed] > ns */
+	*cs++ = MI_COND_BATCH_BUFFER_END | MI_DO_COMPARE | (1 + use_64b);
+	*cs++ = ~ns_to_ctx_ticks(i915, ns);
+	*cs++ = addr + 4000;
+	*cs++ = addr >> 32;
+
+	/* Otherwise back to recalculating delta */
+	*cs++ = MI_BATCH_BUFFER_START | 1 << 8 | use_64b;
+	*cs++ = addr + offset_in_page(jmp);
+	*cs++ = addr >> 32;
+
+	munmap(map, 4096);
+}
+
+static struct drm_i915_gem_exec_object2
+delay_create(int i915, uint32_t ctx,
+	     const struct intel_execution_engine2 *e,
+	     uint64_t target_ns)
+{
+	struct drm_i915_gem_exec_object2 obj = {
+		.handle = batch_create(i915),
+		.flags = EXEC_OBJECT_SUPPORTS_48B_ADDRESS,
+	};
+	struct drm_i915_gem_execbuffer2 execbuf = {
+		.buffers_ptr = to_user_pointer(&obj),
+		.buffer_count = 1,
+		.rsvd1 = ctx,
+		.flags = e->flags,
+	};
+
+	obj.offset = obj.handle << 12;
+	gem_execbuf(i915, &execbuf);
+	gem_sync(i915, obj.handle);
+
+	delay(i915, e, obj.handle, obj.offset, target_ns);
+
+	obj.flags |= EXEC_OBJECT_PINNED;
+	return obj;
+}
+
+static bool has_ctx_timestamp(int i915, const struct intel_execution_engine2 *e)
+{
+	const int gen = intel_gen(intel_get_drm_devid(i915));
+
+	if (gen == 8 && e->class == I915_ENGINE_CLASS_VIDEO)
+		return false; /* looks fubar */
+
+	return true;
+}
+
+static void minimum(int i915, const struct intel_execution_engine2 *e)
+{
+	struct drm_i915_gem_exec_object2 obj = {};
+	struct drm_i915_gem_execbuffer2 execbuf = {
+		.buffer_count = 1,
+		.buffers_ptr = to_user_pointer(&obj),
+		.flags = e->flags,
+	};
+	double sy, sx, sxx, sxy, syy;
+	const int tries = 50;
+	double a, b, denom, r;
+	int count;
+	int fd;
+
+	igt_require(has_ctx_timestamp(i915, e));
+
+	count = 0;
+	sy = sx = 0;
+	sxx = sxy = syy = 0;
+	fd = open_pmu(i915, I915_PMU_ENGINE_BUSY(e->class, e->instance));
+	for (int target = 10000; target <= 500000; target += 10000) {
+		uint64_t delay = -1;
+
+		obj = delay_create(i915, 0, e, target);
+		for (int i = 0; i < tries; i++) {
+			uint64_t ts[2], val[2];
+
+			val[0] = __pmu_read_single(fd, &ts[0]);
+			gem_execbuf(i915, &execbuf);
+			gem_sync(i915, obj.handle);
+			val[1] = __pmu_read_single(fd, &ts[1]);
+
+			igt_debug("delay[%d, %d]: elapsed %"PRIu64"ns, busy %"PRIu64"ns\n",
+				  target, i, ts[1] - ts[0], val[1] - val[0]);
+
+			if (val[1] - val[0] < delay)
+				delay = val[1] - val[0];
+		}
+		gem_close(i915, obj.handle);
+
+		sx += target;
+		sy += delay;
+		sxx += (double)target * target;
+		sxy += (double)target * delay;
+		syy += (double)delay * delay;
+		count++;
+	}
+	close(fd);
+
+	denom = count * sxx - sx * sx;
+	b = (count * sxy - sx * sy) / denom;
+	a = (sy * sxx - sx * sxy) / denom;
+	r = sxy - sx * sy / count;
+	r /= sqrt((sxx - sx * sx / count) * (syy - sy * sy / count));
+
+	igt_info("delay = %f + %f * T; r: %f\n", a, b, r);
+	assert_within_epsilon(r, 1, 0.01);
+	assert_within_epsilon(b, 1, 0.05);
+}
+
 static void *create_mmap(int gem_fd, const struct mmap_offset *t, int sz)
 {
 	uint32_t handle;
@@ -2212,6 +2459,14 @@ igt_main
 	igt_subtest_group {
 		const unsigned int pct[] = { 2, 50, 98 };
 
+		igt_fixture {
+			/*
+			 * Sampling platforms are not expected to reach the
+			 * high accuracy criteria.
+			 */
+			igt_require(gem_scheduler_has_engine_busy_stats(fd));
+		}
+
 		/**
 		 * Check engine busyness accuracy is as expected.
 		 */
@@ -2223,6 +2478,14 @@ igt_main
 				}
 			}
 		}
+
+		igt_subtest_with_dynamic("busy-minimum") {
+			igt_require(intel_gen(intel_get_drm_devid(fd)) >= 8);
+			__for_each_physical_engine(fd, e) {
+				igt_dynamic_f("%s", e->name)
+					minimum(fd, e);
+			}
+		}
 	}
 
 	test_each_engine("busy-hang", fd, e) {
-- 
2.30.0.rc1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
