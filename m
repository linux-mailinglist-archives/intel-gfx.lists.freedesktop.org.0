Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7091F65DE
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2020 12:42:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA7796E8EE;
	Thu, 11 Jun 2020 10:42:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 525566E8ED;
 Thu, 11 Jun 2020 10:42:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21463101-1500050 
 for multiple; Thu, 11 Jun 2020 11:42:09 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jun 2020 11:42:08 +0100
Message-Id: <20200611104208.91381-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_reloc: Verify engine
 isolation
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

Check that when relocating a batch along an engine, we are not forced to
wait upon a resource elsewhere that userspace may be holding, or else we
are faced with a deadlock that may be injected by another user. That
deadlock may be resolved by resetting the hostile context, but in doing
so we should not break the relocation processing.

Ideally, we would avoid the deadlock.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/2021
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_exec_reloc.c | 105 ++++++++++++++++++++++++++++++------
 1 file changed, 89 insertions(+), 16 deletions(-)

diff --git a/tests/i915/gem_exec_reloc.c b/tests/i915/gem_exec_reloc.c
index 6490d3a6f..2d4164076 100644
--- a/tests/i915/gem_exec_reloc.c
+++ b/tests/i915/gem_exec_reloc.c
@@ -43,6 +43,22 @@ static uint32_t find_last_set(uint64_t x)
 	return i;
 }
 
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
 static void write_dword(int fd,
 			uint32_t target_handle,
 			uint64_t target_offset,
@@ -523,6 +539,72 @@ static void active_spin(int fd, unsigned engine)
 	igt_spin_free(fd, spin);
 }
 
+static void others_spin(int i915, unsigned engine)
+{
+	struct drm_i915_gem_relocation_entry reloc = {};
+	struct drm_i915_gem_exec_object2 obj = {
+		.relocs_ptr = to_user_pointer(&reloc),
+		.relocation_count = 1,
+	};
+	struct drm_i915_gem_execbuffer2 execbuf = {
+		.buffers_ptr = to_user_pointer(&obj),
+		.buffer_count = 1,
+		.flags = engine,
+	};
+	const struct intel_execution_engine2 *e;
+	igt_spin_t *spin = NULL;
+	uint64_t addr;
+	int fence;
+
+	__for_each_physical_engine(i915, e) {
+		if (e->flags == engine)
+			continue;
+
+		if (!spin) {
+			spin = igt_spin_new(i915,
+					    .engine = e->flags,
+					    .flags = IGT_SPIN_FENCE_OUT);
+			fence = dup(spin->out_fence);
+		} else {
+			int old_fence;
+
+			spin->execbuf.flags &= ~I915_EXEC_RING_MASK;
+			spin->execbuf.flags |= e->flags;
+			gem_execbuf_wr(i915, &spin->execbuf);
+
+			old_fence = fence;
+			fence = sync_fence_merge(old_fence,
+						 spin->execbuf.rsvd2 >> 32);
+			close(spin->execbuf.rsvd2 >> 32);
+			close(old_fence);
+		}
+	}
+	igt_require(spin);
+
+	/* All other engines are busy, let's relocate! */
+	obj.handle = batch_create(i915);
+	reloc.target_handle = obj.handle;
+	reloc.presumed_offset = -1;
+	reloc.offset = 64;
+	gem_execbuf(i915, &execbuf);
+
+	/* Verify the relocation took place */
+	gem_read(i915, obj.handle, 64, &addr, sizeof(addr));
+	igt_assert_eq_u64(addr, obj.offset);
+	gem_close(i915, obj.handle);
+
+	/* Even if the spinner was harmed in the process */
+	igt_spin_end(spin);
+	igt_assert_eq(sync_fence_wait(fence, 200), 0);
+	igt_assert_neq(sync_fence_status(fence), 0);
+	if (sync_fence_status(fence) < 0)
+		igt_warn("Spinner was cancelled, %s\n",
+			 strerror(-sync_fence_status(fence)));
+	close(fence);
+
+	igt_spin_free(i915, spin);
+}
+
 static bool has_64b_reloc(int fd)
 {
 	return intel_gen(intel_get_drm_devid(fd)) >= 8;
@@ -881,22 +963,6 @@ parallel_relocs(int count, unsigned long *out)
 	return reloc;
 }
 
-static uint32_t __batch_create(int i915, uint32_t offset)
-{
-	const uint32_t bbe = MI_BATCH_BUFFER_END;
-	uint32_t handle;
-
-	handle = gem_create(i915, ALIGN(offset + 4, 4096));
-	gem_write(i915, handle, offset, &bbe, sizeof(bbe));
-
-	return handle;
-}
-
-static uint32_t batch_create(int i915)
-{
-	return __batch_create(i915, 0);
-}
-
 static int __execbuf(int i915, struct drm_i915_gem_execbuffer2 *execbuf)
 {
 	int err;
@@ -1336,6 +1402,13 @@ igt_main
 		}
 	}
 
+	igt_subtest_with_dynamic("basic-spin-others") {
+		__for_each_physical_engine(fd, e) {
+			igt_dynamic_f("%s", e->name)
+				others_spin(fd, e->flags);
+		}
+	}
+
 	igt_subtest_with_dynamic("basic-many-active") {
 		__for_each_physical_engine(fd, e) {
 			igt_dynamic_f("%s", e->name)
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
