Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF0D588082
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Aug 2022 18:52:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C830491C94;
	Tue,  2 Aug 2022 16:52:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2857191C94
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Aug 2022 16:52:08 +0000 (UTC)
Received: from localhost.localdomain (unknown
 [IPv6:2a02:8010:65b5:0:bbb0:f8ec:7bc9:dbe4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: alarumbe)
 by madras.collabora.co.uk (Postfix) with ESMTPSA id 7FCC16601BCE;
 Tue,  2 Aug 2022 17:52:05 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1659459125;
 bh=aNsCxMJnNRDiux7dFf8eA7mxr+bySgcTZFyyVvylvp4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WIE26VmwTz+TuYNZWKAxdHrVOYOh5vzVGQ+z2q1Kn3SbRNCeIaZhnA1+Z9QqzXEn9
 4r2IZo8zYDi4XLUGHDK1VeClwy7hgEBgQl7n5zilzHHRl205I+Jnjqh1PWNVJc/6z4
 s0Blln6PBrrr8Y4e7pLya6457bsL4cJJPKRNGximy3xpDFvTPaaBwIsCjmb/R3/U4k
 oRhj8uaowHlPc/WPAjjjFbEITf2JGp8WnUxXRjBuwuqKhOMFeb+R8qbg3EgUaDH91X
 vH7XaqSqEXYBAdnTSq/t1khIVI/GJr+EzDJmmL2YFJj03N1zPuXcTkXBb0zKYW4VdF
 r7xgA7keQWVng==
From: Adrian Larumbe <adrian.larumbe@collabora.com>
To: daniel@ffwll.ch, thomas.hellstrom@linux.intel.com,
 intel-gfx@lists.freedesktop.org
Date: Tue,  2 Aug 2022 17:51:55 +0100
Message-Id: <20220802165155.165576-8-adrian.larumbe@collabora.com>
X-Mailer: git-send-email 2.37.0
In-Reply-To: <20220802165155.165576-1-adrian.larumbe@collabora.com>
References: <20220802165155.165576-1-adrian.larumbe@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/7] drm/i915: Optionally manage system memory
 with TTM and poolalloc
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
Cc: adrian.larumbe@collabora.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Allow system memory to be managed by TTM on integrated graphics platforms.
We replace using the shmem objects with similar use of TTM objects and can
then benefit from using alloc_page() pages instead of shmem pages.

This commit has no effect on DGFX hardware.

Because it manages objects allocated on system memory, support for the
legacy mmap ioctl was introduced. The change also affects how the original
object is accessed when constructing a phys gem object, which means it must
be mapped and accessed in its entirety rather than traversing the list of
shmem pages.

A new set of integrated TTM GEM object operations are needed, which do not
hold pointers to memory mapping functions, because mmap'ing of TTM-managed
BO's in system memory should still be handled by the GEM subsystem. This
new set of operations also handles pwrite and pread, which are forbidden on
platforms having LMEM.

