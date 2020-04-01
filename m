Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C42519B760
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 23:01:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F41C6E99E;
	Wed,  1 Apr 2020 21:01:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76E8089D3E
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Apr 2020 21:01:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20769871-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 01 Apr 2020 22:01:03 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Apr 2020 22:01:04 +0100
Message-Id: <20200401210104.15907-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200401210104.15907-1-chris@chris-wilson.co.uk>
References: <20200401210104.15907-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/3] drm/i915/gt: Make fence revocation unequivocal
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If we must revoke the fence because the VMA is no longer present, or
because the fence no longer applies, ensure that we do and convert it
into an error if we try but cannot.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c | 21 +++++++++++---------
 drivers/gpu/drm/i915/i915_gem.c              | 12 +++++------
 drivers/gpu/drm/i915/i915_vma.c              |  4 +---
 drivers/gpu/drm/i915/i915_vma.h              |  2 +-
 4 files changed, 19 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
index b5b2ef52e570..7fb36b12fe7a 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
@@ -298,23 +298,26 @@ static int fence_update(struct i915_fence_reg *fence,
  *
  * This function force-removes any fence from the given object, which is useful
  * if the kernel wants to do untiled GTT access.
- *
- * Returns:
- *
- * 0 on success, negative error code on failure.
  */
-int i915_vma_revoke_fence(struct i915_vma *vma)
+void i915_vma_revoke_fence(struct i915_vma *vma)
 {
 	struct i915_fence_reg *fence = vma->fence;
+	intel_wakeref_t wakeref;
 
 	lockdep_assert_held(&vma->vm->mutex);
 	if (!fence)
-		return 0;
+		return;
 
-	if (atomic_read(&fence->pin_count))
-		return -EBUSY;
+	GEM_BUG_ON(fence->vma != vma);
+	GEM_BUG_ON(!i915_active_is_idle(&fence->active));
+	GEM_BUG_ON(atomic_read(&fence->pin_count));
+
+	fence->tiling = 0;
+	WRITE_ONCE(fence->vma, NULL);
+	vma->fence = NULL;
 
-	return fence_update(fence, NULL);
+	with_intel_runtime_pm_if_in_use(fence_to_uncore(fence)->rpm, wakeref)
+		fence_write(fence);
 }
 
 static struct i915_fence_reg *fence_find(struct i915_ggtt *ggtt)
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 762b50b08d73..b0836fc47ae6 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -993,18 +993,16 @@ i915_gem_object_ggtt_pin(struct drm_i915_gem_object *obj,
 			return ERR_PTR(ret);
 	}
 
+	ret = i915_vma_pin(vma, size, alignment, flags | PIN_GLOBAL);
+	if (ret)
+		return ERR_PTR(ret);
+
 	if (vma->fence && !i915_gem_object_is_tiled(obj)) {
 		mutex_lock(&ggtt->vm.mutex);
-		ret = i915_vma_revoke_fence(vma);
+		i915_vma_revoke_fence(vma);
 		mutex_unlock(&ggtt->vm.mutex);
-		if (ret)
-			return ERR_PTR(ret);
 	}
 
-	ret = i915_vma_pin(vma, size, alignment, flags | PIN_GLOBAL);
-	if (ret)
-		return ERR_PTR(ret);
-
 	ret = i915_vma_wait_for_bind(vma);
 	if (ret) {
 		i915_vma_unpin(vma);
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 616ca5a7c875..b5f78b0acf5d 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -1298,9 +1298,7 @@ int __i915_vma_unbind(struct i915_vma *vma)
 		i915_vma_flush_writes(vma);
 
 		/* release the fence reg _after_ flushing */
-		ret = i915_vma_revoke_fence(vma);
-		if (ret)
-			return ret;
+		i915_vma_revoke_fence(vma);
 
 		/* Force a pagefault for domain tracking on next user access */
 		i915_vma_revoke_mmap(vma);
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index b958ad07f212..8ad1daabcd58 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -326,7 +326,7 @@ static inline struct page *i915_vma_first_page(struct i915_vma *vma)
  * True if the vma has a fence, false otherwise.
  */
 int __must_check i915_vma_pin_fence(struct i915_vma *vma);
-int __must_check i915_vma_revoke_fence(struct i915_vma *vma);
+void i915_vma_revoke_fence(struct i915_vma *vma);
 
 int __i915_vma_pin_fence(struct i915_vma *vma);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
