Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 225BE1E083C
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2020 09:54:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1D37899D5;
	Mon, 25 May 2020 07:54:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FE20899D4
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 May 2020 07:53:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21284206-1500050 
 for multiple; Mon, 25 May 2020 08:53:47 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 May 2020 08:53:46 +0100
Message-Id: <20200525075347.582-11-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200525075347.582-1-chris@chris-wilson.co.uk>
References: <20200525075347.582-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/12] drm/i915/gem: Add all GPU reloc
 awaits/signals en masse
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

Asynchronous waits and signaling form a traditional semaphore with all
the usual ordering problems with taking multiple locks. If we want to
add more than one wait on a shared resource by the GPU, we must ensure
that all the associated timelines are advanced atomically, ergo we must
lock all the timelines en masse.

Testcase: igt/gem_exec_reloc/basic-concurrent16
Fixes: 0e97fbb08055 ("drm/i915/gem: Use a single chained reloc batches for a single execbuf")
References: https://gitlab.freedesktop.org/drm/intel/-/issues/1889
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 106 ++++++++++++------
 .../i915/gem/selftests/i915_gem_execbuffer.c  |  24 ++--
 2 files changed, 86 insertions(+), 44 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 903805455af1..be6fb2ebf8cc 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -259,7 +259,6 @@ struct i915_execbuffer {
 		bool has_fence : 1;
 		bool needs_unfenced : 1;
 
-		struct i915_vma *target;
 		struct i915_request *rq;
 		struct i915_vma *rq_vma;
 		u32 *rq_cmd;
@@ -924,7 +923,6 @@ static void reloc_cache_init(struct reloc_cache *cache,
 	cache->has_fence = cache->gen < 4;
 	cache->needs_unfenced = INTEL_INFO(i915)->unfenced_needs_alignment;
 	cache->node.flags = 0;
-	cache->target = NULL;
 }
 
 static inline void *unmask_page(unsigned long p)
@@ -1058,26 +1056,6 @@ static int reloc_gpu_flush(struct reloc_cache *cache)
 	return err;
 }
 
