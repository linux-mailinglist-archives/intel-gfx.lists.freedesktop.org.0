Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F4828BB1F
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Oct 2020 16:47:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A33F56E4B0;
	Mon, 12 Oct 2020 14:47:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 959B56E4AA
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Oct 2020 14:47:10 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Oct 2020 16:46:06 +0200
Message-Id: <20201012144706.555345-2-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201012144706.555345-1-maarten.lankhorst@linux.intel.com>
References: <20201012144706.555345-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 01/61] drm/i915: Move cmd parser pinning to
 execbuffer
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

We need to get rid of allocations in the cmd parser, because it needs
to be called from a signaling context, first move all pinning to
execbuf, where we already hold all locks.

Allocate jump_whitelist in the execbuffer, and add annotations around
intel_engine_cmd_parser(), to ensure we only call the command parser
without allocating any memory, or taking any locks we're not supposed to.

Because i915_gem_object_get_page() may also allocate memory, add a
path to i915_gem_object_get_sg() that prevents memory allocations,
and walk the sg list manually. It should be similarly fast.

This has the added benefit of being able to catch all memory allocation
errors before the point of no return, and return -ENOMEM safely to the
execbuf submitter.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  74 ++++++++++++-
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |  10 +-
 drivers/gpu/drm/i915/gem/i915_gem_pages.c     |  21 +++-
 drivers/gpu/drm/i915/gt/intel_ggtt.c          |   2 +-
 drivers/gpu/drm/i915/i915_cmd_parser.c        | 104 ++++++++----------
 drivers/gpu/drm/i915/i915_drv.h               |   7 +-
 drivers/gpu/drm/i915/i915_memcpy.c            |   2 +-
 drivers/gpu/drm/i915/i915_memcpy.h            |   2 +-
 8 files changed, 142 insertions(+), 80 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 4b09bcd70cf4..63e2f16204da 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -27,6 +27,7 @@
 #include "i915_sw_fence_work.h"
 #include "i915_trace.h"
 #include "i915_user_extensions.h"
