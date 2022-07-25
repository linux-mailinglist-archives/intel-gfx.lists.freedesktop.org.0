Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 999A557FC5D
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jul 2022 11:27:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 690888ED3F;
	Mon, 25 Jul 2022 09:26:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8E8218AABD;
 Mon, 25 Jul 2022 09:26:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658741196; x=1690277196;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SkSoEjIyjg83BjNagbjJG0YPTDnjusNC/ZuFuifYG6k=;
 b=k6xY4XR5FA04NHbdzqXlBob7qM1PeMAmLjL0Rvd9q9W2CuH6khLsvOhz
 BA+Kk+fqbnw5Gm2B3OuBXev4qlWMiu3ts/ctzJ4UuB7ceMZ3ueM+m9vwf
 RYk74b4ciGsu+00bPTVkauxdaMcCEyinVos4Gz6XrhCuXpZ7md84Ps1rS
 56UcdapDPgzNAOfzH305kNiQiY5mLOyjQxxYQQgNp1M47WvP7/RA59185
 RvZCK+zgVvPMH+Qo7oNkwQJFCdFzkkcYXSPsE2uZwc3G79uXyL/Xbj8+i
 38U7K/MERWlxD6In2Gy0gMBa42+NkbJFsJU+0C2jOSFk252fveJen5q44 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10418"; a="268047801"
X-IronPort-AV: E=Sophos;i="5.93,192,1654585200"; d="scan'208";a="268047801"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2022 02:26:24 -0700
X-IronPort-AV: E=Sophos;i="5.93,192,1654585200"; d="scan'208";a="926823825"
Received: from abaruah-mobl.gar.corp.intel.com (HELO hades.ger.corp.intel.com)
 ([10.249.37.11])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2022 02:26:22 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Jul 2022 12:25:23 +0300
Message-Id: <20220725092528.1281487-3-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220725092528.1281487-1-gwan-gyeong.mun@intel.com>
References: <20220725092528.1281487-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 2/7] drm/i915/gem: Typecheck page lookups
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
Cc: thomas.hellstrom@linux.intel.com, jani.nikula@intel.com,
 dri-devel@lists.freedesktop.org, chris@chris-wilson.co.uk, airlied@linux.ie,
 matthew.auld@intel.com, mchehab@kernel.org, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Chris Wilson <chris@chris-wilson.co.uk>

We need to check that we avoid integer overflows when looking up a page,
and so fix all the instances where we have mistakenly used a plain
integer instead of a more suitable long. Be pedantic and add integer
typechecking to the lookup so that we can be sure that we are safe.
And it also uses pgoff_t as our page lookups must remain compatible with
the page cache, pgoff_t is currently exactly unsigned long.

v2: Move added i915_utils's macro into drm_util header (Jani N)
v3: Make not use the same macro name on a function. (Mauro)
    For kernel-doc, macros and functions are handled in the same namespace,
    the same macro name on a function prevents ever adding documentation
    for it.