Signed-off-by: Adrian Larumbe <adrian.larumbe@collabora.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_mman.c    |  21 ++-
 drivers/gpu/drm/i915/gem/i915_gem_object.h  |   2 +-
 drivers/gpu/drm/i915/gem/i915_gem_phys.c    | 127 ++++++++-----
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c   |   4 +-
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c     | 187 ++++++++++++++++++--
 drivers/gpu/drm/i915/gem/i915_gem_ttm.h     |  14 ++
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c |   2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c    |   6 +-
 drivers/gpu/drm/i915/intel_memory_region.c  |   2 +-
 9 files changed, 298 insertions(+), 67 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index 0c5c43852e24..112de5c0a23f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -83,6 +83,22 @@ i915_gem_mmap_ioctl(struct drm_device *dev, void *data,
 	if (!obj)
 		return -ENOENT;
 
+	if (range_overflows(args->offset, args->size, (u64)obj->base.size)) {
+		addr = -EINVAL;
+		goto err;
+	}
+
+	if (i915_gem_object_is_ttm(obj)) {
+		GEM_WARN_ON(!i915->params.use_pool_alloc);
+
+		addr = i915_gem_ttm_mmap_ioctl(obj, args);
+		if (IS_ERR_VALUE(addr))
+			goto err;
+
+		args->addr_ptr = (u64)addr;
+		return 0;
+	}
+
 	/* prime objects have no backing filp to GEM mmap
 	 * pages from.
 	 */
@@ -91,11 +107,6 @@ i915_gem_mmap_ioctl(struct drm_device *dev, void *data,
 		goto err;
 	}
 
-	if (range_overflows(args->offset, args->size, (u64)obj->base.size)) {
-		addr = -EINVAL;
-		goto err;
-	}
-
 	addr = vm_mmap(obj->base.filp, 0, args->size,
 		       PROT_READ | PROT_WRITE, MAP_SHARED,
 		       args->offset);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 6f0a3ce35567..c130db4d757f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -74,7 +74,7 @@ __i915_gem_object_create_user(struct drm_i915_private *i915, u64 size,
 
 extern const struct drm_i915_gem_object_ops i915_gem_shmem_ops;
 
-void __i915_gem_object_release_shmem(struct drm_i915_gem_object *obj,
+void __i915_gem_object_release_smem(struct drm_i915_gem_object *obj,
 				     struct sg_table *pages,
 				     bool needs_clflush);
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_phys.c b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
index 0d0e46dae559..4efedd3fdf7c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_phys.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
@@ -16,16 +16,15 @@
 #include "i915_gem_region.h"
 #include "i915_gem_tiling.h"
 #include "i915_scatterlist.h"
+#include "i915_gem_ttm.h"
 
 static int i915_gem_object_get_pages_phys(struct drm_i915_gem_object *obj)
 {
-	struct address_space *mapping = obj->base.filp->f_mapping;
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	struct scatterlist *sg;
 	struct sg_table *st;
 	dma_addr_t dma;
 	void *vaddr;
-	void *dst;
 	int i;
 
 	if (GEM_WARN_ON(i915_gem_object_needs_bit17_swizzle(obj)))
@@ -57,22 +56,40 @@ static int i915_gem_object_get_pages_phys(struct drm_i915_gem_object *obj)
 	sg_dma_address(sg) = dma;
 	sg_dma_len(sg) = obj->base.size;
 
-	dst = vaddr;
-	for (i = 0; i < obj->base.size / PAGE_SIZE; i++) {
-		struct page *page;
-		void *src;
+	if (i915_gem_object_is_ttm(obj)) {
+		void *objaddr;
 
-		page = shmem_read_mapping_page(mapping, i);
-		if (IS_ERR(page))
-			goto err_st;
+		objaddr = i915_gem_object_pin_map(obj, I915_MAP_WB);
+		if (IS_ERR(objaddr))
+			return PTR_ERR(objaddr);
 
-		src = kmap_atomic(page);
-		memcpy(dst, src, PAGE_SIZE);
-		drm_clflush_virt_range(dst, PAGE_SIZE);
-		kunmap_atomic(src);
+		drm_clflush_virt_range(objaddr, obj->base.size);
+		memcpy(vaddr, objaddr, obj->base.size);
 
-		put_page(page);
-		dst += PAGE_SIZE;
+		i915_gem_object_unpin_map(obj);
+
+		drm_clflush_virt_range(vaddr, obj->base.size);
+
+	} else {
+		struct address_space *mapping = obj->base.filp->f_mapping;
+		void *dst = vaddr;
+
+		for (i = 0; i < obj->base.size / PAGE_SIZE; i++) {
+			struct page *page;
+			void *src;
+
+			page = shmem_read_mapping_page(mapping, i);
+			if (IS_ERR(page))
+				goto err_st;
+
+			src = kmap_atomic(page);
+			memcpy(dst, src, PAGE_SIZE);
+			drm_clflush_virt_range(dst, PAGE_SIZE);
+			kunmap_atomic(src);
+
+			put_page(page);
+			dst += PAGE_SIZE;
+		}
 	}
 
 	intel_gt_chipset_flush(to_gt(i915));
@@ -99,32 +116,48 @@ i915_gem_object_put_pages_phys(struct drm_i915_gem_object *obj,
 	dma_addr_t dma = sg_dma_address(pages->sgl);
 	void *vaddr = sg_page(pages->sgl);
 
-	__i915_gem_object_release_shmem(obj, pages, false);
+	__i915_gem_object_release_smem(obj, pages, false);
 
 	if (obj->mm.dirty) {
-		struct address_space *mapping = obj->base.filp->f_mapping;
-		void *src = vaddr;
-		int i;
-
-		for (i = 0; i < obj->base.size / PAGE_SIZE; i++) {
-			struct page *page;
-			char *dst;
-
-			page = shmem_read_mapping_page(mapping, i);
-			if (IS_ERR(page))
-				continue;
-
-			dst = kmap_atomic(page);
-			drm_clflush_virt_range(src, PAGE_SIZE);
-			memcpy(dst, src, PAGE_SIZE);
-			kunmap_atomic(dst);
-
-			set_page_dirty(page);
-			if (obj->mm.madv == I915_MADV_WILLNEED)
-				mark_page_accessed(page);
-			put_page(page);
-
-			src += PAGE_SIZE;
+		if (!i915_gem_object_is_ttm(obj)) {
+			struct address_space *mapping = obj->base.filp->f_mapping;
+			void *src = vaddr;
+			int i;
+
+			for (i = 0; i < obj->base.size / PAGE_SIZE; i++) {
+				struct page *page;
+				char *dst;
+
+				page = shmem_read_mapping_page(mapping, i);
+				if (IS_ERR(page))
+					continue;
+
+				dst = kmap_atomic(page);
+				drm_clflush_virt_range(src, PAGE_SIZE);
+				memcpy(dst, src, PAGE_SIZE);
+				kunmap_atomic(dst);
+
+				set_page_dirty(page);
+				if (obj->mm.madv == I915_MADV_WILLNEED)
+					mark_page_accessed(page);
+				put_page(page);
+
+				src += PAGE_SIZE;
+			}
+		} else {
+			void *objaddr;
+
+			objaddr = i915_gem_object_pin_map(obj, I915_MAP_WB);
+			if (IS_ERR(objaddr)) {
+				drm_dbg(obj->base.dev,
+					"i915_gem_object_pin_map_unlocked failed\n");
+				return;
+			}
+
+			drm_clflush_virt_range(vaddr, PAGE_SIZE);
+			memcpy(objaddr, vaddr, obj->base.size);
+			drm_clflush_virt_range(objaddr, obj->base.size);
+			i915_gem_object_unpin_map(obj);
 		}
 		obj->mm.dirty = false;
 	}
@@ -188,7 +221,7 @@ int i915_gem_object_pread_phys(struct drm_i915_gem_object *obj,
 	return 0;
 }
 
-static int i915_gem_object_shmem_to_phys(struct drm_i915_gem_object *obj)
+static int i915_gem_object_smem_to_phys(struct drm_i915_gem_object *obj)
 {
 	struct sg_table *pages;
 	int err;
@@ -201,10 +234,12 @@ static int i915_gem_object_shmem_to_phys(struct drm_i915_gem_object *obj)
 
 	/* Perma-pin (until release) the physical set of pages */
 	__i915_gem_object_pin_pages(obj);
-
-	if (!IS_ERR_OR_NULL(pages))
-		i915_gem_object_put_pages_shmem(obj, pages);
-
+	if (!IS_ERR_OR_NULL(pages)) {
+		if (!i915_gem_object_is_ttm(obj))
+			i915_gem_object_put_pages_shmem(obj, pages);
+		else
+			i915_gem_object_put_pages_ttm(obj, pages);
+	}
 	i915_gem_object_release_memory_region(obj);
 	return 0;
 
@@ -226,7 +261,7 @@ int i915_gem_object_attach_phys(struct drm_i915_gem_object *obj, int align)
 	if (align > obj->base.size)
 		return -EINVAL;
 
-	if (!i915_gem_object_is_shmem(obj))
+	if (!i915_gem_object_is_smem(obj))
 		return -EINVAL;
 
 	if (!i915_gem_object_has_struct_page(obj))
@@ -251,7 +286,7 @@ int i915_gem_object_attach_phys(struct drm_i915_gem_object *obj, int align)
 		return -EFAULT;
 	}
 
-	return i915_gem_object_shmem_to_phys(obj);
+	return i915_gem_object_smem_to_phys(obj);
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index 4eed3dd90ba8..ef1192a6485c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -351,7 +351,7 @@ static int shmem_shrink(struct drm_i915_gem_object *obj, unsigned int flags)
 }
 
 void
-__i915_gem_object_release_shmem(struct drm_i915_gem_object *obj,
+__i915_gem_object_release_smem(struct drm_i915_gem_object *obj,
 				struct sg_table *pages,
 				bool needs_clflush)
 {
@@ -382,7 +382,7 @@ __i915_gem_object_release_shmem(struct drm_i915_gem_object *obj,
 
 void i915_gem_object_put_pages_shmem(struct drm_i915_gem_object *obj, struct sg_table *pages)
 {
-	__i915_gem_object_release_shmem(obj, pages, true);
+	__i915_gem_object_release_smem(obj, pages, true);
 
 	i915_gem_gtt_finish_pages(obj, pages);
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index b232aed4927e..170b30e5c1a2 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -4,9 +4,11 @@
  */
 
 #include <linux/shmem_fs.h>
+#include <linux/mman.h>
 
 #include <drm/ttm/ttm_bo_driver.h>
 #include <drm/ttm/ttm_placement.h>
+#include <drm/ttm/ttm_bo_api.h>
 #include <drm/drm_buddy.h>
 
 #include "i915_drv.h"
@@ -20,6 +22,8 @@
 #include "gem/i915_gem_ttm.h"
 #include "gem/i915_gem_ttm_move.h"
 #include "gem/i915_gem_ttm_pm.h"
+#include "gem/i915_gem_clflush.h"
+#include "gem/i915_gem_tiling.h"
 #include "gt/intel_gpu_commands.h"
 
 #define I915_TTM_PRIO_PURGE     0
@@ -291,7 +295,7 @@ static struct ttm_tt *i915_ttm_tt_create(struct ttm_buffer_object *bo,
 	if (!i915_tt)
 		return NULL;
 
-	if (obj->flags & I915_BO_ALLOC_CPU_CLEAR &&
+	if (obj->flags & (I915_BO_ALLOC_CPU_CLEAR | I915_BO_ALLOC_USER) &&
 	    man->use_tt)
 		page_flags |= TTM_TT_FLAG_ZERO_ALLOC;
 
@@ -299,7 +303,8 @@ static struct ttm_tt *i915_ttm_tt_create(struct ttm_buffer_object *bo,
 	if (i915_gem_object_is_shrinkable(obj) && caching == ttm_cached) {
 		page_flags |= TTM_TT_FLAG_EXTERNAL |
 			      TTM_TT_FLAG_EXTERNAL_MAPPABLE;
-		i915_tt->is_shmem = true;
+
+		i915_tt->is_shmem = i915->params.use_pool_alloc ? false : true;
 	}
 
 	if (HAS_FLAT_CCS(i915) && i915_gem_object_needs_ccs_pages(obj))
@@ -518,9 +523,7 @@ static int i915_ttm_shrink(struct drm_i915_gem_object *obj, unsigned int flags)
 	if (!bo->ttm || bo->resource->mem_type != TTM_PL_SYSTEM)
 		return 0;
 
-	GEM_BUG_ON(!i915_tt->is_shmem);
-
-	if (!i915_tt->filp)
+	if (!ttm_tt_is_populated(bo->ttm))
 		return 0;
 
 	ret = ttm_bo_wait_ctx(bo, &ctx);
@@ -797,6 +800,16 @@ static int __i915_ttm_get_pages(struct drm_i915_gem_object *obj,
 	}
 
 	if (bo->ttm && !ttm_tt_is_populated(bo->ttm)) {
+		struct drm_i915_private *i915 = to_i915(obj->base.dev);
+		const size_t size = (size_t)bo->ttm->num_pages << PAGE_SHIFT;
+		struct intel_memory_region *mr = i915->mm.regions[INTEL_MEMORY_SYSTEM];
+		/*
+		 * If there's no chance of allocating enough pages for the whole
+		 * object, bail early.
+		 */
+		if (size > resource_size(&mr->region))
+			return -ENOMEM;
+
 		ret = ttm_tt_populate(bo->bdev, bo->ttm, &ctx);
 		if (ret)
 			return ret;
@@ -812,6 +825,14 @@ static int __i915_ttm_get_pages(struct drm_i915_gem_object *obj,
 		if (IS_ERR(rsgt))
 			return PTR_ERR(rsgt);
 
+		if (!HAS_LMEM(to_i915(obj->base.dev)) && bo->ttm) {
+			if (i915_gem_object_needs_bit17_swizzle(obj))
+				i915_gem_object_do_bit_17_swizzle(obj, &rsgt->table);
+
+			if (i915_gem_object_can_bypass_llc(obj))
+				obj->cache_dirty = true;
+		}
+
 		GEM_BUG_ON(obj->mm.rsgt);
 		obj->mm.rsgt = rsgt;
 		__i915_gem_object_set_pages(obj, &rsgt->table,
@@ -888,8 +909,8 @@ static int i915_ttm_migrate(struct drm_i915_gem_object *obj,
 	return __i915_ttm_migrate(obj, mr, obj->flags);
 }
 
-static void i915_ttm_put_pages(struct drm_i915_gem_object *obj,
-			       struct sg_table *st)
+void i915_gem_object_put_pages_ttm(struct drm_i915_gem_object *obj,
+				   struct sg_table *st)
 {
 	/*
 	 * We're currently not called from a shrinker, so put_pages()
@@ -899,10 +920,23 @@ static void i915_ttm_put_pages(struct drm_i915_gem_object *obj,
 	 * and shrinkers will move it out if needed.
 	 */
 
+	if (!HAS_LMEM(to_i915(obj->base.dev)) &&
+	    i915_gem_object_needs_bit17_swizzle(obj))
+		i915_gem_object_save_bit_17_swizzle(obj, st);
+
 	if (obj->mm.rsgt)
 		i915_refct_sgt_put(fetch_and_zero(&obj->mm.rsgt));
 }
 
+static void i915_ttm_put_pages(struct drm_i915_gem_object *obj,
+			       struct sg_table *st)
+{
+	if (likely(i915_gem_object_has_struct_page(obj)))
+		i915_gem_object_put_pages_ttm(obj, st);
+	else
+		i915_gem_object_put_pages_phys(obj, st);
+}
+
 /**
  * i915_ttm_adjust_lru - Adjust an object's position on relevant LRU lists.
  * @obj: The object
@@ -1138,7 +1172,46 @@ static void i915_ttm_unmap_virtual(struct drm_i915_gem_object *obj)
 	ttm_bo_unmap_virtual(i915_gem_to_ttm(obj));
 }
 
-static const struct drm_i915_gem_object_ops i915_gem_ttm_obj_ops = {
+static int
+ttm_pwrite(struct drm_i915_gem_object *obj,
+	     const struct drm_i915_gem_pwrite *arg)
+{
+
+	if (!i915_gem_object_has_struct_page(obj))
+		return i915_gem_object_pwrite_phys(obj, arg);
+
+	return -ENODEV;
+}
+
+static int
+ttm_pread(struct drm_i915_gem_object *obj,
+	    const struct drm_i915_gem_pread *arg)
+{
+	if (!i915_gem_object_has_struct_page(obj))
+		return i915_gem_object_pread_phys(obj, arg);
+
+	return -ENODEV;
+}
+
+static const struct drm_i915_gem_object_ops i915_gem_ttm_integrated_obj_ops = {
+	.name = "i915_gem_object_ttm",
+	.flags = I915_GEM_OBJECT_IS_SHRINKABLE |
+		 I915_GEM_OBJECT_SELF_MANAGED_SHRINK_LIST,
+
+	.get_pages = i915_ttm_get_pages,
+	.put_pages = i915_ttm_put_pages,
+	.truncate = i915_ttm_truncate,
+	.shrink = i915_ttm_shrink,
+
+	.pwrite = ttm_pwrite,
+	.pread = ttm_pread,
+
+	.adjust_lru = i915_ttm_adjust_lru,
+	.delayed_free = i915_ttm_delayed_free,
+	.migrate = i915_ttm_migrate,
+};
+
+static const struct drm_i915_gem_object_ops i915_gem_ttm_discrete_obj_ops = {
 	.name = "i915_gem_object_ttm",
 	.flags = I915_GEM_OBJECT_IS_SHRINKABLE |
 		 I915_GEM_OBJECT_SELF_MANAGED_SHRINK_LIST,
@@ -1160,8 +1233,15 @@ static const struct drm_i915_gem_object_ops i915_gem_ttm_obj_ops = {
 void i915_ttm_bo_destroy(struct ttm_buffer_object *bo)
 {
 	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
+	struct drm_i915_private *i915 = to_i915(obj->base.dev);
+
+	/*
+	 * This is for the case that an shmem object was turned into a
+	 * phys one and early released its memory region
+	 */
+	if (likely(IS_DGFX(i915) || i915_gem_object_has_struct_page(obj)))
+		i915_gem_object_release_memory_region(obj);
 
-	i915_gem_object_release_memory_region(obj);
 	mutex_destroy(&obj->ttm.get_io_page.lock);
 
 	if (obj->ttm.created) {
@@ -1214,7 +1294,6 @@ int __i915_gem_ttm_object_init(struct intel_memory_region *mem,
 	int ret;
 
 	drm_gem_private_object_init(&i915->drm, &obj->base, size);
-	i915_gem_object_init(obj, &i915_gem_ttm_obj_ops, &lock_class, flags);
 
 	obj->bo_offset = offset;
 
@@ -1227,6 +1306,16 @@ int __i915_gem_ttm_object_init(struct intel_memory_region *mem,
 	bo_type = (obj->flags & I915_BO_ALLOC_USER) ? ttm_bo_type_device :
 		ttm_bo_type_kernel;
 
+	if (!HAS_LMEM(i915) && i915->params.use_pool_alloc) {
+		GEM_WARN_ON(mem->type != INTEL_MEMORY_SYSTEM);
+		bo_type = ttm_bo_type_kernel;
+	}
+
+	i915_gem_object_init(obj, (bo_type == ttm_bo_type_kernel) ?
+			     &i915_gem_ttm_integrated_obj_ops :
+			     &i915_gem_ttm_discrete_obj_ops,
+			     &lock_class, flags);
+
 	obj->base.vma_node.driver_private = i915_gem_to_ttm(obj);
 
 	/* Forcing the page size is kernel internal only */
@@ -1286,3 +1375,81 @@ i915_gem_ttm_system_setup(struct drm_i915_private *i915,
 	intel_memory_region_set_name(mr, "system-ttm");
 	return mr;
 }
+
+bool i915_gem_object_is_ttm(const struct drm_i915_gem_object *obj)
+{
+	return obj->ops == &i915_gem_ttm_discrete_obj_ops ||
+		obj->ops == &i915_gem_ttm_integrated_obj_ops;
+}
+
+struct drm_i915_gem_object *
+i915_gem_object_create_ttm_from_data(struct drm_i915_private *dev_priv,
+				       const void *data, resource_size_t size)
+{
+	struct drm_i915_gem_object *obj;
+	void *vaddr;
+
+	obj = i915_gem_object_create_shmem(dev_priv, round_up(size, PAGE_SIZE));
+	if (IS_ERR(obj))
+		return obj;
+
+	vaddr = i915_gem_object_pin_map_unlocked(obj, I915_MAP_WC);
+	if (IS_ERR(vaddr)) {
+		i915_gem_object_put(obj);
+		return vaddr;
+	}
+
+	memcpy(vaddr, data, size);
+
+	i915_gem_object_unpin_map(obj);
+
+	return obj;
+}
+
+unsigned long i915_gem_ttm_mmap_ioctl(struct drm_i915_gem_object *obj,
+				      struct drm_i915_gem_mmap *args)
+{
+	struct ttm_buffer_object *bo = i915_gem_to_ttm(obj);
+	struct mm_struct *mm = current->mm;
+	struct vm_area_struct *vma;
+	unsigned long addr;
+
+	addr = vm_mmap(NULL, 0, args->size,
+		       PROT_READ | PROT_WRITE, MAP_SHARED,
+		       args->offset);
+	if (IS_ERR_VALUE(addr))
+		return addr;
+
+	if (mmap_write_lock_killable(mm))
+		return -EINTR;
+	vma = find_vma(current->mm, addr);
+	if (IS_ERR_OR_NULL(vma)) {
+		mmap_write_unlock(mm);
+		return -ENOMEM;
+	}
+
+	vma->vm_flags |= VM_PFNMAP | VM_DONTEXPAND | VM_DONTDUMP | VM_IO;
+	if (args->flags & I915_MMAP_WC)
+		vma->vm_page_prot = pgprot_writecombine(vm_get_page_prot(vma->vm_flags));
+	else
+		vma->vm_page_prot = pgprot_decrypted(vm_get_page_prot(vma->vm_flags));
+	vma->vm_ops = i915_gem_ttm_discrete_obj_ops.mmap_ops;
+	vma->vm_private_data = bo;
+
+	mmap_write_unlock(mm);
+
+	return addr;
+}
+
+bool i915_gem_object_is_smem(struct drm_i915_gem_object *obj)
+{
+	struct intel_memory_region *mr = READ_ONCE(obj->mm.region);
+
+#ifdef CONFIG_LOCKDEP
+	if (i915_gem_object_migratable(obj) &&
+	    i915_gem_object_evictable(obj))
+		assert_object_held(obj);
+#endif
+	return mr && (mr->type == INTEL_MEMORY_SYSTEM ||
+		      mr->type == INTEL_MEMORY_STOLEN_SYSTEM);
+}
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.h b/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
index e4842b4296fc..f8f3fbb2b532 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
@@ -95,4 +95,18 @@ static inline bool i915_ttm_cpu_maps_iomem(struct ttm_resource *mem)
 
 bool i915_ttm_resource_mappable(struct ttm_resource *res);
 
+bool i915_gem_object_is_ttm(const struct drm_i915_gem_object *obj);
+
+struct drm_i915_gem_object *
+i915_gem_object_create_ttm_from_data(struct drm_i915_private *dev_priv,
+				     const void *data, resource_size_t size);
+
+unsigned long i915_gem_ttm_mmap_ioctl(struct drm_i915_gem_object *obj,
+				      struct drm_i915_gem_mmap *args);
+
+bool i915_gem_object_is_smem(struct drm_i915_gem_object *obj);
+
+void i915_gem_object_put_pages_ttm(struct drm_i915_gem_object *obj,
+				   struct sg_table *st);
+
 #endif
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index 094f06b4ce33..30446770a4de 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -192,7 +192,7 @@ i915_gem_userptr_put_pages(struct drm_i915_gem_object *obj,
 	if (!pages)
 		return;
 
-	__i915_gem_object_release_shmem(obj, pages, true);
+	__i915_gem_object_release_smem(obj, pages, true);
 	i915_gem_gtt_finish_pages(obj, pages);
 
 	/*
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index d5fca1f68eff..17a81bfccec8 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -11,6 +11,7 @@
 #include <drm/drm_print.h>
 
 #include "gem/i915_gem_lmem.h"
+#include "gem/i915_gem_ttm.h"
 #include "intel_uc_fw.h"
 #include "intel_uc_fw_abi.h"
 #include "i915_drv.h"
@@ -482,7 +483,10 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
 		if (!IS_ERR(obj))
 			obj->flags |= I915_BO_ALLOC_PM_EARLY;
 	} else {
-		obj = i915_gem_object_create_shmem_from_data(i915, fw->data, fw->size);
+		if (unlikely(i915->params.use_pool_alloc))
+			obj = i915_gem_object_create_ttm_from_data(i915, fw->data, fw->size);
+		else
+			obj = i915_gem_object_create_shmem_from_data(i915, fw->data, fw->size);
 	}
 
 	if (IS_ERR(obj)) {
diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index 9a4a7fb55582..442687285ce6 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -321,7 +321,7 @@ int intel_memory_regions_hw_probe(struct drm_i915_private *i915)
 		instance = intel_region_map[i].instance;
 		switch (type) {
 		case INTEL_MEMORY_SYSTEM:
-			if (IS_DGFX(i915))
+			if (IS_DGFX(i915) || i915->params.use_pool_alloc)
 				mem = i915_gem_ttm_system_setup(i915, type,
 								instance);
 			else
-- 
2.37.0

