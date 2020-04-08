Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 411131A1F83
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 13:10:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC6E76EA2D;
	Wed,  8 Apr 2020 11:10:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B606A6EA27
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 11:10:39 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Apr 2020 13:10:21 +0200
Message-Id: <20200408111031.2330026-13-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200408111031.2330026-1-maarten.lankhorst@linux.intel.com>
References: <20200408111031.2330026-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 13/23] drm/i915: Make sure execbuffer always
 passes ww state to i915_vma_pin.
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

As a preparation step for full object locking and wait/wound handling
during pin and object mapping, ensure that we always pass the ww context
in i915_gem_execbuffer.c to i915_vma_pin, use lockdep to ensure this
happens.

This also requires changing the order of eb_parse slightly, to ensure
we pass ww at a point where we could still handle -EDEADLK safely.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |   4 +-
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 136 ++++++++++--------
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |   4 +-
 drivers/gpu/drm/i915/gt/gen6_ppgtt.h          |   4 +-
 drivers/gpu/drm/i915/gt/intel_context.c       |  65 +++++----
 drivers/gpu/drm/i915/gt/intel_context.h       |  13 ++
 drivers/gpu/drm/i915/gt/intel_context_types.h |   3 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   2 +-
 drivers/gpu/drm/i915/gt/intel_gt.c            |   2 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c           |   5 +-
 drivers/gpu/drm/i915/gt/intel_renderstate.c   |   2 +-
 drivers/gpu/drm/i915/gt/intel_ring.c          |  10 +-
 drivers/gpu/drm/i915/gt/intel_ring.h          |   3 +-
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  15 +-
 drivers/gpu/drm/i915/gt/intel_timeline.c      |  12 +-
 drivers/gpu/drm/i915/gt/intel_timeline.h      |   3 +-
 drivers/gpu/drm/i915/gt/mock_engine.c         |   3 +-
 drivers/gpu/drm/i915/gt/selftest_timeline.c   |   4 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |   2 +-
 drivers/gpu/drm/i915/i915_drv.h               |  13 +-
 drivers/gpu/drm/i915/i915_gem.c               |  11 +-
 drivers/gpu/drm/i915/i915_vma.c               |  13 +-
 drivers/gpu/drm/i915/i915_vma.h               |  13 +-
 24 files changed, 213 insertions(+), 131 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 76c6eaa368bf..8ead8dd9c876 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3447,7 +3447,7 @@ initial_plane_vma(struct drm_i915_private *i915,
 	if (IS_ERR(vma))
 		goto err_obj;
 
-	if (i915_ggtt_pin(vma, 0, PIN_MAPPABLE | PIN_OFFSET_FIXED | base))
+	if (i915_ggtt_pin(vma, NULL, 0, PIN_MAPPABLE | PIN_OFFSET_FIXED | base))
 		goto err_obj;
 
 	if (i915_gem_object_is_tiled(obj) &&
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index c818d55299d1..b77584597fc5 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1148,7 +1148,7 @@ static int context_barrier_task(struct i915_gem_context *ctx,
 
 		i915_gem_ww_ctx_init(&ww, true);
 retry:
-		err = intel_context_pin(ce);
+		err = intel_context_pin_ww(ce, &ww);
 		if (err)
 			goto err;
 
@@ -1241,7 +1241,7 @@ static int pin_ppgtt_update(struct intel_context *ce, struct i915_gem_ww_ctx *ww
 
 	if (!HAS_LOGICAL_RING_CONTEXTS(vm->i915))
 		/* ppGTT is not part of the legacy context image */
-		return gen6_ppgtt_pin(i915_vm_to_ppgtt(vm));
+		return gen6_ppgtt_pin(i915_vm_to_ppgtt(vm), ww);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 3374d968ba46..4fe7b96fdf71 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -422,16 +422,17 @@ eb_pin_vma(struct i915_execbuffer *eb,
 		pin_flags |= PIN_GLOBAL;
 
 	/* Attempt to reuse the current location if available */
-	if (unlikely(i915_vma_pin(vma, 0, 0, pin_flags))) {
+	/* TODO: Add -EDEADLK handling here */
+	if (unlikely(i915_vma_pin_ww(vma, &eb->ww, 0, 0, pin_flags))) {
 		if (entry->flags & EXEC_OBJECT_PINNED)
 			return false;
 
 		/* Failing that pick any _free_ space if suitable */
-		if (unlikely(i915_vma_pin(vma,
-					  entry->pad_to_size,
-					  entry->alignment,
-					  eb_pin_flags(entry, ev->flags) |
-					  PIN_USER | PIN_NOEVICT)))
+		if (unlikely(i915_vma_pin_ww(vma, &eb->ww,
+					     entry->pad_to_size,
+					     entry->alignment,
+					     eb_pin_flags(entry, ev->flags) |
+					     PIN_USER | PIN_NOEVICT)))
 			return false;
 	}
 
@@ -573,7 +574,7 @@ static inline int use_cpu_reloc(const struct reloc_cache *cache,
 		obj->cache_level != I915_CACHE_NONE);
 }
 
-static int eb_reserve_vma(const struct i915_execbuffer *eb,
+static int eb_reserve_vma(struct i915_execbuffer *eb,
 			  struct eb_vma *ev,
 			  u64 pin_flags)
 {
@@ -588,7 +589,7 @@ static int eb_reserve_vma(const struct i915_execbuffer *eb,
 			return err;
 	}
 
-	err = i915_vma_pin(vma,
+	err = i915_vma_pin_ww(vma, &eb->ww,
 			   entry->pad_to_size, entry->alignment,
 			   eb_pin_flags(entry, ev->flags) | pin_flags);
 	if (err)
@@ -1079,9 +1080,10 @@ static void *reloc_kmap(struct drm_i915_gem_object *obj,
 }
 
 static void *reloc_iomap(struct drm_i915_gem_object *obj,
-			 struct reloc_cache *cache,
+			 struct i915_execbuffer *eb,
 			 unsigned long page)
 {
+	struct reloc_cache *cache = &eb->reloc_cache;
 	struct i915_ggtt *ggtt = cache_to_ggtt(cache);
 	unsigned long offset;
 	void *vaddr;
@@ -1103,10 +1105,13 @@ static void *reloc_iomap(struct drm_i915_gem_object *obj,
 		if (err)
 			return ERR_PTR(err);
 
-		vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0,
-					       PIN_MAPPABLE |
-					       PIN_NONBLOCK /* NOWARN */ |
-					       PIN_NOEVICT);
+		vma = i915_gem_object_ggtt_pin_ww(obj, &eb->ww, NULL, 0, 0,
+						  PIN_MAPPABLE |
+						  PIN_NONBLOCK /* NOWARN */ |
+						  PIN_NOEVICT);
+		if (vma == ERR_PTR(-EDEADLK))
+			return vma;
+
 		if (IS_ERR(vma)) {
 			memset(&cache->node, 0, sizeof(cache->node));
 			mutex_lock(&ggtt->vm.mutex);
@@ -1142,9 +1147,10 @@ static void *reloc_iomap(struct drm_i915_gem_object *obj,
 }
 
 static void *reloc_vaddr(struct drm_i915_gem_object *obj,
-			 struct reloc_cache *cache,
+			 struct i915_execbuffer *eb,
 			 unsigned long page)
 {
+	struct reloc_cache *cache = &eb->reloc_cache;
 	void *vaddr;
 
 	if (cache->page == page) {
@@ -1152,7 +1158,7 @@ static void *reloc_vaddr(struct drm_i915_gem_object *obj,
 	} else {
 		vaddr = NULL;
 		if ((cache->vaddr & KMAP) == 0)
-			vaddr = reloc_iomap(obj, cache, page);
+			vaddr = reloc_iomap(obj, eb, page);
 		if (!vaddr)
 			vaddr = reloc_kmap(obj, cache, page);
 	}
@@ -1235,7 +1241,7 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
 		goto err_unmap;
 	}
 
-	err = i915_vma_pin(batch, 0, 0, PIN_USER | PIN_NONBLOCK);
+	err = i915_vma_pin_ww(batch, &eb->ww, 0, 0, PIN_USER | PIN_NONBLOCK);
 	if (err)
 		goto err_unmap;
 
@@ -1389,7 +1395,7 @@ relocate_entry(struct i915_vma *vma,
 	}
 
 repeat:
-	vaddr = reloc_vaddr(vma->obj, &eb->reloc_cache, offset >> PAGE_SHIFT);
+	vaddr = reloc_vaddr(vma->obj, eb, offset >> PAGE_SHIFT);
 	if (IS_ERR(vaddr))
 		return PTR_ERR(vaddr);
 
@@ -1805,6 +1811,7 @@ static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb,
 	rq = eb_pin_engine(eb, false);
 	if (IS_ERR(rq)) {
 		err = PTR_ERR(rq);
+		rq = NULL;
 		goto err;
 	}
 
@@ -2074,7 +2081,8 @@ static int i915_reset_gen7_sol_offsets(struct i915_request *rq)
 }
 
 static struct i915_vma *
-shadow_batch_pin(struct drm_i915_gem_object *obj,
+shadow_batch_pin(struct i915_execbuffer *eb,
+		 struct drm_i915_gem_object *obj,
 		 struct i915_address_space *vm,
 		 unsigned int flags)
 {
@@ -2085,7 +2093,7 @@ shadow_batch_pin(struct drm_i915_gem_object *obj,
 	if (IS_ERR(vma))
 		return vma;
 
-	err = i915_vma_pin(vma, 0, 0, flags);
+	err = i915_vma_pin_ww(vma, &eb->ww, 0, 0, flags);
 	if (err)
 		return ERR_PTR(err);
 
@@ -2197,16 +2205,33 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
 	return err;
 }
 
+static struct i915_vma *eb_dispatch_secure(struct i915_execbuffer *eb, struct i915_vma *vma)
+{
+	/*
+	 * snb/ivb/vlv conflate the "batch in ppgtt" bit with the "non-secure
+	 * batch" bit. Hence we need to pin secure batches into the global gtt.
+	 * hsw should have this fixed, but bdw mucks it up again. */
+	if (eb->batch_flags & I915_DISPATCH_SECURE)
+		return i915_gem_object_ggtt_pin_ww(vma->obj, &eb->ww, NULL, 0, 0, 0);
+
+	return NULL;
+}
+
 static int eb_parse(struct i915_execbuffer *eb)
 {
 	struct drm_i915_private *i915 = eb->i915;
 	struct intel_engine_pool_node *pool;
-	struct i915_vma *shadow, *trampoline;
+	struct i915_vma *shadow, *trampoline, *batch;
 	unsigned int len;
 	int err;
 
-	if (!eb_use_cmdparser(eb))
-		return 0;
+	if (!eb_use_cmdparser(eb)) {
+		batch = eb_dispatch_secure(eb, eb->batch->vma);
+		if (IS_ERR(batch))
+			return PTR_ERR(batch);
+
+		goto secure_batch;
+	}
 
 	len = eb->batch_len;
 	if (!CMDPARSER_USES_GGTT(eb->i915)) {
@@ -2231,7 +2256,7 @@ static int eb_parse(struct i915_execbuffer *eb)
 	if (err)
 		goto err;
 
-	shadow = shadow_batch_pin(pool->obj, eb->context->vm, PIN_USER);
+	shadow = shadow_batch_pin(eb, pool->obj, eb->context->vm, PIN_USER);
 	if (IS_ERR(shadow)) {
 		err = PTR_ERR(shadow);
 		goto err;
@@ -2242,7 +2267,7 @@ static int eb_parse(struct i915_execbuffer *eb)
 	if (CMDPARSER_USES_GGTT(eb->i915)) {
 		trampoline = shadow;
 
-		shadow = shadow_batch_pin(pool->obj,
+		shadow = shadow_batch_pin(eb, pool->obj,
 					  &eb->engine->gt->ggtt->vm,
 					  PIN_GLOBAL);
 		if (IS_ERR(shadow)) {
@@ -2254,20 +2279,36 @@ static int eb_parse(struct i915_execbuffer *eb)
 		eb->batch_flags |= I915_DISPATCH_SECURE;
 	}
 
+	batch = eb_dispatch_secure(eb, shadow);
+	if (IS_ERR(batch)) {
+		err = PTR_ERR(batch);
+		goto err_trampoline;
+	}
+
 	err = eb_parse_pipeline(eb, shadow, trampoline);
 	if (err)
-		goto err_trampoline;
+		goto err_unpin_batch;
 
-	eb->vma[eb->buffer_count].vma = i915_vma_get(shadow);
-	eb->vma[eb->buffer_count].flags = __EXEC_OBJECT_HAS_PIN;
 	eb->batch = &eb->vma[eb->buffer_count++];
+	eb->batch->vma = i915_vma_get(shadow);
+	eb->batch->flags = __EXEC_OBJECT_HAS_PIN;
 
 	eb->trampoline = trampoline;
 	eb->batch_start_offset = 0;
 
 	shadow->private = pool;
+
+secure_batch:
+	if (batch) {
+		eb->batch = &eb->vma[eb->buffer_count++];
+		eb->batch->flags = __EXEC_OBJECT_HAS_PIN;
+		eb->batch->vma = batch;
+	}
 	return 0;
 
+err_unpin_batch:
+	if (batch)
+		i915_vma_unpin(batch);
 err_trampoline:
 	if (trampoline)
 		i915_vma_unpin(trampoline);
@@ -2423,7 +2464,7 @@ static struct i915_request *eb_pin_engine(struct i915_execbuffer *eb, bool throt
 	 * GGTT space, so do this first before we reserve a seqno for
 	 * ourselves.
 	 */
-	err = intel_context_pin(ce);
+	err = intel_context_pin_ww(ce, &eb->ww);
 	if (err)
 		return ERR_PTR(err);
 
@@ -2878,33 +2919,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 
 	ww_acquire_done(&eb.ww.ctx);
 
-	/*
-	 * snb/ivb/vlv conflate the "batch in ppgtt" bit with the "non-secure
-	 * batch" bit. Hence we need to pin secure batches into the global gtt.
-	 * hsw should have this fixed, but bdw mucks it up again. */
-	if (eb.batch_flags & I915_DISPATCH_SECURE) {
-		struct i915_vma *vma;
-
-		/*
-		 * So on first glance it looks freaky that we pin the batch here
-		 * outside of the reservation loop. But:
-		 * - The batch is already pinned into the relevant ppgtt, so we
-		 *   already have the backing storage fully allocated.
-		 * - No other BO uses the global gtt (well contexts, but meh),
-		 *   so we don't really have issues with multiple objects not
-		 *   fitting due to fragmentation.
-		 * So this is actually safe.
-		 */
-		vma = i915_gem_object_ggtt_pin(eb.batch->vma->obj, NULL, 0, 0, 0);
-		if (IS_ERR(vma)) {
-			err = PTR_ERR(vma);
-			goto err_parse;
-		}
-
-		batch = vma;
-	} else {
-		batch = eb.batch->vma;
-	}
+	batch = eb.batch->vma;
 
 	/* All GPU relocation batches must be submitted prior to the user rq */
 	GEM_BUG_ON(eb.reloc_cache.rq);
@@ -2977,9 +2992,6 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	i915_request_put(eb.request);
 
 err_batch_unpin:
-	if (eb.batch_flags & I915_DISPATCH_SECURE)
-		i915_vma_unpin(batch);
-err_parse:
 	if (batch->private)
 		intel_engine_pool_put(batch->private);
 err_vma:
@@ -3062,7 +3074,9 @@ i915_gem_execbuffer_ioctl(struct drm_device *dev, void *data,
 	/* Copy in the exec list from userland */
 	exec_list = kvmalloc_array(count, sizeof(*exec_list),
 				   __GFP_NOWARN | GFP_KERNEL);
-	exec2_list = kvmalloc_array(count + 1, eb_element_size(),
+
+	/* Allocate extra slots for use by the command parser */
+	exec2_list = kvmalloc_array(count + 2, eb_element_size(),
 				    __GFP_NOWARN | GFP_KERNEL);
 	if (exec_list == NULL || exec2_list == NULL) {
 		drm_dbg(&i915->drm,
@@ -3140,8 +3154,8 @@ i915_gem_execbuffer2_ioctl(struct drm_device *dev, void *data,
 	if (err)
 		return err;
 
-	/* Allocate an extra slot for use by the command parser */
-	exec2_list = kvmalloc_array(count + 1, eb_element_size(),
+	/* Allocate extra slots for use by the command parser */
+	exec2_list = kvmalloc_array(count + 2, eb_element_size(),
 				    __GFP_NOWARN | GFP_KERNEL);
 	if (exec2_list == NULL) {
 		drm_dbg(&i915->drm, "Failed to allocate exec list for %zd buffers\n",
diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
index f4fec7eb4064..8248efa9229f 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
@@ -376,7 +376,7 @@ static struct i915_vma *pd_vma_create(struct gen6_ppgtt *ppgtt, int size)
 	return vma;
 }
 
-int gen6_ppgtt_pin(struct i915_ppgtt *base)
+int gen6_ppgtt_pin(struct i915_ppgtt *base, struct i915_gem_ww_ctx *ww)
 {
 	struct gen6_ppgtt *ppgtt = to_gen6_ppgtt(base);
 	int err;
@@ -402,7 +402,7 @@ int gen6_ppgtt_pin(struct i915_ppgtt *base)
 	 */
 	err = 0;
 	if (!atomic_read(&ppgtt->pin_count))
-		err = i915_ggtt_pin(ppgtt->vma, GEN6_PD_ALIGN, PIN_HIGH);
+		err = i915_ggtt_pin(ppgtt->vma, ww, GEN6_PD_ALIGN, PIN_HIGH);
 	if (!err)
 		atomic_inc(&ppgtt->pin_count);
 	mutex_unlock(&ppgtt->pin_mutex);
diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.h b/drivers/gpu/drm/i915/gt/gen6_ppgtt.h
index 72e481806c96..00032a931bae 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.h
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.h
@@ -8,6 +8,8 @@
 
 #include "intel_gtt.h"
 
+struct i915_gem_ww_ctx;
+
 struct gen6_ppgtt {
 	struct i915_ppgtt base;
 
@@ -66,7 +68,7 @@ static inline struct gen6_ppgtt *to_gen6_ppgtt(struct i915_ppgtt *base)
 		     (pt = i915_pt_entry(pd, iter), true);		\
 	     ++iter)
 
-int gen6_ppgtt_pin(struct i915_ppgtt *base);
+int gen6_ppgtt_pin(struct i915_ppgtt *base, struct i915_gem_ww_ctx *ww);
 void gen6_ppgtt_unpin(struct i915_ppgtt *base);
 void gen6_ppgtt_unpin_all(struct i915_ppgtt *base);
 void gen6_ppgtt_enable(struct intel_gt *gt);
diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index c039e87a46c4..64948386630f 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -93,12 +93,12 @@ static void intel_context_active_release(struct intel_context *ce)
 	i915_active_release(&ce->active);
 }
 
-static int __context_pin_state(struct i915_vma *vma)
+static int __context_pin_state(struct i915_vma *vma, struct i915_gem_ww_ctx *ww)
 {
 	unsigned int bias = i915_ggtt_pin_bias(vma) | PIN_OFFSET_BIAS;
 	int err;
 
-	err = i915_ggtt_pin(vma, 0, bias | PIN_HIGH);
+	err = i915_ggtt_pin(vma, ww, 0, bias | PIN_HIGH);
 	if (err)
 		return err;
 
@@ -127,7 +127,8 @@ static void __context_unpin_state(struct i915_vma *vma)
 	__i915_vma_unpin(vma);
 }
 
-static int __ring_active(struct intel_ring *ring)
+static int __ring_active(struct intel_ring *ring,
+			 struct i915_gem_ww_ctx *ww)
 {
 	int err;
 
@@ -135,7 +136,7 @@ static int __ring_active(struct intel_ring *ring)
 	if (err)
 		return err;
 
-	err = intel_ring_pin(ring);
+	err = intel_ring_pin(ring, ww);
 	if (err)
 		goto err_active;
 
@@ -152,24 +153,25 @@ static void __ring_retire(struct intel_ring *ring)
 	i915_active_release(&ring->vma->active);
 }
 
-static int intel_context_pre_pin(struct intel_context *ce)
+static int intel_context_pre_pin(struct intel_context *ce,
+				 struct i915_gem_ww_ctx *ww)
 {
 	int err;
 
 	CE_TRACE(ce, "active\n");
 
-	err = __ring_active(ce->ring);
+	err = __ring_active(ce->ring, ww);
 	if (err)
 		return err;
 
-	err = intel_timeline_pin(ce->timeline);
+	err = intel_timeline_pin(ce->timeline, ww);
 	if (err)
 		goto err_ring;
 
 	if (!ce->state)
 		return 0;
 
-	err = __context_pin_state(ce->state);
+	err = __context_pin_state(ce->state, ww);
 	if (err)
 		goto err_timeline;
 
@@ -192,7 +194,8 @@ static void intel_context_post_unpin(struct intel_context *ce)
 	__ring_retire(ce->ring);
 }
 
-int __intel_context_do_pin(struct intel_context *ce)
+int __intel_context_do_pin_ww(struct intel_context *ce,
+			      struct i915_gem_ww_ctx *ww)
 {
 	bool handoff = false;
 	void *vaddr;
@@ -209,7 +212,14 @@ int __intel_context_do_pin(struct intel_context *ce)
 	 * refcount for __intel_context_active(), which prevent a lock
 	 * inversion of ce->pin_mutex vs dma_resv_lock().
 	 */
-	err = intel_context_pre_pin(ce);
+
+	err = i915_gem_object_lock(ce->timeline->hwsp_ggtt->obj, ww);
+	if (!err && ce->ring->vma->obj)
+		err = i915_gem_object_lock(ce->ring->vma->obj, ww);
+	if (!err && ce->state)
+		err = i915_gem_object_lock(ce->state->obj, ww);
+	if (!err)
+		err = intel_context_pre_pin(ce, ww);
 	if (err)
 		return err;
 
@@ -217,7 +227,7 @@ int __intel_context_do_pin(struct intel_context *ce)
 	if (err)
 		goto err_ctx_unpin;
 
-	err = ce->ops->pre_pin(ce, &vaddr);
+	err = ce->ops->pre_pin(ce, ww, &vaddr);
 	if (err)
 		goto err_release;
 
@@ -264,6 +274,23 @@ int __intel_context_do_pin(struct intel_context *ce)
 	return err;
 }
 
+int __intel_context_do_pin(struct intel_context *ce)
+{
+	struct i915_gem_ww_ctx ww;
+	int err;
+
+	i915_gem_ww_ctx_init(&ww, true);
+retry:
+	err = __intel_context_do_pin_ww(ce, &ww);
+	if (err == -EDEADLK) {
+		err = i915_gem_ww_ctx_backoff(&ww);
+		if (!err)
+			goto retry;
+	}
+	i915_gem_ww_ctx_fini(&ww);
+	return err;
+}
+
 void intel_context_unpin(struct intel_context *ce)
 {
 	if (!atomic_dec_and_test(&ce->pin_count))
@@ -301,18 +328,14 @@ static void __intel_context_retire(struct i915_active *active)
 static int __intel_context_active(struct i915_active *active)
 {
 	struct intel_context *ce = container_of(active, typeof(*ce), active);
-	int err;
 
 	intel_context_get(ce);
 
 	/* everything should already be activated by intel_context_pre_pin() */
-	err = __ring_active(ce->ring);
-	if (GEM_WARN_ON(err))
-		goto err_put;
+	GEM_WARN_ON(!i915_active_acquire_if_busy(&ce->ring->vma->active));
+	__intel_ring_pin(ce->ring);
 
-	err = intel_timeline_pin(ce->timeline);
-	if (GEM_WARN_ON(err))
-		goto err_ring;
+	__intel_timeline_pin(ce->timeline);
 
 	if (ce->state) {
 		GEM_WARN_ON(!i915_active_acquire_if_busy(&ce->state->active));
@@ -321,12 +344,6 @@ static int __intel_context_active(struct i915_active *active)
 	}
 
 	return 0;
-
-err_ring:
-	__ring_retire(ce->ring);
-err_put:
-	intel_context_put(ce);
-	return err;
 }
 
 void
diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
index 07be021882cc..fda2eba81e22 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -25,6 +25,8 @@
 		     ##__VA_ARGS__);					\
 } while (0)
 
+struct i915_gem_ww_ctx;
+
 void intel_context_init(struct intel_context *ce,
 			struct intel_engine_cs *engine);
 void intel_context_fini(struct intel_context *ce);
@@ -81,6 +83,8 @@ static inline void intel_context_unlock_pinned(struct intel_context *ce)
 }
 
 int __intel_context_do_pin(struct intel_context *ce);
+int __intel_context_do_pin_ww(struct intel_context *ce,
+			      struct i915_gem_ww_ctx *ww);
 
 static inline bool intel_context_pin_if_active(struct intel_context *ce)
 {
@@ -95,6 +99,15 @@ static inline int intel_context_pin(struct intel_context *ce)
 	return __intel_context_do_pin(ce);
 }
 
+static inline int intel_context_pin_ww(struct intel_context *ce,
+				       struct i915_gem_ww_ctx *ww)
+{
+	if (likely(intel_context_pin_if_active(ce)))
+		return 0;
+
+	return __intel_context_do_pin_ww(ce, ww);
+}
+
 static inline void __intel_context_pin(struct intel_context *ce)
 {
 	GEM_BUG_ON(!intel_context_is_pinned(ce));
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 395af0476a4e..2347fe787158 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -23,6 +23,7 @@
 DECLARE_EWMA(runtime, 3, 8);
 
 struct i915_gem_context;
+struct i915_gem_ww_ctx;
 struct i915_vma;
 struct intel_context;
 struct intel_ring;
@@ -30,7 +31,7 @@ struct intel_ring;
 struct intel_context_ops {
 	int (*alloc)(struct intel_context *ce);
 
-	int (*pre_pin)(struct intel_context *ce, void **vaddr);
+	int (*pre_pin)(struct intel_context *ce, struct i915_gem_ww_ctx *ww, void **vaddr);
 	int (*pin)(struct intel_context *ce, void *vaddr);
 	void (*unpin)(struct intel_context *ce);
 	void (*post_unpin)(struct intel_context *ce);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 977e23fac5ce..8a60aa6a4470 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -558,7 +558,7 @@ static int pin_ggtt_status_page(struct intel_engine_cs *engine,
 	else
 		flags = PIN_HIGH;
 
-	return i915_ggtt_pin(vma, 0, flags);
+	return i915_ggtt_pin(vma, NULL, 0, flags);
 }
 
 static int init_status_page(struct intel_engine_cs *engine)
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index c11e89472ad8..c7c33d87b400 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -344,7 +344,7 @@ static int intel_gt_init_scratch(struct intel_gt *gt, unsigned int size)
 		goto err_unref;
 	}
 
-	ret = i915_ggtt_pin(vma, 0, PIN_HIGH);
+	ret = i915_ggtt_pin(vma, NULL, 0, PIN_HIGH);
 	if (ret)
 		goto err_unref;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 081f7dad43b4..ead9ece22a4c 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -3143,7 +3143,8 @@ __execlists_update_reg_state(const struct intel_context *ce,
 }
 
 static int
-execlists_context_pre_pin(struct intel_context *ce, void **vaddr)
+execlists_context_pre_pin(struct intel_context *ce,
+			  struct i915_gem_ww_ctx *ww, void **vaddr)
 {
 	GEM_BUG_ON(!ce->state);
 	GEM_BUG_ON(!i915_vma_is_pinned(ce->state));
@@ -3505,7 +3506,7 @@ static int lrc_setup_wa_ctx(struct intel_engine_cs *engine)
 		goto err;
 	}
 
-	err = i915_ggtt_pin(vma, 0, PIN_HIGH);
+	err = i915_ggtt_pin(vma, NULL, 0, PIN_HIGH);
 	if (err)
 		goto err;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_renderstate.c b/drivers/gpu/drm/i915/gt/intel_renderstate.c
index 5e980642e479..b954d0807b4b 100644
--- a/drivers/gpu/drm/i915/gt/intel_renderstate.c
+++ b/drivers/gpu/drm/i915/gt/intel_renderstate.c
@@ -195,7 +195,7 @@ int intel_renderstate_init(struct intel_renderstate *so,
 
 	i915_gem_ww_ctx_init(&so->ww, true);
 retry:
-	err = intel_context_pin(ce);
+	err = intel_context_pin_ww(ce, &so->ww);
 	if (err)
 		goto err_fini;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_ring.c b/drivers/gpu/drm/i915/gt/intel_ring.c
index 8cda1b7e17ba..71b404973ce1 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring.c
@@ -21,7 +21,13 @@ unsigned int intel_ring_update_space(struct intel_ring *ring)
 	return space;
 }
 
-int intel_ring_pin(struct intel_ring *ring)
+void __intel_ring_pin(struct intel_ring *ring)
+{
+	GEM_BUG_ON(!atomic_read(&ring->pin_count));
+	atomic_inc(&ring->pin_count);
+}
+
+int intel_ring_pin(struct intel_ring *ring, struct i915_gem_ww_ctx *ww)
 {
 	struct i915_vma *vma = ring->vma;
 	unsigned int flags;
@@ -39,7 +45,7 @@ int intel_ring_pin(struct intel_ring *ring)
 	else
 		flags |= PIN_HIGH;
 
-	ret = i915_ggtt_pin(vma, 0, flags);
+	ret = i915_ggtt_pin(vma, ww, 0, flags);
 	if (unlikely(ret))
 		goto err_unpin;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_ring.h b/drivers/gpu/drm/i915/gt/intel_ring.h
index 5bdce24994aa..48a2c327efb3 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring.h
+++ b/drivers/gpu/drm/i915/gt/intel_ring.h
@@ -21,7 +21,8 @@ int intel_ring_cacheline_align(struct i915_request *rq);
 
 unsigned int intel_ring_update_space(struct intel_ring *ring);
 
-int intel_ring_pin(struct intel_ring *ring);
+void __intel_ring_pin(struct intel_ring *ring);
+int intel_ring_pin(struct intel_ring *ring, struct i915_gem_ww_ctx *ww);
 void intel_ring_unpin(struct intel_ring *ring);
 void intel_ring_reset(struct intel_ring *ring, u32 tail);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index d89475b8cfd6..be60e96b5d1b 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -1184,14 +1184,16 @@ static void ring_context_destroy(struct kref *ref)
 	intel_context_free(ce);
 }
 
-static int __context_pin_ppgtt(struct intel_context *ce)
+static int ring_context_pre_pin(struct intel_context *ce,
+				struct i915_gem_ww_ctx *ww,
+				void **unused)
 {
 	struct i915_address_space *vm;
 	int err = 0;
 
 	vm = vm_alias(ce->vm);
 	if (vm)
-		err = gen6_ppgtt_pin(i915_vm_to_ppgtt((vm)));
+		err = gen6_ppgtt_pin(i915_vm_to_ppgtt((vm)), ww);
 
 	return err;
 }
@@ -1307,11 +1309,6 @@ static int ring_context_alloc(struct intel_context *ce)
 	return 0;
 }
 
-static int ring_context_pre_pin(struct intel_context *ce, void **unused)
-{
-	return __context_pin_ppgtt(ce);
-}
-
 static int ring_context_pin(struct intel_context *ce, void *unused)
 {
 	return 0;
@@ -2082,7 +2079,7 @@ int intel_ring_submission_setup(struct intel_engine_cs *engine)
 	}
 	GEM_BUG_ON(timeline->has_initial_breadcrumb);
 
-	err = intel_timeline_pin(timeline);
+	err = intel_timeline_pin(timeline, NULL);
 	if (err)
 		goto err_timeline;
 
@@ -2092,7 +2089,7 @@ int intel_ring_submission_setup(struct intel_engine_cs *engine)
 		goto err_timeline_unpin;
 	}
 
-	err = intel_ring_pin(ring);
+	err = intel_ring_pin(ring, NULL);
 	if (err)
 		goto err_ring;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c
index 3779c2ae0d65..0ba4affb9fc6 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline.c
+++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
@@ -313,14 +313,20 @@ intel_timeline_create(struct intel_gt *gt, struct i915_vma *global_hwsp)
 	return timeline;
 }
 
-int intel_timeline_pin(struct intel_timeline *tl)
+void __intel_timeline_pin(struct intel_timeline *tl)
+{
+	GEM_BUG_ON(!atomic_read(&tl->pin_count));
+	atomic_inc(&tl->pin_count);
+}
+
+int intel_timeline_pin(struct intel_timeline *tl, struct i915_gem_ww_ctx *ww)
 {
 	int err;
 
 	if (atomic_add_unless(&tl->pin_count, 1, 0))
 		return 0;
 
-	err = i915_ggtt_pin(tl->hwsp_ggtt, 0, PIN_HIGH);
+	err = i915_ggtt_pin(tl->hwsp_ggtt, ww, 0, PIN_HIGH);
 	if (err)
 		return err;
 
@@ -445,7 +451,7 @@ __intel_timeline_get_seqno(struct intel_timeline *tl,
 		goto err_rollback;
 	}
 
-	err = i915_ggtt_pin(vma, 0, PIN_HIGH);
+	err = i915_ggtt_pin(vma, NULL, 0, PIN_HIGH);
 	if (err) {
 		__idle_hwsp_free(vma->private, cacheline);
 		goto err_rollback;
diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.h b/drivers/gpu/drm/i915/gt/intel_timeline.h
index f5b7eade3809..39dd897ad057 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline.h
+++ b/drivers/gpu/drm/i915/gt/intel_timeline.h
@@ -76,7 +76,8 @@ static inline bool intel_timeline_sync_is_later(struct intel_timeline *tl,
 	return __intel_timeline_sync_is_later(tl, fence->context, fence->seqno);
 }
 
-int intel_timeline_pin(struct intel_timeline *tl);
+void __intel_timeline_pin(struct intel_timeline *tl);
+int intel_timeline_pin(struct intel_timeline *tl, struct i915_gem_ww_ctx *ww);
 void intel_timeline_enter(struct intel_timeline *tl);
 int intel_timeline_get_seqno(struct intel_timeline *tl,
 			     struct i915_request *rq,
diff --git a/drivers/gpu/drm/i915/gt/mock_engine.c b/drivers/gpu/drm/i915/gt/mock_engine.c
index 9ec42769e46e..e986cc15081d 100644
--- a/drivers/gpu/drm/i915/gt/mock_engine.c
+++ b/drivers/gpu/drm/i915/gt/mock_engine.c
@@ -169,7 +169,8 @@ static int mock_context_alloc(struct intel_context *ce)
 	return 0;
 }
 
-static int mock_context_pre_pin(struct intel_context *ce, void **unused)
+static int mock_context_pre_pin(struct intel_context *ce,
+				struct i915_gem_ww_ctx *ww, void **unused)
 {
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/gt/selftest_timeline.c b/drivers/gpu/drm/i915/gt/selftest_timeline.c
index c2578a0f2f14..00801549871a 100644
--- a/drivers/gpu/drm/i915/gt/selftest_timeline.c
+++ b/drivers/gpu/drm/i915/gt/selftest_timeline.c
@@ -454,7 +454,7 @@ tl_write(struct intel_timeline *tl, struct intel_engine_cs *engine, u32 value)
 	struct i915_request *rq;
 	int err;
 
-	err = intel_timeline_pin(tl);
+	err = intel_timeline_pin(tl, NULL);
 	if (err) {
 		rq = ERR_PTR(err);
 		goto out;
@@ -664,7 +664,7 @@ static int live_hwsp_wrap(void *arg)
 	if (!tl->has_initial_breadcrumb || !tl->hwsp_cacheline)
 		goto out_free;
 
-	err = intel_timeline_pin(tl);
+	err = intel_timeline_pin(tl, NULL);
 	if (err)
 		goto out_free;
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 861657897c0f..942c7c187adb 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -677,7 +677,7 @@ struct i915_vma *intel_guc_allocate_vma(struct intel_guc *guc, u32 size)
 		goto err;
 
 	flags = PIN_OFFSET_BIAS | i915_ggtt_pin_bias(vma);
-	ret = i915_ggtt_pin(vma, 0, flags);
+	ret = i915_ggtt_pin(vma, NULL, 0, flags);
 	if (ret) {
 		vma = ERR_PTR(ret);
 		goto err;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index e9ee4daa9320..12c1a1302e91 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1729,11 +1729,18 @@ static inline void i915_gem_drain_workqueue(struct drm_i915_private *i915)
 }
 
 struct i915_vma * __must_check
+i915_gem_object_ggtt_pin_ww(struct drm_i915_gem_object *obj,
+			    struct i915_gem_ww_ctx *ww,
+			    const struct i915_ggtt_view *view,
+			    u64 size, u64 alignment, u64 flags);
+
+static inline struct i915_vma * __must_check
 i915_gem_object_ggtt_pin(struct drm_i915_gem_object *obj,
 			 const struct i915_ggtt_view *view,
-			 u64 size,
-			 u64 alignment,
-			 u64 flags);
+			 u64 size, u64 alignment, u64 flags)
+{
+	return i915_gem_object_ggtt_pin_ww(obj, NULL, view, size, alignment, flags);
+}
 
 int i915_gem_object_unbind(struct drm_i915_gem_object *obj,
 			   unsigned long flags);
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 6846241f9079..f7173aa1c41b 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -950,11 +950,10 @@ void i915_gem_runtime_suspend(struct drm_i915_private *i915)
 }
 
 struct i915_vma *
-i915_gem_object_ggtt_pin(struct drm_i915_gem_object *obj,
-			 const struct i915_ggtt_view *view,
-			 u64 size,
-			 u64 alignment,
-			 u64 flags)
+i915_gem_object_ggtt_pin_ww(struct drm_i915_gem_object *obj,
+			    struct i915_gem_ww_ctx *ww,
+			    const struct i915_ggtt_view *view,
+			    u64 size, u64 alignment, u64 flags)
 {
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	struct i915_ggtt *ggtt = &i915->ggtt;
@@ -1014,7 +1013,7 @@ i915_gem_object_ggtt_pin(struct drm_i915_gem_object *obj,
 			return ERR_PTR(ret);
 	}
 
-	ret = i915_vma_pin(vma, size, alignment, flags | PIN_GLOBAL);
+	ret = i915_vma_pin_ww(vma, ww, size, alignment, flags | PIN_GLOBAL);
 	if (ret)
 		return ERR_PTR(ret);
 
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 6cc2d9c44015..e9d30ab5da6b 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -857,13 +857,19 @@ static void vma_unbind_pages(struct i915_vma *vma)
 	__vma_put_pages(vma, count | count << I915_VMA_PAGES_BIAS);
 }
 
-int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
+int i915_vma_pin_ww(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
+		    u64 size, u64 alignment, u64 flags)
 {
 	struct i915_vma_work *work = NULL;
 	intel_wakeref_t wakeref = 0;
 	unsigned int bound;
 	int err;
 
+#ifdef CONFIG_PROVE_LOCKING
+	if (debug_locks && lockdep_is_held(&vma->vm->i915->drm.struct_mutex))
+		WARN_ON(!ww);
+#endif
+
 	BUILD_BUG_ON(PIN_GLOBAL != I915_VMA_GLOBAL_BIND);
 	BUILD_BUG_ON(PIN_USER != I915_VMA_LOCAL_BIND);
 
@@ -994,7 +1000,8 @@ static void flush_idle_contexts(struct intel_gt *gt)
 	intel_gt_wait_for_idle(gt, MAX_SCHEDULE_TIMEOUT);
 }
 
-int i915_ggtt_pin(struct i915_vma *vma, u32 align, unsigned int flags)
+int i915_ggtt_pin(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
+		  u32 align, unsigned int flags)
 {
 	struct i915_address_space *vm = vma->vm;
 	int err;
@@ -1002,7 +1009,7 @@ int i915_ggtt_pin(struct i915_vma *vma, u32 align, unsigned int flags)
 	GEM_BUG_ON(!i915_vma_is_ggtt(vma));
 
 	do {
-		err = i915_vma_pin(vma, 0, align, flags | PIN_GLOBAL);
+		err = i915_vma_pin_ww(vma, ww, 0, align, flags | PIN_GLOBAL);
 		if (err != -ENOSPC) {
 			if (!err) {
 				err = i915_vma_wait_for_bind(vma);
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index 8ad1daabcd58..2e3779a8a437 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -236,8 +236,17 @@ static inline void i915_vma_unlock(struct i915_vma *vma)
 }
 
 int __must_check
-i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags);
-int i915_ggtt_pin(struct i915_vma *vma, u32 align, unsigned int flags);
+i915_vma_pin_ww(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
+		u64 size, u64 alignment, u64 flags);
+
+static inline int __must_check
+i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
+{
+	return i915_vma_pin_ww(vma, NULL, size, alignment, flags);
+}
+
+int i915_ggtt_pin(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
+		  u32 align, unsigned int flags);
 
 static inline int i915_vma_pin_count(const struct i915_vma *vma)
 {
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
