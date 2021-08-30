Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4DB43FB5AE
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Aug 2021 14:10:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D00689D40;
	Mon, 30 Aug 2021 12:09:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD36B89CDD
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Aug 2021 12:09:55 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Date: Mon, 30 Aug 2021 14:10:03 +0200
Message-Id: <20210830121006.2978297-17-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
References: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 16/19] drm/i915: Remove short-term pins from
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a flag PIN_VALIDATE, to indicate we don't need to pin and only
protected by the object lock.

This removes the need to unpin, which is done by just releasing the
lock.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 64 ++++++-------------
 drivers/gpu/drm/i915/i915_gem_gtt.h           |  1 +
 drivers/gpu/drm/i915/i915_vma.c               | 24 +++++--
 3 files changed, 38 insertions(+), 51 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 6832b255294e..5a72f98d607c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -429,7 +429,7 @@ eb_pin_vma(struct i915_execbuffer *eb,
 	else
 		pin_flags = entry->offset & PIN_OFFSET_MASK;
 
-	pin_flags |= PIN_USER | PIN_NOEVICT | PIN_OFFSET_FIXED;
+	pin_flags |= PIN_USER | PIN_NOEVICT | PIN_OFFSET_FIXED | PIN_VALIDATE;
 	if (unlikely(ev->flags & EXEC_OBJECT_NEEDS_GTT))
 		pin_flags |= PIN_GLOBAL;
 
@@ -447,17 +447,15 @@ eb_pin_vma(struct i915_execbuffer *eb,
 					     entry->pad_to_size,
 					     entry->alignment,
 					     eb_pin_flags(entry, ev->flags) |
-					     PIN_USER | PIN_NOEVICT);
+					     PIN_USER | PIN_NOEVICT | PIN_VALIDATE);
 		if (unlikely(err))
 			return err;
 	}
 
 	if (unlikely(ev->flags & EXEC_OBJECT_NEEDS_FENCE)) {
 		err = i915_vma_pin_fence(vma);
-		if (unlikely(err)) {
-			i915_vma_unpin(vma);
+		if (unlikely(err))
 			return err;
-		}
 
 		if (vma->fence)
 			ev->flags |= __EXEC_OBJECT_HAS_FENCE;
@@ -473,13 +471,9 @@ eb_pin_vma(struct i915_execbuffer *eb,
 static inline void
 eb_unreserve_vma(struct eb_vma *ev)
 {
-	if (!(ev->flags & __EXEC_OBJECT_HAS_PIN))
-		return;
-
 	if (unlikely(ev->flags & __EXEC_OBJECT_HAS_FENCE))
 		__i915_vma_unpin_fence(ev->vma);
 
-	__i915_vma_unpin(ev->vma);
 	ev->flags &= ~__EXEC_OBJECT_RESERVED;
 }
 
@@ -634,10 +628,8 @@ static int eb_reserve_vma(struct i915_execbuffer *eb,
 
 	if (unlikely(ev->flags & EXEC_OBJECT_NEEDS_FENCE)) {
 		err = i915_vma_pin_fence(vma);
-		if (unlikely(err)) {
-			i915_vma_unpin(vma);
+		if (unlikely(err))
 			return err;
-		}
 
 		if (vma->fence)
 			ev->flags |= __EXEC_OBJECT_HAS_FENCE;
@@ -652,7 +644,7 @@ static int eb_reserve_vma(struct i915_execbuffer *eb,
 static int eb_reserve(struct i915_execbuffer *eb)
 {
 	const unsigned int count = eb->buffer_count;
-	unsigned int pin_flags = PIN_USER | PIN_NONBLOCK;
+	unsigned int pin_flags = PIN_USER | PIN_NONBLOCK | PIN_VALIDATE;
 	struct list_head last;
 	struct eb_vma *ev;
 	unsigned int i, pass;
@@ -726,7 +718,7 @@ static int eb_reserve(struct i915_execbuffer *eb)
 			return -ENOSPC;
 		}
 
-		pin_flags = PIN_USER;
+		pin_flags = PIN_USER | PIN_VALIDATE;
 	} while (1);
 }
 
@@ -2025,7 +2017,7 @@ shadow_batch_pin(struct i915_execbuffer *eb,
 	if (IS_ERR(vma))
 		return vma;
 
-	err = i915_vma_pin_ww(vma, &eb->ww, 0, 0, flags);
+	err = i915_vma_pin_ww(vma, &eb->ww, 0, 0, flags | PIN_VALIDATE);
 	if (err)
 		return ERR_PTR(err);
 
@@ -2039,7 +2031,7 @@ static struct i915_vma *eb_dispatch_secure(struct i915_execbuffer *eb, struct i9
 	 * batch" bit. Hence we need to pin secure batches into the global gtt.
 	 * hsw should have this fixed, but bdw mucks it up again. */
 	if (eb->batch_flags & I915_DISPATCH_SECURE)
-		return i915_gem_object_ggtt_pin_ww(vma->obj, &eb->ww, NULL, 0, 0, 0);
+		return i915_gem_object_ggtt_pin_ww(vma->obj, &eb->ww, NULL, 0, 0, PIN_VALIDATE);
 
 	return NULL;
 }
@@ -2087,13 +2079,12 @@ static int eb_parse(struct i915_execbuffer *eb)
 
 	err = i915_gem_object_lock(pool->obj, &eb->ww);
 	if (err)
-		goto err;
+		return err;
 
 	shadow = shadow_batch_pin(eb, pool->obj, eb->context->vm, PIN_USER);
-	if (IS_ERR(shadow)) {
-		err = PTR_ERR(shadow);
-		goto err;
-	}
+	if (IS_ERR(shadow))
+		return PTR_ERR(shadow);
+
 	intel_gt_buffer_pool_mark_used(pool);
 	i915_gem_object_set_readonly(shadow->obj);
 	shadow->private = pool;
@@ -2105,25 +2096,21 @@ static int eb_parse(struct i915_execbuffer *eb)
 		shadow = shadow_batch_pin(eb, pool->obj,
 					  &eb->engine->gt->ggtt->vm,
 					  PIN_GLOBAL);
-		if (IS_ERR(shadow)) {
-			err = PTR_ERR(shadow);
-			shadow = trampoline;
-			goto err_shadow;
-		}
+		if (IS_ERR(shadow))
+			return PTR_ERR(shadow);
+
 		shadow->private = pool;
 
 		eb->batch_flags |= I915_DISPATCH_SECURE;
 	}
 
 	batch = eb_dispatch_secure(eb, shadow);
-	if (IS_ERR(batch)) {
-		err = PTR_ERR(batch);
-		goto err_trampoline;
-	}
+	if (IS_ERR(batch))
+		return PTR_ERR(batch);
 
 	err = dma_resv_reserve_shared(shadow->obj->base.resv, 1);
 	if (err)
-		goto err_trampoline;
+		return err;
 
 	err = intel_engine_cmd_parser(eb->engine,
 				      eb->batch->vma,
@@ -2131,7 +2118,7 @@ static int eb_parse(struct i915_execbuffer *eb)
 				      eb->batch_len,
 				      shadow, trampoline);
 	if (err)
-		goto err_unpin_batch;
+		return err;
 
 	eb->batch = &eb->vma[eb->buffer_count++];
 	eb->batch->vma = i915_vma_get(shadow);
@@ -2147,17 +2134,6 @@ static int eb_parse(struct i915_execbuffer *eb)
 		eb->batch->vma = i915_vma_get(batch);
 	}
 	return 0;
-
-err_unpin_batch:
-	if (batch)
-		i915_vma_unpin(batch);
-err_trampoline:
-	if (trampoline)
-		i915_vma_unpin(trampoline);
-err_shadow:
-	i915_vma_unpin(shadow);
-err:
-	return err;
 }
 
 static int eb_submit(struct i915_execbuffer *eb, struct i915_vma *batch)
@@ -3003,8 +2979,6 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 
 err_vma:
 	eb_release_vmas(&eb, true);
-	if (eb.trampoline)
-		i915_vma_unpin(eb.trampoline);
 	WARN_ON(err == -EDEADLK);
 	i915_gem_ww_ctx_fini(&eb.ww);
 
diff --git a/drivers/gpu/drm/i915/i915_gem_gtt.h b/drivers/gpu/drm/i915/i915_gem_gtt.h
index c9b0ee5e1d23..078e73004d01 100644
--- a/drivers/gpu/drm/i915/i915_gem_gtt.h
+++ b/drivers/gpu/drm/i915/i915_gem_gtt.h
@@ -41,6 +41,7 @@ int i915_gem_gtt_insert(struct i915_address_space *vm,
 #define PIN_HIGH		BIT_ULL(5)
 #define PIN_OFFSET_BIAS		BIT_ULL(6)
 #define PIN_OFFSET_FIXED	BIT_ULL(7)
+#define PIN_VALIDATE		BIT_ULL(8) /* validate placement only, no need to call unpin() */
 
 #define PIN_GLOBAL		BIT_ULL(10) /* I915_VMA_GLOBAL_BIND */
 #define PIN_USER		BIT_ULL(11) /* I915_VMA_LOCAL_BIND */
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index f6dacfc3e840..bfba299d905c 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -750,6 +750,15 @@ static bool try_qad_pin(struct i915_vma *vma, unsigned int flags)
 	unsigned int bound;
 
 	bound = atomic_read(&vma->flags);
+
+	if (flags & PIN_VALIDATE) {
+		flags &= I915_VMA_BIND_MASK;
+
+		return (flags & bound) == flags;
+	}
+
+	/* with the lock mandatory for unbind, we don't race here */
+	flags &= I915_VMA_BIND_MASK;
 	do {
 		if (unlikely(flags & ~bound))
 			return false;
@@ -1149,7 +1158,7 @@ int i915_vma_pin_ww(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 	GEM_BUG_ON(!(flags & (PIN_USER | PIN_GLOBAL)));
 
 	/* First try and grab the pin without rebinding the vma */
-	if (try_qad_pin(vma, flags & I915_VMA_BIND_MASK))
+	if (try_qad_pin(vma, flags))
 		return 0;
 
 	err = i915_vma_get_pages(vma);
@@ -1228,7 +1237,8 @@ int i915_vma_pin_ww(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 	}
 
 	if (unlikely(!(flags & ~bound & I915_VMA_BIND_MASK))) {
-		__i915_vma_pin(vma);
+		if (!(flags & PIN_VALIDATE))
+			__i915_vma_pin(vma);
 		goto err_unlock;
 	}
 
@@ -1257,8 +1267,10 @@ int i915_vma_pin_ww(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 	atomic_add(I915_VMA_PAGES_ACTIVE, &vma->pages_count);
 	list_move_tail(&vma->vm_link, &vma->vm->bound_list);
 
-	__i915_vma_pin(vma);
-	GEM_BUG_ON(!i915_vma_is_pinned(vma));
+	if (!(flags & PIN_VALIDATE)) {
+		__i915_vma_pin(vma);
+		GEM_BUG_ON(!i915_vma_is_pinned(vma));
+	}
 	GEM_BUG_ON(!i915_vma_is_bound(vma, flags));
 	GEM_BUG_ON(i915_vma_misplaced(vma, size, alignment, flags));
 
@@ -1509,8 +1521,6 @@ static int __i915_vma_move_to_active(struct i915_vma *vma, struct i915_request *
 {
 	int err;
 
-	GEM_BUG_ON(!i915_vma_is_pinned(vma));
-
 	/* Wait for the vma to be bound before we start! */
 	err = __i915_request_await_bind(rq, vma);
 	if (err)
@@ -1528,6 +1538,8 @@ int i915_vma_move_to_active(struct i915_vma *vma,
 
 	assert_object_held(obj);
 
+	GEM_BUG_ON(!vma->pages);
+
 	err = __i915_vma_move_to_active(vma, rq);
 	if (unlikely(err))
 		return err;
-- 
2.32.0