+#include "i915_memcpy.h"
 
 struct eb_vma {
 	struct i915_vma *vma;
@@ -2269,24 +2270,45 @@ struct eb_parse_work {
 	struct i915_vma *trampoline;
 	unsigned long batch_offset;
 	unsigned long batch_length;
+	unsigned long *jump_whitelist;
+	const void *batch_map;
+	void *shadow_map;
 };
 
 static int __eb_parse(struct dma_fence_work *work)
 {
 	struct eb_parse_work *pw = container_of(work, typeof(*pw), base);
+	int ret;
+	bool cookie;
 
-	return intel_engine_cmd_parser(pw->engine,
-				       pw->batch,
-				       pw->batch_offset,
-				       pw->batch_length,
-				       pw->shadow,
-				       pw->trampoline);
+	cookie = dma_fence_begin_signalling();
+	ret = intel_engine_cmd_parser(pw->engine,
+				      pw->batch,
+				      pw->batch_offset,
+				      pw->batch_length,
+				      pw->shadow,
+				      pw->jump_whitelist,
+				      pw->shadow_map,
+				      pw->batch_map);
+	dma_fence_end_signalling(cookie);
+
+	return ret;
 }
 
 static void __eb_parse_release(struct dma_fence_work *work)
 {
 	struct eb_parse_work *pw = container_of(work, typeof(*pw), base);
 
+	if (!IS_ERR_OR_NULL(pw->jump_whitelist))
+		kfree(pw->jump_whitelist);
+
+	if (pw->batch_map)
+		i915_gem_object_unpin_map(pw->batch->obj);
+	else
+		i915_gem_object_unpin_pages(pw->batch->obj);
+
+	i915_gem_object_unpin_map(pw->shadow->obj);
+
 	if (pw->trampoline)
 		i915_active_release(&pw->trampoline->active);
 	i915_active_release(&pw->shadow->active);
@@ -2336,6 +2358,8 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
 			     struct i915_vma *trampoline)
 {
 	struct eb_parse_work *pw;
+	struct drm_i915_gem_object *batch = eb->batch->vma->obj;
+	bool needs_clflush;
 	int err;
 
 	GEM_BUG_ON(overflows_type(eb->batch_start_offset, pw->batch_offset));
@@ -2359,6 +2383,34 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
 			goto err_shadow;
 	}
 
+	pw->shadow_map = i915_gem_object_pin_map(shadow->obj, I915_MAP_FORCE_WB);
+	if (IS_ERR(pw->shadow_map)) {
+		err = PTR_ERR(pw->shadow_map);
+		goto err_trampoline;
+	}
+
+	needs_clflush =
+		!(batch->cache_coherent & I915_BO_CACHE_COHERENT_FOR_READ);
+
+	pw->batch_map = ERR_PTR(-ENODEV);
+	if (needs_clflush && i915_has_memcpy_from_wc())
+		pw->batch_map = i915_gem_object_pin_map(batch, I915_MAP_WC);
+
+	if (IS_ERR(pw->batch_map)) {
+		err = i915_gem_object_pin_pages(batch);
+		if (err)
+			goto err_unmap_shadow;
+		pw->batch_map = NULL;
+	}
+
+	pw->jump_whitelist =
+		intel_engine_cmd_parser_alloc_jump_whitelist(eb->batch_len,
+							     trampoline);
+	if (IS_ERR(pw->jump_whitelist)) {
+		err = PTR_ERR(pw->jump_whitelist);
+		goto err_unmap_batch;
+	}
+
 	dma_fence_work_init(&pw->base, &eb_parse_ops);
 
 	pw->engine = eb->engine;
@@ -2398,6 +2450,16 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
 	dma_fence_work_commit_imm(&pw->base);
 	return err;
 
+err_unmap_batch:
+	if (pw->batch_map)
+		i915_gem_object_unpin_map(batch);
+	else
+		i915_gem_object_unpin_pages(batch);
+err_unmap_shadow:
+	i915_gem_object_unpin_map(shadow->obj);
+err_trampoline:
+	if (trampoline)
+		i915_active_release(&trampoline->active);
 err_shadow:
 	i915_active_release(&shadow->active);
 err_batch:
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index be14486f63a7..99b18ba0c48d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -275,22 +275,22 @@ struct scatterlist *
 __i915_gem_object_get_sg(struct drm_i915_gem_object *obj,
 			 struct i915_gem_object_page_iter *iter,
 			 unsigned int n,
-			 unsigned int *offset);
+			 unsigned int *offset, bool allow_alloc);
 
 static inline struct scatterlist *
 i915_gem_object_get_sg(struct drm_i915_gem_object *obj,
 		       unsigned int n,
-		       unsigned int *offset)
+		       unsigned int *offset, bool allow_alloc)
 {
-	return __i915_gem_object_get_sg(obj, &obj->mm.get_page, n, offset);
+	return __i915_gem_object_get_sg(obj, &obj->mm.get_page, n, offset, allow_alloc);
 }
 
 static inline struct scatterlist *
 i915_gem_object_get_sg_dma(struct drm_i915_gem_object *obj,
 			   unsigned int n,
-			   unsigned int *offset)
+			   unsigned int *offset, bool allow_alloc)
 {
-	return __i915_gem_object_get_sg(obj, &obj->mm.get_dma_page, n, offset);
+	return __i915_gem_object_get_sg(obj, &obj->mm.get_dma_page, n, offset, allow_alloc);
 }
 
 struct page *
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index 256e69f4eb5a..2e89ba5133eb 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -457,7 +457,8 @@ struct scatterlist *
 __i915_gem_object_get_sg(struct drm_i915_gem_object *obj,
 			 struct i915_gem_object_page_iter *iter,
 			 unsigned int n,
-			 unsigned int *offset)
+			 unsigned int *offset,
+			 bool allow_alloc)
 {
 	const bool dma = iter == &obj->mm.get_dma_page;
 	struct scatterlist *sg;
@@ -479,6 +480,9 @@ __i915_gem_object_get_sg(struct drm_i915_gem_object *obj,
 	if (n < READ_ONCE(iter->sg_idx))
 		goto lookup;
 
+	if (!allow_alloc)
+		goto manual_lookup;
+
 	mutex_lock(&iter->lock);
 
 	/* We prefer to reuse the last sg so that repeated lookup of this
@@ -528,7 +532,16 @@ __i915_gem_object_get_sg(struct drm_i915_gem_object *obj,
 	if (unlikely(n < idx)) /* insertion completed by another thread */
 		goto lookup;
 
-	/* In case we failed to insert the entry into the radixtree, we need
+	goto manual_walk;
+
+manual_lookup:
+	idx = 0;
+	sg = obj->mm.pages->sgl;
+	count = __sg_page_count(sg);
+
+manual_walk:
+	/*
+	 * In case we failed to insert the entry into the radixtree, we need
 	 * to look beyond the current sg.
 	 */
 	while (idx + count <= n) {
@@ -575,7 +588,7 @@ i915_gem_object_get_page(struct drm_i915_gem_object *obj, unsigned int n)
 
 	GEM_BUG_ON(!i915_gem_object_has_struct_page(obj));
 
-	sg = i915_gem_object_get_sg(obj, n, &offset);
+	sg = i915_gem_object_get_sg(obj, n, &offset, true);
 	return nth_page(sg_page(sg), offset);
 }
 
@@ -601,7 +614,7 @@ i915_gem_object_get_dma_address_len(struct drm_i915_gem_object *obj,
 	struct scatterlist *sg;
 	unsigned int offset;
 
-	sg = i915_gem_object_get_sg_dma(obj, n, &offset);
+	sg = i915_gem_object_get_sg_dma(obj, n, &offset, true);
 
 	if (len)
 		*len = sg_dma_len(sg) - (offset << PAGE_SHIFT);
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index cf94525be2c1..60bd2c8ed8b0 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -1383,7 +1383,7 @@ intel_partial_pages(const struct i915_ggtt_view *view,
 	if (ret)
 		goto err_sg_alloc;
 
-	iter = i915_gem_object_get_sg_dma(obj, view->partial.offset, &offset);
+	iter = i915_gem_object_get_sg_dma(obj, view->partial.offset, &offset, true);
 	GEM_BUG_ON(!iter);
 
 	sg = st->sgl;
diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
index 93265951fdbb..8883a7d4964f 100644
--- a/drivers/gpu/drm/i915/i915_cmd_parser.c
+++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
@@ -1136,38 +1136,19 @@ find_reg(const struct intel_engine_cs *engine, u32 addr)
 /* Returns a vmap'd pointer to dst_obj, which the caller must unmap */
 static u32 *copy_batch(struct drm_i915_gem_object *dst_obj,
 		       struct drm_i915_gem_object *src_obj,
-		       unsigned long offset, unsigned long length)
+		       unsigned long offset, unsigned long length,
+		       void *dst, const void *src)
 {
-	bool needs_clflush;
-	void *dst, *src;
-	int ret;
-
-	dst = i915_gem_object_pin_map(dst_obj, I915_MAP_FORCE_WB);
-	if (IS_ERR(dst))
-		return dst;
-
-	ret = i915_gem_object_pin_pages(src_obj);
-	if (ret) {
-		i915_gem_object_unpin_map(dst_obj);
-		return ERR_PTR(ret);
-	}
-
-	needs_clflush =
+	bool needs_clflush =
 		!(src_obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_READ);
 
-	src = ERR_PTR(-ENODEV);
-	if (needs_clflush && i915_has_memcpy_from_wc()) {
-		src = i915_gem_object_pin_map(src_obj, I915_MAP_WC);
-		if (!IS_ERR(src)) {
-			i915_unaligned_memcpy_from_wc(dst,
-						      src + offset,
-						      length);
-			i915_gem_object_unpin_map(src_obj);
-		}
-	}
-	if (IS_ERR(src)) {
-		unsigned long x, n;
+	if (src) {
+		GEM_BUG_ON(!needs_clflush);
+		i915_unaligned_memcpy_from_wc(dst, src + offset, length);
+	} else {
+		struct scatterlist *sg;
 		void *ptr;
+		unsigned int x, sg_ofs;
 
 		/*
 		 * We can avoid clflushing partial cachelines before the write
@@ -1183,23 +1164,32 @@ static u32 *copy_batch(struct drm_i915_gem_object *dst_obj,
 
 		ptr = dst;
 		x = offset_in_page(offset);
-		for (n = offset >> PAGE_SHIFT; length; n++) {
-			int len = min(length, PAGE_SIZE - x);
-
-			src = kmap_atomic(i915_gem_object_get_page(src_obj, n));
-			if (needs_clflush)
-				drm_clflush_virt_range(src + x, len);
-			memcpy(ptr, src + x, len);
-			kunmap_atomic(src);
-
-			ptr += len;
-			length -= len;
-			x = 0;
+
+		sg = i915_gem_object_get_sg(src_obj, offset >> PAGE_SHIFT, &sg_ofs, false);
+
+		while (length) {
+			unsigned long sg_max = sg->length >> PAGE_SHIFT;
+
+			for (; length && sg_ofs < sg_max; sg_ofs++) {
+				unsigned long len = min(length, PAGE_SIZE - x);
+				void *map;
+
+				map = kmap_atomic(nth_page(sg_page(sg), sg_ofs));
+				if (needs_clflush)
+					drm_clflush_virt_range(map + x, len);
+				memcpy(ptr, map + x, len);
+				kunmap_atomic(map);
+
+				ptr += len;
+				length -= len;
+				x = 0;
+			}
+
+			sg_ofs = 0;
+			sg = sg_next(sg);
 		}
 	}
 
-	i915_gem_object_unpin_pages(src_obj);
-
 	/* dst_obj is returned with vmap pinned */
 	return dst;
 }
@@ -1359,9 +1349,6 @@ static int check_bbstart(u32 *cmd, u32 offset, u32 length,
 	if (target_cmd_index == offset)
 		return 0;
 
-	if (IS_ERR(jump_whitelist))
-		return PTR_ERR(jump_whitelist);
-
 	if (!test_bit(target_cmd_index, jump_whitelist)) {
 		DRM_DEBUG("CMD: BB_START to 0x%llx not a previously executed cmd\n",
 			  jump_target);
@@ -1371,10 +1358,14 @@ static int check_bbstart(u32 *cmd, u32 offset, u32 length,
 	return 0;
 }
 
-static unsigned long *alloc_whitelist(u32 batch_length)
+unsigned long *intel_engine_cmd_parser_alloc_jump_whitelist(u32 batch_length,
+							    bool trampoline)
 {
 	unsigned long *jmp;
 
+	if (trampoline)
+		return NULL;
+
 	/*
 	 * We expect batch_length to be less than 256KiB for known users,
 	 * i.e. we need at most an 8KiB bitmap allocation which should be
@@ -1417,14 +1408,16 @@ int intel_engine_cmd_parser(struct intel_engine_cs *engine,
 			    unsigned long batch_offset,
 			    unsigned long batch_length,
 			    struct i915_vma *shadow,
-			    bool trampoline)
+			    unsigned long *jump_whitelist,
+			    void *shadow_map,
+			    const void *batch_map)
 {
 	u32 *cmd, *batch_end, offset = 0;
 	struct drm_i915_cmd_descriptor default_desc = noop_desc;
 	const struct drm_i915_cmd_descriptor *desc = &default_desc;
-	unsigned long *jump_whitelist;
 	u64 batch_addr, shadow_addr;
 	int ret = 0;
+	bool trampoline = !jump_whitelist;
 
 	GEM_BUG_ON(!IS_ALIGNED(batch_offset, sizeof(*cmd)));
 	GEM_BUG_ON(!IS_ALIGNED(batch_length, sizeof(*cmd)));
@@ -1432,16 +1425,8 @@ int intel_engine_cmd_parser(struct intel_engine_cs *engine,
 				     batch->size));
 	GEM_BUG_ON(!batch_length);
 
-	cmd = copy_batch(shadow->obj, batch->obj, batch_offset, batch_length);
-	if (IS_ERR(cmd)) {
-		DRM_DEBUG("CMD: Failed to copy batch\n");
-		return PTR_ERR(cmd);
-	}
-
-	jump_whitelist = NULL;
-	if (!trampoline)
-		/* Defer failure until attempted use */
-		jump_whitelist = alloc_whitelist(batch_length);
+	cmd = copy_batch(shadow->obj, batch->obj, batch_offset, batch_length,
+			 shadow_map, batch_map);
 
 	shadow_addr = gen8_canonical_addr(shadow->node.start);
 	batch_addr = gen8_canonical_addr(batch->node.start + batch_offset);
@@ -1549,9 +1534,6 @@ int intel_engine_cmd_parser(struct intel_engine_cs *engine,
 		drm_clflush_virt_range(ptr, (void *)(cmd + 1) - ptr);
 	}
 
-	if (!IS_ERR_OR_NULL(jump_whitelist))
-		kfree(jump_whitelist);
-	i915_gem_object_unpin_map(shadow->obj);
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 9c2672c56cc1..f519b072b21a 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1948,12 +1948,17 @@ const char *i915_cache_level_str(struct drm_i915_private *i915, int type);
 int i915_cmd_parser_get_version(struct drm_i915_private *dev_priv);
 void intel_engine_init_cmd_parser(struct intel_engine_cs *engine);
 void intel_engine_cleanup_cmd_parser(struct intel_engine_cs *engine);
+unsigned long *intel_engine_cmd_parser_alloc_jump_whitelist(u32 batch_length,
+							    bool trampoline);
+
 int intel_engine_cmd_parser(struct intel_engine_cs *engine,
 			    struct i915_vma *batch,
 			    unsigned long batch_offset,
 			    unsigned long batch_length,
 			    struct i915_vma *shadow,
-			    bool trampoline);
+			    unsigned long *jump_whitelist,
+			    void *shadow_map,
+			    const void *batch_map);
 #define I915_CMD_PARSER_TRAMPOLINE_SIZE 8
 
 /* intel_device_info.c */
diff --git a/drivers/gpu/drm/i915/i915_memcpy.c b/drivers/gpu/drm/i915/i915_memcpy.c
index 7b3b83bd5ab8..1b021a4902de 100644
--- a/drivers/gpu/drm/i915/i915_memcpy.c
+++ b/drivers/gpu/drm/i915/i915_memcpy.c
@@ -135,7 +135,7 @@ bool i915_memcpy_from_wc(void *dst, const void *src, unsigned long len)
  * accepts that its arguments may not be aligned, but are valid for the
  * potential 16-byte read past the end.
  */
-void i915_unaligned_memcpy_from_wc(void *dst, void *src, unsigned long len)
+void i915_unaligned_memcpy_from_wc(void *dst, const void *src, unsigned long len)
 {
 	unsigned long addr;
 
diff --git a/drivers/gpu/drm/i915/i915_memcpy.h b/drivers/gpu/drm/i915/i915_memcpy.h
index e36d30edd987..3df063a3293b 100644
--- a/drivers/gpu/drm/i915/i915_memcpy.h
+++ b/drivers/gpu/drm/i915/i915_memcpy.h
@@ -13,7 +13,7 @@ struct drm_i915_private;
 void i915_memcpy_init_early(struct drm_i915_private *i915);
 
 bool i915_memcpy_from_wc(void *dst, const void *src, unsigned long len);
-void i915_unaligned_memcpy_from_wc(void *dst, void *src, unsigned long len);
+void i915_unaligned_memcpy_from_wc(void *dst, const void *src, unsigned long len);
 
 /* The movntdqa instructions used for memcpy-from-wc require 16-byte alignment,
  * as well as SSE4.1 support. i915_memcpy_from_wc() will report if it cannot
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
