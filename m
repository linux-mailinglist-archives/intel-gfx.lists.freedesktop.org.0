Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D431E470F
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 17:12:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC7AC89236;
	Wed, 27 May 2020 15:12:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88617891A0
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2020 15:12:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21310865-1500050 
 for multiple; Wed, 27 May 2020 16:12:35 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 May 2020 16:12:35 +0100
Message-Id: <20200527151235.25663-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Remove local entries from GGTT on
 suspend
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Across suspend/resume, we clear the entire GGTT and rebuild from
scratch. In particular, we only preserve the global entries for use by
the HW, and delay reinstating the local binds until required by the
user. This means that we can evict and recover any local binds in the
global GTT, saving any time in preserving their state.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/1947
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 15 +++++--
 drivers/gpu/drm/i915/i915_vma.c      | 59 +++++++++++++++-------------
 drivers/gpu/drm/i915/i915_vma.h      |  1 +
 3 files changed, 45 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 317172ad5ef3..3b8d7f830a2c 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -108,13 +108,22 @@ static bool needs_idle_maps(struct drm_i915_private *i915)
 
 void i915_ggtt_suspend(struct i915_ggtt *ggtt)
 {
-	struct i915_vma *vma;
+	struct i915_vma *vma, *vn;
+	int open;
 
-	list_for_each_entry(vma, &ggtt->vm.bound_list, vm_link)
-		i915_vma_wait_for_bind(vma);
+	/* Skip rewriting PTE on VMA unbind. */
+	open = atomic_xchg(&ggtt->vm.open, 0);
 
+	list_for_each_entry_safe(vma, vn, &ggtt->vm.bound_list, vm_link) {
+		i915_vma_wait_for_bind(vma);
+		if (!i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND)) {
+			__i915_vma_evict(vma);
+			drm_mm_remove_node(&vma->node);
+		}
+	}
 	ggtt->vm.clear_range(&ggtt->vm, 0, ggtt->vm.total);
 	ggtt->invalidate(ggtt);
+	atomic_set(&ggtt->vm.open, open);
 
 	intel_gt_check_and_clear_faults(ggtt->vm.gt);
 }
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 22198b758459..9b30ddc49e4b 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -1229,31 +1229,9 @@ int i915_vma_move_to_active(struct i915_vma *vma,
 	return 0;
 }
 
-int __i915_vma_unbind(struct i915_vma *vma)
+void __i915_vma_evict(struct i915_vma *vma)
 {
-	int ret;
-
-	lockdep_assert_held(&vma->vm->mutex);
-
-	if (i915_vma_is_pinned(vma)) {
-		vma_print_allocator(vma, "is pinned");
-		return -EAGAIN;
-	}
-
-	/*
-	 * After confirming that no one else is pinning this vma, wait for
-	 * any laggards who may have crept in during the wait (through
-	 * a residual pin skipping the vm->mutex) to complete.
-	 */
-	ret = i915_vma_sync(vma);
-	if (ret)
-		return ret;
-
-	if (!drm_mm_node_allocated(&vma->node))
-		return 0;
-
 	GEM_BUG_ON(i915_vma_is_pinned(vma));
-	GEM_BUG_ON(i915_vma_is_active(vma));
 
 	if (i915_vma_is_map_and_fenceable(vma)) {
 		/* Force a pagefault for domain tracking on next user access */
@@ -1292,6 +1270,33 @@ int __i915_vma_unbind(struct i915_vma *vma)
 
 	i915_vma_detach(vma);
 	vma_unbind_pages(vma);
+}
+
+int __i915_vma_unbind(struct i915_vma *vma)
+{
+	int ret;
+
+	lockdep_assert_held(&vma->vm->mutex);
+
+	if (!drm_mm_node_allocated(&vma->node))
+		return 0;
+
+	if (i915_vma_is_pinned(vma)) {
+		vma_print_allocator(vma, "is pinned");
+		return -EAGAIN;
+	}
+
+	/*
+	 * After confirming that no one else is pinning this vma, wait for
+	 * any laggards who may have crept in during the wait (through
+	 * a residual pin skipping the vm->mutex) to complete.
+	 */
+	ret = i915_vma_sync(vma);
+	if (ret)
+		return ret;
+
+	GEM_BUG_ON(i915_vma_is_active(vma));
+	__i915_vma_evict(vma);
 
 	drm_mm_remove_node(&vma->node); /* pairs with i915_vma_release() */
 	return 0;
@@ -1303,13 +1308,13 @@ int i915_vma_unbind(struct i915_vma *vma)
 	intel_wakeref_t wakeref = 0;
 	int err;
 
-	if (!drm_mm_node_allocated(&vma->node))
-		return 0;
-
 	/* Optimistic wait before taking the mutex */
 	err = i915_vma_sync(vma);
 	if (err)
-		goto out_rpm;
+		return err;
+
+	if (!drm_mm_node_allocated(&vma->node))
+		return 0;
 
 	if (i915_vma_is_pinned(vma)) {
 		vma_print_allocator(vma, "is pinned");
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index 8ad1daabcd58..d0d01f909548 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -203,6 +203,7 @@ bool i915_vma_misplaced(const struct i915_vma *vma,
 			u64 size, u64 alignment, u64 flags);
 void __i915_vma_set_map_and_fenceable(struct i915_vma *vma);
 void i915_vma_revoke_mmap(struct i915_vma *vma);
+void __i915_vma_evict(struct i915_vma *vma);
 int __i915_vma_unbind(struct i915_vma *vma);
 int __must_check i915_vma_unbind(struct i915_vma *vma);
 void i915_vma_unlink_ctx(struct i915_vma *vma);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
