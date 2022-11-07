Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2464761FBC5
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 18:46:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F17F410E52E;
	Mon,  7 Nov 2022 17:46:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D6B610E52E
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 17:46:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667843161; x=1699379161;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fbF82NPdarkh2jEA5OIh54FN2+rFNrWzjQ9pe2xgYxA=;
 b=ThEHW84pqgFk4UtGDjtNtP5wDI/IBift9Ovv7KvNd4/W4b54u8fc5chH
 S8rUe0aB5h7CFJNsXtMfsB+/uyUIdxG+C/14z3rYxyOo802TQS6+U+R68
 SzSM1MbJgcnTh14ivZ47BkNd7J2jeWUIObRGhN2ezU6MYx2SEr3jEeChZ
 VUvqcM9j1sEBOER2UktT8VzQcYz/3aYYHtjxEUyQ9G6X7kdx35yu5/7AH
 oosVBRAsCJbiqovt7EcqgGi2C9aNcDqSOjUdqIAvmftnOfQz8S5QQdW96
 PLTOGic1QNaVkUK3xQc6ohMBIp6RQB5LG6j9R5q6vt8M0+KpM8EM/Kcjs g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="311628426"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="311628426"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 09:34:45 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="741586854"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="741586854"
Received: from pmesquit-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.15.49])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 09:34:43 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 17:34:35 +0000
Message-Id: <20221107173435.68116-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: use i915_sg_dma_sizes() for all
 backends
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We rely on page_sizes.sg in setup_scratch_page() reporting the correct
value if the underlying sgl is not contiguous, however in
get_pages_internal() we are only looking at the layout of the created
pages when calculating the sg_page_sizes, and not the final sgl, which
could in theory be completely different. In such a situation we might
incorrectly think we have a 64K scratch page, when it is actually only
4K or similar split over multiple non-contiguous entries, which could
lead to broken behaviour when touching the scratch space within the
padding of a 64K GTT page-table. For most of the other backends we
already just call i915_sg_dma_sizes() on the final mapping, so rather
just move that into __i915_gem_object_set_pages() to avoid such issues
coming back to bite us later.

Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Stuart Summers <stuart.summers@intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c           |  4 +---
 drivers/gpu/drm/i915/gem/i915_gem_internal.c         |  5 +----
 drivers/gpu/drm/i915/gem/i915_gem_object.h           |  3 +--
 drivers/gpu/drm/i915/gem/i915_gem_pages.c            |  7 +++----
 drivers/gpu/drm/i915/gem/i915_gem_phys.c             |  9 +++------
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c            |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c           |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c              |  3 +--
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c          |  4 +---
 drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c |  2 +-
 drivers/gpu/drm/i915/gem/selftests/huge_pages.c      | 10 +++-------
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c        |  5 +----
 drivers/gpu/drm/i915/selftests/mock_region.c         |  2 +-
 13 files changed, 19 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
index ec6f7ae47783..1df74f7aa3dc 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
@@ -238,7 +238,6 @@ static int i915_gem_object_get_pages_dmabuf(struct drm_i915_gem_object *obj)
 {
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	struct sg_table *sgt;
-	unsigned int sg_page_sizes;
 
 	assert_object_held(obj);
 
@@ -262,8 +261,7 @@ static int i915_gem_object_get_pages_dmabuf(struct drm_i915_gem_object *obj)
 	    (!HAS_LLC(i915) && !IS_DG1(i915)))
 		wbinvd_on_all_cpus();
 
-	sg_page_sizes = i915_sg_dma_sizes(sgt->sgl);
-	__i915_gem_object_set_pages(obj, sgt, sg_page_sizes);
+	__i915_gem_object_set_pages(obj, sgt);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_internal.c b/drivers/gpu/drm/i915/gem/i915_gem_internal.c
index 629acb403a2c..f66bcefc09ec 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_internal.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_internal.c
@@ -35,7 +35,6 @@ static int i915_gem_object_get_pages_internal(struct drm_i915_gem_object *obj)
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	struct sg_table *st;
 	struct scatterlist *sg;
-	unsigned int sg_page_sizes;
 	unsigned int npages;
 	int max_order = MAX_ORDER;
 	unsigned int max_segment;
@@ -64,7 +63,6 @@ static int i915_gem_object_get_pages_internal(struct drm_i915_gem_object *obj)
 
 	sg = st->sgl;
 	st->nents = 0;
-	sg_page_sizes = 0;
 
 	do {
 		int order = min(fls(npages) - 1, max_order);
@@ -83,7 +81,6 @@ static int i915_gem_object_get_pages_internal(struct drm_i915_gem_object *obj)
 		} while (1);
 
 		sg_set_page(sg, page, PAGE_SIZE << order, 0);
-		sg_page_sizes |= PAGE_SIZE << order;
 		st->nents++;
 
 		npages -= 1 << order;
@@ -105,7 +102,7 @@ static int i915_gem_object_get_pages_internal(struct drm_i915_gem_object *obj)
 		goto err;
 	}
 
