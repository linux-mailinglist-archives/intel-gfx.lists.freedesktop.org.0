Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B6E220C34
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 13:52:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB1E36EAD7;
	Wed, 15 Jul 2020 11:52:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D74676EADD
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 11:52:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21826130-1500050 
 for multiple; Wed, 15 Jul 2020 12:51:53 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jul 2020 12:51:04 +0100
Message-Id: <20200715115147.11866-23-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200715115147.11866-1-chris@chris-wilson.co.uk>
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 23/66] drm/i915/gem: Include cmdparser in common
 execbuf pinning
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

Pull the cmdparser allocations in to the reservation phase, and then
they are included in the common vma pinning pass.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 360 +++++++++++-------
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |  10 +
 drivers/gpu/drm/i915/i915_cmd_parser.c        |  21 +-
 3 files changed, 230 insertions(+), 161 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index af2b4aeb6df0..8c1f3528b1e9 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -25,6 +25,7 @@
 #include "i915_gem_clflush.h"
 #include "i915_gem_context.h"
 #include "i915_gem_ioctls.h"
+#include "i915_memcpy.h"
 #include "i915_sw_fence_work.h"
 #include "i915_trace.h"
 
@@ -52,6 +53,7 @@ struct eb_bind_vma {
 
 struct eb_vma_array {
 	struct kref kref;
+	struct list_head aux_list;
 	struct eb_vma vma[];
 };
 
@@ -246,7 +248,6 @@ struct i915_execbuffer {
 
 	struct i915_request *request; /** our request to build */
 	struct eb_vma *batch; /** identity of the batch obj/vma */
-	struct i915_vma *trampoline; /** trampoline used for chaining */
 
 	/** actual size of execobj[] as we may extend it for the cmdparser */
 	unsigned int buffer_count;
@@ -281,6 +282,11 @@ struct i915_execbuffer {
 		unsigned int rq_size;
 	} reloc_cache;
 
+	struct eb_cmdparser {
+		struct eb_vma *shadow;
+		struct eb_vma *trampoline;
+	} parser;
+
 	u64 invalid_flags; /** Set of execobj.flags that are invalid */
 	u32 context_flags; /** Set of execobj.flags to insert from the ctx */
 
@@ -298,6 +304,10 @@ struct i915_execbuffer {
 	struct eb_vma_array *array;
 };
 
+static struct drm_i915_gem_exec_object2 no_entry = {
+	.offset = -1ull
+};
+
 static inline bool eb_use_cmdparser(const struct i915_execbuffer *eb)
 {
 	return intel_engine_requires_cmd_parser(eb->engine) ||
@@ -314,6 +324,7 @@ static struct eb_vma_array *eb_vma_array_create(unsigned int count)
 		return NULL;
 
 	kref_init(&arr->kref);
+	INIT_LIST_HEAD(&arr->aux_list);
 	arr->vma[0].vma = NULL;
 
 	return arr;
@@ -339,16 +350,31 @@ static inline void eb_unreserve_vma(struct eb_vma *ev)
 		       __EXEC_OBJECT_HAS_FENCE);
 }
 
+static void eb_vma_destroy(struct eb_vma *ev)
+{
+	eb_unreserve_vma(ev);
+	i915_vma_put(ev->vma);
+}
+
+static void eb_destroy_aux(struct eb_vma_array *arr)
+{
+	struct eb_vma *ev, *en;
+
+	list_for_each_entry_safe(ev, en, &arr->aux_list, reloc_link) {
+		eb_vma_destroy(ev);
+		kfree(ev);
+	}
+}
+
 static void eb_vma_array_destroy(struct kref *kref)
 {
 	struct eb_vma_array *arr = container_of(kref, typeof(*arr), kref);
-	struct eb_vma *ev = arr->vma;
+	struct eb_vma *ev;
 
-	while (ev->vma) {
-		eb_unreserve_vma(ev);
-		i915_vma_put(ev->vma);
-		ev++;
-	}
+	eb_destroy_aux(arr);
+
+	for (ev = arr->vma; ev->vma; ev++)
+		eb_vma_destroy(ev);
 
 	kvfree(arr);
 }
@@ -396,8 +422,8 @@ eb_lock_vma(struct i915_execbuffer *eb, struct ww_acquire_ctx *acquire)
 
 static int eb_create(struct i915_execbuffer *eb)
 {
-	/* Allocate an extra slot for use by the command parser + sentinel */
-	eb->array = eb_vma_array_create(eb->buffer_count + 2);
+	/* Allocate an extra slot for use by the sentinel */
+	eb->array = eb_vma_array_create(eb->buffer_count + 1);
 	if (!eb->array)
 		return -ENOMEM;
 
@@ -1078,7 +1104,7 @@ static int eb_reserve_vma(struct eb_vm_work *work, struct eb_bind_vma *bind)
 	GEM_BUG_ON(!(drm_mm_node_allocated(&vma->node) ^
 		     drm_mm_node_allocated(&bind->hole)));
 
-	if (entry->offset != vma->node.start) {
+	if (entry != &no_entry && entry->offset != vma->node.start) {
 		entry->offset = vma->node.start | UPDATE;
 		*work->p_flags |= __EXEC_HAS_RELOC;
 	}
@@ -1371,7 +1397,8 @@ static int eb_reserve_vm(struct i915_execbuffer *eb)
 		struct i915_vma *vma = ev->vma;
 
 		if (eb_pin_vma_inplace(eb, entry, ev)) {
-			if (entry->offset != vma->node.start) {
+			if (entry != &no_entry &&
+			    entry->offset != vma->node.start) {
 				entry->offset = vma->node.start | UPDATE;
 				eb->args->flags |= __EXEC_HAS_RELOC;
 			}
@@ -1542,6 +1569,113 @@ static int eb_reserve_vm(struct i915_execbuffer *eb)
 	} while (1);
 }
 
+static int eb_alloc_cmdparser(struct i915_execbuffer *eb)
+{
+	struct intel_gt_buffer_pool_node *pool;
+	struct i915_vma *vma;
+	struct eb_vma *ev;
+	unsigned int len;
+	int err;
+
+	if (range_overflows_t(u64,
+			      eb->batch_start_offset, eb->batch_len,
+			      eb->batch->vma->size)) {
+		drm_dbg(&eb->i915->drm,
+			"Attempting to use out-of-bounds batch\n");
+		return -EINVAL;
+	}
+
+	if (eb->batch_len == 0)
+		eb->batch_len = eb->batch->vma->size - eb->batch_start_offset;
+
+	if (!eb_use_cmdparser(eb))
+		return 0;
+
+	len = eb->batch_len;
+	if (!CMDPARSER_USES_GGTT(eb->i915)) {
+		/*
+		 * ppGTT backed shadow buffers must be mapped RO, to prevent
+		 * post-scan tampering
+		 */
+		if (!eb->context->vm->has_read_only) {
+			drm_dbg(&eb->i915->drm,
+				"Cannot prevent post-scan tampering without RO capable vm\n");
+			return -EINVAL;
+		}
+	} else {
+		len += I915_CMD_PARSER_TRAMPOLINE_SIZE;
+	}
+
+	pool = intel_gt_get_buffer_pool(eb->engine->gt, len);
+	if (IS_ERR(pool))
+		return PTR_ERR(pool);
+
+	ev = kzalloc(sizeof(*ev), GFP_KERNEL);
+	if (!ev) {
+		err = -ENOMEM;
+		goto err_pool;
+	}
+
+	vma = i915_vma_instance(pool->obj, eb->context->vm, NULL);
+	if (IS_ERR(vma)) {
+		err = PTR_ERR(vma);
+		goto err_ev;
+	}
+	i915_gem_object_set_readonly(vma->obj);
+	i915_gem_object_set_cache_coherency(vma->obj, I915_CACHE_LLC);
+	vma->private = pool;
+
+	ev->vma = i915_vma_get(vma);
+	ev->exec = &no_entry;
+	list_add(&ev->reloc_link, &eb->array->aux_list);
+	list_add(&ev->bind_link, &eb->bind_list);
+	list_add(&ev->submit_link, &eb->submit_list);
+
+	if (CMDPARSER_USES_GGTT(eb->i915)) {
+		eb->parser.trampoline = ev;
+
+		/*
+		 * Special care when binding will be required for full-ppgtt
+		 * as there will be distinct vm involved, and we will need to
+		 * separate the binding/eviction passes (different vm->mutex).
+		 */
+		if (GEM_WARN_ON(eb->context->vm != &eb->engine->gt->ggtt->vm)) {
+			ev = kzalloc(sizeof(*ev), GFP_KERNEL);
+			if (!ev) {
+				err = -ENOMEM;
+				goto err_pool;
+			}
+
+			vma = i915_vma_instance(pool->obj,
+						&eb->engine->gt->ggtt->vm,
+						NULL);
+			if (IS_ERR(vma)) {
+				err = PTR_ERR(vma);
+				goto err_ev;
+			}
+			vma->private = pool;
+
+			ev->vma = i915_vma_get(vma);
+			ev->exec = &no_entry;
+			list_add(&ev->reloc_link, &eb->array->aux_list);
+			list_add(&ev->bind_link, &eb->bind_list);
+			list_add(&ev->submit_link, &eb->submit_list);
+		}
+
+		ev->flags = EXEC_OBJECT_NEEDS_GTT;
+		eb->batch_flags |= I915_DISPATCH_SECURE;
+	}
+
+	eb->parser.shadow = ev;
+	return 0;
+
+err_ev:
+	kfree(ev);
+err_pool:
+	intel_gt_buffer_pool_put(pool);
+	return err;
+}
+
 static unsigned int eb_batch_index(const struct i915_execbuffer *eb)
 {
 	if (eb->args->flags & I915_EXEC_BATCH_FIRST)
@@ -1683,9 +1817,15 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
 
 		eb_add_vma(eb, i, batch, vma);
 	}
-
 	eb->vma[i].vma = NULL;
-	return err;
+	if (err)
+		return err;
+
+	err = eb_alloc_cmdparser(eb);
+	if (err)
+		return err;
+
+	return 0;
 }
 
 static struct eb_vma *
@@ -1712,9 +1852,7 @@ static void eb_destroy(const struct i915_execbuffer *eb)
 {
 	GEM_BUG_ON(eb->reloc_cache.rq);
 
-	if (eb->array)
-		eb_vma_array_put(eb->array);
-
+	eb_vma_array_put(eb->array);
 	if (eb->lut_size > 0)
 		kfree(eb->buckets);
 }
@@ -2416,8 +2554,6 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
 	}
 	ww_acquire_fini(&acquire);
 
-	eb_vma_array_put(fetch_and_zero(&eb->array));
-
 	if (unlikely(err))
 		goto err_skip;
 
@@ -2481,25 +2617,6 @@ static int i915_reset_gen7_sol_offsets(struct i915_request *rq)
 	return 0;
 }
 
