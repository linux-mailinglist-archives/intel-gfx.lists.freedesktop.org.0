Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B0F11C058
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 00:09:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A60AF6EC15;
	Wed, 11 Dec 2019 23:09:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CC086EC10
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 23:09:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19547922-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 23:08:57 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Dec 2019 23:08:57 +0000
Message-Id: <20191211230858.599030-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191211230858.599030-1-chris@chris-wilson.co.uk>
References: <20191211230858.599030-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/3] drm/i915/gem: Asynchronous cmdparser
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

Execute the cmdparser asynchronously as part of the submission pipeline.
Using our dma-fences, we can schedule execution after an asynchronous
piece of work, so we move the cmdparser out from under the struct_mutex
inside execbuf as run it as part of the submission pipeline. The same
security rules apply, we copy the user batch before validation and
userspace cannot touch the validation shadow. The only caveat is that we
will do request construction before we complete cmdparsing and so we
cannot know the outcome of the validation step until later -- so the
execbuf ioctl does not report -EINVAL directly, but we must cancel
execution of the request and flag the error on the out-fence.

Closes: https://gitlab.freedesktop.org/drm/intel/issues/611
Closes: https://gitlab.freedesktop.org/drm/intel/issues/412
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 90 +++++++++++++++++--
 drivers/gpu/drm/i915/i915_cmd_parser.c        | 41 ++++-----
 2 files changed, 99 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 4e546b6fff8e..81eaf812c9da 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -25,6 +25,7 @@
 #include "i915_gem_clflush.h"
 #include "i915_gem_context.h"
 #include "i915_gem_ioctls.h"
