Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 605BB2CBAAC
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Dec 2020 11:42:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A1466EA0B;
	Wed,  2 Dec 2020 10:42:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C0D06EA0A
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Dec 2020 10:42:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23187524-1500050 
 for multiple; Wed, 02 Dec 2020 10:41:53 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Dec 2020 10:41:53 +0000
Message-Id: <20201202104153.15329-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201202104153.15329-1-chris@chris-wilson.co.uk>
References: <20201202104153.15329-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] Revert "drm/i915/lmem: Limit block size to
 4G"
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
Cc: Matthew Auld <matthew.auld@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Mixing I915_ALLOC_CONTIGUOUS and I915_ALLOC_MAX_SEGMENT_SIZE fared
badly. The two directives conflict, with the contiguous request setting
the min_order to the full size of the object, and the max-segment-size
setting the max_order to the limit of the DMA mapper, resulting in a
situation where max_order < min_order, causing our sanity checks to
fail.

Instead of limiting the buddy block size, in the previous patch we split
the oversized buddy into multiple scatterlist elements.

Fixes: d2cf0125d4a1 ("drm/i915/lmem: Limit block size to 4G")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_region.c    |  2 +-
 drivers/gpu/drm/i915/intel_memory_region.c    | 18 +---------
 drivers/gpu/drm/i915/intel_memory_region.h    |  5 ++-
 .../drm/i915/selftests/intel_memory_region.c  | 35 ++++++++++++-------
 4 files changed, 27 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_region.c b/drivers/gpu/drm/i915/gem/i915_gem_region.c
index edb84072f979..e605cccd52f4 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_region.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_region.c
@@ -43,7 +43,7 @@ i915_gem_object_get_pages_buddy(struct drm_i915_gem_object *obj)
 		return -ENOMEM;
 	}
 
-	flags = I915_ALLOC_MIN_PAGE_SIZE | I915_ALLOC_MAX_SEGMENT_SIZE;
+	flags = I915_ALLOC_MIN_PAGE_SIZE;
 	if (obj->flags & I915_BO_ALLOC_CONTIGUOUS)
 		flags |= I915_ALLOC_CONTIGUOUS;
 
diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index ae36e2f6d6e3..b326993a1026 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -72,7 +72,6 @@ __intel_memory_region_get_pages_buddy(struct intel_memory_region *mem,
 				      struct list_head *blocks)
 {
 	unsigned int min_order = 0;
-	unsigned int max_order;
 	unsigned long n_pages;
 
 	GEM_BUG_ON(!IS_ALIGNED(size, mem->mm.chunk_size));
@@ -93,28 +92,13 @@ __intel_memory_region_get_pages_buddy(struct intel_memory_region *mem,
 
 	n_pages = size >> ilog2(mem->mm.chunk_size);
 
-	/*
-	 * If we going to feed this into an sg list we should limit the block
-	 * sizes such that we don't exceed the i915_sg_segment_size().
-	 */
-	if (flags & I915_ALLOC_MAX_SEGMENT_SIZE) {
-		unsigned int max_segment = i915_sg_segment_size();
-
-		if (GEM_WARN_ON(max_segment < mem->mm.chunk_size))
-			max_order = 0;
-		else
-			max_order = ilog2(max_segment) - ilog2(mem->mm.chunk_size);
-	} else {
-		max_order = mem->mm.max_order;
-	}
-
 	mutex_lock(&mem->mm_lock);
 
 	do {
 		struct i915_buddy_block *block;
 		unsigned int order;
 
-		order = min_t(u32, fls(n_pages) - 1, max_order);
+		order = fls(n_pages) - 1;
 		GEM_BUG_ON(order > mem->mm.max_order);
 		GEM_BUG_ON(order < min_order);
 
diff --git a/drivers/gpu/drm/i915/intel_memory_region.h b/drivers/gpu/drm/i915/intel_memory_region.h
index 5fb9bcf86b97..232490d89a83 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.h
+++ b/drivers/gpu/drm/i915/intel_memory_region.h
@@ -44,9 +44,8 @@ enum intel_region_id {
 #define MEMORY_TYPE_FROM_REGION(r) (ilog2((r) >> INTEL_MEMORY_TYPE_SHIFT))
 #define MEMORY_INSTANCE_FROM_REGION(r) (ilog2((r) & 0xffff))
 
-#define I915_ALLOC_MIN_PAGE_SIZE	BIT(0)
-#define I915_ALLOC_CONTIGUOUS		BIT(1)
-#define I915_ALLOC_MAX_SEGMENT_SIZE	BIT(2)
+#define I915_ALLOC_MIN_PAGE_SIZE  BIT(0)
+#define I915_ALLOC_CONTIGUOUS     BIT(1)
 
 #define for_each_memory_region(mr, i915, id) \
 	for (id = 0; id < ARRAY_SIZE((i915)->mm.regions); id++) \
diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
index 55ccd957a009..990d15fb6612 100644
--- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
@@ -341,21 +341,22 @@ static int igt_mock_splintered_region(void *arg)
 
 static int igt_mock_max_segment(void *arg)
 {
+	const unsigned int max_segment = i915_sg_segment_size();
 	struct intel_memory_region *mem = arg;
 	struct drm_i915_private *i915 = mem->i915;
 	struct drm_i915_gem_object *obj;
 	struct i915_buddy_block *block;
+	struct scatterlist *sg;
 	LIST_HEAD(objects);
+	unsigned int i;
 	u64 size;
 	int err = 0;
 
 	/*
-	 * The size of block are only limited by the largest power-of-two that
-	 * will fit in the region size, but to construct an object we also
-	 * require feeding it into an sg list, where the upper limit of the sg
-	 * entry is at most UINT_MAX, therefore when allocating with
-	 * I915_ALLOC_MAX_SEGMENT_SIZE we shouldn't see blocks larger than
-	 * i915_sg_segment_size().
+	 * While we may create very large contiguous blocks, we may need
+	 * to break those down for consumption elsewhere. In particular,
+	 * dma-mapping with scatterlist elements have an implicit limit of
+	 * UINT_MAX on each element.
 	 */
 
 	size = SZ_8G;
@@ -369,13 +370,23 @@ static int igt_mock_max_segment(void *arg)
 		goto out_put;
 	}
 
+	err = -EINVAL;
 	list_for_each_entry(block, &obj->mm.blocks, link) {
-		if (i915_buddy_block_size(&mem->mm, block) > i915_sg_segment_size()) {
-			pr_err("%s found block size(%llu) larger than max sg_segment_size(%u)",
-			       __func__,
-			       i915_buddy_block_size(&mem->mm, block),
-			       i915_sg_segment_size());
-			err = -EINVAL;
+		if (i915_buddy_block_size(&mem->mm, block) > max_segment) {
+			err = 0;
+			break;
+		}
+	}
+	if (err) {
+		pr_err("%s: Failed to create a huge contiguous block\n",
+		       __func__);
+		goto out_close;
+	}
+
+	for_each_sg(sg, obj->mm.pages->sgl, UINT_MAX, i) {
+		if (sg->length > max_segment) {
+			pr_err("%s: Created an oversized scatterlist entry, %u > %u\n",
+			       __func__, sg->length, max_segment);
 			goto out_close;
 		}
 	}
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
