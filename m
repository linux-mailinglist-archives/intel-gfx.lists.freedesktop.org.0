Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D573FB5B6
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Aug 2021 14:10:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBEB589D86;
	Mon, 30 Aug 2021 12:09:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308:0:7ec:e79c:4e97:b6c4:f0ae])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B051D89D3E
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Aug 2021 12:09:54 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Date: Mon, 30 Aug 2021 14:09:59 +0200
Message-Id: <20210830121006.2978297-13-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
References: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/19] drm/i915: Remove pages_mutex and
 intel_gtt->vma_ops.set/clear_pages members
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

Big delta, but boils down to moving set_pages to i915_vma.c, and removing
the special handling, all callers use the defaults anyway. We only remap
in ggtt, so default case will fall through.

Because we still don't require locking in i915_vma_unpin(), handle this by
using xchg in get_pages(), as it's locked with obj->mutex, and cmpxchg in
unpin, which only fails if we race a against a new pin.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpt.c      |   2 -
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |  15 -
 drivers/gpu/drm/i915/gt/intel_ggtt.c          | 320 ----------------
 drivers/gpu/drm/i915/gt/intel_gtt.c           |  13 -
 drivers/gpu/drm/i915/gt/intel_gtt.h           |   7 -
 drivers/gpu/drm/i915/gt/intel_ppgtt.c         |  12 -
 drivers/gpu/drm/i915/i915_vma.c               | 362 ++++++++++++++++--
 drivers/gpu/drm/i915/i915_vma.h               |   3 +
 drivers/gpu/drm/i915/i915_vma_types.h         |   1 -
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |  12 +-
 drivers/gpu/drm/i915/selftests/mock_gtt.c     |   4 -
 11 files changed, 342 insertions(+), 409 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index de62bd77b15e..a66726f8908f 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -211,8 +211,6 @@ intel_dpt_create(struct intel_framebuffer *fb)
 
 	vm->vma_ops.bind_vma    = dpt_bind_vma;
 	vm->vma_ops.unbind_vma  = dpt_unbind_vma;
-	vm->vma_ops.set_pages   = ggtt_set_pages;
-	vm->vma_ops.clear_pages = clear_pages;
 
 	vm->pte_encode = gen8_ggtt_pte_encode;
 
diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
index 744be15f3e0d..9cc5d2379c3e 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
@@ -270,19 +270,6 @@ static void gen6_ppgtt_cleanup(struct i915_address_space *vm)
 	free_pd(&ppgtt->base.vm, ppgtt->base.pd);
 }
 
-static int pd_vma_set_pages(struct i915_vma *vma)
-{
-	vma->pages = ERR_PTR(-ENODEV);
-	return 0;
-}
-
-static void pd_vma_clear_pages(struct i915_vma *vma)
-{
-	GEM_BUG_ON(!vma->pages);
-
-	vma->pages = NULL;
-}
-
 static void pd_vma_bind(struct i915_address_space *vm,
 			struct i915_vm_pt_stash *stash,
 			struct i915_vma *vma,
@@ -322,8 +309,6 @@ static void pd_vma_unbind(struct i915_address_space *vm, struct i915_vma *vma)
 }
 
 static const struct i915_vma_ops pd_vma_ops = {
-	.set_pages = pd_vma_set_pages,
-	.clear_pages = pd_vma_clear_pages,
 	.bind_vma = pd_vma_bind,
 	.unbind_vma = pd_vma_unbind,
 };
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index de3ac58fceec..8c46a44e5a40 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -20,9 +20,6 @@
 #include "intel_gtt.h"
 #include "gen8_ppgtt.h"
 
-static int
-i915_get_ggtt_vma_pages(struct i915_vma *vma);
-
 static void i915_ggtt_color_adjust(const struct drm_mm_node *node,
 				   unsigned long color,
 				   u64 *start,
@@ -861,21 +858,6 @@ static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
 	return 0;
 }
 
-int ggtt_set_pages(struct i915_vma *vma)
-{
-	int ret;
-
-	GEM_BUG_ON(vma->pages);
-
-	ret = i915_get_ggtt_vma_pages(vma);
-	if (ret)
-		return ret;
-
-	vma->page_sizes = vma->obj->mm.page_sizes;
-
-	return 0;
-}
-
 static void gen6_gmch_remove(struct i915_address_space *vm)
 {
 	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
@@ -935,8 +917,6 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
 
 	ggtt->vm.vma_ops.bind_vma    = ggtt_bind_vma;
 	ggtt->vm.vma_ops.unbind_vma  = ggtt_unbind_vma;
-	ggtt->vm.vma_ops.set_pages   = ggtt_set_pages;
-	ggtt->vm.vma_ops.clear_pages = clear_pages;
 
 	ggtt->vm.pte_encode = gen8_ggtt_pte_encode;
 
@@ -1085,8 +1065,6 @@ static int gen6_gmch_probe(struct i915_ggtt *ggtt)
 
 	ggtt->vm.vma_ops.bind_vma    = ggtt_bind_vma;
 	ggtt->vm.vma_ops.unbind_vma  = ggtt_unbind_vma;
-	ggtt->vm.vma_ops.set_pages   = ggtt_set_pages;
-	ggtt->vm.vma_ops.clear_pages = clear_pages;
 
 	return ggtt_probe_common(ggtt, size);
 }
