Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F26E7186A46
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 12:42:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB72E6E418;
	Mon, 16 Mar 2020 11:42:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 430636E417
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Mar 2020 11:42:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20574783-1500050 
 for multiple; Mon, 16 Mar 2020 11:42:39 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Mar 2020 11:42:37 +0000
Message-Id: <20200316114237.5436-15-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200316114237.5436-1-chris@chris-wilson.co.uk>
References: <20200316114237.5436-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 15/15] drm/i915/gem: Bind the fence async for
 execbuf
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

It is illegal to wait on an another vma while holding the vm->mutex, as
that easily leads to ABBA deadlocks (we wait on a second vma that waits
on us to release the vm->mutex). So while the vm->mutex exists, move the
waiting outside of the lock into the async binding pipeline.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 21 +++--
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c  | 87 ++++++++++++++++++-
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h  |  5 ++
 3 files changed, 103 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 7fb47ff185a3..db5ad6a0df28 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -472,13 +472,19 @@ eb_pin_vma(struct i915_execbuffer *eb,
 		return false;
 
 	if (unlikely(ev->flags & EXEC_OBJECT_NEEDS_FENCE)) {
-		if (unlikely(i915_vma_pin_fence(vma))) {
-			i915_vma_unpin(vma);
-			return false;
-		}
+		struct i915_fence_reg *reg = vma->fence;
 
-		if (vma->fence)
+		/* Avoid waiting to change the fence; defer to async worker */
+		if (reg) {
+			if (READ_ONCE(reg->dirty))
+				return false;
+
+			atomic_inc(&reg->pin_count);
 			ev->flags |= __EXEC_OBJECT_HAS_FENCE;
+		} else {
+			if (i915_gem_object_is_tiled(vma->obj))
+				return false;
+		}
 	}
 
 	ev->flags |= __EXEC_OBJECT_HAS_PIN;
@@ -955,7 +961,7 @@ static int eb_reserve_vma(struct eb_vm_work *work, struct eb_vma *ev)
 
 pin:
 	if (unlikely(exec_flags & EXEC_OBJECT_NEEDS_FENCE)) {
-		err = __i915_vma_pin_fence(vma); /* XXX no waiting */
+		err = __i915_vma_pin_fence_async(vma, &work->base);
 		if (unlikely(err))
 			return err;
 
@@ -1030,6 +1036,9 @@ static int eb_bind_vma(struct dma_fence_work *base)
 
 		GEM_BUG_ON(vma->vm != vm);
 
+		if (ev->flags & __EXEC_OBJECT_HAS_FENCE)
+			__i915_vma_apply_fence_async(vma);
+
 		if (!ev->bind_flags)
 			goto put;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
index 97659a1249fd..d99d57be3505 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
@@ -21,10 +21,13 @@
  * IN THE SOFTWARE.
  */
 
+#include "i915_active.h"
 #include "i915_drv.h"
 #include "i915_scatterlist.h"
+#include "i915_sw_fence_work.h"
 #include "i915_pvinfo.h"
 #include "i915_vgpu.h"
+#include "i915_vma.h"
 
 /**
  * DOC: fence register handling
@@ -336,16 +339,14 @@ static struct i915_fence_reg *fence_find(struct i915_ggtt *ggtt)
 int __i915_vma_pin_fence(struct i915_vma *vma)
 {
 	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vma->vm);
-	struct i915_fence_reg *fence;
+	struct i915_fence_reg *fence = vma->fence;
 	struct i915_vma *set = i915_gem_object_is_tiled(vma->obj) ? vma : NULL;
 	int err;
 
 	lockdep_assert_held(&vma->vm->mutex);
 
 	/* Just update our place in the LRU if our fence is getting reused. */
-	if (vma->fence) {
-		fence = vma->fence;
-		GEM_BUG_ON(fence->vma != vma);
+	if (fence && fence->vma == vma) {
 		atomic_inc(&fence->pin_count);
 		if (!fence->dirty) {
 			list_move_tail(&fence->link, &ggtt->fence_list);
@@ -377,6 +378,84 @@ int __i915_vma_pin_fence(struct i915_vma *vma)
 	return err;
 }
 
+int __i915_vma_pin_fence_async(struct i915_vma *vma,
+			       struct dma_fence_work *work)
+{
+	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vma->vm);
+	struct i915_vma *set = i915_gem_object_is_tiled(vma->obj) ? vma : NULL;
+	struct i915_fence_reg *fence = vma->fence;
+	int err;
+
+	lockdep_assert_held(&vma->vm->mutex);
+
+	/* Just update our place in the LRU if our fence is getting reused. */
+	if (fence && fence->vma == vma) {
+	} else if (set) {
+		fence = fence_find(ggtt);
+		if (IS_ERR(fence))
+			return PTR_ERR(fence);
+
+		GEM_BUG_ON(atomic_read(&fence->pin_count));
+		fence->dirty = true;
+	} else {
+		return 0;
+	}
+
+	atomic_inc(&fence->pin_count);
+	if (!fence->dirty) {
+		list_move_tail(&fence->link, &ggtt->fence_list);
+		return 0;
+	}
+
+	fence->tiling = 0;
+	if (set) {
+		if (INTEL_GEN(fence_to_i915(fence)) < 4) {
+			/* implicit 'unfenced' GPU blits */
+			err = i915_sw_fence_await_active(&work->chain,
+							 &vma->active,
+							 I915_ACTIVE_AWAIT_ALL);
+			if (err) {
+				atomic_dec(&fence->pin_count);
+				return err;
+			}
+		}
+
+		fence->start = vma->node.start;
+		fence->size = vma->fence_size;
+		fence->stride = i915_gem_object_get_stride(vma->obj);
+		fence->tiling = i915_gem_object_get_tiling(vma->obj);
+	}
+
+	set = xchg(&fence->vma, vma);
+	if (set) {
+		err = i915_sw_fence_await_active(&work->chain,
+						 &fence->active,
+						 I915_ACTIVE_AWAIT_ALL);
+		if (err) {
+			fence->vma = set;
+			atomic_dec(&fence->pin_count);
+			return err;
+		}
+
+		if (set != vma) {
+			GEM_BUG_ON(set->fence != fence);
+			i915_vma_revoke_mmap(set);
+			set->fence = NULL;
+		}
+	}
+
+	vma->fence = fence;
+	return 0;
+}
+
+void __i915_vma_apply_fence_async(struct i915_vma *vma)
+{
+	struct i915_fence_reg *fence = vma->fence;
+
+	if (fence->dirty)
+		fence_write(fence);
+}
+
 /**
  * i915_vma_pin_fence - set up fencing for a vma
  * @vma: vma to map through a fence reg
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h
index 9eef679e1311..d306ac14d47e 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h
@@ -30,6 +30,7 @@
 
 #include "i915_active.h"
 
+struct dma_fence_work;
 struct drm_i915_gem_object;
 struct i915_ggtt;
 struct i915_vma;
@@ -70,6 +71,10 @@ void i915_gem_object_do_bit_17_swizzle(struct drm_i915_gem_object *obj,
 void i915_gem_object_save_bit_17_swizzle(struct drm_i915_gem_object *obj,
 					 struct sg_table *pages);
 
+int __i915_vma_pin_fence_async(struct i915_vma *vma,
+			       struct dma_fence_work *work);
+void __i915_vma_apply_fence_async(struct i915_vma *vma);
+
 void intel_ggtt_init_fences(struct i915_ggtt *ggtt);
 void intel_ggtt_fini_fences(struct i915_ggtt *ggtt);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
