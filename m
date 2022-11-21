Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5378E63296F
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 17:30:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 374F310E121;
	Mon, 21 Nov 2022 16:30:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E44A10E17F;
 Mon, 21 Nov 2022 16:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669048199; x=1700584199;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Z1ncEOzF/gXcekCYZ7eE5JPAT0Pm+tqoqhAR5UNdnSI=;
 b=fLteujyjyBY+aJyOA0RnC433M8PbcdPugrpewnt4pHyydcltMf79NTag
 MIW0yV9B4tdD3ady0hGf4Wx52y3i+mxdt8yX5Oj1jitYfPebAqxOR6TM3
 3rx3Nz4URBsrFRmR29OyKMD7pz2wyhPcJcgN0w1K7qRViwVXK5WPqcZ1H
 9nE/wuQbpm3YHJ+AJtkQ2M2kN6ihSDdNJgbAXqycYOvO2u4RNWnrgvQrY
 FztfaBxesQDsWff3Rul9mtMXvhy61A09BeL2Jhy78QyoclF2DP2RWS/5r
 i2ulXhVn7aG6r38IPn/JF9QKe8FsX+1FCzLrUM/DYW+u0rpHaORpnyOIA Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="340462721"
X-IronPort-AV: E=Sophos;i="5.96,181,1665471600"; d="scan'208";a="340462721"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 08:29:58 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="709868227"
X-IronPort-AV: E=Sophos;i="5.96,181,1665471600"; d="scan'208";a="709868227"
Received: from ddacost1-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.19.20])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 08:29:57 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 21 Nov 2022 16:29:36 +0000
Message-Id: <20221121162936.42855-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2] tests/i915/gem_lmem_evict: verify
 async eviction with madvise
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
Cc: intel-gfx@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Simple regression test for lmem to check if an in-progress async unbind
and eviction is syncronised with discarding the pages when marking
the object as DONTNEED.

v2: Convert into new test to avoid damaging other test when forcing the
lmem_size and unloading the driver.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
---
 tests/i915/gem_lmem_evict.c | 138 ++++++++++++++++++++++++++++++++++++
 tests/meson.build           |   1 +
 2 files changed, 139 insertions(+)
 create mode 100644 tests/i915/gem_lmem_evict.c

diff --git a/tests/i915/gem_lmem_evict.c b/tests/i915/gem_lmem_evict.c
new file mode 100644
index 00000000..71a066de
--- /dev/null
+++ b/tests/i915/gem_lmem_evict.c
@@ -0,0 +1,138 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#include "igt.h"
+#include "igt_kmod.h"
+#include "i915/gem_create.h"
+#include "i915/gem.h"
+
+IGT_TEST_DESCRIPTION("Force tiny lmem size for easily testing eviction scenarios.");
+
+#define PAGE_SIZE 4096
+
+static uint32_t batch_create_size(int fd, uint64_t size)
+{
+	const uint32_t bbe = MI_BATCH_BUFFER_END;
+	uint32_t handle;
+
+	handle = gem_create(fd, size);
+	gem_write(fd, handle, 0, &bbe, sizeof(bbe));
+
+	return handle;
+}
+
+static int upload(int fd, uint32_t handle)
+{
+	struct drm_i915_gem_exec_object2 exec[2] = {};
+	struct drm_i915_gem_execbuffer2 execbuf = {
+		.buffers_ptr = to_user_pointer(&exec),
+		.buffer_count = 2,
+	};
+
+	exec[0].handle = handle;
+	exec[0].flags = EXEC_OBJECT_SUPPORTS_48B_ADDRESS;
+	exec[1].handle = batch_create_size(fd, PAGE_SIZE);
+	exec[1].flags = EXEC_OBJECT_SUPPORTS_48B_ADDRESS;
+
+	gem_execbuf(fd, &execbuf);
+	return 0;
+}
+
+static void test_dontneed_evict_race(int fd,
+				     struct gem_memory_region *region)
+{
+	const uint64_t size = region->size >> 1;
+	uint64_t ahnd = get_reloc_ahnd(fd, 0);
+	uint32_t handle1;
+	igt_spin_t *spin;
+
+	handle1 = gem_create_in_memory_region_list(fd, size, 0,
+						   &region->ci, 1);
+	spin = igt_spin_new(fd,
+			    .ahnd = ahnd,
+			    .dependency = handle1);
+
+	igt_fork(child, 1) {
+		uint32_t handle2;
+
+		fd = gem_reopen_driver(fd);
+
+		handle2 = gem_create_in_memory_region_list(fd,
+							   size, 0,
+							   &region->ci, 1);
+		/*
+		 * The actual move when evicting will be pipelined
+		 * behind the spinner, so can't fire until the spinner
+		 * is killed.
+		 */
+		upload(fd, handle2);
+		gem_close(fd, handle2);
+	}
+
+	sleep(2); /* Give eviction time to find handle1 */
+	igt_spin_end(spin);
+	gem_madvise(fd, handle1, I915_MADV_DONTNEED);
+	igt_waitchildren();
+
+	igt_spin_free(fd, spin);
+	gem_close(fd, handle1);
+}
+
+igt_main
+{
+	struct drm_i915_query_memory_regions *regions;
+	int i915 = -1;
+
+	igt_fixture {
+		char *tmp;
+
+		if (igt_kmod_is_loaded("i915")) {
+			i915 = __drm_open_driver(DRIVER_INTEL);
+			igt_require_fd(i915);
+			igt_require_gem(i915);
+			igt_require(gem_has_lmem(i915));
+			close(i915);
+		}
+
+		igt_i915_driver_unload();
+		/*
+		 * To avoid running of ring space and stalling during evicting
+		 * (while holding the dma-resv lock), we need to use a smaller
+		 * lmem size, such we can easliy trigger eviction without
+		 * needing to wait for more ring space. The point of the test is
+		 * to mark the object as DONTNEED which has an in-progress
+		 * pipilined unbind/move, which also requires grabbing the
+		 * dma-resv lock.
+		 */
+		igt_assert_eq(igt_i915_driver_load("lmem_size=128"), 0);
+
+		i915 = __drm_open_driver(DRIVER_INTEL);
+		igt_require_fd(i915);
+		igt_require_gem(i915);
+		igt_require(gem_has_lmem(i915));
+
+		tmp = __igt_params_get(i915, "lmem_size");
+		igt_skip_on(!tmp);
+		free(tmp);
+
+		regions = gem_get_query_memory_regions(i915);
+		igt_require(regions);
+	}
+
+	igt_describe("Regression test to verify that madvise will sync against busy dma-resv object for lmem");
+	igt_subtest("dontneed-evict-race") {
+		for_each_memory_region(r, i915) {
+			if (r->ci.memory_class == I915_MEMORY_CLASS_DEVICE) {
+				test_dontneed_evict_race(i915, r);
+				break;
+			}
+		}
+	}
+
+	igt_fixture {
+		close(i915);
+		igt_i915_driver_unload();
+	}
+}
diff --git a/tests/meson.build b/tests/meson.build
index 12e53e0b..5c052e73 100644
--- a/tests/meson.build
+++ b/tests/meson.build
@@ -160,6 +160,7 @@ i915_progs = [
 	'gem_gtt_speed',
 	'gem_huc_copy',
 	'gem_linear_blits',
+	'gem_lmem_evict',
 	'gem_lmem_swapping',
 	'gem_lut_handle',
 	'gem_madvise',
-- 
2.38.1

