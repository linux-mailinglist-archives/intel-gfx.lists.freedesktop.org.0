Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC510658659
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Dec 2022 20:23:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE9FD10E3EE;
	Wed, 28 Dec 2022 19:23:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81B5B10E3EC
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Dec 2022 19:23:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672255429; x=1703791429;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yAB9tcF9XyZqrRbuMAd6LeMtGgAJEP0B9eL95vWJYAg=;
 b=Rvab3WJYOnLY3F4iyyifN5R2CDWmLWC6vtkexJdj9w3s4rF8rkCN0tPc
 FcAIjMrI0GXesebdmsNf41pa17I8Yd8U2O0ZXHTFPlp3lgPqIwp1dLpnp
 DrqfFyKBguYtOyyZ+HO7PEdokBtW4u0dqyo7LIblcFMAKzb7l19qHPFIu
 x8jLNrQJHNyAtwWfVZiwNiNIKeINoXDL73fxFhkNAQEeihvDKOGkDvqiB
 sDCtKdNeVw0OIfcOeCCgDrbNP5ya2pzj49SGbLOxL56Jlj9h/pS7Tq0x8
 I979/NDRgZCRYgfc6+6mZii9+X12zavc/3UyTaRj5xz90N16fd86CIxDw g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10574"; a="318602682"
X-IronPort-AV: E=Sophos;i="5.96,281,1665471600"; d="scan'208";a="318602682"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2022 11:23:49 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10574"; a="683999621"
X-IronPort-AV: E=Sophos;i="5.96,281,1665471600"; d="scan'208";a="683999621"
Received: from rsznejde-mobl.ger.corp.intel.com (HELO
 paris.ger.corp.intel.com) ([10.249.140.251])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2022 11:23:44 -0800
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Dec 2022 21:22:47 +0200
Message-Id: <20221228192252.917299-2-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20221228192252.917299-1-gwan-gyeong.mun@intel.com>
References: <20221228192252.917299-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v16 1/6] drm/i915/gem: Typecheck page lookups
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
Cc: thomas.hellstrom@linux.intel.com, andrzej.hajda@intel.com,
 jani.nikula@intel.com, chris@chris-wilson.co.uk, matthew.auld@intel.com,
 mchehab@kernel.org, nirmoy.das@intel.com
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
v6: Rebase
v10: Use assert_typable instead of exactly_pgoff_t() macro. (Kees)
v11: Change the use of assert_typable to assert_same_typable (G.G)
v12: Change to use static_assert(__castable_to_type(n ,T)) style since
     the assert_same_typable() macro has been dropped. (G.G)
v13: Change the use of __castable_to_type() to castable_to_type()
     Remove an unnecessary header include line. (G.G)