@@ -1130,8 +1108,6 @@ static int i915_gmch_probe(struct i915_ggtt *ggtt)
 
 	ggtt->vm.vma_ops.bind_vma    = ggtt_bind_vma;
 	ggtt->vm.vma_ops.unbind_vma  = ggtt_unbind_vma;
-	ggtt->vm.vma_ops.set_pages   = ggtt_set_pages;
-	ggtt->vm.vma_ops.clear_pages = clear_pages;
 
 	if (unlikely(ggtt->do_idle_maps))
 		drm_notice(&i915->drm,
@@ -1279,299 +1255,3 @@ void i915_ggtt_resume(struct i915_ggtt *ggtt)
 
 	intel_ggtt_restore_fences(ggtt);
 }
-
-static struct scatterlist *
-rotate_pages(struct drm_i915_gem_object *obj, unsigned int offset,
-	     unsigned int width, unsigned int height,
-	     unsigned int src_stride, unsigned int dst_stride,
-	     struct sg_table *st, struct scatterlist *sg)
-{
-	unsigned int column, row;
-	unsigned int src_idx;
-
-	for (column = 0; column < width; column++) {
-		unsigned int left;
-
-		src_idx = src_stride * (height - 1) + column + offset;
-		for (row = 0; row < height; row++) {
-			st->nents++;
-			/*
-			 * We don't need the pages, but need to initialize
-			 * the entries so the sg list can be happily traversed.
-			 * The only thing we need are DMA addresses.
-			 */
-			sg_set_page(sg, NULL, I915_GTT_PAGE_SIZE, 0);
-			sg_dma_address(sg) =
-				i915_gem_object_get_dma_address(obj, src_idx);
-			sg_dma_len(sg) = I915_GTT_PAGE_SIZE;
-			sg = sg_next(sg);
-			src_idx -= src_stride;
-		}
-
-		left = (dst_stride - height) * I915_GTT_PAGE_SIZE;
-
-		if (!left)
-			continue;
-
-		st->nents++;
-
-		/*
-		 * The DE ignores the PTEs for the padding tiles, the sg entry
-		 * here is just a conenience to indicate how many padding PTEs
-		 * to insert at this spot.
-		 */
-		sg_set_page(sg, NULL, left, 0);
-		sg_dma_address(sg) = 0;
-		sg_dma_len(sg) = left;
-		sg = sg_next(sg);
-	}
-
-	return sg;
-}
-
-static noinline struct sg_table *
-intel_rotate_pages(struct intel_rotation_info *rot_info,
-		   struct drm_i915_gem_object *obj)
-{
-	unsigned int size = intel_rotation_info_size(rot_info);
-	struct drm_i915_private *i915 = to_i915(obj->base.dev);
-	struct sg_table *st;
-	struct scatterlist *sg;
-	int ret = -ENOMEM;
-	int i;
-
-	/* Allocate target SG list. */
-	st = kmalloc(sizeof(*st), GFP_KERNEL);
-	if (!st)
-		goto err_st_alloc;
-
-	ret = sg_alloc_table(st, size, GFP_KERNEL);
-	if (ret)
-		goto err_sg_alloc;
-
-	st->nents = 0;
-	sg = st->sgl;
-
-	for (i = 0 ; i < ARRAY_SIZE(rot_info->plane); i++)
-		sg = rotate_pages(obj, rot_info->plane[i].offset,
-				  rot_info->plane[i].width, rot_info->plane[i].height,
-				  rot_info->plane[i].src_stride,
-				  rot_info->plane[i].dst_stride,
-				  st, sg);
-
-	return st;
-
-err_sg_alloc:
-	kfree(st);
-err_st_alloc:
-
-	drm_dbg(&i915->drm, "Failed to create rotated mapping for object size %zu! (%ux%u tiles, %u pages)\n",
-		obj->base.size, rot_info->plane[0].width,
-		rot_info->plane[0].height, size);
-
-	return ERR_PTR(ret);
-}
-
-static struct scatterlist *
-remap_pages(struct drm_i915_gem_object *obj, unsigned int offset,
-	    unsigned int width, unsigned int height,
-	    unsigned int src_stride, unsigned int dst_stride,
-	    struct sg_table *st, struct scatterlist *sg)
-{
-	unsigned int row;
-
-	for (row = 0; row < height; row++) {
-		unsigned int left = width * I915_GTT_PAGE_SIZE;
-
-		while (left) {
-			dma_addr_t addr;
-			unsigned int length;
-
-			/*
-			 * We don't need the pages, but need to initialize
-			 * the entries so the sg list can be happily traversed.
-			 * The only thing we need are DMA addresses.
-			 */
-
-			addr = i915_gem_object_get_dma_address_len(obj, offset, &length);
-
-			length = min(left, length);
-
-			st->nents++;
-
-			sg_set_page(sg, NULL, length, 0);
-			sg_dma_address(sg) = addr;
-			sg_dma_len(sg) = length;
-			sg = sg_next(sg);
-
-			offset += length / I915_GTT_PAGE_SIZE;
-			left -= length;
-		}
-
-		offset += src_stride - width;
-
-		left = (dst_stride - width) * I915_GTT_PAGE_SIZE;
-
-		if (!left)
-			continue;
-
-		st->nents++;
-
-		/*
-		 * The DE ignores the PTEs for the padding tiles, the sg entry
-		 * here is just a conenience to indicate how many padding PTEs
-		 * to insert at this spot.
-		 */
-		sg_set_page(sg, NULL, left, 0);
-		sg_dma_address(sg) = 0;
-		sg_dma_len(sg) = left;
-		sg = sg_next(sg);
-	}
-
-	return sg;
-}
-
-static noinline struct sg_table *
-intel_remap_pages(struct intel_remapped_info *rem_info,
-		  struct drm_i915_gem_object *obj)
-{
-	unsigned int size = intel_remapped_info_size(rem_info);
-	struct drm_i915_private *i915 = to_i915(obj->base.dev);
-	struct sg_table *st;
-	struct scatterlist *sg;
-	int ret = -ENOMEM;
-	int i;
-
-	/* Allocate target SG list. */
-	st = kmalloc(sizeof(*st), GFP_KERNEL);
-	if (!st)
-		goto err_st_alloc;
-
-	ret = sg_alloc_table(st, size, GFP_KERNEL);
-	if (ret)
-		goto err_sg_alloc;
-
-	st->nents = 0;
-	sg = st->sgl;
-
-	for (i = 0 ; i < ARRAY_SIZE(rem_info->plane); i++) {
-		sg = remap_pages(obj, rem_info->plane[i].offset,
-				 rem_info->plane[i].width, rem_info->plane[i].height,
-				 rem_info->plane[i].src_stride, rem_info->plane[i].dst_stride,
-				 st, sg);
-	}
-
-	i915_sg_trim(st);
-
-	return st;
-
-err_sg_alloc:
-	kfree(st);
-err_st_alloc:
-
-	drm_dbg(&i915->drm, "Failed to create remapped mapping for object size %zu! (%ux%u tiles, %u pages)\n",
-		obj->base.size, rem_info->plane[0].width,
-		rem_info->plane[0].height, size);
-
-	return ERR_PTR(ret);
-}
-
-static noinline struct sg_table *
-intel_partial_pages(const struct i915_ggtt_view *view,
-		    struct drm_i915_gem_object *obj)
-{
-	struct sg_table *st;
-	struct scatterlist *sg, *iter;
-	unsigned int count = view->partial.size;
-	unsigned int offset;
-	int ret = -ENOMEM;
-
-	st = kmalloc(sizeof(*st), GFP_KERNEL);
-	if (!st)
-		goto err_st_alloc;
-
-	ret = sg_alloc_table(st, count, GFP_KERNEL);
-	if (ret)
-		goto err_sg_alloc;
-
-	iter = i915_gem_object_get_sg_dma(obj, view->partial.offset, &offset);
-	GEM_BUG_ON(!iter);
-
-	sg = st->sgl;
-	st->nents = 0;
-	do {
-		unsigned int len;
-
-		len = min(sg_dma_len(iter) - (offset << PAGE_SHIFT),
-			  count << PAGE_SHIFT);
-		sg_set_page(sg, NULL, len, 0);
-		sg_dma_address(sg) =
-			sg_dma_address(iter) + (offset << PAGE_SHIFT);
-		sg_dma_len(sg) = len;
-
-		st->nents++;
-		count -= len >> PAGE_SHIFT;
-		if (count == 0) {
-			sg_mark_end(sg);
-			i915_sg_trim(st); /* Drop any unused tail entries. */
-
-			return st;
-		}
-
-		sg = __sg_next(sg);
-		iter = __sg_next(iter);
-		offset = 0;
-	} while (1);
-
-err_sg_alloc:
-	kfree(st);
-err_st_alloc:
-	return ERR_PTR(ret);
-}
-
-static int
-i915_get_ggtt_vma_pages(struct i915_vma *vma)
-{
-	int ret;
-
-	/*
-	 * The vma->pages are only valid within the lifespan of the borrowed
-	 * obj->mm.pages. When the obj->mm.pages sg_table is regenerated, so
-	 * must be the vma->pages. A simple rule is that vma->pages must only
-	 * be accessed when the obj->mm.pages are pinned.
-	 */
-	GEM_BUG_ON(!i915_gem_object_has_pinned_pages(vma->obj));
-
-	switch (vma->ggtt_view.type) {
-	default:
-		GEM_BUG_ON(vma->ggtt_view.type);
-		fallthrough;
-	case I915_GGTT_VIEW_NORMAL:
-		vma->pages = vma->obj->mm.pages;
-		return 0;
-
-	case I915_GGTT_VIEW_ROTATED:
-		vma->pages =
-			intel_rotate_pages(&vma->ggtt_view.rotated, vma->obj);
-		break;
-
-	case I915_GGTT_VIEW_REMAPPED:
-		vma->pages =
-			intel_remap_pages(&vma->ggtt_view.remapped, vma->obj);
-		break;
-
-	case I915_GGTT_VIEW_PARTIAL:
-		vma->pages = intel_partial_pages(&vma->ggtt_view, vma->obj);
-		break;
-	}
-
-	ret = 0;
-	if (IS_ERR(vma->pages)) {
-		ret = PTR_ERR(vma->pages);
-		vma->pages = NULL;
-		drm_err(&vma->vm->i915->drm,
-			"Failed to get pages for VMA view type %u (%d)!\n",
-			vma->ggtt_view.type, ret);
-	}
-	return ret;
-}
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index e137dd32b5b8..6367278c220a 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -220,19 +220,6 @@ void i915_address_space_init(struct i915_address_space *vm, int subclass)
 	INIT_LIST_HEAD(&vm->bound_list);
 }
 
