Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A815F28F0EE
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Oct 2020 13:26:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1012D6EC80;
	Thu, 15 Oct 2020 11:26:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AC656EC71
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Oct 2020 11:26:33 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Oct 2020 13:25:34 +0200
Message-Id: <20201015112627.1142745-11-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201015112627.1142745-1-maarten.lankhorst@linux.intel.com>
References: <20201015112627.1142745-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 10/63] drm/i915: make lockdep slightly
 happier about execbuf.
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

As soon as we install fences, we should stop allocating memory
in order to prevent any potential deadlocks.

This is required later on, when we start adding support for
dma-fence annotations.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 24 ++++++++++++++-----
 drivers/gpu/drm/i915/i915_active.c            | 20 ++++++++--------
 drivers/gpu/drm/i915/i915_vma.c               |  8 ++++---
 drivers/gpu/drm/i915/i915_vma.h               |  3 +++
 4 files changed, 36 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 2fbe6fbe043a..ea2242f1b5b8 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -49,11 +49,12 @@ enum {
 #define DBG_FORCE_RELOC 0 /* choose one of the above! */
 };
 
-#define __EXEC_OBJECT_HAS_PIN		BIT(31)
-#define __EXEC_OBJECT_HAS_FENCE		BIT(30)
-#define __EXEC_OBJECT_NEEDS_MAP		BIT(29)
-#define __EXEC_OBJECT_NEEDS_BIAS	BIT(28)
-#define __EXEC_OBJECT_INTERNAL_FLAGS	(~0u << 28) /* all of the above */
+/* __EXEC_OBJECT_NO_RESERVE is BIT(31), defined in i915_vma.h */
+#define __EXEC_OBJECT_HAS_PIN		BIT(30)
+#define __EXEC_OBJECT_HAS_FENCE		BIT(29)
+#define __EXEC_OBJECT_NEEDS_MAP		BIT(28)
+#define __EXEC_OBJECT_NEEDS_BIAS	BIT(27)
+#define __EXEC_OBJECT_INTERNAL_FLAGS	(~0u << 27) /* all of the above + */
 #define __EXEC_OBJECT_RESERVED (__EXEC_OBJECT_HAS_PIN | __EXEC_OBJECT_HAS_FENCE)
 
 #define __EXEC_HAS_RELOC	BIT(31)
@@ -925,6 +926,12 @@ static int eb_validate_vmas(struct i915_execbuffer *eb)
 			}
 		}
 
+		if (!(ev->flags & EXEC_OBJECT_WRITE)) {
+			err = dma_resv_reserve_shared(vma->resv, 1);
+			if (err)
+				return err;
+		}
+
 		GEM_BUG_ON(drm_mm_node_allocated(&vma->node) &&
 			   eb_vma_misplaced(&eb->exec[i], vma, ev->flags));
 	}
@@ -2190,7 +2197,8 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
 		}
 
 		if (err == 0)
-			err = i915_vma_move_to_active(vma, eb->request, flags);
+			err = i915_vma_move_to_active(vma, eb->request,
+						      flags | __EXEC_OBJECT_NO_RESERVE);
 	}
 
 	if (unlikely(err))
@@ -2442,6 +2450,10 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
 	if (err)
 		goto err_commit;
 
+	err = dma_resv_reserve_shared(shadow->resv, 1);
+	if (err)
+		goto err_commit;
+
 	/* Wait for all writes (and relocs) into the batch to complete */
 	err = i915_sw_fence_await_reservation(&pw->base.chain,
 					      pw->batch->resv, NULL, false,
diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
index b0a6522be3d1..2bf1e444dda7 100644
--- a/drivers/gpu/drm/i915/i915_active.c
+++ b/drivers/gpu/drm/i915/i915_active.c
@@ -296,18 +296,13 @@ static struct active_node *__active_lookup(struct i915_active *ref, u64 idx)
 static struct i915_active_fence *
 active_instance(struct i915_active *ref, u64 idx)
 {
-	struct active_node *node, *prealloc;
+	struct active_node *node;
 	struct rb_node **p, *parent;
 
 	node = __active_lookup(ref, idx);
 	if (likely(node))
 		return &node->base;
 
-	/* Preallocate a replacement, just in case */
-	prealloc = kmem_cache_alloc(global.slab_cache, GFP_KERNEL);
-	if (!prealloc)
-		return NULL;
-
 	spin_lock_irq(&ref->tree_lock);
 	GEM_BUG_ON(i915_active_is_idle(ref));
 
@@ -317,10 +312,8 @@ active_instance(struct i915_active *ref, u64 idx)
 		parent = *p;
 
 		node = rb_entry(parent, struct active_node, node);
-		if (node->timeline == idx) {
-			kmem_cache_free(global.slab_cache, prealloc);
+		if (node->timeline == idx)
 			goto out;
-		}
 
 		if (node->timeline < idx)
 			p = &parent->rb_right;
@@ -328,7 +321,14 @@ active_instance(struct i915_active *ref, u64 idx)
 			p = &parent->rb_left;
 	}
 
-	node = prealloc;
+	/*
+	 * XXX: We should preallocate this before i915_active_ref() is ever
+	 *  called, but we cannot call into fs_reclaim() anyway, so use GFP_ATOMIC.
+	 */
+	node = kmem_cache_alloc(global.slab_cache, GFP_ATOMIC);
+	if (!node)
+		goto out;
+
 	__i915_active_fence_init(&node->base, NULL, node_retire);
 	node->ref = ref;
 	node->timeline = idx;
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 4ead74c5142b..f50250c8685a 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -1245,9 +1245,11 @@ int i915_vma_move_to_active(struct i915_vma *vma,
 		obj->write_domain = I915_GEM_DOMAIN_RENDER;
 		obj->read_domains = 0;
 	} else {
-		err = dma_resv_reserve_shared(vma->resv, 1);
-		if (unlikely(err))
-			return err;
+		if (!(flags & __EXEC_OBJECT_NO_RESERVE)) {
+			err = dma_resv_reserve_shared(vma->resv, 1);
+			if (unlikely(err))
+				return err;
+		}
 
 		dma_resv_add_shared_fence(vma->resv, &rq->fence);
 		obj->write_domain = 0;
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index 838bbbeb11cc..3c951d5428cf 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -52,6 +52,9 @@ static inline bool i915_vma_is_active(const struct i915_vma *vma)
 	return !i915_active_is_idle(&vma->active);
 }
 
+/* do not reserve memory to prevent deadlocks */
+#define __EXEC_OBJECT_NO_RESERVE BIT(31)
+
 int __must_check __i915_vma_move_to_active(struct i915_vma *vma,
 					   struct i915_request *rq);
 int __must_check i915_vma_move_to_active(struct i915_vma *vma,
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
