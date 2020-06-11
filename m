Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2E11F6EE7
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2020 22:41:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 877BF6E94C;
	Thu, 11 Jun 2020 20:41:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 781586E20C;
 Thu, 11 Jun 2020 20:41:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21469439-1500050 
 for multiple; Thu, 11 Jun 2020 21:40:50 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jun 2020 21:40:48 +0100
Message-Id: <20200611204048.318778-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_isolation: Verify BB_OFFSET
 protection
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

BB_OFFSET is used for relative batch buffer jumps, so prime the register
and do a jump, but only after a context switch or two.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 tests/i915/gem_ctx_isolation.c | 139 +++++++++++++++++++++++++++++++++
 1 file changed, 139 insertions(+)

diff --git a/tests/i915/gem_ctx_isolation.c b/tests/i915/gem_ctx_isolation.c
index 9fdf78bb8..b689d37dd 100644
--- a/tests/i915/gem_ctx_isolation.c
+++ b/tests/i915/gem_ctx_isolation.c
@@ -24,6 +24,7 @@
 #include "i915/gem.h"
 #include "igt.h"
 #include "igt_dummyload.h"
+#include "sw_sync.h"
 
 #define MAX_REG 0x200000
 #define NUM_REGS (MAX_REG / sizeof(uint32_t))
@@ -874,6 +875,124 @@ static void preservation(int fd,
 	gem_context_destroy(fd, ctx[num_values]);
 }
 
+static int sync_fence_wait_status(int fence, int timeout)
+{
+	int err;
+
+	err = sync_fence_wait(fence, timeout);
+	if (err)
+		return err;
+
+	return sync_fence_status(fence);
+}
+
+static int write_register(int i915, uint32_t ctx, unsigned int engine,
+			  uint32_t reg, uint32_t value)
+{
+	struct drm_i915_gem_exec_object2 obj = {
+		.handle = gem_create(i915, 4096),
+	};
+	struct drm_i915_gem_execbuffer2 execbuf = {
+		.buffers_ptr = to_user_pointer(&obj),
+		.buffer_count = 1,
+		.rsvd1 = ctx,
+		.flags = engine | I915_EXEC_FENCE_OUT,
+	};
+	uint32_t *cs, *map;
+
+	map = gem_mmap__device_coherent(i915, obj.handle, 0, 4096, PROT_WRITE);
+
+	cs = map;
+	*cs++ = MI_LOAD_REGISTER_IMM;
+	*cs++ = reg;
+	*cs++ = value;
+	*cs++ = MI_BATCH_BUFFER_END;
+	munmap(map, 4096);
+
+	gem_execbuf_wr(i915, &execbuf);
+	gem_close(i915, obj.handle);
+
+	return execbuf.rsvd2 >> 32;
+}
+
+static void bb_offset(int i915,
+		      const struct intel_execution_engine2 *e,
+		      unsigned int flags)
+{
+	struct drm_i915_gem_exec_object2 obj = {
+		.handle = gem_create(i915, 4096 * 3),
+		.flags = EXEC_OBJECT_PINNED
+	};
+	struct drm_i915_gem_execbuffer2 execbuf = {
+		.buffers_ptr = to_user_pointer(&obj),
+		.buffer_count = 1,
+		.rsvd1 = gem_context_create_for_engine(i915, e->class, e->instance),
+	};
+	const uint32_t mmio_base = gem_engine_mmio_base(i915, e->name);
+	uint32_t *cs, *map;
+	igt_spin_t *spin;
+
+	igt_require(gem_class_has_mutable_submission(i915, e->class)); /* XXX */
+	igt_require(mmio_base);
+
+	gem_quiescent_gpu(i915);
+
+	map = gem_mmap__device_coherent(i915, obj.handle, 0, 4096 * 3, PROT_WRITE);
+	memset(map, 0xff, 4096 * 3);
+
+	cs = map + 2 * 1024 + 256;
+	*cs++ = MI_LOAD_REGISTER_IMM;
+	*cs++ = mmio_base + 0x158; /* BB_OFFSET */
+	*cs++ = 4096;
+	*cs++ = MI_BATCH_BUFFER_END;
+
+	cs = map + 2 * 1024 + 128;
+	*cs++ = MI_BATCH_BUFFER_START | 1 << 16 | 1 << 8 | 1; /* reljmp */
+	*cs++ = 0; /* + BB_OFFSET */
+	*cs++ = 0;
+
+	cs = map + 1024;
+	*cs++ = MI_BATCH_BUFFER_END;
+	munmap(map, 3 * 4096);
+
+	execbuf.batch_start_offset = 2 * 4096 + 1024;
+	gem_execbuf(i915, &execbuf); /* prime BB_OFFSET */
+
+	spin = igt_spin_new(i915,
+			    .ctx = execbuf.rsvd1,
+			    .flags = IGT_SPIN_POLL_RUN);
+	igt_spin_busywait_until_started(spin);
+
+	if (flags & DIRTY1) {
+		uint32_t ctx;
+		int fence;
+
+		ctx = gem_context_create_for_engine(i915, e->class, e->instance);
+		gem_context_set_priority(i915, ctx, 1023);
+
+		fence = write_register(i915, ctx, 0,
+				       mmio_base + 0x158, 0xdeadbeef);
+
+		gem_context_destroy(i915, ctx);
+
+		igt_assert_eq(sync_fence_wait_status(fence, 500), 1);
+		close(fence);
+	}
+
+	if (flags & RESET)
+		inject_reset_context(i915, e);
+
+	execbuf.batch_start_offset = 2 * 4096 + 512;
+	execbuf.flags |= I915_EXEC_FENCE_OUT;
+	gem_execbuf_wr(i915, &execbuf); /* relative jump */
+
+	igt_spin_free(i915, spin);
+	igt_assert_eq(sync_fence_wait_status(execbuf.rsvd2 >> 32, 500), 1);
+	close(execbuf.rsvd2);
+
+	gem_context_destroy(i915, execbuf.rsvd1);
+}
+
 static unsigned int __has_context_isolation(int fd)
 {
 	struct drm_i915_getparam gp;
@@ -963,6 +1082,16 @@ igt_main
 			preservation(i915, e, S4);
 	}
 
+	igt_subtest_with_dynamic("bb-offset-clean") {
+		test_each_engine(e, i915, has_context_isolation)
+			bb_offset(i915, e, 0);
+	}
+	igt_subtest_with_dynamic("bb-offset-switch") {
+		igt_require(gem_scheduler_has_preemption(i915));
+		test_each_engine(e, i915, has_context_isolation)
+			bb_offset(i915, e, DIRTY1);
+	}
+
 	igt_fixture {
 		igt_stop_hang_detector();
 	}
@@ -975,4 +1104,14 @@ igt_main
 
 		igt_disallow_hang(i915, hang);
 	}
+
+	igt_subtest_with_dynamic("bb-offset-reset") {
+		igt_hang_t hang = igt_allow_hang(i915, 0, 0);
+
+		igt_require(gem_scheduler_has_preemption(i915));
+		test_each_engine(e, i915, has_context_isolation)
+			bb_offset(i915, e, RESET);
+
+		igt_disallow_hang(i915, hang);
+	}
 }
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