v4: Add kernel-doc markups to the kAPI functions and macros (Mauoro)
v5: Fix an alignment to match open parenthesis

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |   7 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.h    | 293 ++++++++++++++++--
 drivers/gpu/drm/i915/gem/i915_gem_pages.c     |  27 +-
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c       |   2 +-
 .../drm/i915/gem/selftests/i915_gem_context.c |  12 +-
 .../drm/i915/gem/selftests/i915_gem_mman.c    |   8 +-
 .../drm/i915/gem/selftests/i915_gem_object.c  |   8 +-
 drivers/gpu/drm/i915/i915_gem.c               |  18 +-
 drivers/gpu/drm/i915/i915_vma.c               |   8 +-
 9 files changed, 322 insertions(+), 61 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index ccec4055fde3..90996fe8ad45 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -421,10 +421,11 @@ void __i915_gem_object_invalidate_frontbuffer(struct drm_i915_gem_object *obj,
 static void
 i915_gem_object_read_from_page_kmap(struct drm_i915_gem_object *obj, u64 offset, void *dst, int size)
 {
+	pgoff_t idx = offset >> PAGE_SHIFT;
 	void *src_map;
 	void *src_ptr;
 
-	src_map = kmap_atomic(i915_gem_object_get_page(obj, offset >> PAGE_SHIFT));
+	src_map = kmap_atomic(i915_gem_object_get_page(obj, idx));
 
 	src_ptr = src_map + offset_in_page(offset);
 	if (!(obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_READ))
@@ -437,9 +438,10 @@ i915_gem_object_read_from_page_kmap(struct drm_i915_gem_object *obj, u64 offset,
 static void
 i915_gem_object_read_from_page_iomap(struct drm_i915_gem_object *obj, u64 offset, void *dst, int size)
 {
+	pgoff_t idx = offset >> PAGE_SHIFT;
+	dma_addr_t dma = i915_gem_object_get_dma_address(obj, idx);
 	void __iomem *src_map;
 	void __iomem *src_ptr;
-	dma_addr_t dma = i915_gem_object_get_dma_address(obj, offset >> PAGE_SHIFT);
 
 	src_map = io_mapping_map_wc(&obj->mm.region->iomap,
 				    dma - obj->mm.region->region.start,
@@ -468,6 +470,7 @@ i915_gem_object_read_from_page_iomap(struct drm_i915_gem_object *obj, u64 offset
  */
 int i915_gem_object_read_from_page(struct drm_i915_gem_object *obj, u64 offset, void *dst, int size)
 {
+	GEM_BUG_ON(overflows_type(offset >> PAGE_SHIFT, pgoff_t));
 	GEM_BUG_ON(offset >= obj->base.size);
 	GEM_BUG_ON(offset_in_page(offset) > PAGE_SIZE - size);
 	GEM_BUG_ON(!i915_gem_object_has_pinned_pages(obj));
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 6f0a3ce35567..5da872afc4ba 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -27,8 +27,10 @@ enum intel_region_id;
  * spot such a local variable, please consider fixing!
  *
  * Aside from our own locals (for which we have no excuse!):
- * - sg_table embeds unsigned int for num_pages
- * - get_user_pages*() mixed ints with longs
+ * - sg_table embeds unsigned int for nents
+ *
+ * We can check for invalidly typed locals with typecheck(), see for example
+ * i915_gem_object_get_sg().
  */
 #define GEM_CHECK_SIZE_OVERFLOW(sz) \
 	GEM_WARN_ON((sz) >> PAGE_SHIFT > INT_MAX)
@@ -363,44 +365,289 @@ i915_gem_object_get_tile_row_size(const struct drm_i915_gem_object *obj)
 int i915_gem_object_set_tiling(struct drm_i915_gem_object *obj,
 			       unsigned int tiling, unsigned int stride);
 
+/**
+ * __i915_gem_object_page_iter_get_sg - helper to find the target scatterlist
+ * pointer and the target page position using pgoff_t n input argument and
+ * i915_gem_object_page_iter
+ * @obj: i915 GEM buffer object
+ * @iter: i915 GEM buffer object page iterator
+ * @n: page offset
+ * @offset: searched physical offset,
+ *          it will be used for returning physical page offset value
+ *
+ * Context: Takes and releases the mutex lock of the i915_gem_object_page_iter.
+ *          Takes and releases the RCU lock to search the radix_tree of
+ *          i915_gem_object_page_iter.
+ *
+ * Returns:
+ * The target scatterlist pointer and the target page position.
+ *
+ * Recommended to use wrapper macro: i915_gem_object_page_iter_get_sg()
+ */
 struct scatterlist *
-__i915_gem_object_get_sg(struct drm_i915_gem_object *obj,
-			 struct i915_gem_object_page_iter *iter,
-			 unsigned int n,
-			 unsigned int *offset, bool dma);
+__i915_gem_object_page_iter_get_sg(struct drm_i915_gem_object *obj,
+				   struct i915_gem_object_page_iter *iter,
+				   pgoff_t  n,
+				   unsigned int *offset);
 
+/**
+ * i915_gem_object_page_iter_get_sg - wrapper macro for
+ * __i915_gem_object_page_iter_get_sg()
+ * @obj: i915 GEM buffer object
+ * @it: i915 GEM buffer object page iterator
+ * @n: page offset
+ * @offset: searched physical offset,
+ *          it will be used for returning physical page offset value
+ *
+ * Context: Takes and releases the mutex lock of the i915_gem_object_page_iter.
+ *          Takes and releases the RCU lock to search the radix_tree of
+ *          i915_gem_object_page_iter.
+ *
+ * Returns:
+ * The target scatterlist pointer and the target page position.
+ *
+ * In order to avoid the truncation of the input parameter, it checks the page
+ * offset n's type from the input parameter before calling
+ * __i915_gem_object_page_iter_get_sg().
+ */
+#define i915_gem_object_page_iter_get_sg(obj, it, n, offset) ({ \
+	exactly_pgoff_t(n); \
+	__i915_gem_object_page_iter_get_sg(obj, it, n, offset); \
+})
+
+/**
+ * __i915_gem_object_get_sg - helper to find the target scatterlist
+ * pointer and the target page position using pgoff_t n input argument and
+ * drm_i915_gem_object. It uses an internal shmem scatterlist lookup function.
+ * @obj: i915 GEM buffer object
+ * @n: page offset
+ * @offset: searched physical offset,
+ *          it will be used for returning physical page offset value
+ *
+ * It uses drm_i915_gem_object's internal shmem scatterlist lookup function as
+ * i915_gem_object_page_iter and calls __i915_gem_object_page_iter_get_sg().
+ *
+ * Returns:
+ * The target scatterlist pointer and the target page position.
+ *
+ * Recommended to use wrapper macro: i915_gem_object_get_sg()
+ * See also __i915_gem_object_page_iter_get_sg()
+ */
 static inline struct scatterlist *
-i915_gem_object_get_sg(struct drm_i915_gem_object *obj,
-		       unsigned int n,
-		       unsigned int *offset)
+__i915_gem_object_get_sg(struct drm_i915_gem_object *obj, pgoff_t n,
+			 unsigned int *offset)
 {
-	return __i915_gem_object_get_sg(obj, &obj->mm.get_page, n, offset, false);
+	return __i915_gem_object_page_iter_get_sg(obj, &obj->mm.get_page, n, offset);
 }
 
+/**
+ * i915_gem_object_get_sg - wrapper macro for __i915_gem_object_get_sg()
+ * @obj: i915 GEM buffer object
+ * @n: page offset
+ * @offset: searched physical offset,
+ *          it will be used for returning physical page offset value
+ *
+ * Returns:
+ * The target scatterlist pointer and the target page position.
+ *
+ * In order to avoid the truncation of the input parameter, it checks the page
+ * offset n's type from the input parameter before calling
+ * __i915_gem_object_get_sg().
+ * See also __i915_gem_object_page_iter_get_sg()
+ */
+#define i915_gem_object_get_sg(obj, n, offset) ({ \
+	exactly_pgoff_t(n); \
+	__i915_gem_object_get_sg(obj, n, offset); \
+})
+
+/**
+ * __i915_gem_object_get_sg_dma - helper to find the target scatterlist
+ * pointer and the target page position using pgoff_t n input argument and
+ * drm_i915_gem_object. It uses an internal DMA mapped scatterlist lookup function
+ * @obj: i915 GEM buffer object
+ * @n: page offset
+ * @offset: searched physical offset,
+ *          it will be used for returning physical page offset value
+ *
+ * It uses drm_i915_gem_object's internal DMA mapped scatterlist lookup function
+ * as i915_gem_object_page_iter and calls __i915_gem_object_page_iter_get_sg().
+ *
+ * Returns:
+ * The target scatterlist pointer and the target page position.
+ *
+ * Recommended to use wrapper macro: i915_gem_object_get_sg_dma()
+ * See also __i915_gem_object_page_iter_get_sg()
+ */
 static inline struct scatterlist *
-i915_gem_object_get_sg_dma(struct drm_i915_gem_object *obj,
-			   unsigned int n,
-			   unsigned int *offset)
+__i915_gem_object_get_sg_dma(struct drm_i915_gem_object *obj, pgoff_t n,
+			     unsigned int *offset)
 {
-	return __i915_gem_object_get_sg(obj, &obj->mm.get_dma_page, n, offset, true);
+	return __i915_gem_object_page_iter_get_sg(obj, &obj->mm.get_dma_page, n, offset);
 }
 
+/**
+ * i915_gem_object_get_sg_dma - wrapper macro for __i915_gem_object_get_sg_dma()
+ * @obj: i915 GEM buffer object
+ * @n: page offset
+ * @offset: searched physical offset,
+ *          it will be used for returning physical page offset value
+ *
+ * Returns:
+ * The target scatterlist pointer and the target page position.
+ *
+ * In order to avoid the truncation of the input parameter, it checks the page
+ * offset n's type from the input parameter before calling
+ * __i915_gem_object_get_sg_dma().
+ * See also __i915_gem_object_page_iter_get_sg()
+ */
+#define i915_gem_object_get_sg_dma(obj, n, offset) ({ \
+	exactly_pgoff_t(n); \
+	__i915_gem_object_get_sg_dma(obj, n, offset); \
+})
+
+/**
+ * __i915_gem_object_get_page - helper to find the target page with a page offset
+ * @obj: i915 GEM buffer object
+ * @n: page offset
+ *
+ * It uses drm_i915_gem_object's internal shmem scatterlist lookup function as
+ * i915_gem_object_page_iter and calls __i915_gem_object_page_iter_get_sg()
+ * internally.
+ *
+ * Returns:
+ * The target page pointer.
+ *
+ * Recommended to use wrapper macro: i915_gem_object_get_page()
+ * See also __i915_gem_object_page_iter_get_sg()
+ */
 struct page *
-i915_gem_object_get_page(struct drm_i915_gem_object *obj,
-			 unsigned int n);
+__i915_gem_object_get_page(struct drm_i915_gem_object *obj, pgoff_t n);
 
+/**
+ * i915_gem_object_get_page - wrapper macro for __i915_gem_object_get_page
+ * @obj: i915 GEM buffer object
+ * @n: page offset
+ *
+ * Returns:
+ * The target page pointer.
+ *
+ * In order to avoid the truncation of the input parameter, it checks the page
+ * offset n's type from the input parameter before calling
+ * __i915_gem_object_get_page().
+ * See also __i915_gem_object_page_iter_get_sg()
+ */
+#define i915_gem_object_get_page(obj, n) ({ \
+	exactly_pgoff_t(n); \
+	__i915_gem_object_get_page(obj, n); \
+})
+
+/**
+ * __i915_gem_object_get_dirty_page - helper to find the target page with a page
+ * offset
+ * @obj: i915 GEM buffer object
+ * @n: page offset
+ *
+ * It works like i915_gem_object_get_page(), but it marks the returned page dirty.
+ *
+ * Returns:
+ * The target page pointer.
+ *
+ * Recommended to use wrapper macro: i915_gem_object_get_dirty_page()
+ * See also __i915_gem_object_page_iter_get_sg() and __i915_gem_object_get_page()
+ */
 struct page *
