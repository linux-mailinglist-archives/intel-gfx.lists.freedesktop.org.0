Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E36E2CB143
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Dec 2020 00:59:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 650A36E981;
	Tue,  1 Dec 2020 23:58:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A4436E97B
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 23:58:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23183536-1500050 
 for multiple; Tue, 01 Dec 2020 23:58:48 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Dec 2020 23:58:47 +0000
Message-Id: <20201201235847.1860-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201201235847.1860-1-chris@chris-wilson.co.uk>
References: <20201201235847.1860-1-chris@chris-wilson.co.uk>
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Although we want to keep elements of the test case, and a proper
explanation why the patch failed to dtrt should go here.
---
 drivers/gpu/drm/i915/gem/i915_gem_region.c    |  2 +-
 drivers/gpu/drm/i915/intel_memory_region.c    | 18 +------
 drivers/gpu/drm/i915/intel_memory_region.h    |  5 +-
 .../drm/i915/selftests/intel_memory_region.c  | 51 -------------------
 4 files changed, 4 insertions(+), 72 deletions(-)

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
index 55ccd957a009..0aeba8e3af28 100644
--- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
@@ -337,56 +337,6 @@ static int igt_mock_splintered_region(void *arg)
 	return err;
 }
 
-#define SZ_8G BIT_ULL(33)
-
-static int igt_mock_max_segment(void *arg)
-{
-	struct intel_memory_region *mem = arg;
-	struct drm_i915_private *i915 = mem->i915;
-	struct drm_i915_gem_object *obj;
-	struct i915_buddy_block *block;
-	LIST_HEAD(objects);
-	u64 size;
-	int err = 0;
-
-	/*
-	 * The size of block are only limited by the largest power-of-two that
-	 * will fit in the region size, but to construct an object we also
-	 * require feeding it into an sg list, where the upper limit of the sg
-	 * entry is at most UINT_MAX, therefore when allocating with
-	 * I915_ALLOC_MAX_SEGMENT_SIZE we shouldn't see blocks larger than
-	 * i915_sg_segment_size().
-	 */
-
-	size = SZ_8G;
-	mem = mock_region_create(i915, 0, size, PAGE_SIZE, 0);
-	if (IS_ERR(mem))
-		return PTR_ERR(mem);
-
-	obj = igt_object_create(mem, &objects, size, 0);
-	if (IS_ERR(obj)) {
-		err = PTR_ERR(obj);
-		goto out_put;
-	}
-
-	list_for_each_entry(block, &obj->mm.blocks, link) {
-		if (i915_buddy_block_size(&mem->mm, block) > i915_sg_segment_size()) {
-			pr_err("%s found block size(%llu) larger than max sg_segment_size(%u)",
-			       __func__,
-			       i915_buddy_block_size(&mem->mm, block),
-			       i915_sg_segment_size());
-			err = -EINVAL;
-			goto out_close;
-		}
-	}
-
-out_close:
-	close_objects(mem, &objects);
-out_put:
-	intel_memory_region_put(mem);
-	return err;
-}
-
 static int igt_gpu_write_dw(struct intel_context *ce,
 			    struct i915_vma *vma,
 			    u32 dword,
@@ -898,7 +848,6 @@ int intel_memory_region_mock_selftests(void)
 		SUBTEST(igt_mock_fill),
 		SUBTEST(igt_mock_contiguous),
 		SUBTEST(igt_mock_splintered_region),
-		SUBTEST(igt_mock_max_segment),
 	};
 	struct intel_memory_region *mem;
 	struct drm_i915_private *i915;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
