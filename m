Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A211E6D63
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2020 23:15:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABEC16E7D2;
	Thu, 28 May 2020 21:15:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53DE76E7D1
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2020 21:15:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21327482-1500050 
 for multiple; Thu, 28 May 2020 22:15:26 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 May 2020 22:15:24 +0100
Message-Id: <20200528211524.29107-11-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200528211524.29107-1-chris@chris-wilson.co.uk>
References: <20200528211524.29107-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/11] drm/i915/gem: Make relocations atomic
 within execbuf
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

Although we may chide userspace for reusing the same batches
concurrently from multiple threads, at the same time we must be very
careful to only execute the batch and its relocations as supplied by the
user. If we are not careful, we may allow another thread to rewrite the
current batch with its own relocations. We must order the relocations
and their batch such that they are an atomic pair on the GPU, and that
the ioctl itself appears atomic to userspace. The order of execution may
be undetermined, but it will not be subverted.

We could do this by moving the relocations into the main request, if it
were not for the situation where we need a second engine to perform the
relocations for us. Instead, we use the dependency tracking to only
publish the write fence on the main request and not on the relocation
request, so that concurrent updates are queued after the batch has
consumed its relocations.

Testcase: igt/gem_exec_reloc/basic-concurrent
Fixes: ef398881d27d ("drm/i915/gem: Limit struct_mutex to eb_reserve")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 92 ++++++++++++++-----
 .../i915/gem/selftests/i915_gem_execbuffer.c  | 11 ++-
 2 files changed, 73 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 37855ae8f8b3..2844274c37bb 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -5,6 +5,7 @@
  */
 
 #include <linux/intel-iommu.h>
+#include <linux/dma-fence-proxy.h>
 #include <linux/dma-resv.h>
 #include <linux/sync_file.h>
 #include <linux/uaccess.h>
