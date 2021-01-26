Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B06A30394A
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 10:46:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F9C16E135;
	Tue, 26 Jan 2021 09:46:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61E406E0C2
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 09:46:41 +0000 (UTC)
IronPort-SDR: 8tidQbgKiLMBvUxpwqv0MmONC3JX0hmaHrZ81qC8w9qCI2uZBlp5yZhda8DdTHTVMAXpWfXGlA
 Nev38q2PSOQQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9875"; a="159651567"
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="159651567"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 01:46:41 -0800
IronPort-SDR: SyPDvjWB0RI8L5IVcPWCue0HY2jN+wtpP8OD/T6X8OllCZbHPYu1a5BkrTKHpD1Q6/DFQPPbkY
 PsQtfH6xjRyg==
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="387766440"
Received: from shogg-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.19.250])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 01:46:39 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Jan 2021 09:46:08 +0000
Message-Id: <20210126094612.163290-3-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210126094612.163290-1-matthew.auld@intel.com>
References: <20210126094612.163290-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/7] drm/i915: introduce mem->reserved
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
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>

In the following patch we need to reserve regions unaccessible to the
driver during initialization, so add mem->reserved for collecting such
regions.

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/intel_memory_region.c    |  2 +
 drivers/gpu/drm/i915/intel_memory_region.h    |  2 +
 .../drm/i915/selftests/intel_memory_region.c  | 89 +++++++++++++++++++
 3 files changed, 93 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index 9ce4a81c48b1..79b07fa2436d 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -156,6 +156,7 @@ int intel_memory_region_init_buddy(struct intel_memory_region *mem)
 
 void intel_memory_region_release_buddy(struct intel_memory_region *mem)
 {
+	i915_buddy_free_list(&mem->mm, &mem->reserved);
 	i915_buddy_fini(&mem->mm);
 }
 
@@ -185,6 +186,7 @@ intel_memory_region_create(struct drm_i915_private *i915,
 	mutex_init(&mem->objects.lock);
 	INIT_LIST_HEAD(&mem->objects.list);
 	INIT_LIST_HEAD(&mem->objects.purgeable);
+	INIT_LIST_HEAD(&mem->reserved);
 
 	mutex_init(&mem->mm_lock);
 
diff --git a/drivers/gpu/drm/i915/intel_memory_region.h b/drivers/gpu/drm/i915/intel_memory_region.h
index 6ffc0673f005..8c9947bba3e8 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.h
+++ b/drivers/gpu/drm/i915/intel_memory_region.h
@@ -89,6 +89,8 @@ struct intel_memory_region {
 	unsigned int id;
 	char name[8];
 
+	struct list_head reserved;
+
 	dma_addr_t remap_addr;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
index ce7adfa3bca0..79e5c5a6b563 100644
--- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
@@ -144,6 +144,94 @@ static bool is_contiguous(struct drm_i915_gem_object *obj)
 	return true;
 }
 
+static int igt_reserve_range(struct intel_memory_region *mem,
+			     struct list_head *reserved,
+			     u64 offset,
+			     u64 size)
+{
+	int ret;
+	LIST_HEAD(blocks);
+
+	ret = i915_buddy_alloc_range(&mem->mm, &blocks, offset, size);
+	if (!ret)
+		list_splice_tail(&blocks, reserved);
+
+	return ret;
+}
+
+static int igt_mock_reserve(void *arg)
+{
+	struct drm_i915_gem_object *obj;
+	struct intel_memory_region *mem = arg;
+	resource_size_t avail = resource_size(&mem->region);
+	I915_RND_STATE(prng);
+	LIST_HEAD(objects);
+	LIST_HEAD(reserved);
+	u32 i, offset, count, *order;
+	u64 allocated, cur_avail;
+	const u32 chunk_size = SZ_32M;
+	int err = 0;
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
+		err = igt_reserve_range(mem, &reserved, start + offset, size);
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
+		u64 size = i915_prandom_u32_max_state(cur_avail, &prng);
+
+		size = max_t(u64, round_up(size, PAGE_SIZE), (u64)PAGE_SIZE);
+		obj = igt_object_create(mem, &objects, size, 0);
+
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
+	i915_buddy_free_list(&mem->mm, &reserved);
+	return err;
+}
+
 static int igt_mock_contiguous(void *arg)
 {
 	struct intel_memory_region *mem = arg;
@@ -930,6 +1018,7 @@ static int perf_memcpy(void *arg)
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
