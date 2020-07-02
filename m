Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF11211EDC
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 10:32:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 415346EA9A;
	Thu,  2 Jul 2020 08:32:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9FE06EA9E
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 08:32:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21685244-1500050 
 for multiple; Thu, 02 Jul 2020 09:32:27 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Jul 2020 09:32:21 +0100
Message-Id: <20200702083225.20044-19-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200702083225.20044-1-chris@chris-wilson.co.uk>
References: <20200702083225.20044-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 19/23] drm/i915/gem: Include cmdparser in common
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
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 316 ++++++++++--------
 1 file changed, 172 insertions(+), 144 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 7d12db713271..e19c0cbe1b7d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -52,6 +52,7 @@ struct eb_bind_vma {
 
 struct eb_vma_array {
 	struct kref kref;
+	struct list_head aux_list;
 	struct eb_vma vma[];
 };
 
@@ -246,7 +247,6 @@ struct i915_execbuffer {
 
 	struct i915_request *request; /** our request to build */
 	struct eb_vma *batch; /** identity of the batch obj/vma */
-	struct i915_vma *trampoline; /** trampoline used for chaining */
 
 	/** actual size of execobj[] as we may extend it for the cmdparser */
 	unsigned int buffer_count;
@@ -281,6 +281,11 @@ struct i915_execbuffer {
 		unsigned int rq_size;
 	} reloc_cache;
 
+	struct eb_cmdparser {
+		struct eb_vma *shadow;
+		struct eb_vma *trampoline;
+	} parser;
+
 	u64 invalid_flags; /** Set of execobj.flags that are invalid */
 	u32 context_flags; /** Set of execobj.flags to insert from the ctx */
 
@@ -298,6 +303,8 @@ struct i915_execbuffer {
 	struct eb_vma_array *array;
 };
 
+static struct drm_i915_gem_exec_object2 no_entry;
+
 static inline bool eb_use_cmdparser(const struct i915_execbuffer *eb)
 {
 	return intel_engine_requires_cmd_parser(eb->engine) ||
@@ -314,6 +321,7 @@ static struct eb_vma_array *eb_vma_array_create(unsigned int count)
 		return NULL;
 
 	kref_init(&arr->kref);
+	INIT_LIST_HEAD(&arr->aux_list);
 	arr->vma[0].vma = NULL;
 
 	return arr;
@@ -339,16 +347,31 @@ static inline void eb_unreserve_vma(struct eb_vma *ev)
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
@@ -396,8 +419,8 @@ eb_lock_vma(struct i915_execbuffer *eb, struct ww_acquire_ctx *acquire)
 
 static int eb_create(struct i915_execbuffer *eb)
 {
-	/* Allocate an extra slot for use by the command parser + sentinel */
-	eb->array = eb_vma_array_create(eb->buffer_count + 2);
+	/* Allocate an extra slot for use by the sentinel */
+	eb->array = eb_vma_array_create(eb->buffer_count + 1);
 	if (!eb->array)
 		return -ENOMEM;
 
@@ -1072,7 +1095,7 @@ static int eb_reserve_vma(struct eb_vm_work *work, struct eb_bind_vma *bind)
 	GEM_BUG_ON(!(drm_mm_node_allocated(&vma->node) ^
 		     drm_mm_node_allocated(&bind->hole)));
 
-	if (entry->offset != vma->node.start) {
+	if (entry != &no_entry && entry->offset != vma->node.start) {
 		entry->offset = vma->node.start | UPDATE;
 		*work->p_flags |= __EXEC_HAS_RELOC;
 	}
@@ -1384,7 +1407,8 @@ static int eb_reserve_vm(struct i915_execbuffer *eb)
 		struct i915_vma *vma = ev->vma;
 
 		if (eb_pin_vma_inplace(eb, entry, ev)) {
-			if (entry->offset != vma->node.start) {
+			if (entry != &no_entry &&
+			    entry->offset != vma->node.start) {
 				entry->offset = vma->node.start | UPDATE;
 				eb->args->flags |= __EXEC_HAS_RELOC;
 			}
@@ -1518,6 +1542,112 @@ static int eb_reserve_vm(struct i915_execbuffer *eb)
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
@@ -1681,9 +1811,7 @@ static void eb_destroy(const struct i915_execbuffer *eb)
 {
 	GEM_BUG_ON(eb->reloc_cache.rq);
 
-	if (eb->array)
-		eb_vma_array_put(eb->array);
-
+	eb_vma_array_put(eb->array);
 	if (eb->lut_size > 0)
 		kfree(eb->buckets);
 }
@@ -2303,6 +2431,10 @@ static int eb_relocate(struct i915_execbuffer *eb)
 	if (err)
 		return err;
 
+	err = eb_alloc_cmdparser(eb);
+	if (err)
+		return err;
+
 	err = eb_reserve_vm(eb);
 	if (err)
 		return err;
@@ -2387,8 +2519,6 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
 	}
 	ww_acquire_fini(&acquire);
 
-	eb_vma_array_put(fetch_and_zero(&eb->array));
-
 	if (unlikely(err))
 		goto err_skip;
 
@@ -2452,25 +2582,6 @@ static int i915_reset_gen7_sol_offsets(struct i915_request *rq)
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
@@ -2522,19 +2633,10 @@ __parser_mark_active(struct i915_vma *vma,
 static int
 parser_mark_active(struct eb_parse_work *pw, struct intel_timeline *tl)
 {
-	int err;
-
-	err = __parser_mark_active(pw->shadow, tl, &pw->base.dma);
-	if (err)
-		return err;
-
-	if (pw->trampoline) {
-		err = __parser_mark_active(pw->trampoline, tl, &pw->base.dma);
-		if (err)
-			return err;
-	}
+	GEM_BUG_ON(pw->trampoline &&
+		   pw->trampoline->private != pw->shadow->private);
 
-	return 0;
+	return __parser_mark_active(pw->shadow, tl, &pw->base.dma);
 }
 
 static int eb_parse_pipeline(struct i915_execbuffer *eb,
@@ -2544,6 +2646,9 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
 	struct eb_parse_work *pw;
 	int err;
 
+	GEM_BUG_ON(!i915_vma_is_pinned(shadow));
+	GEM_BUG_ON(trampoline && !i915_vma_is_pinned(trampoline));
+
 	pw = kzalloc(sizeof(*pw), GFP_KERNEL);
 	if (!pw)
 		return -ENOMEM;
@@ -2622,82 +2727,26 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
 
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
-
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
@@ -2746,10 +2795,10 @@ static int eb_submit(struct i915_execbuffer *eb, struct i915_vma *batch)
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
@@ -3234,7 +3283,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	eb.buffer_count = args->buffer_count;
 	eb.batch_start_offset = args->batch_start_offset;
 	eb.batch_len = args->batch_len;
-	eb.trampoline = NULL;
+	memset(&eb.parser, 0, sizeof(eb.parser));
 
 	eb.batch_flags = 0;
 	if (args->flags & I915_EXEC_SECURE) {
@@ -3300,24 +3349,6 @@ i915_gem_do_execbuffer(struct drm_device *dev,
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
@@ -3343,7 +3374,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		vma = i915_gem_object_ggtt_pin(batch->obj, NULL, 0, 0, 0);
 		if (IS_ERR(vma)) {
 			err = PTR_ERR(vma);
-			goto err_parse;
+			goto err_vma;
 		}
 
 		GEM_BUG_ON(vma->obj != batch->obj);
@@ -3395,8 +3426,9 @@ i915_gem_do_execbuffer(struct drm_device *dev,
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
@@ -3423,13 +3455,9 @@ i915_gem_do_execbuffer(struct drm_device *dev,
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
+	if (eb.parser.shadow)
+		intel_gt_buffer_pool_put(eb.parser.shadow->vma->private);
 	eb_unpin_engine(&eb);
 err_context:
 	i915_gem_context_put(eb.gem_context);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