v16: Fix "ERROR:SPACING" Checkpatch report (G.G)

Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Kees Cook <keescook@chromium.org>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Co-developed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com> (v2)
Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org> (v3)
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com> (v5)
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
index 1a0886b8aaa1..e6d4efde4fc5 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -427,10 +427,11 @@ void __i915_gem_object_invalidate_frontbuffer(struct drm_i915_gem_object *obj,
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
@@ -443,9 +444,10 @@ i915_gem_object_read_from_page_kmap(struct drm_i915_gem_object *obj, u64 offset,
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
@@ -484,6 +486,7 @@ static bool object_has_mappable_iomem(struct drm_i915_gem_object *obj)
  */
 int i915_gem_object_read_from_page(struct drm_i915_gem_object *obj, u64 offset, void *dst, int size)
 {
+	GEM_BUG_ON(overflows_type(offset >> PAGE_SHIFT, pgoff_t));
 	GEM_BUG_ON(offset >= obj->base.size);
 	GEM_BUG_ON(offset_in_page(offset) > PAGE_SIZE - size);
 	GEM_BUG_ON(!i915_gem_object_has_pinned_pages(obj));
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 3db53769864c..f7b562e255a5 100644
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
+#define i915_gem_object_page_iter_get_sg(obj, it, n, offset) ({	\
+	static_assert(castable_to_type(n, pgoff_t));		\
+	__i915_gem_object_page_iter_get_sg(obj, it, n, offset);	\
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
+#define i915_gem_object_get_sg(obj, n, offset) ({	\
+	static_assert(castable_to_type(n, pgoff_t));	\
+	__i915_gem_object_get_sg(obj, n, offset);	\
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
+#define i915_gem_object_get_sg_dma(obj, n, offset) ({	\
+	static_assert(castable_to_type(n, pgoff_t));	\
+	__i915_gem_object_get_sg_dma(obj, n, offset);	\
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
+#define i915_gem_object_get_page(obj, n) ({		\
+	static_assert(castable_to_type(n, pgoff_t));	\
+	__i915_gem_object_get_page(obj, n);		\
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
+#define i915_gem_object_get_dirty_page(obj, n) ({	\
+	static_assert(castable_to_type(n, pgoff_t));	\
+	__i915_gem_object_get_dirty_page(obj, n);	\
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
+#define i915_gem_object_get_dma_address_len(obj, n, len) ({	\
+	static_assert(castable_to_type(n, pgoff_t));		\
+	__i915_gem_object_get_dma_address_len(obj, n, len);	\
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
+#define i915_gem_object_get_dma_address(obj, n) ({	\
+	static_assert(castable_to_type(n, pgoff_t));	\
+	__i915_gem_object_get_dma_address(obj, n);	\
+})
 
 void __i915_gem_object_set_pages(struct drm_i915_gem_object *obj,
 				 struct sg_table *pages);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index 05a27723ebb8..ecd86130b74f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -521,14 +521,16 @@ void __i915_gem_object_release_map(struct drm_i915_gem_object *obj)
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
@@ -636,7 +638,7 @@ __i915_gem_object_get_sg(struct drm_i915_gem_object *obj,
 }
 
 struct page *
-i915_gem_object_get_page(struct drm_i915_gem_object *obj, unsigned int n)
+__i915_gem_object_get_page(struct drm_i915_gem_object *obj, pgoff_t n)
 {
 	struct scatterlist *sg;
 	unsigned int offset;
@@ -649,8 +651,7 @@ i915_gem_object_get_page(struct drm_i915_gem_object *obj, unsigned int n)
 
 /* Like i915_gem_object_get_page(), but mark the returned page dirty */
 struct page *
-i915_gem_object_get_dirty_page(struct drm_i915_gem_object *obj,
-			       unsigned int n)
+__i915_gem_object_get_dirty_page(struct drm_i915_gem_object *obj, pgoff_t n)
 {
 	struct page *page;
 
@@ -662,9 +663,8 @@ i915_gem_object_get_dirty_page(struct drm_i915_gem_object *obj,
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
@@ -678,8 +678,7 @@ i915_gem_object_get_dma_address_len(struct drm_i915_gem_object *obj,
 }
 
 dma_addr_t
-i915_gem_object_get_dma_address(struct drm_i915_gem_object *obj,
-				unsigned long n)
+__i915_gem_object_get_dma_address(struct drm_i915_gem_object *obj, pgoff_t n)
 {
 	return i915_gem_object_get_dma_address_len(obj, n, NULL);
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index d409a77449a3..2b5fc98ae922 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -692,7 +692,7 @@ static unsigned long i915_ttm_io_mem_pfn(struct ttm_buffer_object *bo,
 	GEM_WARN_ON(bo->ttm);
 
 	base = obj->mm.region->iomap.base - obj->mm.region->region.start;
-	sg = __i915_gem_object_get_sg(obj, &obj->ttm.get_io_page, page_offset, &ofs, true);
+	sg = i915_gem_object_page_iter_get_sg(obj, &obj->ttm.get_io_page, page_offset, &ofs);
 
 	return ((base + sg_dma_address(sg)) >> PAGE_SHIFT) + ofs;
 }
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index ac02fb036592..414ee2cb70fc 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -469,7 +469,8 @@ static int gpu_fill(struct intel_context *ce,
 static int cpu_fill(struct drm_i915_gem_object *obj, u32 value)
 {
 	const bool has_llc = HAS_LLC(to_i915(obj->base.dev));
-	unsigned int n, m, need_flush;
+	unsigned int need_flush;
+	unsigned long n, m;
 	int err;
 
 	i915_gem_object_lock(obj, NULL);
@@ -499,7 +500,8 @@ static int cpu_fill(struct drm_i915_gem_object *obj, u32 value)
 static noinline int cpu_check(struct drm_i915_gem_object *obj,
 			      unsigned int idx, unsigned int max)
 {
-	unsigned int n, m, needs_flush;
+	unsigned int needs_flush;
+	unsigned long n;
 	int err;
 
 	i915_gem_object_lock(obj, NULL);
@@ -508,7 +510,7 @@ static noinline int cpu_check(struct drm_i915_gem_object *obj,
 		goto out_unlock;
 
 	for (n = 0; n < real_page_count(obj); n++) {
-		u32 *map;
+		u32 *map, m;
 
 		map = kmap_atomic(i915_gem_object_get_page(obj, n));
 		if (needs_flush & CLFLUSH_BEFORE)
@@ -516,7 +518,7 @@ static noinline int cpu_check(struct drm_i915_gem_object *obj,
 
 		for (m = 0; m < max; m++) {
 			if (map[m] != m) {
-				pr_err("%pS: Invalid value at object %d page %d/%ld, offset %d/%d: found %x expected %x\n",
+				pr_err("%pS: Invalid value at object %d page %ld/%ld, offset %d/%d: found %x expected %x\n",
 				       __builtin_return_address(0), idx,
 				       n, real_page_count(obj), m, max,
 				       map[m], m);
@@ -527,7 +529,7 @@ static noinline int cpu_check(struct drm_i915_gem_object *obj,
 
 		for (; m < DW_PER_PAGE; m++) {
 			if (map[m] != STACK_MAGIC) {
-				pr_err("%pS: Invalid value at object %d page %d, offset %d: found %x expected %x (uninitialised)\n",
+				pr_err("%pS: Invalid value at object %d page %ld, offset %d: found %x expected %x (uninitialised)\n",
 				       __builtin_return_address(0), idx, n, m,
 				       map[m], STACK_MAGIC);
 				err = -EINVAL;
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 7f6353827735..56279908ed30 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -97,11 +97,11 @@ static int check_partial_mapping(struct drm_i915_gem_object *obj,
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	struct i915_gtt_view view;
 	struct i915_vma *vma;
+	unsigned long offset;
 	unsigned long page;
 	u32 __iomem *io;
 	struct page *p;
 	unsigned int n;
-	u64 offset;
 	u32 *cpu;
 	int err;
 
@@ -158,7 +158,7 @@ static int check_partial_mapping(struct drm_i915_gem_object *obj,
 	cpu = kmap(p) + offset_in_page(offset);
 	drm_clflush_virt_range(cpu, sizeof(*cpu));
 	if (*cpu != (u32)page) {
-		pr_err("Partial view for %lu [%u] (offset=%llu, size=%u [%llu, row size %u], fence=%d, tiling=%d, stride=%d) misalignment, expected write to page (%llu + %u [0x%llx]) of 0x%x, found 0x%x\n",
+		pr_err("Partial view for %lu [%u] (offset=%llu, size=%u [%llu, row size %u], fence=%d, tiling=%d, stride=%d) misalignment, expected write to page (%lu + %u [0x%lx]) of 0x%x, found 0x%x\n",
 		       page, n,
 		       view.partial.offset,
 		       view.partial.size,
@@ -214,10 +214,10 @@ static int check_partial_mappings(struct drm_i915_gem_object *obj,
 	for_each_prime_number_from(page, 1, npages) {
 		struct i915_gtt_view view =
 			compute_partial_view(obj, page, MIN_CHUNK_PAGES);
+		unsigned long offset;
 		u32 __iomem *io;
 		struct page *p;
 		unsigned int n;
-		u64 offset;
 		u32 *cpu;
 
 		GEM_BUG_ON(view.partial.size > nreal);
@@ -254,7 +254,7 @@ static int check_partial_mappings(struct drm_i915_gem_object *obj,
 		cpu = kmap(p) + offset_in_page(offset);
 		drm_clflush_virt_range(cpu, sizeof(*cpu));
 		if (*cpu != (u32)page) {
-			pr_err("Partial view for %lu [%u] (offset=%llu, size=%u [%llu, row size %u], fence=%d, tiling=%d, stride=%d) misalignment, expected write to page (%llu + %u [0x%llx]) of 0x%x, found 0x%x\n",
+			pr_err("Partial view for %lu [%u] (offset=%llu, size=%u [%llu, row size %u], fence=%d, tiling=%d, stride=%d) misalignment, expected write to page (%lu + %u [0x%lx]) of 0x%x, found 0x%x\n",
 			       page, n,
 			       view.partial.offset,
 			       view.partial.size,
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_object.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_object.c
index bdf5bb40ccf1..19e374f68ff7 100644
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
index 969581e7106f..35950fa91406 100644
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
index 7d044888ac33..8b16f6e32efa 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -936,7 +936,7 @@ rotate_pages(struct drm_i915_gem_object *obj, unsigned int offset,
 	     struct sg_table *st, struct scatterlist *sg)
 {
 	unsigned int column, row;
-	unsigned int src_idx;
+	pgoff_t src_idx;
 
 	for (column = 0; column < width; column++) {
 		unsigned int left;
@@ -1042,7 +1042,7 @@ add_padding_pages(unsigned int count,
 
 static struct scatterlist *
 remap_tiled_color_plane_pages(struct drm_i915_gem_object *obj,
-			      unsigned int offset, unsigned int alignment_pad,
+			      unsigned long offset, unsigned int alignment_pad,
 			      unsigned int width, unsigned int height,
 			      unsigned int src_stride, unsigned int dst_stride,
 			      struct sg_table *st, struct scatterlist *sg,
@@ -1101,7 +1101,7 @@ remap_tiled_color_plane_pages(struct drm_i915_gem_object *obj,
 
 static struct scatterlist *
 remap_contiguous_pages(struct drm_i915_gem_object *obj,
-		       unsigned int obj_offset,
+		       pgoff_t obj_offset,
 		       unsigned int count,
 		       struct sg_table *st, struct scatterlist *sg)
 {
@@ -1134,7 +1134,7 @@ remap_contiguous_pages(struct drm_i915_gem_object *obj,
 
 static struct scatterlist *
 remap_linear_color_plane_pages(struct drm_i915_gem_object *obj,
-			       unsigned int obj_offset, unsigned int alignment_pad,
+			       pgoff_t obj_offset, unsigned int alignment_pad,
 			       unsigned int size,
 			       struct sg_table *st, struct scatterlist *sg,
 			       unsigned int *gtt_offset)
-- 
2.37.1

