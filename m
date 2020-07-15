Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78035220C4C
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 13:52:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1210E6EB2C;
	Wed, 15 Jul 2020 11:52:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 578986EAD1
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 11:52:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21826137-1500050 
 for multiple; Wed, 15 Jul 2020 12:51:54 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jul 2020 12:51:11 +0100
Message-Id: <20200715115147.11866-30-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200715115147.11866-1-chris@chris-wilson.co.uk>
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 30/66] drm/i915: Specialise GGTT binding
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

The Global GTT mmapings do not require any backing storage for the page
directories and so do not need extensive support for preallocations, or
for handling multiple bindings en masse. The Global GTT bindings also
need to take into account an eviction strategy for pinned vma, that we
want to explicitly avoid for user bindings. It is easier to specialise
the i915_ggtt_pin() to keep alive the pages/address as they are used by
HW in its private GTT, while we deconstruct the i915_vma_pin() and
rebuild.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c |   7 +-
 drivers/gpu/drm/i915/i915_vma.c      | 125 +++++++++++++++++++++++----
 drivers/gpu/drm/i915/i915_vma.h      |   1 +
 3 files changed, 113 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
index 3eab2cc751bc..308f7f4f7bd7 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
@@ -392,8 +392,11 @@ int gen6_ppgtt_pin(struct i915_ppgtt *base)
 	 * size. We allocate at the top of the GTT to avoid fragmentation.
 	 */
 	err = 0;
-	if (!atomic_read(&ppgtt->pin_count))
-		err = i915_ggtt_pin(ppgtt->vma, GEN6_PD_ALIGN, PIN_HIGH);
+	if (!atomic_read(&ppgtt->pin_count)) {
+		err = i915_ggtt_pin_locked(ppgtt->vma, GEN6_PD_ALIGN, PIN_HIGH);
+		if (err == 0)
+			err = i915_vma_wait_for_bind(ppgtt->vma);
+	}
 	if (!err)
 		atomic_inc(&ppgtt->pin_count);
 	mutex_unlock(&ppgtt->pin_mutex);
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index e584a3355911..4993fa99cb71 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -952,7 +952,7 @@ int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 	return err;
 }
 
-static void flush_idle_contexts(struct intel_gt *gt)
+static void unpin_idle_contexts(struct intel_gt *gt)
 {
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
@@ -963,31 +963,120 @@ static void flush_idle_contexts(struct intel_gt *gt)
 	intel_gt_wait_for_idle(gt, MAX_SCHEDULE_TIMEOUT);
 }
 
+int i915_ggtt_pin_locked(struct i915_vma *vma, u32 align, unsigned int flags)
+{
+	struct i915_vma_work *work = NULL;
+	unsigned int bound;
+	int err;
+
+	GEM_BUG_ON(vma->vm->allocate_va_range);
+	GEM_BUG_ON(i915_vma_is_closed(vma));
+
+	/* First try and grab the pin without rebinding the vma */
+	if (i915_vma_pin_inplace(vma, I915_VMA_GLOBAL_BIND))
+		return 0;
+
+	work = i915_vma_work();
+	if (!work)
+		return -ENOMEM;
+	work->vm = i915_vm_get(vma->vm);
+
+	err = mutex_lock_interruptible(&vma->vm->mutex);
+	if (err)
+		goto err_fence;
+
+	/* No more allocations allowed now we hold vm->mutex */
+
+	bound = atomic_read(&vma->flags);
+	if (unlikely(bound & I915_VMA_ERROR)) {
+		err = -ENOMEM;
+		goto err_unlock;
+	}
+
+	if (unlikely(!((bound + 1) & I915_VMA_PIN_MASK))) {
+		err = -EAGAIN; /* pins are meant to be fairly temporary */
+		goto err_unlock;
+	}
+
+	if (unlikely(bound & I915_VMA_GLOBAL_BIND)) {
+		__i915_vma_pin(vma);
+		goto err_unlock;
+	}
+
+	err = i915_active_acquire(&vma->active);
+	if (err)
+		goto err_unlock;
+
+	if (!(bound & I915_VMA_BIND_MASK)) {
+		err = __wait_for_unbind(vma, flags);
+		if (err)
+			goto err_active;
+
+		err = i915_vma_insert(vma, 0, align,
+				      flags | I915_VMA_GLOBAL_BIND);
+		if (err == -ENOSPC) {
+			unpin_idle_contexts(vma->vm->gt);
+			err = i915_vma_insert(vma, 0, align,
+					      flags | I915_VMA_GLOBAL_BIND);
+		}
+		if (err)
+			goto err_active;
+
+		__i915_vma_set_map_and_fenceable(vma);
+	}
+
+	err = i915_vma_bind(vma,
+			    vma->obj ? vma->obj->cache_level : 0,
+			    I915_VMA_GLOBAL_BIND,
+			    work);
+	if (err)
+		goto err_remove;
+	GEM_BUG_ON(!i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND));
+
+	list_move_tail(&vma->vm_link, &vma->vm->bound_list);
+	GEM_BUG_ON(!i915_vma_is_active(vma));
+
+	__i915_vma_pin(vma);
+
+err_remove:
+	if (!i915_vma_is_bound(vma, I915_VMA_BIND_MASK)) {
+		i915_vma_detach(vma);
+		drm_mm_remove_node(&vma->node);
+	}
+err_active:
+	i915_active_release(&vma->active);
+err_unlock:
+	mutex_unlock(&vma->vm->mutex);
+err_fence:
+	dma_fence_work_commit_imm(&work->base);
+	return err;
+}
+
 int i915_ggtt_pin(struct i915_vma *vma, u32 align, unsigned int flags)
 {
-	struct i915_address_space *vm = vma->vm;
 	int err;
 
 	GEM_BUG_ON(!i915_vma_is_ggtt(vma));
 
-	do {
-		err = i915_vma_pin(vma, 0, align, flags | PIN_GLOBAL);
-		if (err != -ENOSPC) {
-			if (!err) {
-				err = i915_vma_wait_for_bind(vma);
-				if (err)
-					i915_vma_unpin(vma);
-			}
+	if (!i915_vma_pin_inplace(vma, I915_VMA_GLOBAL_BIND)) {
+		err = i915_gem_object_lock_interruptible(vma->obj);
+		if (err)
 			return err;
-		}
 
-		/* Unlike i915_vma_pin, we don't take no for an answer! */
-		flush_idle_contexts(vm->gt);
-		if (mutex_lock_interruptible(&vm->mutex) == 0) {
-			i915_gem_evict_vm(vm);
-			mutex_unlock(&vm->mutex);
-		}
-	} while (1);
+		err = __i915_gem_object_get_pages_locked(vma->obj);
+		if (err == 0)
+			err = i915_ggtt_pin_locked(vma, align, flags);
+
+		i915_gem_object_unlock(vma->obj);
+		if (err)
+			return err;
+	}
+
+	err = i915_vma_wait_for_bind(vma);
+	if (err)
+		i915_vma_unpin(vma);
+
+	return err;
 }
 
 static void __vma_close(struct i915_vma *vma, struct intel_gt *gt)
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index 9a26e6cbe8cd..1049d80dc47f 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -244,6 +244,7 @@ bool i915_vma_pin_inplace(struct i915_vma *vma, unsigned int flags);
 int __must_check
 i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags);
 int i915_ggtt_pin(struct i915_vma *vma, u32 align, unsigned int flags);
+int i915_ggtt_pin_locked(struct i915_vma *vma, u32 align, unsigned int flags);
 
 static inline int i915_vma_pin_count(const struct i915_vma *vma)
 {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