-static struct i915_vma *
-shadow_batch_pin(struct drm_i915_gem_object *obj,
-		 struct i915_address_space *vm,
-		 unsigned int flags)
-{
-	struct i915_vma *vma;
-	int err;
-
-	vma = i915_vma_instance(obj, vm, NULL);
-	if (IS_ERR(vma))
-		return vma;
-
-	err = i915_vma_pin(vma, 0, 0, flags);
-	if (err)
-		return ERR_PTR(err);
-
-	return vma;
-}
-
 struct eb_parse_work {
 	struct dma_fence_work base;
 	struct intel_engine_cs *engine;
@@ -2522,9 +2639,18 @@ static int __eb_parse(struct dma_fence_work *work)
 				       pw->trampoline);
 }
 
+static void __eb_parse_release(struct dma_fence_work *work)
+{
+	struct eb_parse_work *pw = container_of(work, typeof(*pw), base);
+
+	i915_gem_object_unpin_pages(pw->shadow->obj);
+	i915_gem_object_unpin_pages(pw->batch->obj);
+}
+
 static const struct dma_fence_work_ops eb_parse_ops = {
 	.name = "eb_parse",
 	.work = __eb_parse,
+	.release = __eb_parse_release,
 };
 
 static inline int
@@ -2542,36 +2668,51 @@ parser_mark_active(struct eb_parse_work *pw, struct intel_timeline *tl)
 {
 	int err;
 
+	GEM_BUG_ON(pw->trampoline &&
+		   pw->trampoline->private != pw->shadow->private);
+
 	err = i915_active_ref(&pw->batch->active,
 			      tl->fence_context,
 			      &pw->base.dma);
 	if (err)
 		return err;
 
-	err = __parser_mark_active(pw->shadow, tl, &pw->base.dma);
-	if (err)
-		return err;
-
-	if (pw->trampoline) {
-		err = __parser_mark_active(pw->trampoline, tl, &pw->base.dma);
-		if (err)
-			return err;
-	}
-
-	return 0;
+	return __parser_mark_active(pw->shadow, tl, &pw->base.dma);
 }
 
 static int eb_parse_pipeline(struct i915_execbuffer *eb,
 			     struct i915_vma *shadow,
 			     struct i915_vma *trampoline)
 {
+	struct i915_vma *batch = eb->batch->vma;
 	struct eb_parse_work *pw;
+	void *ptr;
 	int err;
 
+	GEM_BUG_ON(!i915_vma_is_pinned(shadow));
+	GEM_BUG_ON(trampoline && !i915_vma_is_pinned(trampoline));
+
 	pw = kzalloc(sizeof(*pw), GFP_KERNEL);
 	if (!pw)
 		return -ENOMEM;
 
+	ptr = i915_gem_object_pin_map(shadow->obj, I915_MAP_FORCE_WB);
+	if (IS_ERR(ptr)) {
+		err = PTR_ERR(ptr);
+		goto err_free;
+	}
+
+	if (!(batch->obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_READ) &&
+	    i915_has_memcpy_from_wc()) {
+		ptr = i915_gem_object_pin_map(batch->obj, I915_MAP_WC);
+		if (IS_ERR(ptr)) {
+			err = PTR_ERR(ptr);
+			goto err_dst;
+		}
+	} else {
+		__i915_gem_object_pin_pages(batch->obj);
+	}
+
 	dma_fence_work_init(&pw->base, &eb_parse_ops);
 
 	pw->engine = eb->engine;
@@ -2620,86 +2761,36 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
 	i915_sw_fence_set_error_once(&pw->base.chain, err);
 	dma_fence_work_commit_imm(&pw->base);
 	return err;
+
+err_dst:
+	i915_gem_object_unpin_pages(shadow->obj);
+err_free:
+	kfree(pw);
+	return err;
 }
 
 static int eb_parse(struct i915_execbuffer *eb)
 {
-	struct drm_i915_private *i915 = eb->i915;
-	struct intel_gt_buffer_pool_node *pool;
-	struct i915_vma *shadow, *trampoline;
-	unsigned int len;
 	int err;
 
-	if (!eb_use_cmdparser(eb))
-		return 0;
-
-	len = eb->batch_len;
-	if (!CMDPARSER_USES_GGTT(eb->i915)) {
-		/*
-		 * ppGTT backed shadow buffers must be mapped RO, to prevent
-		 * post-scan tampering
-		 */
-		if (!eb->context->vm->has_read_only) {
-			drm_dbg(&i915->drm,
-				"Cannot prevent post-scan tampering without RO capable vm\n");
-			return -EINVAL;
-		}
-	} else {
-		len += I915_CMD_PARSER_TRAMPOLINE_SIZE;
-	}
-
-	pool = intel_gt_get_buffer_pool(eb->engine->gt, len);
-	if (IS_ERR(pool))
-		return PTR_ERR(pool);
-
-	shadow = shadow_batch_pin(pool->obj, eb->context->vm, PIN_USER);
-	if (IS_ERR(shadow)) {
-		err = PTR_ERR(shadow);
-		goto err;
+	if (unlikely(eb->batch->flags & EXEC_OBJECT_WRITE)) {
+		drm_dbg(&eb->i915->drm,
+			"Attempting to use self-modifying batch buffer\n");
+		return -EINVAL;
 	}
-	i915_gem_object_set_readonly(shadow->obj);
-	shadow->private = pool;
-
-	trampoline = NULL;
-	if (CMDPARSER_USES_GGTT(eb->i915)) {
-		trampoline = shadow;
-
-		shadow = shadow_batch_pin(pool->obj,
-					  &eb->engine->gt->ggtt->vm,
-					  PIN_GLOBAL);
-		if (IS_ERR(shadow)) {
-			err = PTR_ERR(shadow);
-			shadow = trampoline;
-			goto err_shadow;
-		}
-		shadow->private = pool;
 
-		eb->batch_flags |= I915_DISPATCH_SECURE;
-	}
+	if (!eb->parser.shadow)
+		return 0;
 
-	err = eb_parse_pipeline(eb, shadow, trampoline);
+	err = eb_parse_pipeline(eb,
+				eb->parser.shadow->vma,
+				eb->parser.trampoline ? eb->parser.trampoline->vma : NULL);
 	if (err)
-		goto err_trampoline;
-
-	eb->batch = &eb->vma[eb->buffer_count++];
-	eb->batch->vma = i915_vma_get(shadow);
-	eb->batch->flags = __EXEC_OBJECT_HAS_PIN;
-	list_add_tail(&eb->batch->submit_link, &eb->submit_list);
-	eb->vma[eb->buffer_count].vma = NULL;
+		return err;
 
-	eb->trampoline = trampoline;
+	eb->batch = eb->parser.shadow;
 	eb->batch_start_offset = 0;
-
 	return 0;
-
-err_trampoline:
-	if (trampoline)
-		i915_vma_unpin(trampoline);
-err_shadow:
-	i915_vma_unpin(shadow);
-err:
-	intel_gt_buffer_pool_put(pool);
-	return err;
 }
 
 static void
@@ -2748,10 +2839,10 @@ static int eb_submit(struct i915_execbuffer *eb, struct i915_vma *batch)
 	if (err)
 		return err;
 
-	if (eb->trampoline) {
+	if (eb->parser.trampoline) {
 		GEM_BUG_ON(eb->batch_start_offset);
 		err = eb->engine->emit_bb_start(eb->request,
-						eb->trampoline->node.start +
+						eb->parser.trampoline->vma->node.start +
 						eb->batch_len,
 						0, 0);
 		if (err)
@@ -3242,7 +3333,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	eb.buffer_count = args->buffer_count;
 	eb.batch_start_offset = args->batch_start_offset;
 	eb.batch_len = args->batch_len;
-	eb.trampoline = NULL;
+	memset(&eb.parser, 0, sizeof(eb.parser));
 
 	eb.batch_flags = 0;
 	if (args->flags & I915_EXEC_SECURE) {
@@ -3317,24 +3408,6 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		goto err_vma;
 	}
 
-	if (unlikely(eb.batch->flags & EXEC_OBJECT_WRITE)) {
-		drm_dbg(&i915->drm,
-			"Attempting to use self-modifying batch buffer\n");
-		err = -EINVAL;
-		goto err_vma;
-	}
-
-	if (range_overflows_t(u64,
-			      eb.batch_start_offset, eb.batch_len,
-			      eb.batch->vma->size)) {
-		drm_dbg(&i915->drm, "Attempting to use out-of-bounds batch\n");
-		err = -EINVAL;
-		goto err_vma;
-	}
-
-	if (eb.batch_len == 0)
-		eb.batch_len = eb.batch->vma->size - eb.batch_start_offset;
-
 	err = eb_parse(&eb);
 	if (err)
 		goto err_vma;
@@ -3360,7 +3433,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		vma = i915_gem_object_ggtt_pin(batch->obj, NULL, 0, 0, 0);
 		if (IS_ERR(vma)) {
 			err = PTR_ERR(vma);
-			goto err_parse;
+			goto err_vma;
 		}
 
 		GEM_BUG_ON(vma->obj != batch->obj);
@@ -3412,8 +3485,9 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	 * to explicitly hold another reference here.
 	 */
 	eb.request->batch = batch;
-	if (batch->private)
-		intel_gt_buffer_pool_mark_active(batch->private, eb.request);
+	if (eb.parser.shadow)
+		intel_gt_buffer_pool_mark_active(eb.parser.shadow->vma->private,
+						 eb.request);
 
 	trace_i915_request_queue(eb.request, eb.batch_flags);
 	err = eb_submit(&eb, batch);
@@ -3430,18 +3504,14 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 err_batch_unpin:
 	if (eb.batch_flags & I915_DISPATCH_SECURE)
 		i915_vma_unpin(batch);
-err_parse:
-	if (batch->private)
-		intel_gt_buffer_pool_put(batch->private);
-	i915_vma_put(batch);
 err_vma:
-	if (eb.trampoline)
-		i915_vma_unpin(eb.trampoline);
 	eb_unlock_engine(&eb);
 	/* *** TIMELINE UNLOCK *** */
 err_engine:
 	eb_unpin_engine(&eb);
 err_context:
+	if (eb.parser.shadow)
+		intel_gt_buffer_pool_put(eb.parser.shadow->vma->private);
 	i915_gem_context_put(eb.gem_context);
 err_destroy:
 	eb_destroy(&eb);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index e5b9276d254c..6f60687b6be2 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -368,6 +368,16 @@ enum i915_map_type {
 void *__must_check i915_gem_object_pin_map(struct drm_i915_gem_object *obj,
 					   enum i915_map_type type);
 
+static inline void *__i915_gem_object_mapping(struct drm_i915_gem_object *obj)
+{
+	return page_mask_bits(obj->mm.mapping);
+}
+
+static inline int __i915_gem_object_mapping_type(struct drm_i915_gem_object *obj)
+{
+	return page_unmask_bits(obj->mm.mapping);
+}
+
 void __i915_gem_object_flush_map(struct drm_i915_gem_object *obj,
 				 unsigned long offset,
 				 unsigned long size);
diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
index 372354d33f55..dc8770206bb8 100644
--- a/drivers/gpu/drm/i915/i915_cmd_parser.c
+++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
@@ -1140,29 +1140,22 @@ static u32 *copy_batch(struct drm_i915_gem_object *dst_obj,
 {
 	bool needs_clflush;
 	void *dst, *src;
-	int ret;
 
-	dst = i915_gem_object_pin_map(dst_obj, I915_MAP_FORCE_WB);
-	if (IS_ERR(dst))
-		return dst;
+	GEM_BUG_ON(!i915_gem_object_has_pages(src_obj));
 
-	ret = i915_gem_object_pin_pages(src_obj);
-	if (ret) {
-		i915_gem_object_unpin_map(dst_obj);
-		return ERR_PTR(ret);
-	}
+	dst = __i915_gem_object_mapping(dst_obj);
+	GEM_BUG_ON(!dst);
 
 	needs_clflush =
 		!(src_obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_READ);
 
 	src = ERR_PTR(-ENODEV);
 	if (needs_clflush && i915_has_memcpy_from_wc()) {
-		src = i915_gem_object_pin_map(src_obj, I915_MAP_WC);
-		if (!IS_ERR(src)) {
+		if (__i915_gem_object_mapping_type(src_obj) == I915_MAP_WC) {
+			src = __i915_gem_object_mapping(src_obj);
 			i915_unaligned_memcpy_from_wc(dst,
 						      src + offset,
 						      length);
-			i915_gem_object_unpin_map(src_obj);
 		}
 	}
 	if (IS_ERR(src)) {
@@ -1198,9 +1191,6 @@ static u32 *copy_batch(struct drm_i915_gem_object *dst_obj,
 		}
 	}
 
-	i915_gem_object_unpin_pages(src_obj);
-
-	/* dst_obj is returned with vmap pinned */
 	return dst;
 }
 
@@ -1546,7 +1536,6 @@ int intel_engine_cmd_parser(struct intel_engine_cs *engine,
 
 	if (!IS_ERR_OR_NULL(jump_whitelist))
 		kfree(jump_whitelist);
-	i915_gem_object_unpin_map(shadow->obj);
 	return ret;
 }
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