-void clear_pages(struct i915_vma *vma)
-{
-	GEM_BUG_ON(!vma->pages);
-
-	if (vma->pages != vma->obj->mm.pages) {
-		sg_free_table(vma->pages);
-		kfree(vma->pages);
-	}
-	vma->pages = NULL;
-
-	memset(&vma->page_sizes, 0, sizeof(vma->page_sizes));
-}
-
 void *__px_vaddr(struct drm_i915_gem_object *p)
 {
 	enum i915_map_type type;
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index bc7153018ebd..1a97129561dd 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -206,9 +206,6 @@ struct i915_vma_ops {
 	 */
 	void (*unbind_vma)(struct i915_address_space *vm,
 			   struct i915_vma *vma);
-
-	int (*set_pages)(struct i915_vma *vma);
-	void (*clear_pages)(struct i915_vma *vma);
 };
 
 struct i915_address_space {
@@ -589,10 +586,6 @@ release_pd_entry(struct i915_page_directory * const pd,
 		 const struct drm_i915_gem_object * const scratch);
 void gen6_ggtt_invalidate(struct i915_ggtt *ggtt);
 
-int ggtt_set_pages(struct i915_vma *vma);
-int ppgtt_set_pages(struct i915_vma *vma);
-void clear_pages(struct i915_vma *vma);
-
 void ppgtt_bind_vma(struct i915_address_space *vm,
 		    struct i915_vm_pt_stash *stash,
 		    struct i915_vma *vma,
diff --git a/drivers/gpu/drm/i915/gt/intel_ppgtt.c b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
index 886060f7e6fc..4a10a1371d41 100644
--- a/drivers/gpu/drm/i915/gt/intel_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
@@ -288,16 +288,6 @@ void i915_vm_free_pt_stash(struct i915_address_space *vm,
 	}
 }
 
-int ppgtt_set_pages(struct i915_vma *vma)
-{
-	GEM_BUG_ON(vma->pages);
-
-	vma->pages = vma->obj->mm.pages;
-	vma->page_sizes = vma->obj->mm.page_sizes;
-
-	return 0;
-}
-
 void ppgtt_init(struct i915_ppgtt *ppgtt, struct intel_gt *gt)
 {
 	struct drm_i915_private *i915 = gt->i915;
@@ -312,6 +302,4 @@ void ppgtt_init(struct i915_ppgtt *ppgtt, struct intel_gt *gt)
 
 	ppgtt->vm.vma_ops.bind_vma    = ppgtt_bind_vma;
 	ppgtt->vm.vma_ops.unbind_vma  = ppgtt_unbind_vma;
-	ppgtt->vm.vma_ops.set_pages   = ppgtt_set_pages;
-	ppgtt->vm.vma_ops.clear_pages = clear_pages;
 }
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 36db641e863e..5e0eaa9ea890 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -112,7 +112,6 @@ vma_create(struct drm_i915_gem_object *obj,
 		return ERR_PTR(-ENOMEM);
 
 	kref_init(&vma->ref);
-	mutex_init(&vma->pages_mutex);
 	vma->vm = i915_vm_get(vm);
 	vma->ops = &vm->vma_ops;
 	vma->obj = obj;
@@ -789,10 +788,317 @@ static bool try_qad_pin(struct i915_vma *vma, unsigned int flags)
 	return pinned;
 }
 
-static int vma_get_pages(struct i915_vma *vma)
+
+static struct scatterlist *
+rotate_pages(struct drm_i915_gem_object *obj, unsigned int offset,
+	     unsigned int width, unsigned int height,
+	     unsigned int src_stride, unsigned int dst_stride,
+	     struct sg_table *st, struct scatterlist *sg)
 {
-	int err = 0;
-	bool pinned_pages = true;
+	unsigned int column, row;
+	unsigned int src_idx;
+
+	for (column = 0; column < width; column++) {
+		unsigned int left;
+
+		src_idx = src_stride * (height - 1) + column + offset;
+		for (row = 0; row < height; row++) {
+			st->nents++;
+			/*
+			 * We don't need the pages, but need to initialize
+			 * the entries so the sg list can be happily traversed.
+			 * The only thing we need are DMA addresses.
+			 */
+			sg_set_page(sg, NULL, I915_GTT_PAGE_SIZE, 0);
+			sg_dma_address(sg) =
+				i915_gem_object_get_dma_address(obj, src_idx);
+			sg_dma_len(sg) = I915_GTT_PAGE_SIZE;
+			sg = sg_next(sg);
+			src_idx -= src_stride;
+		}
+
+		left = (dst_stride - height) * I915_GTT_PAGE_SIZE;
+
+		if (!left)
+			continue;
+
+		st->nents++;
+
+		/*
+		 * The DE ignores the PTEs for the padding tiles, the sg entry
+		 * here is just a conenience to indicate how many padding PTEs
+		 * to insert at this spot.
+		 */
+		sg_set_page(sg, NULL, left, 0);
+		sg_dma_address(sg) = 0;
+		sg_dma_len(sg) = left;
+		sg = sg_next(sg);
+	}
+
+	return sg;
+}
+
+static noinline struct sg_table *
+intel_rotate_pages(struct intel_rotation_info *rot_info,
+		   struct drm_i915_gem_object *obj)
+{
+	unsigned int size = intel_rotation_info_size(rot_info);
+	struct drm_i915_private *i915 = to_i915(obj->base.dev);
+	struct sg_table *st;
+	struct scatterlist *sg;
+	int ret = -ENOMEM;
+	int i;
+
+	/* Allocate target SG list. */
+	st = kmalloc(sizeof(*st), GFP_KERNEL);
+	if (!st)
+		goto err_st_alloc;
+
+	ret = sg_alloc_table(st, size, GFP_KERNEL);
+	if (ret)
+		goto err_sg_alloc;
+
+	st->nents = 0;
+	sg = st->sgl;
+
+	for (i = 0 ; i < ARRAY_SIZE(rot_info->plane); i++)
+		sg = rotate_pages(obj, rot_info->plane[i].offset,
+				  rot_info->plane[i].width, rot_info->plane[i].height,
+				  rot_info->plane[i].src_stride,
+				  rot_info->plane[i].dst_stride,
+				  st, sg);
+
+	return st;
+
+err_sg_alloc:
+	kfree(st);
+err_st_alloc:
+
+	drm_dbg(&i915->drm, "Failed to create rotated mapping for object size %zu! (%ux%u tiles, %u pages)\n",
+		obj->base.size, rot_info->plane[0].width,
+		rot_info->plane[0].height, size);
+
+	return ERR_PTR(ret);
+}
+
+static struct scatterlist *
+remap_pages(struct drm_i915_gem_object *obj, unsigned int offset,
+	    unsigned int width, unsigned int height,
+	    unsigned int src_stride, unsigned int dst_stride,
+	    struct sg_table *st, struct scatterlist *sg)
+{
+	unsigned int row;
+
+	for (row = 0; row < height; row++) {
+		unsigned int left = width * I915_GTT_PAGE_SIZE;
+
+		while (left) {
+			dma_addr_t addr;
+			unsigned int length;
+
+			/*
+			 * We don't need the pages, but need to initialize
+			 * the entries so the sg list can be happily traversed.
+			 * The only thing we need are DMA addresses.
+			 */
+
+			addr = i915_gem_object_get_dma_address_len(obj, offset, &length);
+
+			length = min(left, length);
+
+			st->nents++;
+
+			sg_set_page(sg, NULL, length, 0);
+			sg_dma_address(sg) = addr;
+			sg_dma_len(sg) = length;
+			sg = sg_next(sg);
+
+			offset += length / I915_GTT_PAGE_SIZE;
+			left -= length;
+		}
+
+		offset += src_stride - width;
+
+		left = (dst_stride - width) * I915_GTT_PAGE_SIZE;
+
+		if (!left)
+			continue;
+
+		st->nents++;
+
+		/*
+		 * The DE ignores the PTEs for the padding tiles, the sg entry
+		 * here is just a conenience to indicate how many padding PTEs
+		 * to insert at this spot.
+		 */
+		sg_set_page(sg, NULL, left, 0);
+		sg_dma_address(sg) = 0;
+		sg_dma_len(sg) = left;
+		sg = sg_next(sg);
+	}
+
+	return sg;
+}
+
+static noinline struct sg_table *
+intel_remap_pages(struct intel_remapped_info *rem_info,
+		  struct drm_i915_gem_object *obj)
+{
+	unsigned int size = intel_remapped_info_size(rem_info);
+	struct drm_i915_private *i915 = to_i915(obj->base.dev);
+	struct sg_table *st;
+	struct scatterlist *sg;
+	int ret = -ENOMEM;
+	int i;
+
+	/* Allocate target SG list. */
+	st = kmalloc(sizeof(*st), GFP_KERNEL);
+	if (!st)
+		goto err_st_alloc;
+
+	ret = sg_alloc_table(st, size, GFP_KERNEL);
+	if (ret)
+		goto err_sg_alloc;
+
+	st->nents = 0;
+	sg = st->sgl;
+
+	for (i = 0 ; i < ARRAY_SIZE(rem_info->plane); i++) {
+		sg = remap_pages(obj, rem_info->plane[i].offset,
+				 rem_info->plane[i].width, rem_info->plane[i].height,
+				 rem_info->plane[i].src_stride, rem_info->plane[i].dst_stride,
+				 st, sg);
+	}
+
+	i915_sg_trim(st);
+
+	return st;
+
+err_sg_alloc:
+	kfree(st);
+err_st_alloc:
+
+	drm_dbg(&i915->drm, "Failed to create remapped mapping for object size %zu! (%ux%u tiles, %u pages)\n",
+		obj->base.size, rem_info->plane[0].width,
+		rem_info->plane[0].height, size);
+
+	return ERR_PTR(ret);
+}
+
+static noinline struct sg_table *
+intel_partial_pages(const struct i915_ggtt_view *view,
+		    struct drm_i915_gem_object *obj)
+{
+	struct sg_table *st;
+	struct scatterlist *sg, *iter;
+	unsigned int count = view->partial.size;
+	unsigned int offset;
+	int ret = -ENOMEM;
+
+	st = kmalloc(sizeof(*st), GFP_KERNEL);
+	if (!st)
+		goto err_st_alloc;
+
+	ret = sg_alloc_table(st, count, GFP_KERNEL);
+	if (ret)
+		goto err_sg_alloc;
+
+	iter = i915_gem_object_get_sg_dma(obj, view->partial.offset, &offset);
+	GEM_BUG_ON(!iter);
+
+	sg = st->sgl;
+	st->nents = 0;
+	do {
+		unsigned int len;
+
+		len = min(sg_dma_len(iter) - (offset << PAGE_SHIFT),
+			  count << PAGE_SHIFT);
+		sg_set_page(sg, NULL, len, 0);
+		sg_dma_address(sg) =
+			sg_dma_address(iter) + (offset << PAGE_SHIFT);
+		sg_dma_len(sg) = len;
+
+		st->nents++;
+		count -= len >> PAGE_SHIFT;
+		if (count == 0) {
+			sg_mark_end(sg);
+			i915_sg_trim(st); /* Drop any unused tail entries. */
+
+			return st;
+		}
+
+		sg = __sg_next(sg);
+		iter = __sg_next(iter);
+		offset = 0;
+	} while (1);
+
+err_sg_alloc:
+	kfree(st);
+err_st_alloc:
+	return ERR_PTR(ret);
+}
+
+static int
+__i915_vma_get_pages(struct i915_vma *vma)
+{
+	struct sg_table *pages;
+	int ret;
+
+	/*
+	 * The vma->pages are only valid within the lifespan of the borrowed
+	 * obj->mm.pages. When the obj->mm.pages sg_table is regenerated, so
+	 * must be the vma->pages. A simple rule is that vma->pages must only
+	 * be accessed when the obj->mm.pages are pinned.
+	 */
+	GEM_BUG_ON(!i915_gem_object_has_pinned_pages(vma->obj));
+
+	switch (vma->ggtt_view.type) {
+	default:
+		GEM_BUG_ON(vma->ggtt_view.type);
+		fallthrough;
+	case I915_GGTT_VIEW_NORMAL:
+		pages = vma->obj->mm.pages;
+		break;
+
+	case I915_GGTT_VIEW_ROTATED:
+		pages =
+			intel_rotate_pages(&vma->ggtt_view.rotated, vma->obj);
+		break;
+
+	case I915_GGTT_VIEW_REMAPPED:
+		pages =
+			intel_remap_pages(&vma->ggtt_view.remapped, vma->obj);
+		break;
+
+	case I915_GGTT_VIEW_PARTIAL:
+		pages = intel_partial_pages(&vma->ggtt_view, vma->obj);
+		break;
+	}
+
+	ret = 0;
+	/* gen6 ppgtt doesn't have backing pages, special-case it */
+	if (IS_ERR(pages) && pages != ERR_PTR(-ENODEV)) {
+		ret = PTR_ERR(pages);
+		pages = NULL;
+		drm_err(&vma->vm->i915->drm,
+			"Failed to get pages for VMA view type %u (%d)!\n",
+			vma->ggtt_view.type, ret);
+	}
+
+	pages = xchg(&vma->pages, pages);
+
+	/* did we race against a put_pages? */
+	if (pages && pages != vma->obj->mm.pages) {
+		sg_free_table(vma->pages);
+		kfree(vma->pages);
+	}
+
+	return ret;
+}
+
+I915_SELFTEST_EXPORT int i915_vma_get_pages(struct i915_vma *vma)
+{
+	int err;
 
 	if (atomic_add_unless(&vma->pages_count, 1, 0))
 		return 0;
@@ -801,25 +1107,17 @@ static int vma_get_pages(struct i915_vma *vma)
 	if (err)
 		return err;
 
-	/* Allocations ahoy! */
-	if (mutex_lock_interruptible(&vma->pages_mutex)) {
-		err = -EINTR;
-		goto unpin;
-	}
+	err = __i915_vma_get_pages(vma);
+	if (err)
+		goto err_unpin;
 
-	if (!atomic_read(&vma->pages_count)) {
-		err = vma->ops->set_pages(vma);
-		if (err)
-			goto unlock;
-		pinned_pages = false;
-	}
+	vma->page_sizes = vma->obj->mm.page_sizes;
 	atomic_inc(&vma->pages_count);
 
-unlock:
-	mutex_unlock(&vma->pages_mutex);
-unpin:
-	if (pinned_pages)
-		__i915_gem_object_unpin_pages(vma->obj);
+	return 0;
+
+err_unpin:
+	__i915_gem_object_unpin_pages(vma->obj);
 
 	return err;
 }
@@ -827,18 +1125,22 @@ static int vma_get_pages(struct i915_vma *vma)
 static void __vma_put_pages(struct i915_vma *vma, unsigned int count)
 {
 	/* We allocate under vma_get_pages, so beware the shrinker */
-	mutex_lock_nested(&vma->pages_mutex, SINGLE_DEPTH_NESTING);
+	struct sg_table *pages = READ_ONCE(vma->pages);
+
 	GEM_BUG_ON(atomic_read(&vma->pages_count) < count);
+
 	if (atomic_sub_return(count, &vma->pages_count) == 0) {
-		vma->ops->clear_pages(vma);
-		GEM_BUG_ON(vma->pages);
+		if (pages == cmpxchg(&vma->pages, pages, NULL) &&
+		    pages != vma->obj->mm.pages) {
+			sg_free_table(pages);
+			kfree(pages);
+		}
 
 		i915_gem_object_unpin_pages(vma->obj);
 	}
-	mutex_unlock(&vma->pages_mutex);
 }
 
-static void vma_put_pages(struct i915_vma *vma)
+I915_SELFTEST_EXPORT void i915_vma_put_pages(struct i915_vma *vma)
 {
 	if (atomic_add_unless(&vma->pages_count, -1, 1))
 		return;
@@ -868,10 +1170,8 @@ int i915_vma_pin_ww(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 	unsigned int bound;
 	int err;
 
-#ifdef CONFIG_PROVE_LOCKING
-	if (debug_locks && !WARN_ON(!ww))
-		assert_vma_held(vma);
-#endif
+	assert_vma_held(vma);
+	GEM_BUG_ON(!ww);
 
 	BUILD_BUG_ON(PIN_GLOBAL != I915_VMA_GLOBAL_BIND);
 	BUILD_BUG_ON(PIN_USER != I915_VMA_LOCAL_BIND);
@@ -882,7 +1182,7 @@ int i915_vma_pin_ww(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 	if (try_qad_pin(vma, flags & I915_VMA_BIND_MASK))
 		return 0;
 
-	err = vma_get_pages(vma);
+	err = i915_vma_get_pages(vma);
 	if (err)
 		return err;
 
@@ -1007,7 +1307,7 @@ int i915_vma_pin_ww(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 err_rpm:
 	if (wakeref)
 		intel_runtime_pm_put(&vma->vm->i915->runtime_pm, wakeref);
-	vma_put_pages(vma);
+	i915_vma_put_pages(vma);
 	return err;
 }
 
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index 0b11c188f749..e4dc5187c8ad 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -424,4 +424,7 @@ static inline int i915_vma_sync(struct i915_vma *vma)
 void i915_vma_module_exit(void);
 int i915_vma_module_init(void);
 
+I915_SELFTEST_DECLARE(int i915_vma_get_pages(struct i915_vma *vma));
+I915_SELFTEST_DECLARE(void i915_vma_put_pages(struct i915_vma *vma));
+
 #endif
diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915/i915_vma_types.h
index 47573ed2d11f..a129ab9b6405 100644
--- a/drivers/gpu/drm/i915/i915_vma_types.h
+++ b/drivers/gpu/drm/i915/i915_vma_types.h
@@ -260,7 +260,6 @@ struct i915_vma {
 #define I915_VMA_PAGES_BIAS 24
 #define I915_VMA_PAGES_ACTIVE (BIT(24) | 1)
 	atomic_t pages_count; /* number of active binds to the pages */
-	struct mutex pages_mutex; /* protect acquire/release of backing pages */
 
 	/**
 	 * Support different GGTT views into the same object.
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index f843a5040706..a3e3d97728e7 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -1953,7 +1953,9 @@ static int igt_cs_tlb(void *arg)
 				goto end;
 			}
 
-			err = vma->ops->set_pages(vma);
+			i915_gem_object_lock(bbe, NULL);
+			err = i915_vma_get_pages(vma);
+			i915_gem_object_unlock(bbe);
 			if (err)
 				goto end;
 
@@ -1994,7 +1996,7 @@ static int igt_cs_tlb(void *arg)
 				i915_request_put(rq);
 			}
 
-			vma->ops->clear_pages(vma);
+			i915_vma_put_pages(vma);
 
 			err = context_sync(ce);
 			if (err) {
@@ -2009,7 +2011,9 @@ static int igt_cs_tlb(void *arg)
 				goto end;
 			}
 
-			err = vma->ops->set_pages(vma);
+			i915_gem_object_lock(act, NULL);
+			err = i915_vma_get_pages(vma);
+			i915_gem_object_unlock(act);
 			if (err)
 				goto end;
 
@@ -2047,7 +2051,7 @@ static int igt_cs_tlb(void *arg)
 			}
 			end_spin(batch, count - 1);
 
-			vma->ops->clear_pages(vma);
+			i915_vma_put_pages(vma);
 
 			err = context_sync(ce);
 			if (err) {
diff --git a/drivers/gpu/drm/i915/selftests/mock_gtt.c b/drivers/gpu/drm/i915/selftests/mock_gtt.c
index cc047ec594f9..096679014d99 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gtt.c
@@ -86,8 +86,6 @@ struct i915_ppgtt *mock_ppgtt(struct drm_i915_private *i915, const char *name)
 
 	ppgtt->vm.vma_ops.bind_vma    = mock_bind_ppgtt;
 	ppgtt->vm.vma_ops.unbind_vma  = mock_unbind_ppgtt;
-	ppgtt->vm.vma_ops.set_pages   = ppgtt_set_pages;
-	ppgtt->vm.vma_ops.clear_pages = clear_pages;
 
 	return ppgtt;
 }
@@ -126,8 +124,6 @@ void mock_init_ggtt(struct drm_i915_private *i915, struct i915_ggtt *ggtt)
 
 	ggtt->vm.vma_ops.bind_vma    = mock_bind_ggtt;
 	ggtt->vm.vma_ops.unbind_vma  = mock_unbind_ggtt;
-	ggtt->vm.vma_ops.set_pages   = ggtt_set_pages;
-	ggtt->vm.vma_ops.clear_pages = clear_pages;
 
 	i915_address_space_init(&ggtt->vm, VM_CLASS_GGTT);
 	i915->gt.ggtt = ggtt;
-- 
2.32.0

