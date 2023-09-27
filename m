Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A69287B0532
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Sep 2023 15:20:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DF5310E519;
	Wed, 27 Sep 2023 13:20:24 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D7E510E518;
 Wed, 27 Sep 2023 13:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695820821; x=1727356821;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2olQK/hAUYHQ09bv/2Qjp66yQIsjih62Vg7mBYt7MFc=;
 b=W4nm2WFkPv/zfGdKHixk333xKPcugKY06EgyMbREelc4tWgvKuhVEkN5
 EhC9esCA34PeDZQYoNlWvtrJTBK80UcliXnHNUxyZFaP42Ord2GrKBj93
 sOcGpsbnV7HVr4eil0qTL3yQEX1fBbtPpiju/AHCE+F4Ai7ANXfo45r/y
 MdumZhUl/f7kdlPotSYb6tW5fd6z4HV2Fs4Ilfrlqkrj54J1QeoOPkjnQ
 vd3CnWzbcCSf6wBz2g1uMjypXsuToSs/N/vLcNT2Nf3XLfbDzN2oqxmLt
 7F2dRJ3KXdVVca8v6kIZfCoPLZNZdX8ZFPTxlk6+/nV7EUPsAQbNmMVXR A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="448313774"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; d="scan'208";a="448313774"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 06:20:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="698872058"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; d="scan'208";a="698872058"
Received: from mscanex-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.204.17])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 06:20:19 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Wed, 27 Sep 2023 14:20:12 +0100
Message-Id: <20230927132012.246640-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230922134437.234888-3-tvrtko.ursulin@linux.intel.com>
References: <20230922134437.234888-3-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 02/12] tests/i915/drm_fdinfo: Add some
 memory info tests
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

A few basic smoke tests to check per client memory info looks legit.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tests/intel/drm_fdinfo.c | 217 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 217 insertions(+)

diff --git a/tests/intel/drm_fdinfo.c b/tests/intel/drm_fdinfo.c
index a9910900358d..392ad510c34d 100644
--- a/tests/intel/drm_fdinfo.c
+++ b/tests/intel/drm_fdinfo.c
@@ -23,6 +23,7 @@
  */
 
 #include <fcntl.h>
+#include <sys/ioctl.h>
 
 #include "igt.h"
 #include "igt_core.h"
@@ -76,6 +77,16 @@
  *
  * SUBTEST: virtual-idle
  *
+ * SUBTEST: memory-info-idle
+ *
+ * SUBTEST: memory-info-active
+ *
+ * SUBTEST: memory-info-resident
+ *
+ * SUBTEST: memory-info-purgeable
+ *
+ * SUBTEST: memory-info-shared
+ *
  * SUBTEST: context-close-stress
  */
 
@@ -143,6 +154,11 @@ static unsigned int measured_usleep(unsigned int usec)
 #define FLAG_HANG (8)
 #define TEST_ISOLATION (16)
 
+#define TEST_ACTIVE TEST_BUSY
+#define TEST_RESIDENT (32)
+#define TEST_PURGEABLE (64)
+#define TEST_SHARED (128)
+
 static void end_spin(int fd, igt_spin_t *spin, unsigned int flags)
 {
 	if (!spin)
@@ -772,6 +788,172 @@ static void stress_context_close(int i915)
 	igt_stop_helper(&reader);
 }
 