-i915_gem_object_get_dirty_page(struct drm_i915_gem_object *obj,
-			       unsigned int n);
+__i915_gem_object_get_dirty_page(struct drm_i915_gem_object *obj, pgoff_t n);
+
+/**
+ * i915_gem_object_get_dirty_page - wrapper macro for __i915_gem_object_get_dirty_page
+ * @obj: i915 GEM buffer object
+ * @n: page offset
+ *
+ * Returns:
+ * The target page pointer.
+ *
+ * In order to avoid the truncation of the input parameter, it checks the page
+ * offset n's type from the input parameter before calling
+ * __i915_gem_object_get_dirty_page().
+ * See also __i915_gem_object_page_iter_get_sg() and __i915_gem_object_get_page()
+ */
+#define i915_gem_object_get_dirty_page(obj, n) ({ \
+	exactly_pgoff_t(n); \
+	__i915_gem_object_get_dirty_page(obj, n); \
+})
 
+/**
+ * __i915_gem_object_get_dma_address_len - helper to get bus addresses of
+ * targeted DMA mapped scatterlist from i915 GEM buffer object and it's length
+ * @obj: i915 GEM buffer object
+ * @n: page offset
+ * @len: DMA mapped scatterlist's DMA bus addresses length to return
+ *
+ * Returns:
+ * Bus addresses of targeted DMA mapped scatterlist
+ *
+ * Recommended to use wrapper macro: i915_gem_object_get_dma_address_len()
+ * See also __i915_gem_object_page_iter_get_sg() and __i915_gem_object_get_sg_dma()
+ */
 dma_addr_t
