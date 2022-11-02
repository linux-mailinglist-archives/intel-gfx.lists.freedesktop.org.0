Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F56461655E
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 15:56:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D8AE10E4A6;
	Wed,  2 Nov 2022 14:55:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2785110E498
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 14:55:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667400950; x=1698936950;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=D8LbECtmEfi8e7fzP6j83apMKLX+k9RM3INpPB7KaJA=;
 b=Pn156JS9K6JXm33FDj2yS9X/JH148HwhEv+tW0lCh29UtUySTVUTnAVx
 FHAptPX3Damie3bW2DhvanEFMApISNg5IkZlP3hek08HbReh+aAFYPpEW
 06T9uqPq74E8OsEPx2jBl62BMp4WoRNLy0iexOdECiyC9nPR9FZdE5jlB
 y6i3q5WWntKtGaVRITvY/wlsNEdOygSJFKuVtDv6hkJ3vFL2uo7AUk3fe
 HZhNdtrdAGML4BTmPhhApx+VNGAMCZ7jRah+auZ12DI85L8XHynxouUNf
 QCV6QvO57lJe5vcexXW80B+NDUDUwG4nL3THbDEZnGi0UDCbxJifR79ts w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="311151558"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="311151558"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 07:54:59 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="628982230"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="628982230"
Received: from progasze-mobl3.ger.corp.intel.com (HELO
 paris.ger.corp.intel.com) ([10.249.144.23])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 07:54:55 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Nov 2022 16:53:58 +0200
Message-Id: <20221102145402.617336-4-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20221102145402.617336-1-gwan-gyeong.mun@intel.com>
References: <20221102145402.617336-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v14 3/7] drm/i915: Check for integer truncation
 on scatterlist creation
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

There is an impedance mismatch between the scatterlist API using unsigned
int and our memory/page accounting in unsigned long. That is we may try
to create a scatterlist for a large object that overflows returning a
small table into which we try to fit very many pages. As the object size
is under the control of userspace, we have to be prudent and catch the
conversion errors.

To catch the implicit truncation we check before calling scattterlist
creation Apis. we use overflows_type check and report E2BIG if the
overflows may raise. When caller does not return errno, use WARN_ON to
report a problem.

This is already used in our create ioctls to indicate if the uABI request
is simply too large for the backing store. Failing that type check,
we have a second check at sg_alloc_table time to make sure the values
we are passing into the scatterlist API are not truncated.

v2: Move added i915_utils's macro into drm_util header (Jani N)
v5: Fix macros to be enclosed in parentheses for complex values
    Fix too long line warning
v8: Replace safe_conversion() with check_assign() (Kees)
v14: Remove shadowing macros of scatterlist creation api and fix to
     explicitly overflow check where the scatterlist creation APIs are
     called. (Jani)

Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Brian Welty <brian.welty@intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Co-developed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_internal.c         |  7 +++++--
 drivers/gpu/drm/i915/gem/i915_gem_object.h           |  3 ---
 drivers/gpu/drm/i915/gem/i915_gem_phys.c             |  4 ++++
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c            |  9 ++++++---
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c              |  4 ++++
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c          |  6 +++++-
 drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c |  6 +++++-
 drivers/gpu/drm/i915/gem/selftests/huge_pages.c      |  8 ++++++++
 drivers/gpu/drm/i915/gvt/dmabuf.c                    | 10 ++++++----
 drivers/gpu/drm/i915/i915_scatterlist.c              |  5 +++++
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c        |  4 ++++
 drivers/gpu/drm/i915/selftests/scatterlist.c         |  4 ++++
 12 files changed, 56 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_internal.c b/drivers/gpu/drm/i915/gem/i915_gem_internal.c
index 629acb403a2c..b0e6b464bf59 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_internal.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_internal.c
@@ -36,11 +36,15 @@ static int i915_gem_object_get_pages_internal(struct drm_i915_gem_object *obj)
 	struct sg_table *st;
 	struct scatterlist *sg;
 	unsigned int sg_page_sizes;