+static size_t read_fdinfo(char *buf, const size_t sz, int at, const char *name)
+{
+	size_t count;
+	int fd;
+
+	fd = openat(at, name, O_RDONLY);
+	if (fd < 0)
+		return 0;
+
+	count = read(fd, buf, sz - 1);
+	if (count > 0)
+		buf[count - 1] = 0;
+	close(fd);
+
+	return count > 0 ? count : 0;
+}
+
+/*
+ * At least this much, but maybe less if we started with a driver internal
+ * baseline which can go away behind our back.
+ */
+#define fdinfo_assert_gte(cur, prev, sz, base) \
+({ \
+	int64_t __sz = (sz) - (base); \
+	int64_t __d = (cur) - (prev); \
+	igt_assert_f(__d >= __sz, \
+		     "prev=%"PRIu64" cur=%"PRIu64" delta=%"PRId64" sz=%"PRIu64" baseline=%"PRIu64"\n%s\n", \
+		     (prev), (cur), __d, (sz), (base), fdinfo_buf); \
+})
+
+#define fdinfo_assert_eq(cur, prev, sz, base) \
+({ \
+	int64_t __d = (cur) - (prev); \
+	igt_assert_f(__d == 0, \
+		     "prev=%"PRIu64" cur=%"PRIu64" delta=%"PRId64" sz=%"PRIu64" baseline=%"PRIu64"\n%s\n", \
+		     (prev), (cur), __d, (sz), (base), fdinfo_buf); \
+})
+
+static void
+test_memory(int i915, struct gem_memory_region *mr, unsigned int flags)
+{
+	const unsigned int r = mr->ci.memory_class == I915_MEMORY_CLASS_SYSTEM ? 0 : 1; /* See region map */
+	const uint64_t max_mem = 512ull * 1024 * 1024;
+	const uint64_t max_bo = 16ull * 1024 * 1024;
+	struct drm_client_fdinfo base_info, prev_info = { };
+	struct drm_client_fdinfo info = { };
+	char buf[64], fdinfo_buf[4096];
+	igt_spin_t *spin = NULL;
+	uint64_t total = 0, sz;
+	uint64_t ahnd;
+	int ret, dir;
+
+	i915 = drm_reopen_driver(i915);
+
+	ahnd = get_reloc_ahnd(i915, 0);
+
+	ret = snprintf(buf, sizeof(buf), "%u", i915);
+	igt_assert(ret > 0 && ret < sizeof(buf));
+
+	dir = open("/proc/self/fdinfo", O_DIRECTORY | O_RDONLY);
+	igt_assert_fd(dir);
+
+	gem_quiescent_gpu(i915);
+	ret =  __igt_parse_drm_fdinfo(dir, buf, &info, NULL, 0, NULL, 0);
+	igt_assert(ret > 0);
+	igt_require(info.num_regions);
+	memcpy(&prev_info, &info, sizeof(info));
+	memcpy(&base_info, &info, sizeof(info));
+
+	while (total < max_mem) {
+		static const char *region_map[] = {
+			"system0",
+			"local0",
+		};
+		uint32_t bo;
+
+		sz = random() % max_bo;
+		ret = __gem_create_in_memory_region_list(i915, &bo, &sz, 0,
+							 &mr->ci, 1);
+		igt_assert_eq(ret, 0);
+		total += sz;
+
+		if (flags & (TEST_RESIDENT | TEST_PURGEABLE | TEST_ACTIVE))
+			spin = igt_spin_new(i915,
+					    .dependency = bo,
+					    .ahnd = ahnd);
+		else
+			spin = NULL;
+
+		if (flags & TEST_PURGEABLE) {
+			gem_madvise(i915, bo, I915_MADV_DONTNEED);
+			igt_spin_free(i915, spin);
+			gem_quiescent_gpu(i915);
+			spin = NULL;
+		}
+
+		if (flags & TEST_SHARED) {
+			struct drm_gem_open open_struct;
+			struct drm_gem_flink flink;
+
+			flink.handle = bo;
+			ret = ioctl(i915, DRM_IOCTL_GEM_FLINK, &flink);
+			igt_assert_eq(ret, 0);
+
+			open_struct.name = flink.name;
+			ret = ioctl(i915, DRM_IOCTL_GEM_OPEN, &open_struct);
+			igt_assert_eq(ret, 0);
+			igt_assert(open_struct.handle != 0);
+		}
+
+		memset(&info, 0, sizeof(info));
+		ret =  __igt_parse_drm_fdinfo(dir, buf, &info,
+					      NULL, 0,
+					      region_map, ARRAY_SIZE(region_map));
+		igt_assert(ret > 0);
+		igt_assert(info.num_regions);
+
+		read_fdinfo(fdinfo_buf, sizeof(fdinfo_buf), dir, buf);
+
+		/* >= to account for objects out of our control */
+		fdinfo_assert_gte(info.region_mem[r].total,
+				  prev_info.region_mem[r].total,
+				  sz,
+				  base_info.region_mem[r].total);
+
+		if (flags & TEST_SHARED)
+			fdinfo_assert_gte(info.region_mem[r].shared,
+					  prev_info.region_mem[r].shared,
+					  sz,
+					  base_info.region_mem[r].shared);
+		else
+			fdinfo_assert_eq(info.region_mem[r].shared,
+					 prev_info.region_mem[r].shared,
+					 sz,
+					 base_info.region_mem[r].shared);
+
+		if (flags & TEST_PURGEABLE)
+			fdinfo_assert_gte(info.region_mem[r].purgeable,
+					  prev_info.region_mem[r].purgeable,
+					  sz,
+					  base_info.region_mem[r].purgeable);
+
+		if (flags & (TEST_RESIDENT | TEST_PURGEABLE | TEST_ACTIVE))
+			fdinfo_assert_gte(info.region_mem[r].resident,
+					  (uint64_t)0, /* We can only be sure the current buffer is resident. */
+					  sz,
+					  (uint64_t)0);
+
+		if (flags & TEST_ACTIVE)
+			fdinfo_assert_gte(info.region_mem[r].active,
+					  (uint64_t)0, /* We can only be sure the current buffer is active. */
+					  sz,
+					  (uint64_t)0);
+
+		memcpy(&prev_info, &info, sizeof(info));
+
+		if (spin) {
+			igt_spin_free(i915, spin);
+			gem_quiescent_gpu(i915);
+		}
+	}
+
+	put_ahnd(ahnd);
+	close(i915);
+}
+
 #define test_each_engine(T, i915, ctx, e) \
 	igt_subtest_with_dynamic(T) for_each_ctx_engine(i915, ctx, e) \
 		igt_dynamic_f("%s", e->name)
@@ -902,6 +1084,41 @@ igt_main
 	test_each_engine("isolation", i915, ctx, e)
 		single(i915, ctx, e, TEST_BUSY | TEST_ISOLATION);
 
+	igt_subtest_with_dynamic("memory-info-idle") {
+		for_each_memory_region(r, i915) {
+			igt_dynamic_f("%s", r->name)
+				test_memory(i915, r, 0);
+		}
+	}
+
+	igt_subtest_with_dynamic("memory-info-resident") {
+		for_each_memory_region(r, i915) {
+			igt_dynamic_f("%s", r->name)
+				test_memory(i915, r, TEST_RESIDENT);
+		}
+	}
+
+	igt_subtest_with_dynamic("memory-info-purgeable") {
+		for_each_memory_region(r, i915) {
+			igt_dynamic_f("%s", r->name)
+				test_memory(i915, r, TEST_PURGEABLE);
+		}
+	}
+
+	igt_subtest_with_dynamic("memory-info-active") {
+		for_each_memory_region(r, i915) {
+			igt_dynamic_f("%s", r->name)
+				test_memory(i915, r, TEST_ACTIVE);
+		}
+	}
+
+	igt_subtest_with_dynamic("memory-info-shared") {
+		for_each_memory_region(r, i915) {
+			igt_dynamic_f("%s", r->name)
+				test_memory(i915, r, TEST_SHARED);
+		}
+	}
+
 	igt_subtest_group {
 		int newfd;
 
-- 
2.39.2

