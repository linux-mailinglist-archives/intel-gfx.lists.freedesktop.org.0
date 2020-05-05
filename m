Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE201C5729
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 15:38:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 046FE6E228;
	Tue,  5 May 2020 13:38:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B014F6E228;
 Tue,  5 May 2020 13:38:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21119423-1500050 
 for multiple; Tue, 05 May 2020 14:38:40 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 May 2020 14:38:36 +0100
Message-Id: <20200505133836.2873640-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200505133836.2873640-1-chris@chris-wilson.co.uk>
References: <20200505133836.2873640-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 2/2] i915/gem_exec_fence: Teach
 invalid-wait about invalid future fences
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

When we allow a wait on a future future fence, it must autoexpire if the
fence is never signaled by userspace. Also put future fences to work, as
the intention is to use them, along with WAIT_SUBMIT and semaphores, for
userspace to perform its own fine-grained scheduling. Or simply run
concurrent clients without having to flush batches between context
switches.

v2: Verify deadlock detection

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_exec_fence.c | 430 +++++++++++++++++++++++++++++++++++-
 1 file changed, 427 insertions(+), 3 deletions(-)

diff --git a/tests/i915/gem_exec_fence.c b/tests/i915/gem_exec_fence.c
index 17fdaebd5..374b273e4 100644
--- a/tests/i915/gem_exec_fence.c
+++ b/tests/i915/gem_exec_fence.c
@@ -47,6 +47,15 @@ struct sync_merge_data {
 #define SYNC_IOC_MERGE _IOWR(SYNC_IOC_MAGIC, 3, struct sync_merge_data)
 #endif
 
+#define MI_SEMAPHORE_WAIT		(0x1c << 23)
+#define   MI_SEMAPHORE_POLL             (1 << 15)
+#define   MI_SEMAPHORE_SAD_GT_SDD       (0 << 12)
+#define   MI_SEMAPHORE_SAD_GTE_SDD      (1 << 12)
+#define   MI_SEMAPHORE_SAD_LT_SDD       (2 << 12)
+#define   MI_SEMAPHORE_SAD_LTE_SDD      (3 << 12)
+#define   MI_SEMAPHORE_SAD_EQ_SDD       (4 << 12)
+#define   MI_SEMAPHORE_SAD_NEQ_SDD      (5 << 12)
+
 static void store(int fd, const struct intel_execution_engine2 *e,
 		  int fence, uint32_t target, unsigned offset_value)
 {
@@ -913,11 +922,12 @@ static void test_syncobj_invalid_wait(int fd)
 	struct drm_i915_gem_exec_fence fence = {
 		.handle = syncobj_create(fd, 0),
 	};
+	int out;
 
 	memset(&execbuf, 0, sizeof(execbuf));
 	execbuf.buffers_ptr = to_user_pointer(&obj);
 	execbuf.buffer_count = 1;
-	execbuf.flags = I915_EXEC_FENCE_ARRAY;
+	execbuf.flags = I915_EXEC_FENCE_ARRAY | I915_EXEC_FENCE_OUT;
 	execbuf.cliprects_ptr = to_user_pointer(&fence);
 	execbuf.num_cliprects = 1;
 
@@ -925,14 +935,59 @@ static void test_syncobj_invalid_wait(int fd)
 	obj.handle = gem_create(fd, 4096);
 	gem_write(fd, obj.handle, 0, &bbe, sizeof(bbe));
 
-	/* waiting before the fence is set is invalid */
+	/* waiting before the fence is set is^W may be invalid */
 	fence.flags = I915_EXEC_FENCE_WAIT;
-	igt_assert_eq(__gem_execbuf(fd, &execbuf), -EINVAL);
+	if (__gem_execbuf_wr(fd, &execbuf)) {
+		igt_assert_eq(__gem_execbuf(fd, &execbuf), -EINVAL);
+		return;
+	}
+
+	/* If we do allow the wait on a future fence, it should autoexpire */
+	gem_sync(fd, obj.handle);
+	out = execbuf.rsvd2 >> 32;
+	igt_assert_eq(sync_fence_status(out), -ETIMEDOUT);
+	close(out);
 
 	gem_close(fd, obj.handle);
 	syncobj_destroy(fd, fence.handle);
 }
 
+static void test_syncobj_incomplete_wait_submit(int i915)
+{
+	struct drm_i915_gem_exec_object2 obj = {
+		.handle = batch_create(i915),
+	};
+	struct drm_i915_gem_exec_fence fence = {
+		.handle = syncobj_create(i915, 0),
+		.flags = I915_EXEC_FENCE_WAIT | I915_EXEC_FENCE_WAIT_SUBMIT,
+	};
+	struct drm_i915_gem_execbuffer2 execbuf = {
+		.buffers_ptr = to_user_pointer(&obj),
+		.buffer_count = 1,
+
+		.cliprects_ptr = to_user_pointer(&fence),
+		.num_cliprects = 1,
+
+		.flags = I915_EXEC_FENCE_ARRAY | I915_EXEC_FENCE_OUT,
+	};
+	int out;
+
+	/* waiting before the fence is set is^W may be invalid */
+	if (__gem_execbuf_wr(i915, &execbuf)) {
+		igt_assert_eq(__gem_execbuf(i915, &execbuf), -EINVAL);
+		return;
+	}
+
+	/* If we do allow the wait on a future fence, it should autoexpire */
+	gem_sync(i915, obj.handle);
+	out = execbuf.rsvd2 >> 32;
+	igt_assert_eq(sync_fence_status(out), -ETIMEDOUT);
+	close(out);
+
+	gem_close(i915, obj.handle);
+	syncobj_destroy(i915, fence.handle);
+}
+
 static void test_syncobj_invalid_flags(int fd)
 {
 	const uint32_t bbe = MI_BATCH_BUFFER_END;
@@ -1079,6 +1134,319 @@ static void test_syncobj_wait(int fd)
 	}
 }
 
