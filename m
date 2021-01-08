Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA922EF38A
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 14:58:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5527889A0F;
	Fri,  8 Jan 2021 13:58:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3E5489A0F;
 Fri,  8 Jan 2021 13:58:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23538819-1500050 
 for multiple; Fri, 08 Jan 2021 13:58:46 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Jan 2021 13:58:45 +0000
Message-Id: <20210108135845.4096422-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_scheduler: Check dependency
 chains around engines
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

Verify that we do not run a later request before its dependency on the
same engine, even if the linkage is looped around all the other engines.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_exec_schedule.c | 117 +++++++++++++++++++++++++++++++++
 1 file changed, 117 insertions(+)

diff --git a/tests/i915/gem_exec_schedule.c b/tests/i915/gem_exec_schedule.c
index 6ff1edd8d..4526b182b 100644
--- a/tests/i915/gem_exec_schedule.c
+++ b/tests/i915/gem_exec_schedule.c
@@ -1156,6 +1156,115 @@ static void semaphore_noskip(int i915, unsigned long flags)
 	gem_context_destroy(i915, ctx);
 }
 
+static void noreorder(int i915, unsigned int engine, int prio)
+{
+	const unsigned int gen = intel_gen(intel_get_drm_devid(i915));
+	const struct intel_execution_engine2 *e;
+	struct drm_i915_gem_exec_object2 obj = {
+		.handle = gem_create(i915, 4096),
+	};
+	struct drm_i915_gem_execbuffer2 execbuf = {
+		.buffers_ptr = to_user_pointer(&obj),
+		.buffer_count = 1,
+		.flags = engine,
+		.rsvd1 = gem_context_clone_with_engines(i915, 0),
+	};
+	uint32_t *map, *cs;
+	igt_spin_t *slice;
+	igt_spin_t *spin;
+	uint64_t addr;
+	uint32_t ctx;
+
+	ctx = gem_context_clone(i915, execbuf.rsvd1,
+			      I915_CONTEXT_CLONE_ENGINES |
+			      I915_CONTEXT_CLONE_VM,
+			      0);
+	spin = igt_spin_new(i915, ctx,
+			    .engine = engine,
+			    .flags = IGT_SPIN_FENCE_OUT);
+
+	/* Loop around the engines, creating a chain of fences */
+	spin->execbuf.rsvd2 = (uint64_t)dup(spin->out_fence) << 32;
+	spin->execbuf.rsvd2 |= 0xffffffff;
+	__for_each_physical_engine(i915, e) {
+		if (e->flags == engine)
+			continue;
+
+		close(spin->execbuf.rsvd2);
+		spin->execbuf.rsvd2 >>= 32;
+
+		spin->execbuf.flags =
+			e->flags | I915_EXEC_FENCE_IN | I915_EXEC_FENCE_OUT;
+		gem_execbuf_wr(i915, &spin->execbuf);
+	}
+	close(spin->execbuf.rsvd2);
+	spin->execbuf.rsvd2 >>= 32;
+	gem_context_destroy(i915, ctx);
+
+	/*
+	 * Wait upon the fence chain, and try to terminate the spinner.
+	 *
+	 * If the scheduler skips a link in the chain and doesn't reach the
+	 * dependency on the same engine, we may preempt that spinner to
+	 * execute the terminating batch; and the spinner will untimely
+	 * exit.
+	 */
+	map = gem_mmap__device_coherent(i915, obj.handle, 0, 4096, PROT_WRITE);
+	cs = map;
+
+	addr = spin->obj[IGT_SPIN_BATCH].offset +
+		offset_in_page(spin->condition);
+	if (gen >= 8) {
+		*cs++ = MI_STORE_DWORD_IMM;
+		*cs++ = addr;
+		addr >>= 32;
+	} else if (gen >= 4) {
+		*cs++ = MI_STORE_DWORD_IMM | (gen < 6 ? 1 << 22 : 0);
+		*cs++ = 0;
+	} else {
+		*cs++ = (MI_STORE_DWORD_IMM | 1 << 22) - 1;
+	}
+	*cs++ = addr;
+	*cs++ = MI_BATCH_BUFFER_END;
+	*cs++ = MI_BATCH_BUFFER_END;
+	munmap(map, 4096);
+
+	execbuf.rsvd2 = spin->execbuf.rsvd2;
+	execbuf.flags |= I915_EXEC_FENCE_IN;
+
+	gem_context_set_priority(i915, execbuf.rsvd1, prio);
+
+	gem_execbuf(i915, &execbuf);
+	gem_close(i915, obj.handle);
+	gem_context_destroy(i915, execbuf.rsvd1);
+
+	/* Give the system a chance to schedule everything */
+	usleep(random() % 25000);
+
+	/*
+	 * Then wait for a timeslice.
+	 *
+	 * If we start the next spinner it means we have expired the first
+	 * spinner's timeslice and the second batch would have already been run,
+	 * if it will ever be.
+	 *
+	 * Without timeslices, fallback to waiting a second.
+	 */
+	slice = igt_spin_new(i915,
+			    .engine = engine,
+			    .flags = IGT_SPIN_POLL_RUN);
+	igt_until_timeout(1) {
+		if (igt_spin_has_started(slice))
+			break;
+	}
+	igt_spin_free(i915, slice);
+
+	/* Check the store did not run before the spinner */
+	igt_assert_eq(sync_fence_status(spin->out_fence), 0);
+	igt_spin_free(i915, spin);
+	gem_quiescent_gpu(i915);
+}
+
 static void reorder(int fd, unsigned ring, unsigned flags)
 #define EQUAL 1
 {
@@ -2885,6 +2994,14 @@ igt_main
 			}
 		}
 
+		test_each_engine_store("noreorder", fd, e)
+			noreorder(fd, e->flags, 0);
+
+		test_each_engine_store("noreorder-priority", fd, e) {
+			igt_require(gem_scheduler_has_preemption(fd));
+			noreorder(fd, e->flags, MAX_PRIO);
+		}
+
 		test_each_engine_store("deep", fd, e)
 			deep(fd, e->flags);
 
-- 
2.30.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