@@ -259,6 +260,8 @@ struct i915_execbuffer {
 		bool has_fence : 1;
 		bool needs_unfenced : 1;
 
+		struct dma_fence *fence;
+
 		struct i915_request *rq;
 		struct i915_vma *rq_vma;
 		u32 *rq_cmd;
@@ -555,16 +558,6 @@ eb_add_vma(struct i915_execbuffer *eb,
 	ev->exec = entry;
 	ev->flags = entry->flags;
 
-	if (eb->lut_size > 0) {
-		ev->handle = entry->handle;
-		hlist_add_head(&ev->node,
-			       &eb->buckets[hash_32(entry->handle,
-						    eb->lut_size)]);
-	}
-
-	if (entry->relocation_count)
-		list_add_tail(&ev->reloc_link, &eb->relocs);
-
 	/*
 	 * SNA is doing fancy tricks with compressing batch buffers, which leads
 	 * to negative relocation deltas. Usually that works out ok since the
@@ -581,9 +574,21 @@ eb_add_vma(struct i915_execbuffer *eb,
 		if (eb->reloc_cache.has_fence)
 			ev->flags |= EXEC_OBJECT_NEEDS_FENCE;
 
+		INIT_LIST_HEAD(&ev->reloc_link);
+
 		eb->batch = ev;
 	}
 
+	if (entry->relocation_count)
+		list_add_tail(&ev->reloc_link, &eb->relocs);
+
+	if (eb->lut_size > 0) {
+		ev->handle = entry->handle;
+		hlist_add_head(&ev->node,
+			       &eb->buckets[hash_32(entry->handle,
+						    eb->lut_size)]);
+	}
+
 	if (eb_pin_vma(eb, entry, ev)) {
 		if (entry->offset != vma->node.start) {
 			entry->offset = vma->node.start | UPDATE;
@@ -923,6 +928,7 @@ static void reloc_cache_init(struct reloc_cache *cache,
 	cache->has_fence = cache->gen < 4;
 	cache->needs_unfenced = INTEL_INFO(i915)->unfenced_needs_alignment;
 	cache->node.flags = 0;
+	cache->fence = NULL;
 }
 
 static inline void *unmask_page(unsigned long p)
@@ -1052,6 +1058,7 @@ static void reloc_gpu_flush(struct reloc_cache *cache)
 	}
 
 	intel_gt_chipset_flush(rq->engine->gt);
+	i915_request_get(rq);
 	i915_request_add(rq);
 }
 
@@ -1284,16 +1291,6 @@ eb_relocate_entry(struct i915_execbuffer *eb,
 	if (gen8_canonical_addr(target->vma->node.start) == reloc->presumed_offset)
 		return 0;
 
-	/*
-	 * If we write into the object, we need to force the synchronisation
-	 * barrier, either with an asynchronous clflush or if we executed the
-	 * patching using the GPU (though that should be serialised by the
-	 * timeline). To be completely sure, and since we are required to
-	 * do relocations we are already stalling, disable the user's opt
-	 * out of our synchronisation.
-	 */
-	ev->flags &= ~EXEC_OBJECT_ASYNC;
-
 	/* and update the user's relocation entry */
 	return relocate_entry(eb, ev->vma, reloc, target->vma);
 }
@@ -1527,6 +1524,11 @@ static int reloc_move_to_gpu(struct reloc_cache *cache, struct eb_vma *ev)
 
 	obj->write_domain = I915_GEM_DOMAIN_RENDER;
 	obj->read_domains = I915_GEM_DOMAIN_RENDER;
+	ev->flags |= EXEC_OBJECT_ASYNC;
+
+	err = dma_resv_reserve_shared(vma->resv, 1);
+	if (err)
+		return err;
 
 	err = i915_request_await_object(rq, obj, true);
 	if (err)
@@ -1537,6 +1539,7 @@ static int reloc_move_to_gpu(struct reloc_cache *cache, struct eb_vma *ev)
 		return err;
 
 	dma_resv_add_excl_fence(vma->resv, &rq->fence);
+	dma_resv_add_shared_fence(vma->resv, cache->fence);
 
 	return 0;
 }
@@ -1605,14 +1608,28 @@ static int reloc_gpu_alloc(struct i915_execbuffer *eb)
 	return __reloc_gpu_alloc(eb, engine);
 }
 
+static void free_reloc_fence(struct i915_execbuffer *eb)
+{
+	struct dma_fence *f = fetch_and_zero(&eb->reloc_cache.fence);
+
+	dma_fence_signal(f);
+	dma_fence_put(f);
+}
+
 static int reloc_gpu(struct i915_execbuffer *eb)
 {
 	struct eb_vma *ev;
 	int err;
 
+	eb->reloc_cache.fence = __dma_fence_create_proxy(0, 0);
+	if (!eb->reloc_cache.fence)
+		return -ENOMEM;
+
 	err = reloc_gpu_alloc(eb);
-	if (err)
+	if (err) {
+		free_reloc_fence(eb);
 		return err;
+	}
 	GEM_BUG_ON(!eb->reloc_cache.rq);
 
 	err = lock_relocs(eb);
@@ -1673,6 +1690,15 @@ static int eb_relocate(struct i915_execbuffer *eb)
 	return 0;
 }
 
