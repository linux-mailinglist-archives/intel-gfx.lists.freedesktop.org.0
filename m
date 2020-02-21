Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE27E167E3C
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 14:17:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4A6C6E2B6;
	Fri, 21 Feb 2020 13:17:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3EFE6E2B6
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 13:16:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20302144-1500050 
 for multiple; Fri, 21 Feb 2020 13:15:30 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Feb 2020 13:15:29 +0000
Message-Id: <20200221131529.2742129-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200221094002.2481703-3-chris@chris-wilson.co.uk>
References: <20200221094002.2481703-3-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Only call eb_lookup_vma once
 during execbuf ioctl
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

As we no longer stash anything inside i915_vma under the exclusive
protection of struct_mutex, we do not need to revoke the i915_vma
stashes before dropping struct_mutex to handle pagefaults. Knowing that
we must drop the struct_mutex while keeping the eb->vma around, means
that we are required to hold onto to the object reference until we have
marked the vma as active.

Fixes: 155ab8836caa ("drm/i915: Move object close under its own lock")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 109 +++++++-----------
 1 file changed, 43 insertions(+), 66 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 3ccd3a096486..e4e50155145e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -48,17 +48,15 @@ enum {
 #define DBG_FORCE_RELOC 0 /* choose one of the above! */
 };
 
-#define __EXEC_OBJECT_HAS_REF		BIT(31)
-#define __EXEC_OBJECT_HAS_PIN		BIT(30)
-#define __EXEC_OBJECT_HAS_FENCE		BIT(29)
-#define __EXEC_OBJECT_NEEDS_MAP		BIT(28)
-#define __EXEC_OBJECT_NEEDS_BIAS	BIT(27)
-#define __EXEC_OBJECT_INTERNAL_FLAGS	(~0u << 27) /* all of the above */
+#define __EXEC_OBJECT_HAS_PIN		BIT(31)
+#define __EXEC_OBJECT_HAS_FENCE		BIT(30)
+#define __EXEC_OBJECT_NEEDS_MAP		BIT(29)
+#define __EXEC_OBJECT_NEEDS_BIAS	BIT(28)
+#define __EXEC_OBJECT_INTERNAL_FLAGS	(~0u << 28) /* all of the above */
 #define __EXEC_OBJECT_RESERVED (__EXEC_OBJECT_HAS_PIN | __EXEC_OBJECT_HAS_FENCE)
 
 #define __EXEC_HAS_RELOC	BIT(31)
-#define __EXEC_VALIDATED	BIT(30)
-#define __EXEC_INTERNAL_FLAGS	(~0u << 30)
+#define __EXEC_INTERNAL_FLAGS	(~0u << 31)
 #define UPDATE			PIN_OFFSET_FIXED
 
 #define BATCH_OFFSET_BIAS (256*1024)
@@ -473,24 +471,17 @@ eb_validate_vma(struct i915_execbuffer *eb,
 	return 0;
 }
 
-static int
+static void
 eb_add_vma(struct i915_execbuffer *eb,
 	   unsigned int i, unsigned batch_idx,
 	   struct i915_vma *vma)
 {
 	struct drm_i915_gem_exec_object2 *entry = &eb->exec[i];
 	struct eb_vma *ev = &eb->vma[i];
-	int err;
 
 	GEM_BUG_ON(i915_vma_is_closed(vma));
 
-	if (!(eb->args->flags & __EXEC_VALIDATED)) {
-		err = eb_validate_vma(eb, entry, vma);
-		if (unlikely(err))
-			return err;
-	}
-
-	ev->vma = vma;
+	ev->vma = i915_vma_get(vma);
 	ev->exec = entry;
 	ev->flags = entry->flags;
 
@@ -523,20 +514,14 @@ eb_add_vma(struct i915_execbuffer *eb,
 		eb->batch = ev;
 	}
 
-	err = 0;
 	if (eb_pin_vma(eb, entry, ev)) {
 		if (entry->offset != vma->node.start) {
 			entry->offset = vma->node.start | UPDATE;
 			eb->args->flags |= __EXEC_HAS_RELOC;
 		}
 	} else {
-		eb_unreserve_vma(ev);
-
 		list_add_tail(&ev->bind_link, &eb->unbound);
-		if (drm_mm_node_allocated(&vma->node))
-			err = i915_vma_unbind(vma);
 	}
-	return err;
 }
 
 static inline int use_cpu_reloc(const struct reloc_cache *cache,
@@ -585,6 +570,14 @@ static int eb_reserve_vma(const struct i915_execbuffer *eb, struct eb_vma *ev)
 		pin_flags |= BATCH_OFFSET_BIAS | PIN_OFFSET_BIAS;
 	}
 
+	if (drm_mm_node_allocated(&vma->node) &&
+	    eb_vma_misplaced(entry, vma, ev->flags)) {
+		eb_unreserve_vma(ev);
+		err = i915_vma_unbind(vma);
+		if (err)
+			return err;
+	}
+
 	err = i915_vma_pin(vma,
 			   entry->pad_to_size, entry->alignment,
 			   pin_flags);
@@ -643,7 +636,7 @@ static int eb_reserve(struct i915_execbuffer *eb)
 			if (err)
 				break;
 		}
-		if (err != -ENOSPC)
+		if (!(err == -ENOSPC || err == -EAGAIN))
 			return err;
 
 		/* Resort *all* the objects into priority order */
@@ -673,6 +666,11 @@ static int eb_reserve(struct i915_execbuffer *eb)
 		}
 		list_splice_tail(&last, &eb->unbound);
 