+static uint32_t future_batch(int i915, uint32_t offset)
+{
+	uint32_t handle = gem_create(i915, 4096);
+	const int gen = intel_gen(intel_get_drm_devid(i915));
+	uint32_t cs[16];
+	int i = 0;
+
+	cs[i] = MI_STORE_DWORD_IMM | (gen < 6 ? 1 << 22 : 0);
+	if (gen >= 8) {
+		cs[++i] = offset + 4000;
+		cs[++i] = 0;
+	} else if (gen >= 4) {
+		cs[++i] = 0;
+		cs[++i] = offset + 4000;
+	} else {
+		cs[i]--;
+		cs[++i] = offset + 4000;
+	}
+	cs[++i] = 1;
+	cs[i + 1] = MI_BATCH_BUFFER_END;
+	gem_write(i915, handle, 0, cs, sizeof(cs));
+
+	cs[i] = 2;
+	gem_write(i915, handle, 64, cs, sizeof(cs));
+
+	return handle;
+}
+
+static void test_syncobj_future(int i915, unsigned int engine)
+{
+	struct drm_i915_gem_exec_object2 obj = {
+		.offset = 24 << 20,
+		.handle = future_batch(i915, 24 << 20),
+		.flags = EXEC_OBJECT_PINNED,
+	};
+	struct drm_i915_gem_exec_fence fence = {
+		.handle = syncobj_create(i915, 0),
+	};
+	struct drm_i915_gem_execbuffer2 execbuf  = {
+		.buffers_ptr = to_user_pointer(&obj),
+		.buffer_count = 1,
+		.cliprects_ptr = to_user_pointer(&fence),
+		.num_cliprects = 1,
+		.flags = engine | I915_EXEC_FENCE_ARRAY,
+	};
+	uint32_t result;
+
+	/*
+	 * Client A is waiting on a future fence from B. So even though its
+	 * execbuf is called first, we need to hold it in a queue waiting on
+	 * B.
+	 */
+	igt_require(gem_scheduler_enabled(i915));
+
+	execbuf.rsvd1 = gem_context_create(i915);
+	fence.flags = I915_EXEC_FENCE_WAIT;
+	execbuf.batch_start_offset = 0;
+	igt_require(__gem_execbuf(i915, &execbuf) == 0); /* writes 1 */
+	gem_context_destroy(i915, execbuf.rsvd1);
+
+	execbuf.rsvd1 = gem_context_create(i915);
+	fence.flags = I915_EXEC_FENCE_SIGNAL;
+	execbuf.batch_start_offset = 64;
+	gem_execbuf(i915, &execbuf); /* writes 2 */
+	gem_context_destroy(i915, execbuf.rsvd1);
+
+	gem_sync(i915, obj.handle); /* write hazard lies */
+	gem_read(i915, obj.handle, 4000, &result, sizeof(result));
+	igt_assert_eq(result, 1);
+
+	gem_close(i915, obj.handle);
+	syncobj_destroy(i915, fence.handle);
+}
+
+static uint32_t future_submit_batch(int i915, uint32_t offset)
+{
+	uint32_t handle = gem_create(i915, 4096);
+	const int gen = intel_gen(intel_get_drm_devid(i915));
+	uint32_t cs[16];
+	int i = 0;
+
+	cs[i] = MI_STORE_DWORD_IMM | (gen < 6 ? 1 << 22 : 0);
+	if (gen >= 8) {
+		cs[++i] = offset + 4000;
+		cs[++i] = 0;
+	} else if (gen >= 4) {
+		cs[++i] = 0;
+		cs[++i] = offset + 4000;
+	} else {
+		cs[i]--;
+		cs[++i] = offset + 4000;
+	}
+	cs[++i] = 1;
+	cs[i + 1] = MI_BATCH_BUFFER_END;
+	igt_assert(i + 1 < ARRAY_SIZE(cs));
+	gem_write(i915, handle, 0, cs, sizeof(cs));
+
+	i = 0;
+	cs[i++] =
+		MI_SEMAPHORE_WAIT |
+		MI_SEMAPHORE_POLL |
+		MI_SEMAPHORE_SAD_EQ_SDD |
+		(4 - 2);
+	cs[i++] = 1;
+	cs[i++] = offset + 4000;
+	cs[i++] = 0;
+
+	cs[i] = MI_STORE_DWORD_IMM | (gen < 6 ? 1 << 22 : 0);
+	if (gen >= 8) {
+		cs[++i] = offset + 4000;
+		cs[++i] = 0;
+	} else if (gen >= 4) {
+		cs[++i] = 0;
+		cs[++i] = offset + 4000;
+	} else {
+		cs[i]--;
+		cs[++i] = offset + 4000;
+	}
+	cs[++i] = 2;
+	cs[++i] = MI_BATCH_BUFFER_END;
+	igt_assert(i < ARRAY_SIZE(cs));
+
+	gem_write(i915, handle, 64, cs, sizeof(cs));
+
+	return handle;
+}
+
+static void test_syncobj_future_submit(int i915, unsigned int engine)
+{
+	struct drm_i915_gem_exec_object2 obj = {
+		.offset = 24 << 20,
+		.handle = future_submit_batch(i915, 24 << 20),
+		.flags = EXEC_OBJECT_PINNED,
+	};
+	struct drm_i915_gem_exec_fence fence = {
+		.handle = syncobj_create(i915, 0),
+	};
+	struct drm_i915_gem_execbuffer2 execbuf  = {
+		.buffers_ptr = to_user_pointer(&obj),
+		.buffer_count = 1,
+		.cliprects_ptr = to_user_pointer(&fence),
+		.num_cliprects = 1,
+		.flags = engine | I915_EXEC_FENCE_ARRAY,
+	};
+	uint32_t result;
+	int out;
+
+	/*
+	 * Here we submit client A waiting on client B, but internally client
+	 * B has a semaphore that waits on client A. This relies on timeslicing
+	 * to reorder B before A, even though userspace has asked to submit
+	 * A & B simultaneously (and due to the sequence we will submit B
+	 * then A).
+	 */
+	igt_require(gem_scheduler_has_timeslicing(i915));
+
+	execbuf.rsvd1 = gem_context_create(i915);
+	fence.flags = I915_EXEC_FENCE_WAIT | I915_EXEC_FENCE_WAIT_SUBMIT;
+	execbuf.batch_start_offset = 0;
+	execbuf.flags |= I915_EXEC_FENCE_OUT;
+	igt_require(__gem_execbuf_wr(i915, &execbuf) == 0); /* writes 1 */
+	execbuf.flags &= ~I915_EXEC_FENCE_OUT;
+	gem_context_destroy(i915, execbuf.rsvd1);
+
+	execbuf.rsvd1 = gem_context_create(i915);
+	fence.flags = I915_EXEC_FENCE_SIGNAL;
+	execbuf.batch_start_offset = 64;
+	gem_execbuf(i915, &execbuf); /* writes 2 */
+	gem_context_destroy(i915, execbuf.rsvd1);
+
+	gem_sync(i915, obj.handle); /* write hazard lies */
+	gem_read(i915, obj.handle, 4000, &result, sizeof(result));
+	igt_assert_eq(result, 2);
+
+	/* check we didn't autotimeout */
+	out = execbuf.rsvd2 >> 32;
+	igt_assert_eq(sync_fence_status(out), 1);
+	close(out);
+
+	gem_close(i915, obj.handle);
+	syncobj_destroy(i915, fence.handle);
+}
+
+static void test_syncobj_future_past(int i915, unsigned int engine, int flags)
+{
+	struct drm_i915_gem_exec_object2 obj = {
+		.offset = 24 << 20,
+		.handle = future_batch(i915, 24 << 20),
+		.flags = EXEC_OBJECT_PINNED,
+	};
+	struct drm_i915_gem_exec_fence fence = {
+		.handle = syncobj_create(i915, 0),
+	};
+	struct drm_i915_gem_execbuffer2 execbuf  = {
+		.buffers_ptr = to_user_pointer(&obj),
+		.buffer_count = 1,
+		.cliprects_ptr = to_user_pointer(&fence),
+		.num_cliprects = 1,
+		.flags = engine | I915_EXEC_FENCE_ARRAY,
+	};
+	uint32_t result;
+	int out;
+
+	fence.flags = I915_EXEC_FENCE_WAIT | I915_EXEC_FENCE_SIGNAL | flags;
+	execbuf.batch_start_offset = 0;
+	execbuf.flags |= I915_EXEC_FENCE_OUT;
+	igt_require(__gem_execbuf_wr(i915, &execbuf) == 0); /* writes 1 */
+	execbuf.flags &= ~I915_EXEC_FENCE_OUT;
+
+	gem_sync(i915, obj.handle); /* write hazard lies */
+	gem_read(i915, obj.handle, 4000, &result, sizeof(result));
+	igt_assert_eq(result, 1);
+
+	/* check we didn't autotimeout */
+	out = execbuf.rsvd2 >> 32;
+	igt_assert_eq(sync_fence_status(out), 1);
+	close(out);
+
+	gem_close(i915, obj.handle);
+	syncobj_destroy(i915, fence.handle);
+}
+
+static void test_syncobj_future_self(int i915, unsigned int engine, int flags)
+{
+	struct drm_i915_gem_exec_object2 obj = {
+		.offset = 24 << 20,
+		.handle = future_batch(i915, 24 << 20),
+		.flags = EXEC_OBJECT_PINNED,
+	};
+	struct drm_i915_gem_exec_fence fence = {
+		.handle = syncobj_create(i915, 0),
+	};
+	struct drm_i915_gem_execbuffer2 execbuf  = {
+		.buffers_ptr = to_user_pointer(&obj),
+		.buffer_count = 1,
+		.cliprects_ptr = to_user_pointer(&fence),
+		.num_cliprects = 1,
+		.flags = engine | I915_EXEC_FENCE_ARRAY,
+	};
+	uint32_t result;
+	int out;
+
+	fence.flags = I915_EXEC_FENCE_WAIT | flags;
+	execbuf.batch_start_offset = 0;
+	execbuf.flags |= I915_EXEC_FENCE_OUT;
+	igt_require(__gem_execbuf_wr(i915, &execbuf) == 0); /* writes 1 */
+	execbuf.flags &= ~I915_EXEC_FENCE_OUT;
+
+	fence.flags = I915_EXEC_FENCE_SIGNAL;
+	execbuf.batch_start_offset = 64;
+	gem_execbuf(i915, &execbuf); /* writes 2 */
+
+	gem_sync(i915, obj.handle); /* write hazard lies */
+	gem_read(i915, obj.handle, 4000, &result, sizeof(result));
+	igt_assert_eq(result, 2);
+
+	/* check we didn't autotimeout */
+	out = execbuf.rsvd2 >> 32;
+	igt_assert_eq(sync_fence_status(out), 1);
+	close(out);
+
+	gem_close(i915, obj.handle);
+	syncobj_destroy(i915, fence.handle);
+}
+
+static void
+test_syncobj_future_deadlock(int i915, unsigned int engine, int flags)
+{
+	struct drm_i915_gem_exec_object2 obj = {
+		.offset = 24 << 20,
+		.handle = future_batch(i915, 24 << 20),
+		.flags = EXEC_OBJECT_PINNED,
+	};
+	struct drm_i915_gem_exec_fence fence = {
+		.handle = syncobj_create(i915, 0),
+	};
+	struct drm_i915_gem_execbuffer2 execbuf  = {
+		.buffers_ptr = to_user_pointer(&obj),
+		.buffer_count = 1,
+		.cliprects_ptr = to_user_pointer(&fence),
+		.num_cliprects = 1,
+		.flags = engine | I915_EXEC_FENCE_ARRAY,
+	};
+	int out;
+
+	fence.flags = I915_EXEC_FENCE_WAIT | flags;
+	execbuf.batch_start_offset = 0;
+	execbuf.flags |= I915_EXEC_FENCE_OUT;
+	igt_require(__gem_execbuf_wr(i915, &execbuf) == 0); /* writes 1 */
+
+	fence.flags = I915_EXEC_FENCE_SIGNAL;
+	execbuf.rsvd1 = gem_context_create(i915);
+	execbuf.rsvd2 >>= 32;
+	execbuf.flags |= I915_EXEC_FENCE_IN;
+	execbuf.batch_start_offset = 64;
+	gem_execbuf_wr(i915, &execbuf); /* writes 2 */
+	gem_context_destroy(i915, execbuf.rsvd1);
+
+	gem_sync(i915, obj.handle);
+
+	gem_close(i915, obj.handle);
+	syncobj_destroy(i915, fence.handle);
+
+	/* How should this deadlock be resolved? */
+	out = execbuf.rsvd2;
+	igt_assert_eq(sync_fence_status(out), -EDEADLK);
+	close(out);
+
+	out = execbuf.rsvd2 >> 32;
+	igt_assert_eq(sync_fence_status(out), -EDEADLK);
+	close(out);
+}
+
 static void test_syncobj_export(int fd)
 {
 	const uint32_t bbe = MI_BATCH_BUFFER_END;
@@ -1548,6 +1916,9 @@ igt_main
 		igt_subtest("syncobj-invalid-wait")
 			test_syncobj_invalid_wait(i915);
 
+		igt_subtest("syncobj-incomplete-wait-submit")
+			test_syncobj_incomplete_wait_submit(i915);
+
 		igt_subtest("syncobj-invalid-flags")
 			test_syncobj_invalid_flags(i915);
 
@@ -1557,6 +1928,59 @@ igt_main
 		igt_subtest("syncobj-wait")
 			test_syncobj_wait(i915);
 
+		igt_subtest_with_dynamic("syncobj-future")
+			__for_each_physical_engine(i915, e) {
+				igt_dynamic_f("%s", e->name)
+					test_syncobj_future(i915, e->flags);
+			}
+
+		igt_subtest_with_dynamic("syncobj-future-past")
+			__for_each_physical_engine(i915, e) {
+				igt_dynamic_f("%s", e->name)
+					test_syncobj_future_past(i915, e->flags,
+								 0);
+			}
+
+
+		igt_subtest_with_dynamic("syncobj-future-submit")
+			__for_each_physical_engine(i915, e) {
+				igt_dynamic_f("%s", e->name)
+					test_syncobj_future_submit(i915, e->flags);
+			}
+
+		igt_subtest_with_dynamic("syncobj-future-submit-past")
+			__for_each_physical_engine(i915, e) {
+				igt_dynamic_f("%s", e->name)
+					test_syncobj_future_past(i915, e->flags,
+								 I915_EXEC_FENCE_WAIT_SUBMIT);
+			}
+
+		igt_subtest_with_dynamic("syncobj-future-self")
+			__for_each_physical_engine(i915, e) {
+				igt_dynamic_f("%s", e->name)
+					test_syncobj_future_self(i915, e->flags,
+								 0);
+			}
+
+		igt_subtest_with_dynamic("syncobj-future-self-submit")
+			__for_each_physical_engine(i915, e) {
+				igt_dynamic_f("%s", e->name)
+					test_syncobj_future_self(i915, e->flags,
+								 I915_EXEC_FENCE_WAIT_SUBMIT);
+			}
+
+		igt_subtest_with_dynamic("syncobj-future-deadlock")
+			__for_each_physical_engine(i915, e) {
+				igt_dynamic_f("%s", e->name)
+					test_syncobj_future_deadlock(i915, e->flags, 0);
+			}
+
+		igt_subtest_with_dynamic("syncobj-future-submit-deadlock")
+			__for_each_physical_engine(i915, e) {
+				igt_dynamic_f("%s", e->name)
+					test_syncobj_future_deadlock(i915, e->flags, I915_EXEC_FENCE_WAIT_SUBMIT);
+			}
+
 		igt_subtest("syncobj-export")
 			test_syncobj_export(i915);
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
