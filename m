Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 419721D1BCF
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 19:02:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D8246EA78;
	Wed, 13 May 2020 17:02:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6903C6EA68;
 Wed, 13 May 2020 17:02:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21190087-1500050 
 for multiple; Wed, 13 May 2020 18:02:26 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 May 2020 18:02:24 +0100
Message-Id: <20200513170224.848726-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200513170224.848726-1-chris@chris-wilson.co.uk>
References: <20200513170224.848726-1-chris@chris-wilson.co.uk>
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
 tests/i915/gem_exec_fence.c | 680 +++++++++++++++++++++++++++++++++++-
 1 file changed, 677 insertions(+), 3 deletions(-)

diff --git a/tests/i915/gem_exec_fence.c b/tests/i915/gem_exec_fence.c
index 4140bff24..eb1165080 100644
--- a/tests/i915/gem_exec_fence.c
+++ b/tests/i915/gem_exec_fence.c
@@ -1123,11 +1123,12 @@ static void test_syncobj_invalid_wait(int fd)
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
 
@@ -1135,14 +1136,59 @@ static void test_syncobj_invalid_wait(int fd)
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
@@ -1289,6 +1335,517 @@ static void test_syncobj_wait(int fd)
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
+	struct drm_i915_gem_exec_fence fence = {};
+	struct drm_i915_gem_execbuffer2 execbuf  = {
+		.buffers_ptr = to_user_pointer(&obj),
+		.buffer_count = 1,
+		.cliprects_ptr = to_user_pointer(&fence),
+		.num_cliprects = 1,
+	};
+	const struct intel_execution_engine2 *e;
+
+	/*
+	 * Client A is waiting on a future fence from B. So even though its
+	 * execbuf is called first, we need to hold it in a queue waiting on
+	 * B.
+	 */
+	igt_require(gem_scheduler_enabled(i915));
+
+	__for_each_physical_engine(i915, e) {
+		uint32_t result;
+
+		igt_debug("waiting on future %s\n", e->name);
+		fence.handle = syncobj_create(i915, 0);
+
+		fence.flags = I915_EXEC_FENCE_WAIT;
+		execbuf.batch_start_offset = 0;
+		execbuf.flags = engine | I915_EXEC_FENCE_ARRAY;
+		execbuf.rsvd1 = 0;
+		gem_execbuf(i915, &execbuf); /* writes 1 */
+
+		fence.flags = I915_EXEC_FENCE_SIGNAL;
+		execbuf.batch_start_offset = 64;
+		execbuf.flags = e->flags | I915_EXEC_FENCE_ARRAY;
+		execbuf.rsvd1 = gem_context_clone_with_engines(i915, 0);
+		gem_execbuf(i915, &execbuf); /* writes 2 */
+		gem_context_destroy(i915, execbuf.rsvd1);
+
+		syncobj_destroy(i915, fence.handle);
+		gem_sync(i915, obj.handle); /* write hazard lies */
+		gem_read(i915, obj.handle, 4000, &result, sizeof(result));
+		igt_assert_eq(result, 1);
+	}
+
+	gem_close(i915, obj.handle);
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
+	const struct intel_execution_engine2 *e;
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
+	__for_each_physical_engine(i915, e) {
+		struct drm_i915_gem_exec_fence fence = {
+			.handle = syncobj_create(i915, 0),
+		};
+		struct drm_i915_gem_execbuffer2 execbuf  = {
+			.buffers_ptr = to_user_pointer(&obj),
+			.buffer_count = 1,
+			.cliprects_ptr = to_user_pointer(&fence),
+			.num_cliprects = 1,
+			.flags = engine | I915_EXEC_FENCE_ARRAY,
+		};
+		uint32_t result;
+		int out;
+
+		igt_debug("waiting on future %s\n", e->name);
+
+		execbuf.rsvd1 = gem_context_clone_with_engines(i915, 0);
+		fence.flags = I915_EXEC_FENCE_WAIT | I915_EXEC_FENCE_WAIT_SUBMIT;
+		execbuf.batch_start_offset = 0;
+		execbuf.flags |= I915_EXEC_FENCE_OUT;
+		igt_require(__gem_execbuf_wr(i915, &execbuf) == 0); /* writes 1 */
+		execbuf.flags &= ~I915_EXEC_FENCE_OUT;
+		gem_context_destroy(i915, execbuf.rsvd1);
+
+		execbuf.rsvd1 = gem_context_clone_with_engines(i915, 0);
+		fence.flags = I915_EXEC_FENCE_SIGNAL;
+		execbuf.batch_start_offset = 64;
+		execbuf.flags &= ~I915_EXEC_RING_MASK;
+		execbuf.flags |= e->flags;
+		gem_execbuf(i915, &execbuf); /* writes 2 */
+		gem_context_destroy(i915, execbuf.rsvd1);
+
+		syncobj_destroy(i915, fence.handle);
+		gem_sync(i915, obj.handle); /* write hazard lies */
+		gem_read(i915, obj.handle, 4000, &result, sizeof(result));
+		igt_assert_eq(result, 2);
+
+		/* check we didn't autotimeout */
+		out = execbuf.rsvd2 >> 32;
+		igt_assert_eq(sync_fence_status(out), 1);
+		close(out);
+	}
+
+	gem_close(i915, obj.handle);
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
+
+	gem_close(i915, obj.handle);
+	syncobj_destroy(i915, fence.handle);
+
+	out = execbuf.rsvd2 >> 32;
+	igt_assert_eq(sync_fence_status(out), -EDEADLK);
+	close(out);
+}
+
+static void test_syncobj_future_pair(int i915, unsigned int engine)
+{
+	struct drm_i915_gem_exec_object2 obj = {
+		.offset = 24 << 20,
+		.handle = submitN_batches(i915, 24 << 20, 2),
+		.flags = EXEC_OBJECT_PINNED,
+	};
+	struct drm_i915_gem_exec_fence fence[2] = {
+		{ .handle = syncobj_create(i915, 0) },
+		{ .handle = syncobj_create(i915, 0) }
+	};
+	struct drm_i915_gem_execbuffer2 execbuf  = {
+		.buffers_ptr = to_user_pointer(&obj),
+		.buffer_count = 1,
+		.cliprects_ptr = to_user_pointer(fence),
+		.num_cliprects = 2,
+	};
+	const struct intel_execution_engine2 *e;
+
+	__for_each_physical_engine(i915, e) {
+		int out = 0;
+
+		gem_write(i915, obj.handle, 0, &out, sizeof(out));
+		fence[0].handle = syncobj_create(i915, 0);
+		fence[1].handle = syncobj_create(i915, 0);
+
+		fence[0].flags = I915_EXEC_FENCE_SIGNAL;
+		fence[1].flags =
+			I915_EXEC_FENCE_WAIT | I915_EXEC_FENCE_WAIT_SUBMIT;
+		execbuf.batch_start_offset = 1024;
+		execbuf.flags =
+			engine | I915_EXEC_FENCE_ARRAY | I915_EXEC_FENCE_OUT;
+		execbuf.rsvd1 = gem_context_create(i915);
+		igt_require(__gem_execbuf_wr(i915, &execbuf) == 0);
+		gem_context_destroy(i915, execbuf.rsvd1);
+		execbuf.rsvd2 >>= 32;
+
+		fence[0].flags =
+			I915_EXEC_FENCE_WAIT | I915_EXEC_FENCE_WAIT_SUBMIT;
+		fence[1].flags = I915_EXEC_FENCE_SIGNAL;
+		execbuf.batch_start_offset = 2048;
+		execbuf.flags =
+			e->flags | I915_EXEC_FENCE_ARRAY | I915_EXEC_FENCE_OUT;
+		execbuf.rsvd1 = gem_context_create(i915);
+		gem_execbuf_wr(i915, &execbuf);
+		gem_context_destroy(i915, execbuf.rsvd1);
+
+		syncobj_destroy(i915, fence[0].handle);
+		syncobj_destroy(i915, fence[1].handle);
+
+		gem_sync(i915, obj.handle); /* write hazard lies */
+
+		out = execbuf.rsvd2;
+		igt_assert_eq(sync_fence_status(out), 1);
+		close(out);
+
+		out = execbuf.rsvd2 >> 32;
+		igt_assert_eq(sync_fence_status(out), 1);
+		close(out);
+
+		gem_read(i915, obj.handle, 0, &out, sizeof(out));
+		igt_assert_eq(out, 16);
+	}
+
+	gem_close(i915, obj.handle);
+}
+
+static void test_syncobj_future_group(int i915, unsigned int engine, int count)
+{
+	struct drm_i915_gem_exec_object2 obj = {
+		.offset = 24 << 20,
+		.handle = submitN_batches(i915, 24 << 20, count),
+		.flags = EXEC_OBJECT_PINNED,
+	};
+	struct drm_i915_gem_exec_fence fence[count];
+	struct drm_i915_gem_execbuffer2 execbuf  = {
+		.buffers_ptr = to_user_pointer(&obj),
+		.buffer_count = 1,
+		.cliprects_ptr = to_user_pointer(fence),
+		.num_cliprects = count,
+		.flags = engine | I915_EXEC_FENCE_ARRAY | I915_EXEC_FENCE_OUT,
+	};
+	int out[count];
+	uint32_t result;
+
+	for (int i = 0; i < count; i++) {
+		fence[i].handle = syncobj_create(i915, 0);
+		fence[i].flags =
+			I915_EXEC_FENCE_WAIT | I915_EXEC_FENCE_WAIT_SUBMIT;
+	}
+
+	for (int i = 0; i < count; i++) {
+		fence[i].flags = I915_EXEC_FENCE_SIGNAL;
+
+		execbuf.batch_start_offset = 1024 * (i + 1);
+		execbuf.rsvd1 = gem_context_create(i915);
+		gem_execbuf_wr(i915, &execbuf);
+		gem_context_destroy(i915, execbuf.rsvd1);
+
+		out[i] = execbuf.rsvd2 >> 32;
+		fence[i].flags =
+			I915_EXEC_FENCE_WAIT | I915_EXEC_FENCE_WAIT_SUBMIT;
+	}
+	gem_sync(i915, obj.handle); /* write hazard lies */
+
+	/* As both batches were waiting for the other to start -- deadlock? */
+	for (int i = 0; i < count; i++)  {
+		syncobj_destroy(i915, fence[i].handle);
+		igt_assert_eq(sync_fence_status(out[i]), 1);
+		close(out[i]);
+	}
+
+	/* Nevertheless, we ignored^Wresolved the deadlock and let them run */
+	gem_read(i915, obj.handle, 0, &result, sizeof(result));
+	igt_assert_eq(result, 8 * count);
+	gem_close(i915, obj.handle);
+}
+
+
+static void
+test_syncobj_future_deadlock(int i915, unsigned int engine, int flags)
+{
+	struct drm_i915_gem_exec_object2 obj = {
+		.offset = 24 << 20,
+		.handle = future_batch(i915, 24 << 20),
+		.flags = EXEC_OBJECT_PINNED,
+	};
+	struct drm_i915_gem_exec_fence fence = {};
+	struct drm_i915_gem_execbuffer2 execbuf  = {
+		.buffers_ptr = to_user_pointer(&obj),
+		.buffer_count = 1,
+		.cliprects_ptr = to_user_pointer(&fence),
+		.num_cliprects = 1,
+	};
+	const struct intel_execution_engine2 *e;
+
+	__for_each_physical_engine(i915, e) {
+		int out;
+
+		fence.handle = syncobj_create(i915, 0),
+
+		fence.flags = I915_EXEC_FENCE_WAIT | flags;
+		execbuf.batch_start_offset = 0;
+		execbuf.flags = engine | I915_EXEC_FENCE_ARRAY,
+		execbuf.flags |= I915_EXEC_FENCE_OUT;
+		execbuf.rsvd1 = 0;
+		gem_execbuf_wr(i915, &execbuf); /* writes 1 */
+
+		fence.flags = I915_EXEC_FENCE_SIGNAL;
+		execbuf.batch_start_offset = 64;
+		execbuf.flags = e->flags | I915_EXEC_FENCE_ARRAY,
+		execbuf.flags |= I915_EXEC_FENCE_OUT | I915_EXEC_FENCE_IN;
+		execbuf.rsvd1 = gem_context_clone_with_engines(i915, 0);
+		execbuf.rsvd2 >>= 32;
+		gem_execbuf_wr(i915, &execbuf); /* writes 2 */
+		gem_context_destroy(i915, execbuf.rsvd1);
+
+		syncobj_destroy(i915, fence.handle);
+		gem_sync(i915, obj.handle);
+
+		/* How should this deadlock be resolved? */
+		out = execbuf.rsvd2;
+		igt_assert_eq(sync_fence_status(out), -EDEADLK);
+		close(out);
+
+		out = execbuf.rsvd2 >> 32;
+		igt_assert_eq(sync_fence_status(out), -EDEADLK);
+		close(out);
+	}
+
+	gem_close(i915, obj.handle);
+}
+
+static void
+test_syncobj_future_cycle(int i915, unsigned int engine, int flags)
+{
+	struct drm_i915_gem_exec_object2 obj = {
+		.offset = 24 << 20,
+		.handle = future_batch(i915, 24 << 20),
+		.flags = EXEC_OBJECT_PINNED,
+	};
+	const struct intel_execution_engine2 *e1, *e2;
+
+	__for_each_physical_engine(i915, e1) {
+	__for_each_physical_engine(i915, e2) {
+		struct drm_i915_gem_exec_fence fence = {
+			.handle = syncobj_create(i915, 0),
+		};
+		struct drm_i915_gem_execbuffer2 execbuf  = {
+			.buffers_ptr = to_user_pointer(&obj),
+			.buffer_count = 1,
+			.cliprects_ptr = to_user_pointer(&fence),
+			.num_cliprects = 1,
+			.flags = engine | I915_EXEC_FENCE_ARRAY,
+		};
+		int out;
+
+		fence.flags = I915_EXEC_FENCE_WAIT | flags;
+		execbuf.batch_start_offset = 0;
+		execbuf.flags |= I915_EXEC_FENCE_OUT;
+		igt_require(__gem_execbuf_wr(i915, &execbuf) == 0);
+
+		fence.flags = 0;
+		execbuf.rsvd1 = gem_context_clone_with_engines(i915, 0);
+		execbuf.rsvd2 >>= 32;
+		execbuf.flags &= ~I915_EXEC_RING_MASK;
+		execbuf.flags |= e1->flags | I915_EXEC_FENCE_IN;
+		gem_execbuf_wr(i915, &execbuf);
+		gem_context_destroy(i915, execbuf.rsvd1);
+		close(execbuf.rsvd2);
+
+		fence.flags = I915_EXEC_FENCE_SIGNAL;
+		execbuf.rsvd1 = gem_context_clone_with_engines(i915, 0);
+		execbuf.rsvd2 >>= 32;
+		execbuf.flags &= ~I915_EXEC_RING_MASK;
+		execbuf.flags |= e2->flags;
+		execbuf.batch_start_offset = 64;
+		gem_execbuf_wr(i915, &execbuf); /* writes 2 */
+		gem_context_destroy(i915, execbuf.rsvd1);
+
+		syncobj_destroy(i915, fence.handle);
+		gem_sync(i915, obj.handle);
+
+
+		/* How should this deadlock be resolved? */
+		out = execbuf.rsvd2 >> 32;
+		igt_assert_eq(sync_fence_status(out), -EDEADLK);
+		close(out);
+
+		out = execbuf.rsvd2;
+		igt_assert_eq(sync_fence_status(out), -EDEADLK);
+		close(out);
+	}}
+
+	gem_close(i915, obj.handle);
+}
+
 static void test_syncobj_export(int fd)
 {
 	const uint32_t bbe = MI_BATCH_BUFFER_END;
@@ -1574,6 +2131,117 @@ static void test_syncobj_channel(int fd)
 		syncobj_destroy(fd, syncobj[i]);
 }
 