+		if (err == -EAGAIN) {
+			flush_workqueue(eb->i915->mm.userptr_wq);
+			continue;
+		}
+
 		switch (pass++) {
 		case 0:
 			break;
@@ -726,17 +724,14 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
 	unsigned int i, batch;
 	int err;
 
+	if (unlikely(i915_gem_context_is_closed(eb->gem_context)))
+		return -ENOENT;
+
 	INIT_LIST_HEAD(&eb->relocs);
 	INIT_LIST_HEAD(&eb->unbound);
 
 	batch = eb_batch_index(eb);
 
-	mutex_lock(&eb->gem_context->mutex);
-	if (unlikely(i915_gem_context_is_closed(eb->gem_context))) {
-		err = -ENOENT;
-		goto err_ctx;
-	}
-
 	for (i = 0; i < eb->buffer_count; i++) {
 		u32 handle = eb->exec[i].handle;
 		struct i915_lut_handle *lut;
@@ -781,25 +776,19 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
 		i915_gem_object_unlock(obj);
 
 add_vma:
-		err = eb_add_vma(eb, i, batch, vma);
+		err = eb_validate_vma(eb, &eb->exec[i], vma);
 		if (unlikely(err))
 			goto err_vma;
 
-		GEM_BUG_ON(drm_mm_node_allocated(&vma->node) &&
-			   eb_vma_misplaced(&eb->exec[i], vma, eb->vma[i].flags));
+		eb_add_vma(eb, i, batch, vma);
 	}
 
-	mutex_unlock(&eb->gem_context->mutex);
-
-	eb->args->flags |= __EXEC_VALIDATED;
-	return eb_reserve(eb);
+	return 0;
 
 err_obj:
 	i915_gem_object_put(obj);
 err_vma:
 	eb->vma[i].vma = NULL;
-err_ctx:
-	mutex_unlock(&eb->gem_context->mutex);
 	return err;
 }
 
@@ -840,19 +829,10 @@ static void eb_release_vmas(const struct i915_execbuffer *eb)
 		if (ev->flags & __EXEC_OBJECT_HAS_PIN)
 			__eb_unreserve_vma(vma, ev->flags);
 
-		if (ev->flags & __EXEC_OBJECT_HAS_REF)
-			i915_vma_put(vma);
+		i915_vma_put(vma);
 	}
 }
 
-static void eb_reset_vmas(const struct i915_execbuffer *eb)
-{
-	eb_release_vmas(eb);
-	if (eb->lut_size > 0)
-		memset(eb->buckets, 0,
-		       sizeof(struct hlist_head) << eb->lut_size);
-}
-
 static void eb_destroy(const struct i915_execbuffer *eb)
 {
 	GEM_BUG_ON(eb->reloc_cache.rq);
@@ -1661,8 +1641,6 @@ static noinline int eb_relocate_slow(struct i915_execbuffer *eb)
 		goto out;
 	}
 
-	/* We may process another execbuffer during the unlock... */
-	eb_reset_vmas(eb);
 	mutex_unlock(&dev->struct_mutex);
 
 	/*
@@ -1701,11 +1679,6 @@ static noinline int eb_relocate_slow(struct i915_execbuffer *eb)
 		goto out;
 	}
 
-	/* reacquire the objects */
-	err = eb_lookup_vmas(eb);
-	if (err)
-		goto err;
-
 	GEM_BUG_ON(!eb->batch);
 
 	list_for_each_entry(ev, &eb->relocs, reloc_link) {
@@ -1756,8 +1729,17 @@ static noinline int eb_relocate_slow(struct i915_execbuffer *eb)
 
 static int eb_relocate(struct i915_execbuffer *eb)
 {
-	if (eb_lookup_vmas(eb))
-		goto slow;
+	int err;
+
+	mutex_lock(&eb->gem_context->mutex);
+	err = eb_lookup_vmas(eb);
+	mutex_unlock(&eb->gem_context->mutex);
+	if (err)
+		return err;
+
+	err = eb_reserve(eb);
+	if (err)
+		return err;
 
 	/* The objects are in their final locations, apply the relocations. */
 	if (eb->args->flags & __EXEC_HAS_RELOC) {
@@ -1765,14 +1747,11 @@ static int eb_relocate(struct i915_execbuffer *eb)
 
 		list_for_each_entry(ev, &eb->relocs, reloc_link) {
 			if (eb_relocate_vma(eb, ev))
-				goto slow;
+				return eb_relocate_slow(eb);
 		}
 	}
 
 	return 0;
-
-slow:
-	return eb_relocate_slow(eb);
 }
 
 static int eb_move_to_gpu(struct i915_execbuffer *eb)
@@ -1854,8 +1833,7 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
 		i915_vma_unlock(vma);
 
 		__eb_unreserve_vma(vma, flags);
-		if (unlikely(flags & __EXEC_OBJECT_HAS_REF))
-			i915_vma_put(vma);
+		i915_vma_put(vma);
 
 		ev->vma = NULL;
 	}
@@ -2115,8 +2093,7 @@ static int eb_parse(struct i915_execbuffer *eb)
 		goto err_trampoline;
 
 	eb->vma[eb->buffer_count].vma = i915_vma_get(shadow);
-	eb->vma[eb->buffer_count].flags =
-		__EXEC_OBJECT_HAS_PIN | __EXEC_OBJECT_HAS_REF;
+	eb->vma[eb->buffer_count].flags = __EXEC_OBJECT_HAS_PIN;
 	eb->batch = &eb->vma[eb->buffer_count++];
 
 	eb->trampoline = trampoline;
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