-	unsigned int npages;
+	unsigned int npages; /* restricted by sg_alloc_table */
 	int max_order = MAX_ORDER;
 	unsigned int max_segment;
 	gfp_t gfp;
 
+	if (overflows_type(obj->base.size >> PAGE_SHIFT, npages))
+		return -E2BIG;
+
+	npages = obj->base.size >> PAGE_SHIFT;
 	max_segment = i915_sg_segment_size(i915->drm.dev) >> PAGE_SHIFT;
 	max_order = min(max_order, get_order(max_segment));
 
@@ -56,7 +60,6 @@ static int i915_gem_object_get_pages_internal(struct drm_i915_gem_object *obj)
 	if (!st)
 		return -ENOMEM;
 
-	npages = obj->base.size / PAGE_SIZE;
 	if (sg_alloc_table(st, npages, GFP_KERNEL)) {
 		kfree(st);
 		return -ENOMEM;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 55817d287676..8cd8d2041c5a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -26,9 +26,6 @@ enum intel_region_id;
  * this and catch if we ever need to fix it. In the meantime, if you do
  * spot such a local variable, please consider fixing!
  *
- * Aside from our own locals (for which we have no excuse!):
- * - sg_table embeds unsigned int for nents
- *
  * We can check for invalidly typed locals with typecheck(), see for example
  * i915_gem_object_get_sg().
  */
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_phys.c b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
index 0d0e46dae559..88ba7266a3a5 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_phys.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
@@ -28,6 +28,10 @@ static int i915_gem_object_get_pages_phys(struct drm_i915_gem_object *obj)
 	void *dst;
 	int i;
 
+	/* Contiguous chunk, with a single scatterlist element */
+	if (overflows_type(obj->base.size, sg->length))
+		return -E2BIG;
+
 	if (GEM_WARN_ON(i915_gem_object_needs_bit17_swizzle(obj)))
 		return -EINVAL;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index 11125c32dd35..fdd9d151ac1f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -60,7 +60,7 @@ int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
 			 struct address_space *mapping,
 			 unsigned int max_segment)
 {
-	const unsigned long page_count = size / PAGE_SIZE;
+	unsigned int page_count; /* restricted by sg_alloc_table */
 	unsigned long i;
 	struct scatterlist *sg;
 	struct page *page;
@@ -68,6 +68,10 @@ int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
 	gfp_t noreclaim;
 	int ret;
 
+	if (overflows_type(size / PAGE_SIZE, page_count))
+		return -E2BIG;
+
+	page_count = size / PAGE_SIZE;
 	/*
 	 * If there's no chance of allocating enough pages for the whole
 	 * object, bail early.
@@ -193,7 +197,6 @@ static int shmem_get_pages(struct drm_i915_gem_object *obj)
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	struct intel_memory_region *mem = obj->mm.region;
 	struct address_space *mapping = obj->base.filp->f_mapping;
-	const unsigned long page_count = obj->base.size / PAGE_SIZE;
 	unsigned int max_segment = i915_sg_segment_size(i915->drm.dev);
 	struct sg_table *st;
 	struct sgt_iter sgt_iter;
@@ -236,7 +239,7 @@ static int shmem_get_pages(struct drm_i915_gem_object *obj)
 		} else {
 			dev_warn(i915->drm.dev,
 				 "Failed to DMA remap %lu pages\n",
-				 page_count);
+				 obj->base.size >> PAGE_SHIFT);
 			goto err_pages;
 		}
 	}
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 721b716942bb..2cd7a17c720d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -829,6 +829,10 @@ static int i915_ttm_get_pages(struct drm_i915_gem_object *obj)
 	struct ttm_place requested, busy[I915_TTM_MAX_PLACEMENTS];
 	struct ttm_placement placement;
 
+	/* restricted by sg_alloc_table */
+	if (overflows_type(obj->base.size >> PAGE_SHIFT, unsigned int))
+		return -E2BIG;
+
 	GEM_BUG_ON(obj->mm.n_placements > I915_TTM_MAX_PLACEMENTS);
 
 	/* Move to the requested placement. */
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index 1b1a22716722..893c03f4a794 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -128,13 +128,17 @@ static void i915_gem_object_userptr_drop_ref(struct drm_i915_gem_object *obj)
 
 static int i915_gem_userptr_get_pages(struct drm_i915_gem_object *obj)
 {
-	const unsigned long num_pages = obj->base.size >> PAGE_SHIFT;
 	unsigned int max_segment = i915_sg_segment_size(obj->base.dev->dev);
 	struct sg_table *st;
 	unsigned int sg_page_sizes;
 	struct page **pvec;
+	unsigned int num_pages; /* limited by sg_alloc_table_from_pages_segment */
 	int ret;
 
+	if (overflows_type(obj->base.size >> PAGE_SHIFT, num_pages))
+		return -E2BIG;
+
+	num_pages = obj->base.size >> PAGE_SHIFT;
 	st = kmalloc(sizeof(*st), GFP_KERNEL);
 	if (!st)
 		return -ENOMEM;
diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c b/drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c
index f963b8e1e37b..bb1e8f1657a6 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c
@@ -29,11 +29,15 @@ static int huge_get_pages(struct drm_i915_gem_object *obj)
 {
 #define GFP (GFP_KERNEL | __GFP_NOWARN | __GFP_RETRY_MAYFAIL)
 	const unsigned long nreal = obj->scratch / PAGE_SIZE;
-	const unsigned long npages = obj->base.size / PAGE_SIZE;
+	unsigned int npages; /* restricted by sg_alloc_table */
 	struct scatterlist *sg, *src, *end;
 	struct sg_table *pages;
 	unsigned long n;
 
+	if (overflows_type(obj->base.size / PAGE_SIZE, npages))
+		return -E2BIG;
+
+	npages = obj->base.size / PAGE_SIZE;
 	pages = kmalloc(sizeof(*pages), GFP);
 	if (!pages)
 		return -ENOMEM;
diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index 0cb99e75b0bc..1120a7960d47 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -84,6 +84,10 @@ static int get_huge_pages(struct drm_i915_gem_object *obj)
 	unsigned int sg_page_sizes;
 	u64 rem;
 
+	/* restricted by sg_alloc_table */
+	if (overflows_type(obj->base.size >> PAGE_SHIFT, unsigned int))
+		return -E2BIG;
+
 	st = kmalloc(sizeof(*st), GFP);
 	if (!st)
 		return -ENOMEM;
@@ -213,6 +217,10 @@ static int fake_get_huge_pages(struct drm_i915_gem_object *obj)
 	unsigned int sg_page_sizes;
 	u64 rem;
 
+	/* restricted by sg_alloc_table */
+	if (overflows_type(obj->base.size >> PAGE_SHIFT, unsigned int))
+		return -E2BIG;
+
 	st = kmalloc(sizeof(*st), GFP);
 	if (!st)
 		return -ENOMEM;
diff --git a/drivers/gpu/drm/i915/gvt/dmabuf.c b/drivers/gpu/drm/i915/gvt/dmabuf.c
index 01e54b45c5c1..e61cf3beeeba 100644
--- a/drivers/gpu/drm/i915/gvt/dmabuf.c
+++ b/drivers/gpu/drm/i915/gvt/dmabuf.c
@@ -42,8 +42,7 @@
 
 #define GEN8_DECODE_PTE(pte) (pte & GENMASK_ULL(63, 12))
 
-static int vgpu_gem_get_pages(
-		struct drm_i915_gem_object *obj)
+static int vgpu_gem_get_pages(struct drm_i915_gem_object *obj)
 {
 	struct drm_i915_private *dev_priv = to_i915(obj->base.dev);
 	struct intel_vgpu *vgpu;
@@ -52,8 +51,12 @@ static int vgpu_gem_get_pages(
 	int i, j, ret;
 	gen8_pte_t __iomem *gtt_entries;
 	struct intel_vgpu_fb_info *fb_info;
-	u32 page_num;
+	unsigned int page_num; /* limited by sg_alloc_table */
 
+	if (overflows_type(obj->base.size >> PAGE_SHIFT, page_num))
+		return -E2BIG;
+
+	page_num = obj->base.size >> PAGE_SHIFT;
 	fb_info = (struct intel_vgpu_fb_info *)obj->gvt_info;
 	if (drm_WARN_ON(&dev_priv->drm, !fb_info))
 		return -ENODEV;
@@ -66,7 +69,6 @@ static int vgpu_gem_get_pages(
 	if (unlikely(!st))
 		return -ENOMEM;
 
-	page_num = obj->base.size >> PAGE_SHIFT;
 	ret = sg_alloc_table(st, page_num, GFP_KERNEL);
 	if (ret) {
 		kfree(st);
diff --git a/drivers/gpu/drm/i915/i915_scatterlist.c b/drivers/gpu/drm/i915/i915_scatterlist.c
index 114e5e39aa72..c9dc3a917d66 100644
--- a/drivers/gpu/drm/i915/i915_scatterlist.c
+++ b/drivers/gpu/drm/i915/i915_scatterlist.c
@@ -96,6 +96,9 @@ struct i915_refct_sgt *i915_rsgt_from_mm_node(const struct drm_mm_node *node,
 
 	i915_refct_sgt_init(rsgt, node->size << PAGE_SHIFT);
 	st = &rsgt->table;
+	/* restricted by sg_alloc_table */
+	WARN_ON(overflows_type(DIV_ROUND_UP_ULL(node->size, segment_pages),
+			       unsigned int));
 	if (sg_alloc_table(st, DIV_ROUND_UP_ULL(node->size, segment_pages),
 			   GFP_KERNEL)) {
 		i915_refct_sgt_put(rsgt);
@@ -177,6 +180,8 @@ struct i915_refct_sgt *i915_rsgt_from_buddy_resource(struct ttm_resource *res,
 
 	i915_refct_sgt_init(rsgt, size);
 	st = &rsgt->table;
+	/* restricted by sg_alloc_table */
+	WARN_ON(overflows_type(PFN_UP(res->size), unsigned int));
 	if (sg_alloc_table(st, PFN_UP(res->size), GFP_KERNEL)) {
 		i915_refct_sgt_put(rsgt);
 		return ERR_PTR(-ENOMEM);
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index 27c733b00976..097be1e89dba 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -69,6 +69,10 @@ static int fake_get_pages(struct drm_i915_gem_object *obj)
 		return -ENOMEM;
 
 	rem = round_up(obj->base.size, BIT(31)) >> 31;
+	/* restricted by sg_alloc_table */
+	if (overflows_type(rem, unsigned int))
+		return -E2BIG;
+
 	if (sg_alloc_table(pages, rem, GFP)) {
 		kfree(pages);
 		return -ENOMEM;
diff --git a/drivers/gpu/drm/i915/selftests/scatterlist.c b/drivers/gpu/drm/i915/selftests/scatterlist.c
index d599186d5b71..805c4bfb85fe 100644
--- a/drivers/gpu/drm/i915/selftests/scatterlist.c
+++ b/drivers/gpu/drm/i915/selftests/scatterlist.c
@@ -220,6 +220,10 @@ static int alloc_table(struct pfn_table *pt,
 	struct scatterlist *sg;
 	unsigned long n, pfn;
 
+	/* restricted by sg_alloc_table */
+	if (overflows_type(max, unsigned int))
+		return -E2BIG;
+
 	if (sg_alloc_table(&pt->st, max,
 			   GFP_KERNEL | __GFP_NORETRY | __GFP_NOWARN))
 		return alloc_error;
-- 
2.37.1

