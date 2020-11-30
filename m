Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BBDD2C85D3
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 14:47:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8AA66E453;
	Mon, 30 Nov 2020 13:47:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50C3E6E3BB
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 13:47:31 +0000 (UTC)
IronPort-SDR: c08m6OJv7a7W8LVu0o+4ayliEeDhyqYbtOs4sln7rOmkclpoRw9CSkhWg2IpB4McTBjW3iJyHx
 dMSu4iYAnbXw==
X-IronPort-AV: E=McAfee;i="6000,8403,9820"; a="234239882"
X-IronPort-AV: E=Sophos;i="5.78,381,1599548400"; d="scan'208";a="234239882"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 05:47:29 -0800
IronPort-SDR: yHls7bN1LDNPS01DS7A0A8rygSQwaXGDWHSq2PXpMmdf0rM3tTKgXIgTosw4vxEx/WlYzOVZjo
 MgtxfVixwuDw==
X-IronPort-AV: E=Sophos;i="5.78,381,1599548400"; d="scan'208";a="549104320"
Received: from ekiperwa-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.22.113])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 05:47:27 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Nov 2020 13:47:21 +0000
Message-Id: <20201130134721.54457-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3] drm/i915/lmem: Limit block size to 4G
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

From: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>

Block sizes are only limited by the largest power-of-two that will fit
in the region size, but to construct an object we also require feeding
it into an sg list, where the upper limit of the sg entry is at most
UINT_MAX. Therefore to prevent issues with allocating blocks that are
too large, add the flag I915_ALLOC_MAX_SEGMENT_SIZE which should limit
block sizes to the i915_sg_segment_size().

v2: (matt)
  - query the max segment.
  - prefer flag to limit block size to 4G, since it's best not to assume
    the user will feed the blocks into an sg list.
  - simple selftest so we don't have to guess.

Cc: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: CQ Tang <cq.tang@intel.com>
Signed-off-by: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_region.c    |  2 +-
 drivers/gpu/drm/i915/intel_memory_region.c    | 18 ++++++-
 drivers/gpu/drm/i915/intel_memory_region.h    |  5 +-
 .../drm/i915/selftests/intel_memory_region.c  | 51 +++++++++++++++++++
 4 files changed, 72 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_region.c b/drivers/gpu/drm/i915/gem/i915_gem_region.c
index 1515384d7e0e..e72d78074c9e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_region.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_region.c
@@ -42,7 +42,7 @@ i915_gem_object_get_pages_buddy(struct drm_i915_gem_object *obj)
 		return -ENOMEM;
 	}
 
-	flags = I915_ALLOC_MIN_PAGE_SIZE;
+	flags = I915_ALLOC_MIN_PAGE_SIZE | I915_ALLOC_MAX_SEGMENT_SIZE;
 	if (obj->flags & I915_BO_ALLOC_CONTIGUOUS)
 		flags |= I915_ALLOC_CONTIGUOUS;
 
diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index b326993a1026..ae36e2f6d6e3 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -72,6 +72,7 @@ __intel_memory_region_get_pages_buddy(struct intel_memory_region *mem,
 				      struct list_head *blocks)
 {
 	unsigned int min_order = 0;
+	unsigned int max_order;
 	unsigned long n_pages;
 
 	GEM_BUG_ON(!IS_ALIGNED(size, mem->mm.chunk_size));
@@ -92,13 +93,28 @@ __intel_memory_region_get_pages_buddy(struct intel_memory_region *mem,
 
 	n_pages = size >> ilog2(mem->mm.chunk_size);
 
+	/*
+	 * If we going to feed this into an sg list we should limit the block
+	 * sizes such that we don't exceed the i915_sg_segment_size().
+	 */
+	if (flags & I915_ALLOC_MAX_SEGMENT_SIZE) {
+		unsigned int max_segment = i915_sg_segment_size();
+
+		if (GEM_WARN_ON(max_segment < mem->mm.chunk_size))
+			max_order = 0;
+		else
+			max_order = ilog2(max_segment) - ilog2(mem->mm.chunk_size);
+	} else {
+		max_order = mem->mm.max_order;
+	}
+
 	mutex_lock(&mem->mm_lock);
 
 	do {
 		struct i915_buddy_block *block;
 		unsigned int order;
 
-		order = fls(n_pages) - 1;
+		order = min_t(u32, fls(n_pages) - 1, max_order);
 		GEM_BUG_ON(order > mem->mm.max_order);
 		GEM_BUG_ON(order < min_order);
 
diff --git a/drivers/gpu/drm/i915/intel_memory_region.h b/drivers/gpu/drm/i915/intel_memory_region.h
index 232490d89a83..5fb9bcf86b97 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.h
+++ b/drivers/gpu/drm/i915/intel_memory_region.h
@@ -44,8 +44,9 @@ enum intel_region_id {
 #define MEMORY_TYPE_FROM_REGION(r) (ilog2((r) >> INTEL_MEMORY_TYPE_SHIFT))
 #define MEMORY_INSTANCE_FROM_REGION(r) (ilog2((r) & 0xffff))
 
-#define I915_ALLOC_MIN_PAGE_SIZE  BIT(0)
-#define I915_ALLOC_CONTIGUOUS     BIT(1)
+#define I915_ALLOC_MIN_PAGE_SIZE	BIT(0)
+#define I915_ALLOC_CONTIGUOUS		BIT(1)
+#define I915_ALLOC_MAX_SEGMENT_SIZE	BIT(2)
 
 #define for_each_memory_region(mr, i915, id) \
 	for (id = 0; id < ARRAY_SIZE((i915)->mm.regions); id++) \
diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
index 0aeba8e3af28..55ccd957a009 100644
--- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
@@ -337,6 +337,56 @@ static int igt_mock_splintered_region(void *arg)
 	return err;
 }
 
+#define SZ_8G BIT_ULL(33)
+
+static int igt_mock_max_segment(void *arg)
+{
+	struct intel_memory_region *mem = arg;
+	struct drm_i915_private *i915 = mem->i915;
+	struct drm_i915_gem_object *obj;
+	struct i915_buddy_block *block;
+	LIST_HEAD(objects);
+	u64 size;
+	int err = 0;
+
+	/*
+	 * The size of block are only limited by the largest power-of-two that
+	 * will fit in the region size, but to construct an object we also
+	 * require feeding it into an sg list, where the upper limit of the sg
+	 * entry is at most UINT_MAX, therefore when allocating with
+	 * I915_ALLOC_MAX_SEGMENT_SIZE we shouldn't see blocks larger than
+	 * i915_sg_segment_size().
+	 */
+
+	size = SZ_8G;
+	mem = mock_region_create(i915, 0, size, PAGE_SIZE, 0);
+	if (IS_ERR(mem))
+		return PTR_ERR(mem);
+
+	obj = igt_object_create(mem, &objects, size, 0);
+	if (IS_ERR(obj)) {
+		err = PTR_ERR(obj);
+		goto out_put;
+	}
+
+	list_for_each_entry(block, &obj->mm.blocks, link) {
+		if (i915_buddy_block_size(&mem->mm, block) > i915_sg_segment_size()) {
+			pr_err("%s found block size(%llu) larger than max sg_segment_size(%u)",
+			       __func__,
+			       i915_buddy_block_size(&mem->mm, block),
+			       i915_sg_segment_size());
+			err = -EINVAL;
+			goto out_close;
+		}
+	}
+
+out_close:
+	close_objects(mem, &objects);
+out_put:
+	intel_memory_region_put(mem);
+	return err;
+}
+
 static int igt_gpu_write_dw(struct intel_context *ce,
 			    struct i915_vma *vma,
 			    u32 dword,
@@ -848,6 +898,7 @@ int intel_memory_region_mock_selftests(void)
 		SUBTEST(igt_mock_fill),
 		SUBTEST(igt_mock_contiguous),
 		SUBTEST(igt_mock_splintered_region),
+		SUBTEST(igt_mock_max_segment),
 	};
 	struct intel_memory_region *mem;
 	struct drm_i915_private *i915;
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
