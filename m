Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6E121B49E
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 14:02:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD5856EC2A;
	Fri, 10 Jul 2020 12:02:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CD856EC27
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 12:01:59 +0000 (UTC)
IronPort-SDR: W/nQye2WU6B/TnvcUTFbFgceNjWlvk1LBmyRyG39FTgJU2/vuqBZfsHMIgVJjH/1dNb66TuNYN
 31xcul2zIenQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="209716887"
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="209716887"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:01:57 -0700
IronPort-SDR: DYD//ZAP4hEZfXdiUojC2h/+ywzDVerWjG/tfHCS4DL2yToyguVXjke+K71M1h0bi2HkbilZbv
 Qm0C7o6eTe6A==
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="458258616"
Received: from nmartino-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.255.207.224])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:01:51 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 12:57:54 +0100
Message-Id: <20200710115757.290984-58-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200710115757.290984-1-matthew.auld@intel.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 57/60] drm/i915: Reintroduce mem->reserved
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
driver during initialization, so add back mem->reserved for collecting
such regions.

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_memory_region.c    |  2 +
 drivers/gpu/drm/i915/intel_memory_region.h    |  2 +
 .../drm/i915/selftests/intel_memory_region.c  | 89 +++++++++++++++++++
 3 files changed, 93 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index 905cdfa6e3e2..6e9d0861cf8c 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -197,6 +197,7 @@ int intel_memory_region_init_buddy(struct intel_memory_region *mem)
 
 void intel_memory_region_release_buddy(struct intel_memory_region *mem)
 {
+	i915_buddy_free_list(&mem->mm, &mem->reserved);
 	i915_buddy_fini(&mem->mm);
 }
 
@@ -226,6 +227,7 @@ intel_memory_region_create(struct drm_i915_private *i915,
 	mutex_init(&mem->objects.lock);
 	INIT_LIST_HEAD(&mem->objects.list);
 	INIT_LIST_HEAD(&mem->objects.purgeable);
+	INIT_LIST_HEAD(&mem->reserved);
 
 	mutex_init(&mem->mm_lock);
 
diff --git a/drivers/gpu/drm/i915/intel_memory_region.h b/drivers/gpu/drm/i915/intel_memory_region.h
index 8f9c943a16af..e082b895afdb 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.h
+++ b/drivers/gpu/drm/i915/intel_memory_region.h
@@ -96,6 +96,8 @@ struct intel_memory_region {
 	char name[16];
 	bool is_devmem;	/* true for device memory */
 
+	struct list_head reserved;
+
 	dma_addr_t remap_addr;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
index d10f5b52b677..f39be34c0980 100644
--- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
@@ -129,6 +129,94 @@ static void igt_object_release(struct drm_i915_gem_object *obj)
 	i915_gem_object_put(obj);
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
@@ -851,6 +939,7 @@ static int perf_memcpy(void *arg)
 int intel_memory_region_mock_selftests(void)
 {
 	static const struct i915_subtest tests[] = {
+		SUBTEST(igt_mock_reserve),
 		SUBTEST(igt_mock_fill),
 		SUBTEST(igt_mock_contiguous),
 	};
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