+static bool has_future_syncobj(int i915)
+{
+	struct drm_i915_gem_exec_object2 obj = {
+		.handle = batch_create(i915),
+	};
+	struct drm_i915_gem_exec_fence fence = {
+		.handle = syncobj_create(i915, 0),
+		.flags = I915_EXEC_FENCE_WAIT | I915_EXEC_FENCE_SIGNAL,
+	};
+	struct drm_i915_gem_execbuffer2 execbuf  = {
+		.buffers_ptr = to_user_pointer(&obj),
+		.buffer_count = 1,
+		.cliprects_ptr = to_user_pointer(&fence),
+		.num_cliprects = 1,
+		.flags = I915_EXEC_FENCE_ARRAY,
+	};
+	bool result;
+
+	result = __gem_execbuf(i915, &execbuf) == 0;
+	gem_close(i915, obj.handle);
+
+	return result;
+}
+
+static void syncobj_futures(int i915)
+{
+	const struct intel_execution_engine2 *e;
+
+	igt_fixture {
+		igt_require(gem_scheduler_enabled(i915));
+		igt_require(has_future_syncobj(i915));
+	}
+
+	igt_subtest_with_dynamic("syncobj-future")
+		__for_each_physical_engine(i915, e) {
+			igt_dynamic_f("%s", e->name)
+				test_syncobj_future(i915, e->flags);
+		}
+
+	igt_subtest_with_dynamic("syncobj-future-past")
+		__for_each_physical_engine(i915, e) {
+			igt_dynamic_f("%s", e->name)
+				test_syncobj_future_past(i915, e->flags, 0);
+		}
+
+
+	igt_subtest_with_dynamic("syncobj-future-submit")
+		__for_each_physical_engine(i915, e) {
+			igt_dynamic_f("%s", e->name)
+				test_syncobj_future_submit(i915, e->flags);
+		}
+
+	igt_subtest_with_dynamic("syncobj-future-submit-past")
+		__for_each_physical_engine(i915, e) {
+			igt_dynamic_f("%s", e->name)
+				test_syncobj_future_past(i915, e->flags,
+						I915_EXEC_FENCE_WAIT_SUBMIT);
+		}
+
+	igt_subtest_with_dynamic("syncobj-future-self")
+		__for_each_physical_engine(i915, e) {
+			igt_dynamic_f("%s", e->name)
+				test_syncobj_future_self(i915, e->flags, 0);
+		}
+
+	igt_subtest_with_dynamic("syncobj-future-self-submit")
+		__for_each_physical_engine(i915, e) {
+			igt_dynamic_f("%s", e->name)
+				test_syncobj_future_self(i915, e->flags,
+						I915_EXEC_FENCE_WAIT_SUBMIT);
+		}
+
+	igt_subtest_with_dynamic("syncobj-future-pair")
+		__for_each_physical_engine(i915, e) {
+			igt_dynamic_f("%s", e->name)
+				test_syncobj_future_pair(i915, e->flags);
+		}
+
+	igt_subtest_with_dynamic("syncobj-future-group")
+		__for_each_physical_engine(i915, e) {
+			igt_dynamic_f("%s", e->name)
+				test_syncobj_future_group(i915, e->flags, 67);
+		}
+
+	igt_subtest_with_dynamic("syncobj-future-deadlock")
+		__for_each_physical_engine(i915, e) {
+			igt_dynamic_f("%s", e->name)
+				test_syncobj_future_deadlock(i915, e->flags, 0);
+		}
+
+	igt_subtest_with_dynamic("syncobj-future-submit-deadlock")
+		__for_each_physical_engine(i915, e) {
+			igt_dynamic_f("%s", e->name)
+				test_syncobj_future_deadlock(i915, e->flags,
+							     I915_EXEC_FENCE_WAIT_SUBMIT);
+		}
+
+	igt_subtest_with_dynamic("syncobj-future-cycle")
+		__for_each_physical_engine(i915, e) {
+			igt_dynamic_f("%s", e->name)
+				test_syncobj_future_cycle(i915, e->flags, 0);
+		}
+
+	igt_subtest_with_dynamic("syncobj-future-submit-cycle")
+		__for_each_physical_engine(i915, e) {
+			igt_dynamic_f("%s", e->name)
+				test_syncobj_future_cycle(i915, e->flags,
+							  I915_EXEC_FENCE_WAIT_SUBMIT);
+		}
+}
+
 igt_main
 {
 	const struct intel_execution_engine2 *e;
@@ -1786,6 +2454,9 @@ igt_main
 		igt_subtest("syncobj-invalid-wait")
 			test_syncobj_invalid_wait(i915);
 
+		igt_subtest("syncobj-incomplete-wait-submit")
+			test_syncobj_incomplete_wait_submit(i915);
+
 		igt_subtest("syncobj-invalid-flags")
 			test_syncobj_invalid_flags(i915);
 
@@ -1795,6 +2466,9 @@ igt_main
 		igt_subtest("syncobj-wait")
 			test_syncobj_wait(i915);
 
+		igt_subtest_group
+			syncobj_futures(i915);
+
 		igt_subtest("syncobj-export")
 			test_syncobj_export(i915);
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
