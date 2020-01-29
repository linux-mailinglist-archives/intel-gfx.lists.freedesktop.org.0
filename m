Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AB5314C820
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 10:33:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 019D26F4C1;
	Wed, 29 Jan 2020 09:33:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 925EF6F4C1
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2020 09:33:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jan 2020 01:33:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,377,1574150400"; d="scan'208";a="261745071"
Received: from lculbert-sp6.amr.corp.intel.com (HELO
 mwahaha-bdw.amr.corp.intel.com) ([10.254.182.127])
 by fmsmga002.fm.intel.com with ESMTP; 29 Jan 2020 01:33:44 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Jan 2020 09:33:43 +0000
Message-Id: <20200129093343.194570-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3] drm/i915/selftests/perf: measure memcpy bw
 between regions
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

Measure the memcpy bw between our CPU accessible regions, trying all
supported mapping combinations(WC, WB) across various sizes.

v2:
    use smaller sizes
    throw in memcpy32/memcpy64/memcpy_from_wc

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../drm/i915/selftests/i915_perf_selftests.h  |   1 +
 .../drm/i915/selftests/intel_memory_region.c  | 203 ++++++++++++++++++
 2 files changed, 204 insertions(+)

diff --git a/drivers/gpu/drm/i915/selftests/i915_perf_selftests.h b/drivers/gpu/drm/i915/selftests/i915_perf_selftests.h
index 5a577a1332f5..3bf7f53e9924 100644
--- a/drivers/gpu/drm/i915/selftests/i915_perf_selftests.h
+++ b/drivers/gpu/drm/i915/selftests/i915_perf_selftests.h
@@ -17,3 +17,4 @@
  */
 selftest(engine_cs, intel_engine_cs_perf_selftests)
 selftest(blt, i915_gem_object_blt_perf_selftests)
+selftest(region, intel_memory_region_perf_selftests)
diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
index 3ef3620e0da5..2a1d4ba1f9f3 100644
--- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
@@ -4,6 +4,7 @@
  */
 
 #include <linux/prime_numbers.h>
+#include <linux/sort.h>
 
 #include "../i915_selftest.h"
 
@@ -19,6 +20,7 @@
 #include "gem/selftests/mock_context.h"
 #include "gt/intel_engine_user.h"
 #include "gt/intel_gt.h"
+#include "i915_memcpy.h"
 #include "selftests/igt_flush_test.h"
 #include "selftests/i915_random.h"
 
@@ -572,6 +574,195 @@ static int igt_lmem_write_cpu(void *arg)
 	return err;
 }
 