-static int reloc_move_to_gpu(struct i915_request *rq, struct i915_vma *vma)
-{
-	struct drm_i915_gem_object *obj = vma->obj;
-	int err;
-
-	i915_vma_lock(vma);
-
-	if (obj->cache_dirty & ~obj->cache_coherent)
-		i915_gem_clflush_object(obj, 0);
-	obj->write_domain = 0;
-
-	err = i915_request_await_object(rq, vma->obj, true);
-	if (err == 0)
-		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
-
-	i915_vma_unlock(vma);
-
-	return err;
-}
-
 static int
 __reloc_gpu_alloc(struct i915_execbuffer *eb, struct intel_engine_cs *engine)
 {
@@ -1177,16 +1155,6 @@ static u32 *reloc_gpu(struct i915_execbuffer *eb,
 	u32 *cmd;
 	int err;
 
-	if (vma != cache->target) {
-		err = reloc_move_to_gpu(cache->rq, vma);
-		if (unlikely(err)) {
-			i915_request_set_error_once(cache->rq, err);
-			return ERR_PTR(err);
-		}
-
-		cache->target = vma;
-	}
-
 	if (unlikely(cache->rq_size + len >
 		     PAGE_SIZE / sizeof(u32) - RELOC_TAIL)) {
 		err = reloc_gpu_chain(cache);
@@ -1477,6 +1445,74 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
 	return 0;
 }
 
+static int reloc_move_to_gpu(struct reloc_cache *cache, struct eb_vma *ev)
+{
+	struct i915_request *rq = cache->rq;
+	struct i915_vma *vma = ev->vma;
+	struct drm_i915_gem_object *obj = vma->obj;
+	int err;
+
+	if (obj->cache_dirty & ~obj->cache_coherent)
+		i915_gem_clflush_object(obj, 0);
+
+	obj->write_domain = I915_GEM_DOMAIN_RENDER;
+	obj->read_domains = I915_GEM_DOMAIN_RENDER;
+
+	err = i915_request_await_object(rq, obj, true);
+	if (err == 0) {
+		dma_resv_add_excl_fence(vma->resv, &rq->fence);
+		err = __i915_vma_move_to_active(vma, rq);
+	}
+
+	return err;
+}
+
+static int
+lock_relocs(struct i915_execbuffer *eb)
+{
+	struct ww_acquire_ctx acquire;
+	struct eb_vma *ev;
+	int err = 0;
+
+	ww_acquire_init(&acquire, &reservation_ww_class);
+
+	list_for_each_entry(ev, &eb->relocs, reloc_link) {
+		struct i915_vma *vma = ev->vma;
+
+		err = ww_mutex_lock_interruptible(&vma->resv->lock, &acquire);
+		if (err == -EDEADLK) {
+			struct eb_vma *unlock = ev, *en;
+
+			list_for_each_entry_safe_continue_reverse(unlock, en,
+								  &eb->relocs,
+								  reloc_link) {
+				ww_mutex_unlock(&unlock->vma->resv->lock);
+				list_move_tail(&unlock->reloc_link,
+					       &eb->relocs);
+			}
+
+			GEM_BUG_ON(!list_is_first(&ev->reloc_link,
+						  &eb->relocs));
+			err = ww_mutex_lock_slow_interruptible(&vma->resv->lock,
+							       &acquire);
+		}
+		if (err)
+			break;
+	}
+
+	ww_acquire_done(&acquire);
+
+	list_for_each_entry_continue_reverse(ev, &eb->relocs, reloc_link) {
+		if (err == 0)
+			err = reloc_move_to_gpu(&eb->reloc_cache, ev);
+		ww_mutex_unlock(&ev->vma->resv->lock);
+	}
+
+	ww_acquire_fini(&acquire);
+
+	return err;
+}
+
 static bool reloc_can_use_engine(const struct intel_engine_cs *engine)
 {
 	return engine->class != VIDEO_DECODE_CLASS || !IS_GEN(engine->i915, 6);
@@ -1519,10 +1555,10 @@ static int eb_relocate(struct i915_execbuffer *eb)
 			return err;
 		GEM_BUG_ON(!eb->reloc_cache.rq);
 
+		err = lock_relocs(eb);
 		list_for_each_entry(ev, &eb->relocs, reloc_link) {
-			err = eb_relocate_vma(eb, ev);
-			if (err)
-				break;
+			if (err == 0)
+				err = eb_relocate_vma(eb, ev);
 		}
 
 		flush = reloc_gpu_flush(&eb->reloc_cache);
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
index f0ec23632a78..8b06609e260e 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
@@ -24,15 +24,15 @@ static int __igt_gpu_reloc(struct i915_execbuffer *eb,
 		GENMASK_ULL(eb->reloc_cache.use_64bit_reloc ? 63 : 31, 0);
 	const u32 *map = page_mask_bits(obj->mm.mapping);
 	struct i915_request *rq;
-	struct i915_vma *vma;
+	struct eb_vma ev;
 	int err;
 	int i;
 
-	vma = i915_vma_instance(obj, eb->context->vm, NULL);
-	if (IS_ERR(vma))
-		return PTR_ERR(vma);
+	ev.vma = i915_vma_instance(obj, eb->context->vm, NULL);
+	if (IS_ERR(ev.vma))
+		return PTR_ERR(ev.vma);
 
-	err = i915_vma_pin(vma, 0, 0, PIN_USER | PIN_HIGH);
+	err = i915_vma_pin(ev.vma, 0, 0, PIN_USER | PIN_HIGH);
 	if (err)
 		return err;
 
@@ -40,13 +40,19 @@ static int __igt_gpu_reloc(struct i915_execbuffer *eb,
 	if (err)
 		goto unpin_vma;
 
+	i915_vma_lock(ev.vma);
+	err = reloc_move_to_gpu(&eb->reloc_cache, &ev);
+	i915_vma_unlock(ev.vma);
+	if (err)
+		goto unpin_vma;
+
 	/* 8-Byte aligned */
-	err = __reloc_entry_gpu(eb, vma, offsets[0] * sizeof(u32), 0);
+	err = __reloc_entry_gpu(eb, ev.vma, offsets[0] * sizeof(u32), 0);
 	if (err)
 		goto unpin_vma;
 
 	/* !8-Byte aligned */
-	err = __reloc_entry_gpu(eb, vma, offsets[1] * sizeof(u32), 1);
+	err = __reloc_entry_gpu(eb, ev.vma, offsets[1] * sizeof(u32), 1);
 	if (err)
 		goto unpin_vma;
 
@@ -58,7 +64,7 @@ static int __igt_gpu_reloc(struct i915_execbuffer *eb,
 	eb->reloc_cache.rq_size += i;
 
 	/* Force batch chaining */
-	err = __reloc_entry_gpu(eb, vma, offsets[2] * sizeof(u32), 2);
+	err = __reloc_entry_gpu(eb, ev.vma, offsets[2] * sizeof(u32), 2);
 	if (err)
 		goto unpin_vma;
 
@@ -96,7 +102,7 @@ static int __igt_gpu_reloc(struct i915_execbuffer *eb,
 put_rq:
 	i915_request_put(rq);
 unpin_vma:
-	i915_vma_unpin(vma);
+	i915_vma_unpin(ev.vma);
 	return err;
 }
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
