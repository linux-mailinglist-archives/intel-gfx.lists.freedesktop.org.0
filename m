Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C8AF17A714
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 15:03:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 581B06EBC5;
	Thu,  5 Mar 2020 14:03:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 780E36EBC5
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Mar 2020 14:03:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20454709-1500050 
 for multiple; Thu, 05 Mar 2020 14:02:47 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Mar 2020 14:02:47 +0000
Message-Id: <20200305140247.2761266-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Limit struct_mutex to eb_reserve
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

We only need to serialise the multiple pinning during the eb_reserve
phase. Ideally this would be using the vm->mutex as an outer lock, or
using a composite global mutex (ww_mutex), but at the moment we are
using struct_mutex for the group.

Fixes: 003d8b9143a6 ("drm/i915/gem: Only call eb_lookup_vma once during execbuf ioctl")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 51 ++++++++-----------
 drivers/gpu/drm/i915/i915_drv.h               |  6 ---
 2 files changed, 20 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 7bb27f382af7..faa5b5c99a9a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -610,7 +610,7 @@ static int eb_reserve(struct i915_execbuffer *eb)
 	struct list_head last;
 	struct eb_vma *ev;
 	unsigned int i, pass;
-	int err;
+	int err = 0;
 
 	/*
 	 * Attempt to pin all of the buffers into the GTT.
@@ -626,8 +626,10 @@ static int eb_reserve(struct i915_execbuffer *eb)
 	 * room for the earlier objects *unless* we need to defragment.
 	 */
 
+	if (mutex_lock_interruptible(&eb->i915->drm.struct_mutex))
+		return -EINTR;
+
 	pass = 0;
-	err = 0;
 	do {
 		list_for_each_entry(ev, &eb->unbound, bind_link) {
 			err = eb_reserve_vma(eb, ev, pin_flags);
@@ -635,7 +637,7 @@ static int eb_reserve(struct i915_execbuffer *eb)
 				break;
 		}
 		if (!(err == -ENOSPC || err == -EAGAIN))
-			return err;
+			break;
 
 		/* Resort *all* the objects into priority order */
 		INIT_LIST_HEAD(&eb->unbound);
@@ -666,7 +668,9 @@ static int eb_reserve(struct i915_execbuffer *eb)
 		list_splice_tail(&last, &eb->unbound);
 
 		if (err == -EAGAIN) {
+			mutex_unlock(&eb->i915->drm.struct_mutex);
 			flush_workqueue(eb->i915->mm.userptr_wq);
+			mutex_lock(&eb->i915->drm.struct_mutex);
 			continue;
 		}
 
@@ -680,15 +684,20 @@ static int eb_reserve(struct i915_execbuffer *eb)
 			err = i915_gem_evict_vm(eb->context->vm);
 			mutex_unlock(&eb->context->vm->mutex);
 			if (err)
-				return err;
+				goto unlock;
 			break;
 
 		default:
-			return -ENOSPC;
+			err = -ENOSPC;
+			goto unlock;
 		}
 
 		pin_flags = PIN_USER;
 	} while (1);
+
+unlock:
+	mutex_unlock(&eb->i915->drm.struct_mutex);
+	return err;
 }
 
 static unsigned int eb_batch_index(const struct i915_execbuffer *eb)
@@ -1631,7 +1640,6 @@ static int eb_prefault_relocations(const struct i915_execbuffer *eb)
 
 static noinline int eb_relocate_slow(struct i915_execbuffer *eb)
 {
-	struct drm_device *dev = &eb->i915->drm;
 	bool have_copy = false;
 	struct eb_vma *ev;
 	int err = 0;
@@ -1642,8 +1650,6 @@ static noinline int eb_relocate_slow(struct i915_execbuffer *eb)
 		goto out;
 	}
 
-	mutex_unlock(&dev->struct_mutex);
-
 	/*
 	 * We take 3 passes through the slowpatch.
 	 *
@@ -1666,21 +1672,8 @@ static noinline int eb_relocate_slow(struct i915_execbuffer *eb)
 		cond_resched();
 		err = 0;
 	}
-	if (err) {
-		mutex_lock(&dev->struct_mutex);
-		goto out;
-	}
-
-	/* A frequent cause for EAGAIN are currently unavailable client pages */
-	flush_workqueue(eb->i915->mm.userptr_wq);
-
-	err = i915_mutex_lock_interruptible(dev);
-	if (err) {
-		mutex_lock(&dev->struct_mutex);
+	if (err)
 		goto out;
-	}
-
-	GEM_BUG_ON(!eb->batch);
 
 	list_for_each_entry(ev, &eb->relocs, reloc_link) {
 		if (!have_copy) {
@@ -1738,9 +1731,11 @@ static int eb_relocate(struct i915_execbuffer *eb)
 	if (err)
 		return err;
 
-	err = eb_reserve(eb);
-	if (err)
-		return err;
+	if (!list_empty(&eb->unbound)) {
+		err = eb_reserve(eb);
+		if (err)
+			return err;
+	}
 
 	/* The objects are in their final locations, apply the relocations. */
 	if (eb->args->flags & __EXEC_HAS_RELOC) {
@@ -2690,10 +2685,6 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	if (unlikely(err))
 		goto err_context;
 
-	err = i915_mutex_lock_interruptible(dev);
-	if (err)
-		goto err_engine;
-
 	err = eb_relocate(&eb);
 	if (err) {
 		/*
@@ -2837,8 +2828,6 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		eb_release_vmas(&eb);
 	if (eb.trampoline)
 		i915_vma_unpin(eb.trampoline);
-	mutex_unlock(&dev->struct_mutex);
-err_engine:
 	eb_unpin_engine(&eb);
 err_context:
 	i915_gem_context_put(eb.gem_context);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 123d0fadfafc..c081f4ec87df 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1734,12 +1734,6 @@ int i915_gem_object_unbind(struct drm_i915_gem_object *obj,
 
 void i915_gem_runtime_suspend(struct drm_i915_private *dev_priv);
 
-static inline int __must_check
-i915_mutex_lock_interruptible(struct drm_device *dev)
-{
-	return mutex_lock_interruptible(&dev->struct_mutex);
-}
-
 int i915_gem_dumb_create(struct drm_file *file_priv,
 			 struct drm_device *dev,
 			 struct drm_mode_create_dumb *args);
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