-i915_gem_object_get_dma_address_len(struct drm_i915_gem_object *obj,
-				    unsigned long n,
-				    unsigned int *len);
+__i915_gem_object_get_dma_address_len(struct drm_i915_gem_object *obj, pgoff_t n,
+				      unsigned int *len);
 
+/**
+ * i915_gem_object_get_dma_address_len - wrapper macro for
+ * __i915_gem_object_get_dma_address_len
+ * @obj: i915 GEM buffer object
+ * @n: page offset
+ * @len: DMA mapped scatterlist's DMA bus addresses length to return
+ *
+ * Returns:
+ * Bus addresses of targeted DMA mapped scatterlist
+ *
+ * In order to avoid the truncation of the input parameter, it checks the page
+ * offset n's type from the input parameter before calling
+ * __i915_gem_object_get_dma_address_len().
+ * See also __i915_gem_object_page_iter_get_sg() and
+ * __i915_gem_object_get_dma_address_len()
+ */
+#define i915_gem_object_get_dma_address_len(obj, n, len) ({ \
+	exactly_pgoff_t(n); \
+	__i915_gem_object_get_dma_address_len(obj, n, len); \
+})
+
+/**
+ * __i915_gem_object_get_dma_address - helper to get bus addresses of
+ * targeted DMA mapped scatterlist from i915 GEM buffer object
+ * @obj: i915 GEM buffer object
+ * @n: page offset
+ *
+ * Returns:
+ * Bus addresses of targeted DMA mapped scatterlis
+ *
+ * Recommended to use wrapper macro: i915_gem_object_get_dma_address()
+ * See also __i915_gem_object_page_iter_get_sg() and __i915_gem_object_get_sg_dma()
+ */
 dma_addr_t
