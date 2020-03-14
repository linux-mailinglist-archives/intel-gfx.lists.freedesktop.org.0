Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 106221855B3
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Mar 2020 13:21:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FD9389F77;
	Sat, 14 Mar 2020 12:21:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DB5B89F77
 for <intel-gfx@lists.freedesktop.org>; Sat, 14 Mar 2020 12:21:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20559232-1500050 
 for multiple; Sat, 14 Mar 2020 12:20:59 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 14 Mar 2020 12:20:58 +0000
Message-Id: <20200314122058.21472-7-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200314122058.21472-1-chris@chris-wilson.co.uk>
References: <20200314122058.21472-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/7] drm/i915/gt: Make fence revocation
 unequivocal
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
---
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c | 20 +++++++++++---------
 drivers/gpu/drm/i915/i915_gem.c              | 12 +++++-------
 drivers/gpu/drm/i915/i915_vma.c              |  4 +---
 drivers/gpu/drm/i915/i915_vma.h              |  2 +-
 4 files changed, 18 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
index f1ded8fbda3a..125713f2d055 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
@@ -305,23 +305,25 @@ static int fence_update(struct i915_fence_reg *fence,
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
+
+	GEM_BUG_ON(fence->vma != vma);
+	GEM_BUG_ON(!i915_active_is_idle(&fence->active));
+	GEM_BUG_ON(atomic_read(&fence->pin_count));
 
-	if (atomic_read(&fence->pin_count))
-		return -EBUSY;
+	WRITE_ONCE(fence->vma, NULL);
+	vma->fence = NULL;
 
-	return fence_update(fence, NULL);
+	with_intel_runtime_pm_if_in_use(fence_to_uncore(fence)->rpm, wakeref)
+		fence_write(fence, NULL);
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
index aedbd056fd45..df197b07ac99 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -1280,9 +1280,7 @@ int __i915_vma_unbind(struct i915_vma *vma)
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
