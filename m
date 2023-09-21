Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F017A93E8
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 13:46:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 626EB10E5D2;
	Thu, 21 Sep 2023 11:46:12 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E81210E5CA;
 Thu, 21 Sep 2023 11:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695296768; x=1726832768;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TFxRFMU9wOxMomPA7cHhrAEECpZvX0dQDCBt5qMjtgU=;
 b=dpzQHRcc4j0+YJ3vxLLL7jAVOadZJPj6EJPGtJlJeKViFeGcaavrNdlH
 1aTnV0a4oBZrjoPvAJYKeHty3RwLL8l9SIphJZeibII8vUKZBN5I1TBsV
 eG4Q/KkTaz1eXtE765g7oEHZYWeU0oAMewsYchWnVA34wF5A5/uIhD2ix
 +4AOpcz4ZXKXzDrQxq8cvFgP0ZkJms+Zp1NaUI5AB7H0z19jjFMlMHk/N
 0Zo6h+zhRTlKC8JzxXw8YWeU1XCvFCZBDZAcM73lIxdbTr4EJN8J8SClB
 YOd2yGJMbMtpogCaKpFexE4fOCGEKyHuXneYFQz4bEY2tboRUT6kXlBji g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="359877299"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="359877299"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 04:46:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="817352780"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="817352780"
Received: from asilke-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.199.249])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 04:46:07 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Thu, 21 Sep 2023 12:45:57 +0100
Message-Id: <20230921114557.192629-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230921114557.192629-1-tvrtko.ursulin@linux.intel.com>
References: <20230921114557.192629-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 2/2] tests/i915/drm_fdinfo: Add some
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
 tests/intel/drm_fdinfo.c | 201 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 201 insertions(+)

diff --git a/tests/intel/drm_fdinfo.c b/tests/intel/drm_fdinfo.c
index a9910900358d..b5f1010d2fd4 100644
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
@@ -772,6 +788,156 @@ static void stress_context_close(int i915)
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
+#define fdinfo_assert(cond, d, sz, total) \
+	igt_assert_f(cond, "\ndelta=%"PRIu64" sz=%"PRIu64" total=%"PRIu64"\n%s\n", d, sz, total, fdinfo_buf)
+
+static void
+test_memory(int i915, struct gem_memory_region *r, unsigned int flags)
+{
+	struct drm_client_fdinfo prev_info = { };
+	struct drm_client_fdinfo info = { };
+	const uint64_t max_mem = 512ull * 1024 * 1024;
+	const uint64_t max_bo = 16ull * 1024 * 1024;
+	uint64_t total = 0, sz, d;
+	char buf[64], fdinfo_buf[4096];
+	igt_spin_t *spin = NULL;
+	int ret, dir;
+
+	i915 = drm_reopen_driver(i915);
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
+
+	while (total < max_mem) {
+		static const char *region_map[] = {
+			"system",
+			"lmem0",
+		};
+		uint32_t bo;
+		int j;
+
+		/* Align to 1MiB to work around drm_print_memory_stats */
+		sz = 1ull * 1024 * 1024 + random() % (max_bo - 1ull * 1024 * 1024);
+		sz &= ~((1ull * 1024 * 1024) - 1);
+		ret = __gem_create_in_memory_region_list(i915, &bo, &sz, 0, &r->ci, 1);
+		igt_assert_eq(ret, 0);
+		total += sz;
+
+		if (flags & (TEST_RESIDENT | TEST_PURGEABLE)) {
+			struct drm_i915_gem_exec_object2 obj[2];
+			struct drm_i915_gem_execbuffer2 eb = {
+				.buffers_ptr = to_user_pointer(obj),
+				.buffer_count = 2,
+			};
+			const uint32_t bbe = MI_BATCH_BUFFER_END;
+
+			obj[0].handle = bo;
+			obj[1].handle = gem_create(i915, 4096);
+			gem_write(i915, obj[1].handle, 0, &bbe, sizeof(bbe));
+			gem_execbuf(i915, &eb);
+			gem_sync(i915, obj[1].handle);
+			gem_close(i915, obj[1].handle);
+		}
+
+		if (flags & TEST_PURGEABLE)
+			gem_madvise(i915, bo, I915_MADV_DONTNEED);
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
+		if (flags & TEST_ACTIVE)
+			spin = igt_spin_new(i915, .dependency = bo);
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
+		/* See region map */
+		j = r->ci.memory_class == I915_MEMORY_CLASS_SYSTEM ? 0 : 1;
+
+		fdinfo_assert(info.region_mem[j].total > prev_info.region_mem[j].total, d, sz, total);
+
+		d = info.region_mem[j].total - prev_info.region_mem[j].total;
+		/* >= to account for objects out of our control */
+		fdinfo_assert(d >= sz, d, sz, total);
+
+		d = info.region_mem[j].resident - prev_info.region_mem[j].resident;
+		if (flags & (TEST_RESIDENT | TEST_PURGEABLE | TEST_ACTIVE))
+			fdinfo_assert(d >= sz, d, sz, total);
+		else
+			fdinfo_assert(d < sz, d, sz, total);
+
+		d = info.region_mem[j].shared - prev_info.region_mem[j].shared;
+		if (flags & TEST_SHARED)
+			fdinfo_assert(d >= sz, d, sz, total);
+		else
+			fdinfo_assert(d == 0, d, sz, total);
+
+		d = info.region_mem[j].purgeable - prev_info.region_mem[j].purgeable;
+		if (flags & TEST_PURGEABLE)
+			fdinfo_assert(d >= sz, d, sz, total);
+		else
+			fdinfo_assert(d < sz, d, sz, total);
+
+		/* Active is one at a time so can't use delta */
+		if (flags & TEST_ACTIVE)
+			fdinfo_assert(info.region_mem[j].active >= sz, d, sz, total);
+		else
+			fdinfo_assert(info.region_mem[j].active < sz, d, sz, total);
+
+		memcpy(&prev_info, &info, sizeof(info));
+
+		if (flags & TEST_ACTIVE) {
+			igt_spin_free(i915, spin);
+			gem_quiescent_gpu(i915);
+		}
+	}
+
+	close(i915);
+}
+
 #define test_each_engine(T, i915, ctx, e) \
 	igt_subtest_with_dynamic(T) for_each_ctx_engine(i915, ctx, e) \
 		igt_dynamic_f("%s", e->name)
@@ -902,6 +1068,41 @@ igt_main
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

