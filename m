Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC979147CCF
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 10:55:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46CA86E2D1;
	Fri, 24 Jan 2020 09:55:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B1366E2D1
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 09:55:25 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 10:55:11 +0100
Message-Id: <20200124095521.2006632-4-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200124095521.2006632-1-maarten.lankhorst@linux.intel.com>
References: <20200124095521.2006632-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/13] drm/i915: Separate lookup and pinning in
 execbuf.
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

We want to get rid of struct mutex, but vma reservation was entangled
with vma lookup. Make vma lookup and validation a preparation step,
and vma pinning a repeatable step. This allows us to keep all the looked
up information when dropping all locks, which saves an extra lookup during
relocation slowpath.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 98 ++++++++++---------
 drivers/gpu/drm/i915/i915_drv.h               |  6 --
 2 files changed, 54 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index f2602d17c612..cfcf3f451030 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -57,8 +57,7 @@ enum {
 #define __EXEC_OBJECT_RESERVED (__EXEC_OBJECT_HAS_PIN | __EXEC_OBJECT_HAS_FENCE)
 
 #define __EXEC_HAS_RELOC	BIT(31)
-#define __EXEC_VALIDATED	BIT(30)
-#define __EXEC_INTERNAL_FLAGS	(~0u << 30)
+#define __EXEC_INTERNAL_FLAGS	(~0u << 31)
 #define UPDATE			PIN_OFFSET_FIXED
 
 #define BATCH_OFFSET_BIAS (256*1024)
@@ -485,11 +484,9 @@ eb_add_vma(struct i915_execbuffer *eb,
 
 	GEM_BUG_ON(i915_vma_is_closed(vma));
 
-	if (!(eb->args->flags & __EXEC_VALIDATED)) {
-		err = eb_validate_vma(eb, entry, vma);
-		if (unlikely(err))
-			return err;
-	}
+	err = eb_validate_vma(eb, entry, vma);
+	if (unlikely(err))
+		return err;
 
 	ev->vma = vma;
 	ev->exec = entry;
@@ -524,20 +521,7 @@ eb_add_vma(struct i915_execbuffer *eb,
 		eb->batch = ev;
 	}
 
-	err = 0;
-	if (eb_pin_vma(eb, entry, ev)) {
-		if (entry->offset != vma->node.start) {
-			entry->offset = vma->node.start | UPDATE;
-			eb->args->flags |= __EXEC_HAS_RELOC;
-		}
-	} else {
-		eb_unreserve_vma(ev);
-
-		list_add_tail(&ev->bind_link, &eb->unbound);
-		if (drm_mm_node_allocated(&vma->node))
-			err = i915_vma_unbind(vma);
-	}
-	return err;
+	return 0;
 }
 
 static inline int use_cpu_reloc(const struct reloc_cache *cache,
@@ -728,7 +712,6 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
 	int err;
 
 	INIT_LIST_HEAD(&eb->relocs);
-	INIT_LIST_HEAD(&eb->unbound);
 
 	batch = eb_batch_index(eb);
 
@@ -785,15 +768,11 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
 		err = eb_add_vma(eb, i, batch, vma);
 		if (unlikely(err))
 			goto err_vma;
-
-		GEM_BUG_ON(drm_mm_node_allocated(&vma->node) &&
-			   eb_vma_misplaced(&eb->exec[i], vma, eb->vma[i].flags));
 	}
 
 	mutex_unlock(&eb->gem_context->mutex);
 
-	eb->args->flags |= __EXEC_VALIDATED;
-	return eb_reserve(eb);
+	return 0;
 
 err_obj:
 	i915_gem_object_put(obj);
@@ -804,6 +783,41 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
 	return err;
 }
 
