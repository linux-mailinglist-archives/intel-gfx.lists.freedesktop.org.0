Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA62340A1F
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Mar 2021 17:24:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 829F76E92D;
	Thu, 18 Mar 2021 16:24:17 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D232C6E924;
 Thu, 18 Mar 2021 16:24:15 +0000 (UTC)
IronPort-SDR: akLv0Ls+7yye+MwbUGlIAkIGrXXjzvoCe0v+FUytEbyTyVlw4xW3IRAKOe40Nys9gxAfAgpMzJ
 u1uvJ9gkhv7g==
X-IronPort-AV: E=McAfee;i="6000,8403,9927"; a="189760765"
X-IronPort-AV: E=Sophos;i="5.81,259,1610438400"; d="scan'208";a="189760765"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2021 09:24:15 -0700
IronPort-SDR: Rd5E0ikhT05WC9+SjKoV539VN8NxX03Neu+uwKg7+XnJbpdeiwrKFAnMAK7bAk8SyPiyAcGU0j
 cZunmyyh9b2w==
X-IronPort-AV: E=Sophos;i="5.81,259,1610438400"; d="scan'208";a="413149674"
Received: from syeghiay-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.51.182])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2021 09:24:14 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu, 18 Mar 2021 16:24:00 +0000
Message-Id: <20210318162400.2065097-4-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210318162400.2065097-1-tvrtko.ursulin@linux.intel.com>
References: <20210318162400.2065097-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 3/3] tests/i915/gem_watchdog: Exercise
 long rendering chains
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Test to demonstrate a problem with the proposed default fence expiry
semantics where long rendering chain get silently broken.

If we had fence error propagation (no clear agreement whether to do it or
not) maybe userspace would see if, assuming fence status is looked at, but
overall potential rendering corruption is the story in any case.

Note that this is not a single long batch but just a long queue of work
which. Could be viewed as heavy system load as well (like virtualisation
or other types of resource sharing).

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tests/i915/gem_watchdog.c | 310 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 310 insertions(+)

diff --git a/tests/i915/gem_watchdog.c b/tests/i915/gem_watchdog.c
index f86d3d4c7437..8f9fb17750fb 100644
--- a/tests/i915/gem_watchdog.c
+++ b/tests/i915/gem_watchdog.c
@@ -23,6 +23,8 @@
 
 #include "config.h"
 
+#include <fcntl.h>
+#include <sys/ioctl.h>
 #include <stdio.h>
 #include <unistd.h>
 #include <sched.h>