+static void eb_reloc_signal(struct i915_execbuffer *eb, struct i915_request *rq)
+{
+	dma_fence_proxy_set_real(eb->reloc_cache.fence, &rq->fence);
+	i915_request_put(eb->reloc_cache.rq);
+
+	dma_fence_put(eb->reloc_cache.fence);
+	eb->reloc_cache.fence = NULL;
+}
+
 static int eb_move_to_gpu(struct i915_execbuffer *eb)
 {
 	const unsigned int count = eb->buffer_count;
@@ -1953,10 +1979,15 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
 	if (err)
 		goto err_commit_unlock;
 
-	/* Wait for all writes (and relocs) into the batch to complete */
-	err = i915_sw_fence_await_reservation(&pw->base.chain,
-					      pw->batch->resv, NULL, false,
-					      0, I915_FENCE_GFP);
+	/* Wait for all writes (or relocs) into the batch to complete */
+	if (!eb->reloc_cache.fence || list_empty(&eb->batch->reloc_link))
+		err = i915_sw_fence_await_reservation(&pw->base.chain,
+						      pw->batch->resv, NULL,
+						      false, 0, I915_FENCE_GFP);
+	else
+		err = i915_sw_fence_await_dma_fence(&pw->base.chain,
+						    &eb->reloc_cache.rq->fence,
+						    0, I915_FENCE_GFP);
 	if (err < 0)
 		goto err_commit_unlock;
 
@@ -2084,6 +2115,15 @@ static int eb_submit(struct i915_execbuffer *eb, struct i915_vma *batch)
 {
 	int err;
 
+	if (eb->reloc_cache.fence) {
+		err = i915_request_await_dma_fence(eb->request,
+						   &eb->reloc_cache.rq->fence);
+		if (err)
+			return err;
+
+		eb_reloc_signal(eb, eb->request);
+	}
+
 	err = eb_move_to_gpu(eb);
 	if (err)
 		return err;
@@ -2743,6 +2783,8 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	if (batch->private)
 		intel_gt_buffer_pool_put(batch->private);
 err_vma:
+	if (eb.reloc_cache.fence)
+		eb_reloc_signal(&eb, eb.reloc_cache.rq);
 	if (eb.trampoline)
 		i915_vma_unpin(eb.trampoline);
 	eb_unpin_engine(&eb);
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
index 4f10b51f9a7e..62bba179b455 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_execbuffer.c
@@ -23,7 +23,6 @@ static int __igt_gpu_reloc(struct i915_execbuffer *eb,
 	const u64 mask =
 		GENMASK_ULL(eb->reloc_cache.use_64bit_reloc ? 63 : 31, 0);
 	const u32 *map = page_mask_bits(obj->mm.mapping);
-	struct i915_request *rq;
 	struct eb_vma ev;
 	int err;
 	int i;
@@ -40,6 +39,9 @@ static int __igt_gpu_reloc(struct i915_execbuffer *eb,
 	if (err)
 		goto unpin_vma;
 
+	/* Single stage pipeline in the selftest */
+	eb->reloc_cache.fence = &eb->reloc_cache.rq->fence;
+
 	list_add(&ev.reloc_link, &eb->relocs);
 	err = lock_relocs(eb);
 	if (err)
@@ -71,8 +73,6 @@ static int __igt_gpu_reloc(struct i915_execbuffer *eb,
 	if (err)
 		goto unpin_vma;
 
-	GEM_BUG_ON(!eb->reloc_cache.rq);
-	rq = i915_request_get(eb->reloc_cache.rq);
 	reloc_gpu_flush(&eb->reloc_cache);
 
 	err = i915_gem_object_wait(obj, I915_WAIT_INTERRUPTIBLE, HZ / 2);
@@ -81,7 +81,7 @@ static int __igt_gpu_reloc(struct i915_execbuffer *eb,
 		goto put_rq;
 	}
 
-	if (!i915_request_completed(rq)) {
+	if (!i915_request_completed(eb->reloc_cache.rq)) {
 		pr_err("%s: did not wait for relocations!\n", eb->engine->name);
 		err = -EINVAL;
 		goto put_rq;
@@ -100,7 +100,8 @@ static int __igt_gpu_reloc(struct i915_execbuffer *eb,
 		igt_hexdump(map, 4096);
 
 put_rq:
-	i915_request_put(rq);
+	i915_request_put(eb->reloc_cache.rq);
+	eb->reloc_cache.rq = NULL;
 unpin_vma:
 	i915_vma_unpin(ev.vma);
 	return err;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