+static int eb_validate_vmas(struct i915_execbuffer *eb)
+{
+	unsigned int i;
+	int err;
+
+	INIT_LIST_HEAD(&eb->unbound);
+
+	for (i = 0; i < eb->buffer_count; i++) {
+		struct drm_i915_gem_exec_object2 *entry = &eb->exec[i];
+		struct eb_vma *ev = &eb->vma[i];
+		struct i915_vma *vma = ev->vma;
+
+		if (eb_pin_vma(eb, entry, ev)) {
+			if (entry->offset != vma->node.start) {
+				entry->offset = vma->node.start | UPDATE;
+				eb->args->flags |= __EXEC_HAS_RELOC;
+			}
+		} else {
+			eb_unreserve_vma(ev);
+
+			list_add_tail(&ev->bind_link, &eb->unbound);
+			if (drm_mm_node_allocated(&vma->node)) {
+				err = i915_vma_unbind(vma);
+				if (err)
+					return err;
+			}
+		}
+
+		GEM_BUG_ON(drm_mm_node_allocated(&vma->node) &&
+			   eb_vma_misplaced(&eb->exec[i], vma, ev->flags));
+	}
+
+	return eb_reserve(eb);
+}
+
 static struct eb_vma *
 eb_get_vma(const struct i915_execbuffer *eb, unsigned long handle)
 {
@@ -836,22 +850,12 @@ static void eb_release_vmas(const struct i915_execbuffer *eb)
 		if (!vma)
 			break;
 
-		eb->vma[i].vma = NULL;
-
-		if (ev->flags & __EXEC_OBJECT_HAS_PIN)
-			__eb_unreserve_vma(vma, ev->flags);
+		eb_unreserve_vma(ev);
 
 		if (ev->flags & __EXEC_OBJECT_HAS_REF)
 			i915_vma_put(vma);
-	}
-}
 
-static void eb_reset_vmas(const struct i915_execbuffer *eb)
-{
-	eb_release_vmas(eb);
-	if (eb->lut_size > 0)
-		memset(eb->buckets, 0,
-		       sizeof(struct hlist_head) << eb->lut_size);
+	}
 }
 
 static void eb_destroy(const struct i915_execbuffer *eb)
@@ -1665,7 +1669,7 @@ static noinline int eb_relocate_slow(struct i915_execbuffer *eb)
 	}
 
 	/* We may process another execbuffer during the unlock... */
-	eb_reset_vmas(eb);
+	eb_release_vmas(eb);
 	mutex_unlock(&dev->struct_mutex);
 
 	/*
@@ -1698,14 +1702,14 @@ static noinline int eb_relocate_slow(struct i915_execbuffer *eb)
 	/* A frequent cause for EAGAIN are currently unavailable client pages */
 	flush_workqueue(eb->i915->mm.userptr_wq);
 
-	err = i915_mutex_lock_interruptible(dev);
+	err = mutex_lock_interruptible(&dev->struct_mutex);
 	if (err) {
 		mutex_lock(&dev->struct_mutex);
 		goto out;
 	}
 
 	/* reacquire the objects */
-	err = eb_lookup_vmas(eb);
+	err = eb_validate_vmas(eb);
 	if (err)
 		goto err;
 
@@ -1759,7 +1763,13 @@ static noinline int eb_relocate_slow(struct i915_execbuffer *eb)
 
 static int eb_relocate(struct i915_execbuffer *eb)
 {
-	if (eb_lookup_vmas(eb))
+	int err;
+
+	err = eb_lookup_vmas(eb);
+	if (err)
+		return err;
+
+	if (eb_validate_vmas(eb))
 		goto slow;
 
 	/* The objects are in their final locations, apply the relocations. */
@@ -2638,7 +2648,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	if (unlikely(err))
 		goto err_context;
 
-	err = i915_mutex_lock_interruptible(dev);
+	err = mutex_lock_interruptible(&dev->struct_mutex);
 	if (err)
 		goto err_engine;
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index a8a08c63278e..2d2fbc620a42 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1854,12 +1854,6 @@ int i915_gem_object_unbind(struct drm_i915_gem_object *obj,
 
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
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