-	__i915_gem_object_set_pages(obj, st, sg_page_sizes);
+	__i915_gem_object_set_pages(obj, st);
 
 	return 0;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 6b9ecff42bb5..3db53769864c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -403,8 +403,7 @@ i915_gem_object_get_dma_address(struct drm_i915_gem_object *obj,
 				unsigned long n);
 
 void __i915_gem_object_set_pages(struct drm_i915_gem_object *obj,
-				 struct sg_table *pages,
-				 unsigned int sg_page_sizes);
+				 struct sg_table *pages);
 
 int ____i915_gem_object_get_pages(struct drm_i915_gem_object *obj);
 int __i915_gem_object_get_pages(struct drm_i915_gem_object *obj);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index 16f845663ff2..05a27723ebb8 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -16,8 +16,7 @@
 #include "i915_gem_mman.h"
 
 void __i915_gem_object_set_pages(struct drm_i915_gem_object *obj,
-				 struct sg_table *pages,
-				 unsigned int sg_page_sizes)
+				 struct sg_table *pages)
 {
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	unsigned long supported = RUNTIME_INFO(i915)->page_sizes;
@@ -45,8 +44,8 @@ void __i915_gem_object_set_pages(struct drm_i915_gem_object *obj,
 
 	obj->mm.pages = pages;
 
-	GEM_BUG_ON(!sg_page_sizes);
-	obj->mm.page_sizes.phys = sg_page_sizes;
+	obj->mm.page_sizes.phys = i915_sg_dma_sizes(pages->sgl);
+	GEM_BUG_ON(!obj->mm.page_sizes.phys);
 
 	/*
 	 * Calculate the supported page-sizes which fit into the given
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_phys.c b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
index 0d0e46dae559..68453572275b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_phys.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
@@ -79,7 +79,7 @@ static int i915_gem_object_get_pages_phys(struct drm_i915_gem_object *obj)
 
 	/* We're no longer struct page backed */
 	obj->mem_flags &= ~I915_BO_FLAG_STRUCT_PAGE;
-	__i915_gem_object_set_pages(obj, st, sg->length);
+	__i915_gem_object_set_pages(obj, st);
 
 	return 0;
 
@@ -209,11 +209,8 @@ static int i915_gem_object_shmem_to_phys(struct drm_i915_gem_object *obj)
 	return 0;
 
 err_xfer:
-	if (!IS_ERR_OR_NULL(pages)) {
-		unsigned int sg_page_sizes = i915_sg_dma_sizes(pages->sgl);
-
-		__i915_gem_object_set_pages(obj, pages, sg_page_sizes);
-	}
+	if (!IS_ERR_OR_NULL(pages))
+		__i915_gem_object_set_pages(obj, pages);
 	return err;
 }
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index 2f7804492cd5..9c759df700ca 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -247,7 +247,7 @@ static int shmem_get_pages(struct drm_i915_gem_object *obj)
 	if (i915_gem_object_can_bypass_llc(obj))
 		obj->cache_dirty = true;
 
-	__i915_gem_object_set_pages(obj, st, i915_sg_dma_sizes(st->sgl));
+	__i915_gem_object_set_pages(obj, st);
 
 	return 0;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 0c70711818ed..bc9521078807 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -628,7 +628,7 @@ static int i915_gem_object_get_pages_stolen(struct drm_i915_gem_object *obj)
 		   sg_dma_len(pages->sgl),
 		   POISON_INUSE);
 
-	__i915_gem_object_set_pages(obj, pages, obj->stolen->size);
+	__i915_gem_object_set_pages(obj, pages);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 25129af70f70..fb9ba712e63c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -815,8 +815,7 @@ static int __i915_ttm_get_pages(struct drm_i915_gem_object *obj,
 
 		GEM_BUG_ON(obj->mm.rsgt);
 		obj->mm.rsgt = rsgt;
-		__i915_gem_object_set_pages(obj, &rsgt->table,
-					    i915_sg_dma_sizes(rsgt->table.sgl));
+		__i915_gem_object_set_pages(obj, &rsgt->table);
 	}
 
 	GEM_BUG_ON(bo->ttm && ((obj->base.size >> PAGE_SHIFT) < bo->ttm->num_pages));
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index ca7a388ba2bf..9348b1804d53 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -131,7 +131,6 @@ static int i915_gem_userptr_get_pages(struct drm_i915_gem_object *obj)
 	const unsigned long num_pages = obj->base.size >> PAGE_SHIFT;
 	unsigned int max_segment = i915_sg_segment_size(obj->base.dev->dev);
 	struct sg_table *st;
-	unsigned int sg_page_sizes;
 	struct page **pvec;
 	int ret;
 
@@ -170,8 +169,7 @@ static int i915_gem_userptr_get_pages(struct drm_i915_gem_object *obj)
 	if (i915_gem_object_can_bypass_llc(obj))
 		obj->cache_dirty = true;
 