+#include "i915_sw_fence_work.h"
 #include "i915_trace.h"
 
 enum {
@@ -1223,10 +1224,6 @@ static u32 *reloc_gpu(struct i915_execbuffer *eb,
 	if (unlikely(!cache->rq)) {
 		int err;
 
-		/* If we need to copy for the cmdparser, we will stall anyway */
-		if (eb_use_cmdparser(eb))
-			return ERR_PTR(-EWOULDBLOCK);
-
 		if (!intel_engine_can_store_dword(eb->engine))
 			return ERR_PTR(-ENODEV);
 
@@ -1965,6 +1962,85 @@ shadow_batch_pin(struct drm_i915_gem_object *obj,
 	return vma;
 }
 
+struct eb_parse_work {
+	struct dma_fence_work base;
+	struct intel_engine_cs *engine;
+	struct i915_vma *batch;
+	struct i915_vma *shadow;
+	struct i915_vma *trampoline;
+	unsigned int batch_offset;
+	unsigned int batch_length;
+};
+
+static int __eb_parse(struct dma_fence_work *work)
+{
+	struct eb_parse_work *pw = container_of(work, typeof(*pw), base);
+
+	return intel_engine_cmd_parser(pw->engine,
+				       pw->batch,
+				       pw->batch_offset,
+				       pw->batch_length,
+				       pw->shadow,
+				       pw->trampoline);
+}
+
+static const struct dma_fence_work_ops eb_parse_ops = {
+	.name = "eb_parse",
+	.work = __eb_parse,
+};
+
+static int eb_parse_pipeline(struct i915_execbuffer *eb,
+			     struct i915_vma *shadow,
+			     struct i915_vma *trampoline)
+{
+	struct eb_parse_work *pw;
+	int err;
+
+	pw = kzalloc(sizeof(*pw), GFP_KERNEL);
+	if (!pw)
+		return -ENOMEM;
+
+	dma_fence_work_init(&pw->base, &eb_parse_ops);
+
+	pw->engine = eb->engine;
+	pw->batch = eb->batch;
+	pw->batch_offset = eb->batch_start_offset;
+	pw->batch_length = eb->batch_len;
+	pw->shadow = shadow;
+	pw->trampoline = trampoline;
+
+	dma_resv_lock(pw->batch->resv, NULL);
+
+	err = dma_resv_reserve_shared(pw->batch->resv, 1);
+	if (err)
+		goto err_batch_unlock;
+
+	/* Wait for all writes (and relocs) into the batch to complete */
+	err = i915_sw_fence_await_reservation(&pw->base.chain,
+					      pw->batch->resv, NULL, false,
+					      0, I915_FENCE_GFP);
+	if (err < 0)
+		goto err_batch_unlock;
+
+	/* Keep the batch alive and unwritten as we parse */
+	dma_resv_add_shared_fence(pw->batch->resv, &pw->base.dma);
+
+	dma_resv_unlock(pw->batch->resv);
+
+	/* Force execution to wait for completion of the parser */
+	dma_resv_lock(shadow->resv, NULL);
+	dma_resv_add_excl_fence(shadow->resv, &pw->base.dma);
+	dma_resv_unlock(shadow->resv);
+
+	dma_fence_work_commit(&pw->base);
+	return 0;
+
+err_batch_unlock:
+	dma_resv_unlock(pw->batch->resv);
+	kfree(pw);
+	return err;
+}
+
 static int eb_parse(struct i915_execbuffer *eb)
 {
 	struct intel_engine_pool_node *pool;
@@ -2016,11 +2092,7 @@ static int eb_parse(struct i915_execbuffer *eb)
 		eb->batch_flags |= I915_DISPATCH_SECURE;
 	}
 
-	err = intel_engine_cmd_parser(eb->engine,
-				      eb->batch,
-				      eb->batch_start_offset,
-				      eb->batch_len,
-				      shadow, trampoline);
+	err = eb_parse_pipeline(eb, shadow, trampoline);
 	if (err)
 		goto err_trampoline;
 
diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
index 34b0ea403a96..7fcdcf31dc76 100644
--- a/drivers/gpu/drm/i915/i915_cmd_parser.c
+++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
@@ -1127,31 +1127,27 @@ find_reg(const struct intel_engine_cs *engine, u32 addr)
 /* Returns a vmap'd pointer to dst_obj, which the caller must unmap */
 static u32 *copy_batch(struct drm_i915_gem_object *dst_obj,
 		       struct drm_i915_gem_object *src_obj,
-		       u32 offset, u32 length,
-		       bool *needs_clflush_after)
+		       u32 offset, u32 length)
 {
-	unsigned int src_needs_clflush;
-	unsigned int dst_needs_clflush;
+	bool needs_clflush;
 	void *dst, *src;
 	int ret;
 
-	ret = i915_gem_object_prepare_write(dst_obj, &dst_needs_clflush);
-	if (ret)
-		return ERR_PTR(ret);
-
 	dst = i915_gem_object_pin_map(dst_obj, I915_MAP_FORCE_WB);
-	i915_gem_object_finish_access(dst_obj);
 	if (IS_ERR(dst))
 		return dst;
 
-	ret = i915_gem_object_prepare_read(src_obj, &src_needs_clflush);
+	ret = i915_gem_object_pin_pages(src_obj);
 	if (ret) {
 		i915_gem_object_unpin_map(dst_obj);
 		return ERR_PTR(ret);
 	}
 
+	needs_clflush =
+		!(src_obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_READ);
+
 	src = ERR_PTR(-ENODEV);
-	if (src_needs_clflush && i915_has_memcpy_from_wc()) {
+	if (needs_clflush && i915_has_memcpy_from_wc()) {
 		src = i915_gem_object_pin_map(src_obj, I915_MAP_WC);
 		if (!IS_ERR(src)) {
 			i915_unaligned_memcpy_from_wc(dst,
@@ -1172,7 +1168,7 @@ static u32 *copy_batch(struct drm_i915_gem_object *dst_obj,
 		 * We don't care about copying too much here as we only
 		 * validate up to the end of the batch.
 		 */
-		if (dst_needs_clflush & CLFLUSH_BEFORE)
+		if (!(dst_obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_READ))
 			length = round_up(length,
 					  boot_cpu_data.x86_clflush_size);
 
@@ -1182,7 +1178,7 @@ static u32 *copy_batch(struct drm_i915_gem_object *dst_obj,
 			int len = min_t(int, length, PAGE_SIZE - x);
 
 			src = kmap_atomic(i915_gem_object_get_page(src_obj, n));
-			if (src_needs_clflush)
+			if (needs_clflush)
 				drm_clflush_virt_range(src + x, len);
 			memcpy(ptr, src + x, len);
 			kunmap_atomic(src);
@@ -1193,11 +1189,9 @@ static u32 *copy_batch(struct drm_i915_gem_object *dst_obj,
 		}
 	}
 
-	i915_gem_object_finish_access(src_obj);
+	i915_gem_object_unpin_pages(src_obj);
 
 	/* dst_obj is returned with vmap pinned */
-	*needs_clflush_after = dst_needs_clflush & CLFLUSH_AFTER;
-
 	return dst;
 }
 
@@ -1383,6 +1377,11 @@ static unsigned long *alloc_whitelist(u32 batch_length)
 
 #define LENGTH_BIAS 2
 
+static bool shadow_needs_clflush(struct drm_i915_gem_object *obj)
+{
+	return !(obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_WRITE);
+}
+
 /**
  * intel_engine_cmd_parser() - parse a batch buffer for privilege violations
  * @engine: the engine on which the batch is to execute
@@ -1398,7 +1397,6 @@ static unsigned long *alloc_whitelist(u32 batch_length)
  * Return: non-zero if the parser finds violations or otherwise fails; -EACCES
  * if the batch appears legal but should use hardware parsing
  */
-
 int intel_engine_cmd_parser(struct intel_engine_cs *engine,
 			    struct i915_vma *batch,
 			    u32 batch_offset,
@@ -1409,7 +1407,6 @@ int intel_engine_cmd_parser(struct intel_engine_cs *engine,
 	u32 *cmd, *batch_end, offset = 0;
 	struct drm_i915_cmd_descriptor default_desc = noop_desc;
 	const struct drm_i915_cmd_descriptor *desc = &default_desc;
-	bool needs_clflush_after = false;
 	unsigned long *jump_whitelist;
 	u64 batch_addr, shadow_addr;
 	int ret = 0;
@@ -1420,9 +1417,7 @@ int intel_engine_cmd_parser(struct intel_engine_cs *engine,
 				     batch->size));
 	GEM_BUG_ON(!batch_length);
 
-	cmd = copy_batch(shadow->obj, batch->obj,
-			 batch_offset, batch_length,
-			 &needs_clflush_after);
+	cmd = copy_batch(shadow->obj, batch->obj, batch_offset, batch_length);
 	if (IS_ERR(cmd)) {
 		DRM_DEBUG("CMD: Failed to copy batch\n");
 		return PTR_ERR(cmd);
@@ -1530,11 +1525,11 @@ int intel_engine_cmd_parser(struct intel_engine_cs *engine,
 			}
 		}
 
-		if (needs_clflush_after)
+		if (shadow_needs_clflush(shadow->obj))
 			drm_clflush_virt_range(batch_end, 8);
 	}
 
-	if (needs_clflush_after) {
+	if (shadow_needs_clflush(shadow->obj)) {
 		void *ptr = page_mask_bits(shadow->obj->mm.mapping);
 
 		drm_clflush_virt_range(ptr, (void *)(cmd + 1) - ptr);
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