+static const char *repr_type(u32 type)
+{
+	switch (type) {
+	case I915_MAP_WB:
+		return "WB";
+	case I915_MAP_WC:
+		return "WC";
+	}
+
+	return "";
+}
+
+static struct drm_i915_gem_object *
+create_region_for_mapping(struct intel_memory_region *mr, u64 size, u32 type,
+			  void **out_addr)
+{
+	struct drm_i915_gem_object *obj;
+	void *addr;
+
+	obj = i915_gem_object_create_region(mr, size, 0);
+	if (IS_ERR(obj))
+		return obj;
+
+	addr = i915_gem_object_pin_map(obj, type);
+	if (IS_ERR(addr)) {
+		i915_gem_object_put(obj);
+		if (PTR_ERR(addr) == -ENXIO)
+			return ERR_PTR(-ENODEV);
+		return addr;
+	}
+
+	*out_addr = addr;
+	return obj;
+}
+
+static int wrap_ktime_compare(const void *A, const void *B)
+{
+	const ktime_t *a = A, *b = B;
+
+	return ktime_compare(*a, *b);
+}
+
+static void igt_memcpy_long(void *dst, const void *src, size_t size)
+{
+	unsigned long *tmp = dst;
+	const unsigned long *s = src;
+
+	size = size / sizeof(unsigned long);
+	while (size--)
+		*tmp++ = *s++;
+}
+
+static inline void igt_memcpy(void *dst, const void *src, size_t size)
+{
+	memcpy(dst, src, size);
+}
+
+static inline void igt_memcpy_from_wc(void *dst, const void *src, size_t size)
+{
+	i915_memcpy_from_wc(dst, src, size);
+}
+
+static int _perf_memcpy(struct intel_memory_region *src_mr,
+			struct intel_memory_region *dst_mr,
+			u64 size, u32 src_type, u32 dst_type)
+{
+	struct drm_i915_private *i915 = src_mr->i915;
+	const struct {
+		const char *name;
+		void (*copy)(void *dst, const void *src, size_t size);
+		bool skip;
+	} tests[] = {
+		{
+			"memcpy",
+			igt_memcpy,
+		},
+		{
+			"memcpy_long",
+			igt_memcpy_long,
+		},
+		{
+			"memcpy_from_wc",
+			igt_memcpy_from_wc,
+			!i915_has_memcpy_from_wc(),
+		},
+	};
+	struct drm_i915_gem_object *src, *dst;
+	void *src_addr, *dst_addr;
+	int ret = 0;
+	int i;
+
+	src = create_region_for_mapping(src_mr, size, src_type, &src_addr);
+	if (IS_ERR(src)) {
+		ret = PTR_ERR(src);
+		goto out;
+	}
+
+	dst = create_region_for_mapping(dst_mr, size, dst_type, &dst_addr);
+	if (IS_ERR(dst)) {
+		ret = PTR_ERR(dst);
+		goto out_unpin_src;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(tests); ++i) {
+		ktime_t t[5];
+		int pass;
+
+		if (tests[i].skip)
+			continue;
+
+		for (pass = 0; pass < ARRAY_SIZE(t); pass++) {
+			ktime_t t0, t1;
+
+			t0 = ktime_get();
+
+			tests[i].copy(dst_addr, src_addr, size);
+
+			t1 = ktime_get();
+			t[pass] = ktime_sub(t1, t0);
+		}
+
+		sort(t, ARRAY_SIZE(t), sizeof(*t), wrap_ktime_compare, NULL);
+		pr_info("%s src(%s, %s) -> dst(%s, %s) %14s %4llu KiB copy: %5lld MiB/s\n",
+			__func__,
+			src_mr->name,
+			repr_type(src_type),
+			dst_mr->name,
+			repr_type(dst_type),
+			tests[i].name,
+			size >> 10,
+			div64_u64(mul_u32_u32(4 * size,
+					      1000 * 1000 * 1000),
+				  t[1] + 2 * t[2] + t[3]) >> 20);
+
+		cond_resched();
+	}
+
+	i915_gem_object_unpin_map(dst);
+	i915_gem_object_put(dst);
+out_unpin_src:
+	i915_gem_object_unpin_map(src);
+	i915_gem_object_put(src);
+
+	i915_gem_drain_freed_objects(i915);
+out:
+	if (ret == -ENODEV)
+		ret = 0;
+
+	return ret;
+}
+
+static int perf_memcpy(void *arg)
+{
+	struct drm_i915_private *i915 = arg;
+	static const u32 types[] = {
+		I915_MAP_WB,
+		I915_MAP_WC,
+	};
+	static const u32 sizes[] = {
+		SZ_4K,
+		SZ_64K,
+		SZ_4M,
+	};
+	struct intel_memory_region *src_mr, *dst_mr;
+	int src_id, dst_id;
+	int i, j, k;
+	int ret;
+
+	for_each_memory_region(src_mr, i915, src_id) {
+		for_each_memory_region(dst_mr, i915, dst_id) {
+			for (i = 0; i < ARRAY_SIZE(sizes); ++i) {
+				for (j = 0; j < ARRAY_SIZE(types); ++j) {
+					for (k = 0; k < ARRAY_SIZE(types); ++k) {
+						ret = _perf_memcpy(src_mr,
+								   dst_mr,
+								   sizes[i],
+								   types[j],
+								   types[k]);
+						if (ret)
+							return ret;
+					}
+				}
+			}
+		}
+	}
+
+	return 0;
+}
+
 int intel_memory_region_mock_selftests(void)
 {
 	static const struct i915_subtest tests[] = {
@@ -619,3 +810,15 @@ int intel_memory_region_live_selftests(struct drm_i915_private *i915)
 
 	return i915_live_subtests(tests, i915);
 }
+
+int intel_memory_region_perf_selftests(struct drm_i915_private *i915)
+{
+	static const struct i915_subtest tests[] = {
+		SUBTEST(perf_memcpy),
+	};
+
+	if (intel_gt_is_wedged(&i915->gt))
+		return 0;
+
+	return i915_live_subtests(tests, i915);
+}
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