-	sg_page_sizes = i915_sg_dma_sizes(st->sgl);
-	__i915_gem_object_set_pages(obj, st, sg_page_sizes);
+	__i915_gem_object_set_pages(obj, st);
 
 	return 0;
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c b/drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c
index f963b8e1e37b..cbd9b624a788 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c
@@ -68,7 +68,7 @@ static int huge_get_pages(struct drm_i915_gem_object *obj)
 	if (i915_gem_gtt_prepare_pages(obj, pages))
 		goto err;
 
-	__i915_gem_object_set_pages(obj, pages, PAGE_SIZE);
+	__i915_gem_object_set_pages(obj, pages);
 
 	return 0;
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index 0cb99e75b0bc..beaf27e09e8a 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -136,7 +136,7 @@ static int get_huge_pages(struct drm_i915_gem_object *obj)
 		goto err;
 
 	GEM_BUG_ON(sg_page_sizes != obj->mm.page_mask);
-	__i915_gem_object_set_pages(obj, st, sg_page_sizes);
+	__i915_gem_object_set_pages(obj, st);
 
 	return 0;
 
@@ -210,7 +210,6 @@ static int fake_get_huge_pages(struct drm_i915_gem_object *obj)
 	const u64 max_len = rounddown_pow_of_two(UINT_MAX);
 	struct sg_table *st;
 	struct scatterlist *sg;
-	unsigned int sg_page_sizes;
 	u64 rem;
 
 	st = kmalloc(sizeof(*st), GFP);
@@ -226,7 +225,6 @@ static int fake_get_huge_pages(struct drm_i915_gem_object *obj)
 	rem = obj->base.size;
 	sg = st->sgl;
 	st->nents = 0;
-	sg_page_sizes = 0;
 	do {
 		unsigned int page_size = get_largest_page_size(i915, rem);
 		unsigned int len = min(page_size * div_u64(rem, page_size),
@@ -239,8 +237,6 @@ static int fake_get_huge_pages(struct drm_i915_gem_object *obj)
 		sg_dma_len(sg) = len;
 		sg_dma_address(sg) = page_size;
 
-		sg_page_sizes |= len;
-
 		st->nents++;
 
 		rem -= len;
@@ -254,7 +250,7 @@ static int fake_get_huge_pages(struct drm_i915_gem_object *obj)
 
 	i915_sg_trim(st);
 
-	__i915_gem_object_set_pages(obj, st, sg_page_sizes);
+	__i915_gem_object_set_pages(obj, st);
 
 	return 0;
 }
@@ -286,7 +282,7 @@ static int fake_get_huge_pages_single(struct drm_i915_gem_object *obj)
 	sg_dma_len(sg) = obj->base.size;
 	sg_dma_address(sg) = page_size;
 
-	__i915_gem_object_set_pages(obj, st, sg->length);
+	__i915_gem_object_set_pages(obj, st);
 
 	return 0;
 #undef GFP
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index 27c733b00976..eae7d947d7de 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -61,7 +61,6 @@ static int fake_get_pages(struct drm_i915_gem_object *obj)
 #define PFN_BIAS 0x1000
 	struct sg_table *pages;
 	struct scatterlist *sg;
-	unsigned int sg_page_sizes;
 	typeof(obj->base.size) rem;
 
 	pages = kmalloc(sizeof(*pages), GFP);
@@ -74,7 +73,6 @@ static int fake_get_pages(struct drm_i915_gem_object *obj)
 		return -ENOMEM;
 	}
 
-	sg_page_sizes = 0;
 	rem = obj->base.size;
 	for (sg = pages->sgl; sg; sg = sg_next(sg)) {
 		unsigned long len = min_t(typeof(rem), rem, BIT(31));
@@ -83,13 +81,12 @@ static int fake_get_pages(struct drm_i915_gem_object *obj)
 		sg_set_page(sg, pfn_to_page(PFN_BIAS), len, 0);
 		sg_dma_address(sg) = page_to_phys(sg_page(sg));
 		sg_dma_len(sg) = len;
-		sg_page_sizes |= len;
 
 		rem -= len;
 	}
 	GEM_BUG_ON(rem);
 
-	__i915_gem_object_set_pages(obj, pages, sg_page_sizes);
+	__i915_gem_object_set_pages(obj, pages);
 
 	return 0;
 #undef GFP
diff --git a/drivers/gpu/drm/i915/selftests/mock_region.c b/drivers/gpu/drm/i915/selftests/mock_region.c
index bac21fe84ca5..6324eb32d4dd 100644
--- a/drivers/gpu/drm/i915/selftests/mock_region.c
+++ b/drivers/gpu/drm/i915/selftests/mock_region.c
@@ -41,7 +41,7 @@ static int mock_region_get_pages(struct drm_i915_gem_object *obj)
 	}
 
 	pages = &obj->mm.rsgt->table;
-	__i915_gem_object_set_pages(obj, pages, i915_sg_dma_sizes(pages->sgl));
+	__i915_gem_object_set_pages(obj, pages);
 
 	return 0;
 
-- 
2.38.1