-i915_gem_object_get_dma_address(struct drm_i915_gem_object *obj,
-				unsigned long n);
+__i915_gem_object_get_dma_address(struct drm_i915_gem_object *obj, pgoff_t n);
+
+/**
+ * i915_gem_object_get_dma_address - wrapper macro for
+ * __i915_gem_object_get_dma_address
+ * @obj: i915 GEM buffer object
+ * @n: page offset
+ *
+ * Returns:
+ * Bus addresses of targeted DMA mapped scatterlist
+ *
+ * In order to avoid the truncation of the input parameter, it checks the page
+ * offset n's type from the input parameter before calling
+ * __i915_gem_object_get_dma_address().
+ * See also __i915_gem_object_page_iter_get_sg() and
+ * __i915_gem_object_get_dma_address()
+ */
+#define i915_gem_object_get_dma_address(obj, n) ({ \
+	exactly_pgoff_t(n); \
+	__i915_gem_object_get_dma_address(obj, n); \
+})
 
 void __i915_gem_object_set_pages(struct drm_i915_gem_object *obj,
 				 struct sg_table *pages,
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index 97c820eee115..f994573cdcb1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -503,14 +503,16 @@ void __i915_gem_object_release_map(struct drm_i915_gem_object *obj)
 }
 
 struct scatterlist *