@@ -321,8 +323,309 @@ static void virtual(int i915)
 	igt_assert_eq(count, expect);
 }
 
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
+static uint64_t div64_u64_round_up(uint64_t x, uint64_t y)
+{
+	return (x + y - 1) / y;
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
+static uint64_t ns_to_ticks(int i915, uint64_t ns)
+{
+	return div64_u64_round_up(ns * read_timestamp_frequency(i915),
+				  NSEC_PER_SEC);
+}
+
+static uint32_t __batch_create(int i915, uint32_t offset)
+{
+	const uint32_t bbe = MI_BATCH_BUFFER_END;
+	uint32_t handle;
+
+	handle = gem_create(i915, ALIGN(offset + 4, 4096));
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
+	/* Break if delta > ns */
+	*cs++ = MI_COND_BATCH_BUFFER_END | MI_DO_COMPARE | (1 + use_64b);
+	*cs++ = ~ns_to_ticks(i915, ns);
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
+static uint32_t vm_clone(int i915)
+{
+	uint32_t ctx = 0;
+	__gem_context_clone(i915, 0,
+			    I915_CONTEXT_CLONE_VM |
+			    I915_CONTEXT_CLONE_ENGINES,
+			    I915_CONTEXT_CREATE_FLAGS_SINGLE_TIMELINE,
+			    &ctx);
+	return ctx;
+}
+
+static int __execbuf(int i915, struct drm_i915_gem_execbuffer2 *execbuf)
+{
+	int err;
+
+	err = 0;
+	if (ioctl(i915, DRM_IOCTL_I915_GEM_EXECBUFFER2, execbuf)) {
+		err = -errno;
+		igt_assume(err);
+	}
+
+	errno = 0;
+	return err;
+}
+
+static uint32_t
+far_delay(int i915, unsigned long delay, unsigned int target,
+	  const struct intel_execution_engine2 *e, int *fence)
+{
+	struct drm_i915_gem_exec_object2 obj = delay_create(i915, 0, e, delay);
+	struct drm_i915_gem_exec_object2 batch[2] = {
+		{
+			.handle = batch_create(i915),
+			.flags = EXEC_OBJECT_WRITE,
+		}
+	};
+	struct drm_i915_gem_execbuffer2 execbuf = {
+		.buffers_ptr = to_user_pointer(batch),
+		.buffer_count = 2,
+		.flags = e->flags,
+	};
+	uint32_t handle = gem_create(i915, 4096);
+	unsigned long count, submit;
+
+	igt_require(intel_gen(intel_get_drm_devid(i915)) >= 8);
+	igt_require(gem_class_can_store_dword(i915, e->class));
+
+	fcntl(i915, F_SETFL, fcntl(i915, F_GETFL) | O_NONBLOCK);
+
+	submit = 3 * target;
+	submit *= NSEC_PER_SEC;
+	submit /= 2 * delay;
+
+	/*
+	 * Submit a few long chains of individually short pieces of work
+	 * against a shared object.
+	 */
+	for (count = 0; count < submit;) {
+		execbuf.rsvd1 = vm_clone(i915);
+		if (!execbuf.rsvd1)
+			break;
+
+		batch[1] = obj;
+		while (__execbuf(i915, &execbuf) == 0)
+			count++;
+		gem_context_destroy(i915, execbuf.rsvd1);
+	}
+
+	execbuf.flags |= I915_EXEC_FENCE_OUT;
+	execbuf.rsvd1 = 0;
+	batch[1] = batch[0];
+	batch[1].flags &= ~EXEC_OBJECT_WRITE;
+	batch[0].handle = handle;
+	assert(batch[0].flags & EXEC_OBJECT_WRITE);
+	gem_execbuf_wr(i915, &execbuf);
+
+	gem_close(i915, obj.handle);
+
+	/* And pass the resulting end fence out. */
+	*fence = execbuf.rsvd2 >> 32;
+
+	return handle;
+}
+
+static void
+far_fence(int i915, int timeout, const struct intel_execution_engine2 *e)
+{
+	int fence = -1;
+	uint32_t handle =
+		far_delay(i915, NSEC_PER_SEC / 250, timeout, e, &fence);
+
+	gem_close(i915, handle);
+
+	igt_assert_eq(sync_fence_wait(fence, -1), 0);
+
+	/*
+	 * Many short pieces of work simulating independent clients working and
+	 * presenting work to a consumer should not be interrupted by the
+	 * watchdog.
+	 *
+	 * TODO/FIXME: Opens:
+	 *
+	 * 1)
+	 *    Missing fence error propagation means consumer may fail to notice
+	 *    the work hasn't actually been executed.
+	 *
+	 *    There is also no clear agreement on whether error propagation is
+	 *    desired or not.
+	 *
+	 * 2)
+	 *    This assert could instead check that fence status is in error, if
+	 *    it will be accepted this kind of workload should suddenly start
+	 *    failing. Depends if the desire is to test watchdog could break
+	 *    existing userspace or whether it is acceptable to silently not
+	 *    execute workloads.
+	 *
+	 * 3)
+	 *    Implement subtest which actually renders to a shared buffer so
+	 *    watchdog effect on rendering result can also be demonstrated.
+	 */
+	igt_assert_eq(sync_fence_status(fence), 1);
+
+	close(fence);
+}
+
 igt_main
 {
+	const struct intel_execution_engine2 *e;
 	int i915 = -1;
 
 	igt_fixture {
@@ -370,6 +673,13 @@ igt_main
 			virtual(i915);
 	}
 
+	igt_subtest_with_dynamic("far-fence") {
+		__for_each_physical_engine(i915, e) {
+			igt_dynamic_f("%s", e->name)
+				far_fence(i915, default_timeout_wait_s * 3, e);
+		}
+	}
+
 	igt_fixture {
 		close(i915);
 	}
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
