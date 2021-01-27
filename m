Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D59FC305CAD
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 14:14:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0CE86E7F1;
	Wed, 27 Jan 2021 13:14:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3966E6E7FE
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 13:14:27 +0000 (UTC)
IronPort-SDR: eY2AZu6uL2xA8KANnWBSLevXSGuffKU9HUEKz9gVJiP6qzXGamrpk0MCp2ZVfVNDGnwYdryLC7
 9pCceTzLUEFw==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="180209881"
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="180209881"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 05:14:27 -0800
IronPort-SDR: /9RjjaIonnLraW4E2/4PNoCMkAdWqkA9pUc2nnSNQGjnOL4ZVEo00M27vibGx38V3OD3DAvT0W
 JEM+O9as1uMg==
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="369471240"
Received: from gladkina-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.19.195])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 05:14:26 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jan 2021 13:14:13 +0000
Message-Id: <20210127131417.393872-4-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210127131417.393872-1-matthew.auld@intel.com>
References: <20210127131417.393872-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 4/8] drm/i915: introduce mem->reserved
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

From: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>

In the following patch we need to reserve regions unaccessible to the
driver during initialization, so add mem->reserved for collecting such
regions.

v2: turn into an actual intel_memory_region_reserve api

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/intel_memory_region.c    | 14 ++++
 drivers/gpu/drm/i915/intel_memory_region.h    |  5 ++
 .../drm/i915/selftests/intel_memory_region.c  | 77 +++++++++++++++++++
 3 files changed, 96 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index b1b610bfff09..49d306b5532f 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -156,9 +156,22 @@ int intel_memory_region_init_buddy(struct intel_memory_region *mem)
 
 void intel_memory_region_release_buddy(struct intel_memory_region *mem)
 {
+	i915_buddy_free_list(&mem->mm, &mem->reserved);
 	i915_buddy_fini(&mem->mm);
 }
 
+int intel_memory_region_reserve(struct intel_memory_region *mem,
+				u64 offset, u64 size)
+{
+	int ret;
+
+	mutex_lock(&mem->mm_lock);
+	ret = i915_buddy_alloc_range(&mem->mm, &mem->reserved, offset, size);
+	mutex_unlock(&mem->mm_lock);
+
+	return ret;
+}
+
 struct intel_memory_region *
 intel_memory_region_create(struct drm_i915_private *i915,
 			   resource_size_t start,
@@ -185,6 +198,7 @@ intel_memory_region_create(struct drm_i915_private *i915,
 	mutex_init(&mem->objects.lock);
 	INIT_LIST_HEAD(&mem->objects.list);
 	INIT_LIST_HEAD(&mem->objects.purgeable);
+	INIT_LIST_HEAD(&mem->reserved);
 
 	mutex_init(&mem->mm_lock);
 
diff --git a/drivers/gpu/drm/i915/intel_memory_region.h b/drivers/gpu/drm/i915/intel_memory_region.h
index 6ffc0673f005..d17e4fe3123c 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.h
+++ b/drivers/gpu/drm/i915/intel_memory_region.h
@@ -89,6 +89,8 @@ struct intel_memory_region {
 	unsigned int id;
 	char name[8];
 
+	struct list_head reserved;
+
 	dma_addr_t remap_addr;
 
 	struct {
@@ -113,6 +115,9 @@ void __intel_memory_region_put_pages_buddy(struct intel_memory_region *mem,
 					   struct list_head *blocks);
 void __intel_memory_region_put_block_buddy(struct i915_buddy_block *block);
 
+int intel_memory_region_reserve(struct intel_memory_region *mem,
+				u64 offset, u64 size);
+
 struct intel_memory_region *
 intel_memory_region_create(struct drm_i915_private *i915,
 			   resource_size_t start,
diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
index ce7adfa3bca0..64348528e1d5 100644
--- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
@@ -144,6 +144,82 @@ static bool is_contiguous(struct drm_i915_gem_object *obj)
 	return true;
 }
 
+static int igt_mock_reserve(void *arg)
+{
+	struct intel_memory_region *mem = arg;
+	resource_size_t avail = resource_size(&mem->region);
+	struct drm_i915_gem_object *obj;
+	const u32 chunk_size = SZ_32M;
+	u32 i, offset, count, *order;
+	u64 allocated, cur_avail;
+	I915_RND_STATE(prng);
+	LIST_HEAD(objects);
+	int err = 0;
+
+	if (!list_empty(&mem->reserved)) {
+		pr_err("%s region reserved list is not empty\n", __func__);
+		return -EINVAL;
+	}
+
+	count = avail / chunk_size;
+	order = i915_random_order(count, &prng);
+	if (!order)
+		return 0;
+
+	/* Reserve a bunch of ranges within the region */
+	for (i = 0; i < count; ++i) {
+		u64 start = order[i] * chunk_size;
+		u64 size = i915_prandom_u32_max_state(chunk_size, &prng);
+
+		/* Allow for some really big holes */
+		if (!size)
+			continue;
+
+		size = round_up(size, PAGE_SIZE);
+		offset = igt_random_offset(&prng, 0, chunk_size, size,
+					   PAGE_SIZE);
+
+		err = intel_memory_region_reserve(mem, start + offset, size);
+		if (err) {
+			pr_err("%s failed to reserve range", __func__);
+			goto out_close;
+		}
+
+		/* XXX: maybe sanity check the block range here? */
+		avail -= size;
+	}
+
+	/* Try to see if we can allocate from the remaining space */
+	allocated = 0;
+	cur_avail = avail;
+	do {
+		u32 size = i915_prandom_u32_max_state(cur_avail, &prng);
+
+		size = max_t(u32, round_up(size, PAGE_SIZE), PAGE_SIZE);
+		obj = igt_object_create(mem, &objects, size, 0);
+		if (IS_ERR(obj)) {
+			if (PTR_ERR(obj) == -ENXIO)
+				break;
+
+			err = PTR_ERR(obj);
+			goto out_close;
+		}
+		cur_avail -= size;
+		allocated += size;
+	} while (1);
+
+	if (allocated != avail) {
+		pr_err("%s mismatch between allocation and free space", __func__);
+		err = -EINVAL;
+	}
+
+out_close:
+	kfree(order);
+	close_objects(mem, &objects);
+	i915_buddy_free_list(&mem->mm, &mem->reserved);
+	return err;
+}
+
 static int igt_mock_contiguous(void *arg)
 {
 	struct intel_memory_region *mem = arg;
@@ -930,6 +1006,7 @@ static int perf_memcpy(void *arg)
 int intel_memory_region_mock_selftests(void)
 {
 	static const struct i915_subtest tests[] = {
+		SUBTEST(igt_mock_reserve),
 		SUBTEST(igt_mock_fill),
 		SUBTEST(igt_mock_contiguous),
 		SUBTEST(igt_mock_splintered_region),
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