-__i915_gem_object_get_sg(struct drm_i915_gem_object *obj,
-			 struct i915_gem_object_page_iter *iter,
-			 unsigned int n,
-			 unsigned int *offset,
-			 bool dma)
+__i915_gem_object_page_iter_get_sg(struct drm_i915_gem_object *obj,
+				   struct i915_gem_object_page_iter *iter,
+				   pgoff_t n,
+				   unsigned int *offset)
+
 {
-	struct scatterlist *sg;
+	const bool dma = iter == &obj->mm.get_dma_page ||
+			 iter == &obj->ttm.get_io_page;
 	unsigned int idx, count;
+	struct scatterlist *sg;
 
 	might_sleep();
 	GEM_BUG_ON(n >= obj->base.size >> PAGE_SHIFT);
@@ -618,7 +620,7 @@ __i915_gem_object_get_sg(struct drm_i915_gem_object *obj,
 }
 
 struct page *
-i915_gem_object_get_page(struct drm_i915_gem_object *obj, unsigned int n)
+__i915_gem_object_get_page(struct drm_i915_gem_object *obj, pgoff_t n)
 {
 	struct scatterlist *sg;
 	unsigned int offset;
@@ -631,8 +633,7 @@ i915_gem_object_get_page(struct drm_i915_gem_object *obj, unsigned int n)
 
 /* Like i915_gem_object_get_page(), but mark the returned page dirty */
 struct page *
-i915_gem_object_get_dirty_page(struct drm_i915_gem_object *obj,
-			       unsigned int n)
+__i915_gem_object_get_dirty_page(struct drm_i915_gem_object *obj, pgoff_t n)
 {
 	struct page *page;
 
@@ -644,9 +645,8 @@ i915_gem_object_get_dirty_page(struct drm_i915_gem_object *obj,
 }
 
 dma_addr_t
-i915_gem_object_get_dma_address_len(struct drm_i915_gem_object *obj,
-				    unsigned long n,
-				    unsigned int *len)
+__i915_gem_object_get_dma_address_len(struct drm_i915_gem_object *obj,
+				      pgoff_t n, unsigned int *len)
 {
 	struct scatterlist *sg;
 	unsigned int offset;
@@ -660,8 +660,7 @@ i915_gem_object_get_dma_address_len(struct drm_i915_gem_object *obj,
 }
 
 dma_addr_t
-i915_gem_object_get_dma_address(struct drm_i915_gem_object *obj,
-				unsigned long n)
+__i915_gem_object_get_dma_address(struct drm_i915_gem_object *obj, pgoff_t n)
 {
 	return i915_gem_object_get_dma_address_len(obj, n, NULL);
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 5a5cf332d8a5..52c4c1fac7f9 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -724,7 +724,7 @@ static unsigned long i915_ttm_io_mem_pfn(struct ttm_buffer_object *bo,
 	GEM_WARN_ON(bo->ttm);
 
 	base = obj->mm.region->iomap.base - obj->mm.region->region.start;
-	sg = __i915_gem_object_get_sg(obj, &obj->ttm.get_io_page, page_offset, &ofs, true);
+	sg = i915_gem_object_page_iter_get_sg(obj, &obj->ttm.get_io_page, page_offset, &ofs);
 
 	return ((base + sg_dma_address(sg)) >> PAGE_SHIFT) + ofs;
 }
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index c6ad67b90e8a..a18a890e681f 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -455,7 +455,8 @@ static int gpu_fill(struct intel_context *ce,
 static int cpu_fill(struct drm_i915_gem_object *obj, u32 value)
 {
 	const bool has_llc = HAS_LLC(to_i915(obj->base.dev));
-	unsigned int n, m, need_flush;
+	unsigned int need_flush;
+	unsigned long n, m;
 	int err;
 
 	i915_gem_object_lock(obj, NULL);
@@ -485,7 +486,8 @@ static int cpu_fill(struct drm_i915_gem_object *obj, u32 value)
 static noinline int cpu_check(struct drm_i915_gem_object *obj,
 			      unsigned int idx, unsigned int max)
 {
-	unsigned int n, m, needs_flush;
+	unsigned int needs_flush;
+	unsigned long n;
 	int err;
 
 	i915_gem_object_lock(obj, NULL);
@@ -494,7 +496,7 @@ static noinline int cpu_check(struct drm_i915_gem_object *obj,
 		goto out_unlock;
 
 	for (n = 0; n < real_page_count(obj); n++) {
-		u32 *map;
+		u32 *map, m;
 
 		map = kmap_atomic(i915_gem_object_get_page(obj, n));
 		if (needs_flush & CLFLUSH_BEFORE)
@@ -502,7 +504,7 @@ static noinline int cpu_check(struct drm_i915_gem_object *obj,
 
 		for (m = 0; m < max; m++) {
 			if (map[m] != m) {
-				pr_err("%pS: Invalid value at object %d page %d/%ld, offset %d/%d: found %x expected %x\n",
+				pr_err("%pS: Invalid value at object %d page %ld/%ld, offset %d/%d: found %x expected %x\n",
 				       __builtin_return_address(0), idx,
 				       n, real_page_count(obj), m, max,
 				       map[m], m);
@@ -513,7 +515,7 @@ static noinline int cpu_check(struct drm_i915_gem_object *obj,
 
 		for (; m < DW_PER_PAGE; m++) {
 			if (map[m] != STACK_MAGIC) {
-				pr_err("%pS: Invalid value at object %d page %d, offset %d: found %x expected %x (uninitialised)\n",
+				pr_err("%pS: Invalid value at object %d page %ld, offset %d: found %x expected %x (uninitialised)\n",
 				       __builtin_return_address(0), idx, n, m,
 				       map[m], STACK_MAGIC);
 				err = -EINVAL;
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 3ced9948a331..86e435d42546 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -95,11 +95,11 @@ static int check_partial_mapping(struct drm_i915_gem_object *obj,
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	struct i915_ggtt_view view;
 	struct i915_vma *vma;
+	unsigned long offset;
 	unsigned long page;
 	u32 __iomem *io;
 	struct page *p;
 	unsigned int n;
-	u64 offset;
 	u32 *cpu;
 	int err;
 
@@ -156,7 +156,7 @@ static int check_partial_mapping(struct drm_i915_gem_object *obj,
 	cpu = kmap(p) + offset_in_page(offset);
 	drm_clflush_virt_range(cpu, sizeof(*cpu));
 	if (*cpu != (u32)page) {
-		pr_err("Partial view for %lu [%u] (offset=%llu, size=%u [%llu, row size %u], fence=%d, tiling=%d, stride=%d) misalignment, expected write to page (%llu + %u [0x%llx]) of 0x%x, found 0x%x\n",
+		pr_err("Partial view for %lu [%u] (offset=%llu, size=%u [%llu, row size %u], fence=%d, tiling=%d, stride=%d) misalignment, expected write to page (%lu + %u [0x%lx]) of 0x%x, found 0x%x\n",
 		       page, n,
 		       view.partial.offset,
 		       view.partial.size,
@@ -212,10 +212,10 @@ static int check_partial_mappings(struct drm_i915_gem_object *obj,
 	for_each_prime_number_from(page, 1, npages) {
 		struct i915_ggtt_view view =
 			compute_partial_view(obj, page, MIN_CHUNK_PAGES);
+		unsigned long offset;
 		u32 __iomem *io;
 		struct page *p;
 		unsigned int n;
-		u64 offset;
 		u32 *cpu;
 
 		GEM_BUG_ON(view.partial.size > nreal);
@@ -252,7 +252,7 @@ static int check_partial_mappings(struct drm_i915_gem_object *obj,
 		cpu = kmap(p) + offset_in_page(offset);
 		drm_clflush_virt_range(cpu, sizeof(*cpu));
 		if (*cpu != (u32)page) {
-			pr_err("Partial view for %lu [%u] (offset=%llu, size=%u [%llu, row size %u], fence=%d, tiling=%d, stride=%d) misalignment, expected write to page (%llu + %u [0x%llx]) of 0x%x, found 0x%x\n",
+			pr_err("Partial view for %lu [%u] (offset=%llu, size=%u [%llu, row size %u], fence=%d, tiling=%d, stride=%d) misalignment, expected write to page (%lu + %u [0x%lx]) of 0x%x, found 0x%x\n",
 			       page, n,
 			       view.partial.offset,
 			       view.partial.size,
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_object.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_object.c
index fe0a890775e2..bf30763ee6bc 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_object.c
@@ -33,10 +33,10 @@ static int igt_gem_object(void *arg)
 
 static int igt_gem_huge(void *arg)
 {
-	const unsigned int nreal = 509; /* just to be awkward */
+	const unsigned long nreal = 509; /* just to be awkward */
 	struct drm_i915_private *i915 = arg;
 	struct drm_i915_gem_object *obj;
-	unsigned int n;
+	unsigned long n;
 	int err;
 
 	/* Basic sanitycheck of our huge fake object allocation */
@@ -49,7 +49,7 @@ static int igt_gem_huge(void *arg)
 
 	err = i915_gem_object_pin_pages_unlocked(obj);
 	if (err) {
-		pr_err("Failed to allocate %u pages (%lu total), err=%d\n",
+		pr_err("Failed to allocate %lu pages (%lu total), err=%d\n",
 		       nreal, obj->base.size / PAGE_SIZE, err);
 		goto out;
 	}
@@ -57,7 +57,7 @@ static int igt_gem_huge(void *arg)
 	for (n = 0; n < obj->base.size / PAGE_SIZE; n++) {
 		if (i915_gem_object_get_page(obj, n) !=
 		    i915_gem_object_get_page(obj, n % nreal)) {
-			pr_err("Page lookup mismatch at index %u [%u]\n",
+			pr_err("Page lookup mismatch at index %lu [%lu]\n",
 			       n, n % nreal);
 			err = -EINVAL;
 			goto out_unpin;
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 702e5b89be22..dba58a3c3238 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -229,8 +229,9 @@ i915_gem_shmem_pread(struct drm_i915_gem_object *obj,
 		     struct drm_i915_gem_pread *args)
 {
 	unsigned int needs_clflush;
-	unsigned int idx, offset;
 	char __user *user_data;
+	unsigned long offset;
+	pgoff_t idx;
 	u64 remain;
 	int ret;
 
@@ -383,13 +384,17 @@ i915_gem_gtt_pread(struct drm_i915_gem_object *obj,
 {
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	struct i915_ggtt *ggtt = to_gt(i915)->ggtt;
+	unsigned long remain, offset;
 	intel_wakeref_t wakeref;
 	struct drm_mm_node node;
 	void __user *user_data;
 	struct i915_vma *vma;
-	u64 remain, offset;
 	int ret = 0;
 
+	if (overflows_type(args->size, remain) ||
+	    overflows_type(args->offset, offset))
+		return -EINVAL;
+
 	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 
 	vma = i915_gem_gtt_prepare(obj, &node, false);
@@ -540,13 +545,17 @@ i915_gem_gtt_pwrite_fast(struct drm_i915_gem_object *obj,
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	struct i915_ggtt *ggtt = to_gt(i915)->ggtt;
 	struct intel_runtime_pm *rpm = &i915->runtime_pm;
+	unsigned long remain, offset;
 	intel_wakeref_t wakeref;
 	struct drm_mm_node node;
 	struct i915_vma *vma;
-	u64 remain, offset;
 	void __user *user_data;
 	int ret = 0;
 
+	if (overflows_type(args->size, remain) ||
+	    overflows_type(args->offset, offset))
+		return -EINVAL;
+
 	if (i915_gem_object_has_struct_page(obj)) {
 		/*
 		 * Avoid waking the device up if we can fallback, as
@@ -654,8 +663,9 @@ i915_gem_shmem_pwrite(struct drm_i915_gem_object *obj,
 {
 	unsigned int partial_cacheline_write;
 	unsigned int needs_clflush;
-	unsigned int offset, idx;
 	void __user *user_data;
+	unsigned long offset;
+	pgoff_t idx;
 	u64 remain;
 	int ret;
 
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index ef3b04c7e153..28443c77b45a 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -911,7 +911,7 @@ rotate_pages(struct drm_i915_gem_object *obj, unsigned int offset,
 	     struct sg_table *st, struct scatterlist *sg)
 {
 	unsigned int column, row;
-	unsigned int src_idx;
+	pgoff_t src_idx;
 
 	for (column = 0; column < width; column++) {
 		unsigned int left;
@@ -1017,7 +1017,7 @@ add_padding_pages(unsigned int count,
 
 static struct scatterlist *
 remap_tiled_color_plane_pages(struct drm_i915_gem_object *obj,
-			      unsigned int offset, unsigned int alignment_pad,
+			      unsigned long offset, unsigned int alignment_pad,
 			      unsigned int width, unsigned int height,
 			      unsigned int src_stride, unsigned int dst_stride,
 			      struct sg_table *st, struct scatterlist *sg,
@@ -1076,7 +1076,7 @@ remap_tiled_color_plane_pages(struct drm_i915_gem_object *obj,
 
 static struct scatterlist *
 remap_contiguous_pages(struct drm_i915_gem_object *obj,
-		       unsigned int obj_offset,
+		       pgoff_t obj_offset,
 		       unsigned int count,
 		       struct sg_table *st, struct scatterlist *sg)
 {
@@ -1109,7 +1109,7 @@ remap_contiguous_pages(struct drm_i915_gem_object *obj,
 
 static struct scatterlist *
 remap_linear_color_plane_pages(struct drm_i915_gem_object *obj,
-			       unsigned int obj_offset, unsigned int alignment_pad,
+			       pgoff_t obj_offset, unsigned int alignment_pad,
 			       unsigned int size,
 			       struct sg_table *st, struct scatterlist *sg,
 			       unsigned int *gtt_offset)
-- 
2.34.1

