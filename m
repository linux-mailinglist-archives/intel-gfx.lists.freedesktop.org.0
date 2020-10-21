Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1B4294AC0
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 11:50:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1B226EAAE;
	Wed, 21 Oct 2020 09:50:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A52726EAAE
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 09:50:22 +0000 (UTC)
IronPort-SDR: 5jWrJWT/6AY0BBuypL8OHlzjo5i5n2oPuPM92piktRJUkPfGwlpVA0RE17N+tpOTLFbv/XsGMe
 vcs673JaPkgQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="147199600"
X-IronPort-AV: E=Sophos;i="5.77,400,1596524400"; d="scan'208";a="147199600"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 02:50:20 -0700
IronPort-SDR: q7P3XJWdwb0OkgAG7ZYnKEkD+umYRBKSeurNNpQw7qnXVkWpSibcTLxuA6giIujAfpRD84iYwV
 bJ8wBIxuEyjg==
X-IronPort-AV: E=Sophos;i="5.77,400,1596524400"; d="scan'208";a="533463923"
Received: from nhannon-mobl1.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.19.240])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 02:50:18 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Oct 2020 10:49:57 +0100
Message-Id: <20201021094957.234155-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/region: fix max size calculation
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

We are incorrectly limiting the max allocation size as per the mm
max_order, which is effectively the largest power-of-two that we can fit
in the region size. However, it's normal to setup the region or
allocator with a non-power-of-two size(for example 3G), which we should
already handle correctly, except it seems for the early too-big-check.

Fixes: b908be543e44 ("drm/i915: support creating LMEM objects")
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: CQ Tang <cq.tang@intel.com>
---
 drivers/gpu/drm/i915/intel_memory_region.c    |  2 +-
 .../drm/i915/selftests/intel_memory_region.c  | 50 +++++++++++++++++++
 drivers/gpu/drm/i915/selftests/mock_region.c  |  2 +-
 3 files changed, 52 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index 6b5e9d88646d..180e1078ef7c 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -87,7 +87,7 @@ __intel_memory_region_get_pages_buddy(struct intel_memory_region *mem,
 		min_order = ilog2(size) - ilog2(mem->mm.chunk_size);
 	}
 
-	if (size > BIT(mem->mm.max_order) * mem->mm.chunk_size)
+	if (size > mem->mm.size)
 		return -E2BIG;
 
 	n_pages = size >> ilog2(mem->mm.chunk_size);
diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
index 334b0648e253..34d6de916b3e 100644
--- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
@@ -261,6 +261,55 @@ static int igt_mock_contiguous(void *arg)
 	return err;
 }
 
+static int igt_mock_splintered_region(void *arg)
+{
+	struct intel_memory_region *mem = arg;
+	struct drm_i915_private *i915 = mem->i915;
+	struct drm_i915_gem_object *obj;
+	unsigned int expected_order;
+	LIST_HEAD(objects);
+	u64 size;
+	int err = 0;
+
+	/*
+	 * Sanity check we can still allocate everything even if the
+	 * mm.max_order != mm.size. i.e our starting address space size is not a
+	 * power-of-two.
+	 */
+
+	size = (SZ_4G - 1) & PAGE_MASK;
+	mem = mock_region_create(i915, 0, size, PAGE_SIZE, 0);
+	if (IS_ERR(mem))
+		return PTR_ERR(mem);
+
+	if (mem->mm.size != size) {
+		pr_err("%s size mismatch(%llu != %llu)\n",
+		       __func__, mem->mm.size, size);
+		err = -EINVAL;
+		goto out_put;
+	}
+
+	expected_order = get_order(rounddown_pow_of_two(size));
+	if (mem->mm.max_order != expected_order) {
+		pr_err("%s order mismatch(%u != %u)\n",
+		       __func__, mem->mm.max_order, expected_order);
+		err = -EINVAL;
+		goto out_put;
+	}
+
+	obj = igt_object_create(mem, &objects, size, 0);
+	if (IS_ERR(obj)) {
+		err = PTR_ERR(obj);
+		goto out_close;
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
@@ -771,6 +820,7 @@ int intel_memory_region_mock_selftests(void)
 	static const struct i915_subtest tests[] = {
 		SUBTEST(igt_mock_fill),
 		SUBTEST(igt_mock_contiguous),
+		SUBTEST(igt_mock_splintered_region),
 	};
 	struct intel_memory_region *mem;
 	struct drm_i915_private *i915;
diff --git a/drivers/gpu/drm/i915/selftests/mock_region.c b/drivers/gpu/drm/i915/selftests/mock_region.c
index 09660f5a0a4c..979d96f27c43 100644
--- a/drivers/gpu/drm/i915/selftests/mock_region.c
+++ b/drivers/gpu/drm/i915/selftests/mock_region.c
@@ -24,7 +24,7 @@ mock_object_create(struct intel_memory_region *mem,
 	struct drm_i915_private *i915 = mem->i915;
 	struct drm_i915_gem_object *obj;
 
-	if (size > BIT(mem->mm.max_order) * mem->mm.chunk_size)
+	if (size > mem->mm.size)
 		return ERR_PTR(-E2BIG);
 
 	obj = i915_gem_object_alloc();
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
