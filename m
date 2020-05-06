Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC201C72B4
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 16:22:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B78F6E88A;
	Wed,  6 May 2020 14:22:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3C556E888;
 Wed,  6 May 2020 14:22:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21127739-1500050 
 for multiple; Wed, 06 May 2020 15:22:24 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 May 2020 15:22:17 +0100
Message-Id: <20200506142218.3098955-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/2] i915/gem_exec_schedule: Exercise
 timeslicing along an engine
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

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_exec_schedule.c | 107 +++++++++++++++++++++++++++++++++
 1 file changed, 107 insertions(+)

diff --git a/tests/i915/gem_exec_schedule.c b/tests/i915/gem_exec_schedule.c
index 7274ffbf3..a1523277b 100644
--- a/tests/i915/gem_exec_schedule.c
+++ b/tests/i915/gem_exec_schedule.c
@@ -418,6 +418,110 @@ static void smoketest(int fd, unsigned ring, unsigned timeout)
 	}
 }
 
+static uint32_t timeslicing_batches(int i915, uint32_t *offset)
+{
+        uint32_t handle = gem_create(i915, 4096);
+        uint32_t cs[256];
+
+	*offset += 4000;
+	for (int pair = 0; pair <= 1; pair++) {
+		int x = 1;
+		int i = 0;
+
+		for (int step = 0; step < 8; step++) {
+			if (pair) {
+				cs[i++] =
+					MI_SEMAPHORE_WAIT |
+					MI_SEMAPHORE_POLL |
+					MI_SEMAPHORE_SAD_EQ_SDD |
+					(4 - 2);
+				cs[i++] = x++;
+				cs[i++] = *offset;
+				cs[i++] = 0;
+			}
+
+			cs[i++] = MI_STORE_DWORD_IMM;
+			cs[i++] = *offset;
+			cs[i++] = 0;
+			cs[i++] = x++;
+
+			if (!pair) {
+				cs[i++] =
+					MI_SEMAPHORE_WAIT |
+					MI_SEMAPHORE_POLL |
+					MI_SEMAPHORE_SAD_EQ_SDD |
+					(4 - 2);
+				cs[i++] = x++;
+				cs[i++] = *offset;
+				cs[i++] = 0;
+			}
+		}
+
+		cs[i++] = MI_BATCH_BUFFER_END;
+		igt_assert(i < ARRAY_SIZE(cs));
+		gem_write(i915, handle, pair * sizeof(cs), cs, sizeof(cs));
+	}
+
+	*offset = sizeof(cs);
+        return handle;
+}
+
+static void semaphore_timeslice(int i915, unsigned int engine)
+{
+	unsigned int offset = 24 << 20;
+	struct drm_i915_gem_exec_object2 obj = {
+		.offset = offset,
+		.flags = EXEC_OBJECT_PINNED,
+	};
+	struct drm_i915_gem_execbuffer2 execbuf  = {
+		.buffers_ptr = to_user_pointer(&obj),
+		.buffer_count = 1,
+	};
+	uint32_t result;
+	int out;
+
+	/*
+	 * Create a pair of interlocking batches, that ping pong
+	 * between each other, and only advance one step at a time.
+	 * We require the kernel to preempt at each semaphore and
+	 * switch to the other batch in order to advance.
+	 */
+
+	igt_require(gem_scheduler_has_semaphores(i915));
+	igt_require(gem_scheduler_has_preemption(i915));
+	igt_require(intel_gen(intel_get_drm_devid(i915)) >= 8);
+
+	obj.handle = timeslicing_batches(i915, &offset);
+
+	execbuf.flags = engine | I915_EXEC_FENCE_OUT;
+	execbuf.batch_start_offset = 0;
+	gem_execbuf_wr(i915, &execbuf);
+
+	/* No coupling between requests; free to timeslice */
+
+	execbuf.rsvd1 = gem_context_clone_with_engines(i915, 0);
+	execbuf.rsvd2 >>= 32;
+	execbuf.flags = engine | I915_EXEC_FENCE_OUT;
+	execbuf.batch_start_offset = offset;
+	gem_execbuf_wr(i915, &execbuf);
+	gem_context_destroy(i915, execbuf.rsvd1);
+
+	gem_sync(i915, obj.handle);
+
+	/* no hangs! */
+	out = execbuf.rsvd2;
+	igt_assert_eq(sync_fence_status(out), 1);
+	close(out);
+
+	out = execbuf.rsvd2 >> 32;
+	igt_assert_eq(sync_fence_status(out), 1);
+	close(out);
+
+	gem_read(i915, obj.handle, 4000, &result, sizeof(result));
+	igt_assert_eq(result, 16);
+	gem_close(i915, obj.handle);
+}
+
 static uint32_t __batch_create(int i915, uint32_t offset)
 {
 	const uint32_t bbe = MI_BATCH_BUFFER_END;
@@ -2128,6 +2232,9 @@ igt_main
 			igt_require(gem_scheduler_has_ctx_priority(fd));
 		}
 
+		test_each_engine("timeslicing", fd, e)
+			semaphore_timeslice(fd, e->flags);
+
 		igt_subtest("semaphore-user")
 			semaphore_userlock(fd);
 		igt_subtest("semaphore-codependency")
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
