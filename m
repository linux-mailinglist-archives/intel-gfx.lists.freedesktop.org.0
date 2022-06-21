Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A7E552FC3
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 12:30:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B467D10FA33;
	Tue, 21 Jun 2022 10:30:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70A3510F600;
 Tue, 21 Jun 2022 10:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655807440; x=1687343440;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=m23lFvK9mYGkjeRyGKUn6T40PPowbfDRDLFH2oORPec=;
 b=ZDUJgJUjWmpbBWZ39PmeVym0tqagSfre68rmY+cCzqTTsALC2MtcP11k
 KzT9na5ukoPiKKAx5Ta84aLUnOO1K7vwfUAQBCpI+BdU+N1LUYsbIkgrC
 oY41TpYdlNUv3VC0SRU5id1my5hMOTj5ZfBkq0zDowK9wfdR7jIo8AXmW
 8IsY8TH9DV4qWC/0lN7KXtkDuSyFWvxaOdbv+vfHq6d3zgc0ntzZUM6Qa
 VFGvRr1l+uSTKLpSe2z73XxQ9icpQaQ2LJqvl8Xtbj1J0IutY5WBPj9R7
 CePZ3h1erq5gSVAodWxItvHth87pU5V+nnwNoRXKmm6fmL9PfENz2KWQ2 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="280816952"
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="280816952"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 03:30:21 -0700
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="591596255"
Received: from jasonmor-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.200.10])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 03:30:19 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue, 21 Jun 2022 11:29:58 +0100
Message-Id: <20220621103001.184373-7-matthew.auld@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220621103001.184373-1-matthew.auld@intel.com>
References: <20220621103001.184373-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 6/9] tests/i915/query: sanity check the
 unallocated tracking
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Sanity both the unallocated_size & unallocated_cpu_visible_size tracking.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
---
 tests/i915/i915_query.c | 274 +++++++++++++++++++++++++++++++++++++++-
 1 file changed, 273 insertions(+), 1 deletion(-)

diff --git a/tests/i915/i915_query.c b/tests/i915/i915_query.c
index ea99dc8d..7fbee545 100644
--- a/tests/i915/i915_query.c
+++ b/tests/i915/i915_query.c
@@ -23,6 +23,8 @@
 
 #include "igt.h"
 #include "intel_hwconfig_types.h"
+#include "i915/gem.h"
+#include "i915/gem_create.h"
 
 #include <limits.h>
 
@@ -519,6 +521,36 @@ static bool query_regions_supported(int fd)
  * Should be source compatible either way though.
  */
 #define probed_cpu_visible_size rsvd1[0]
+#define unallocated_cpu_visible_size rsvd1[1]
+static bool query_regions_unallocated_supported(int fd)
+{
+	struct drm_i915_query_memory_regions *regions;
+	struct drm_i915_query_item item;
+	int i, ret = false;
+
+	memset(&item, 0, sizeof(item));
+	item.query_id = DRM_I915_QUERY_MEMORY_REGIONS;
+	i915_query_items(fd, &item, 1);
+	igt_assert(item.length > 0);
+
+	regions = calloc(1, item.length);
+
+	item.data_ptr = to_user_pointer(regions);
+	i915_query_items(fd, &item, 1);
+
+	for (i = 0; i < regions->num_regions; i++) {
+		struct drm_i915_memory_region_info info = regions->regions[i];
+
+		if (info.unallocated_cpu_visible_size) {
+			ret = true;
+			break;
+		}
+	}
+
+	free(regions);
+	return ret;
+}
+
 static void test_query_regions_garbage_items(int fd)
 {
 	struct drm_i915_query_memory_regions *regions;
@@ -559,8 +591,9 @@ static void test_query_regions_garbage_items(int fd)
 
 		/*
 		 * rsvd1[0] : probed_cpu_visible_size
+		 * rsvd1[1] : unallocated_cpu_visible_size
 		 */
-		for (j = 1; j < ARRAY_SIZE(info.rsvd1); j++)
+		for (j = 2; j < ARRAY_SIZE(info.rsvd1); j++)
 			igt_assert_eq_u32(info.rsvd1[j], 0);
 	}
 
@@ -573,6 +606,46 @@ static void test_query_regions_garbage_items(int fd)
 	free(regions);
 }
 
+struct object_handle {
+	uint32_t handle;
+	struct igt_list_head link;
+};
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
+static void upload(int fd, struct igt_list_head *handles, uint32_t num_handles)
+{
+	struct drm_i915_gem_exec_object2 *exec;
+	struct drm_i915_gem_execbuffer2 execbuf = {};
+	struct object_handle *iter;
+	uint32_t i;
+
+	exec = calloc(num_handles + 1,
+		      sizeof(struct drm_i915_gem_exec_object2));
+
+	i = 0;
+	igt_list_for_each_entry(iter, handles, link)
+		exec[i++].handle = iter->handle;
+
+	exec[i].handle = batch_create_size(fd, 4096);
+
+	execbuf.buffers_ptr = to_user_pointer(exec);
+	execbuf.buffer_count = num_handles + 1;
+
+	gem_execbuf(fd, &execbuf);
+	gem_close(fd, exec[i].handle);
+	free(exec);
+}
+
 static void test_query_regions_sanity_check(int fd)
 {
 	struct drm_i915_query_memory_regions *regions;
@@ -605,8 +678,20 @@ static void test_query_regions_sanity_check(int fd)
 
 			igt_assert(info.probed_cpu_visible_size == 0 ||
 				   info.probed_cpu_visible_size == info.probed_size);
+			igt_assert(info.unallocated_size == info.probed_size);
+			igt_assert(info.unallocated_cpu_visible_size == 0 ||
+				   info.unallocated_cpu_visible_size ==
+				   info.unallocated_size);
 		} else {
 			igt_assert(info.probed_cpu_visible_size <= info.probed_size);
+			igt_assert(info.unallocated_size <= info.probed_size);
+			if (info.probed_cpu_visible_size < info.probed_size) {
+				igt_assert(info.unallocated_cpu_visible_size <
+					   info.unallocated_size);
+			} else {
+				igt_assert(info.unallocated_cpu_visible_size ==
+					   info.unallocated_size);
+			}
 		}
 
 		igt_assert(r1.memory_class == I915_MEMORY_CLASS_SYSTEM ||
@@ -623,6 +708,58 @@ static void test_query_regions_sanity_check(int fd)
 			igt_assert(!(r1.memory_class == r2.memory_class &&
 				     r1.memory_instance == r2.memory_instance));
 		}
+
+		{
+			struct igt_list_head handles;
+			struct object_handle oh = {};
+
+			IGT_INIT_LIST_HEAD(&handles);
+
+			oh.handle =
+				gem_create_with_cpu_access_in_memory_regions
+				(fd, 4096,
+				 INTEL_MEMORY_REGION_ID(r1.memory_class,
+							r1.memory_instance));
+			igt_list_add(&oh.link, &handles);
+			upload(fd, &handles, 1);
+
+			/*
+			 * System wide metrics should be censored if we
+			 * lack the correct permissions.
+			 */
+			igt_fork(child, 1) {
+				igt_drop_root();
+
+				memset(regions, 0, item.length);
+				i915_query_items(fd, &item, 1);
+				info = regions->regions[i];
+
+				igt_assert(info.unallocated_cpu_visible_size ==
+					   info.probed_cpu_visible_size);
+				igt_assert(info.unallocated_size ==
+					   info.probed_size);
+			}
+
+			igt_waitchildren();
+
+			memset(regions, 0, item.length);
+			i915_query_items(fd, &item, 1);
+			info = regions->regions[i];
+
+			if (r1.memory_class == I915_MEMORY_CLASS_DEVICE) {
+				igt_assert(info.unallocated_cpu_visible_size <
+					   info.probed_cpu_visible_size);
+				igt_assert(info.unallocated_size <
+					   info.probed_size);
+			} else {
+				igt_assert(info.unallocated_cpu_visible_size ==
+					   info.probed_cpu_visible_size);
+				igt_assert(info.unallocated_size ==
+					   info.probed_size);
+			}
+
+			gem_close(fd, oh.handle);
+		}
 	}
 
 	/* All devices should at least have system memory */
@@ -631,6 +768,134 @@ static void test_query_regions_sanity_check(int fd)
 	free(regions);
 }
 
+#define rounddown(x, y) (x - (x % y))
+#define SZ_64K (1ULL << 16)
+
+static void fill_unallocated(int fd, struct drm_i915_query_item *item, int idx,
+			     bool cpu_access)
+{
+	struct drm_i915_memory_region_info new_info, old_info;
+	struct drm_i915_query_memory_regions *regions;
+	struct drm_i915_gem_memory_class_instance ci;
+	struct object_handle *iter, *tmp;
+	struct igt_list_head handles;
+	uint32_t num_handles;
+	uint64_t rem, total;
+	int id;
+
+	srand(time(NULL));
+
+	IGT_INIT_LIST_HEAD(&handles);
+
+	regions = (struct drm_i915_query_memory_regions *)item->data_ptr;
+	memset(regions, 0, item->length);
+	i915_query_items(fd, item, 1);
+	new_info = regions->regions[idx];
+	ci = new_info.region;
+
+	id = INTEL_MEMORY_REGION_ID(ci.memory_class, ci.memory_instance);
+
+	if (cpu_access)
+		rem = new_info.unallocated_cpu_visible_size / 4;
+	else
+		rem = new_info.unallocated_size / 4;
+
+	rem = rounddown(rem, SZ_64K);
+	igt_assert_neq(rem, 0);
+	num_handles = 0;
+	total = 0;
+	do {
+		struct object_handle *oh;
+		uint64_t size;
+
+		size = rand() % rem;
+		size = rounddown(size, SZ_64K);
+		size = max_t(uint64_t, size, SZ_64K);
+
+		oh = malloc(sizeof(struct object_handle));
+		if (cpu_access)
+			oh->handle = gem_create_with_cpu_access_in_memory_regions(fd, size, id);
+		else
+			oh->handle = gem_create_in_memory_region_list(fd, size, 0, &ci, 1);
+		igt_list_add(&oh->link, &handles);
+
+		num_handles++;
+		total += size;
+		rem -= size;
+	} while (rem);
+
+	upload(fd, &handles, num_handles);
+
+	old_info = new_info;
+	memset(regions, 0, item->length);
+	i915_query_items(fd, item, 1);
+	new_info = regions->regions[idx];
+
+	igt_assert_lte(new_info.unallocated_size,
+		       new_info.probed_size - total);
+	igt_assert_lt(new_info.unallocated_size, old_info.unallocated_size);
+	if (new_info.probed_cpu_visible_size ==
+	    new_info.probed_size) { /* full BAR */
+		igt_assert_eq(new_info.unallocated_cpu_visible_size,
+			      new_info.unallocated_size);
+	} else if (cpu_access) {
+		igt_assert_lt(new_info.unallocated_cpu_visible_size,
+			      old_info.unallocated_cpu_visible_size);
+		igt_assert_lte(new_info.unallocated_cpu_visible_size,
+			       new_info.probed_cpu_visible_size - total);
+	}
+
+	igt_debug("fill completed with idx=%d, total=%"PRIu64"KiB, num_handles=%u\n",
+		  idx, total >> 10, num_handles);
+
+	igt_list_for_each_entry_safe(iter, tmp, &handles, link) {
+		gem_close(fd, iter->handle);
+		free(iter);
+	}
+
+	igt_drop_caches_set(fd, DROP_ALL);
+
+	old_info = new_info;
+	memset(regions, 0, item->length);
+	i915_query_items(fd, item, 1);
+	new_info = regions->regions[idx];
+
+	igt_assert(new_info.unallocated_size >=
+		   old_info.unallocated_size + total);
+	if (cpu_access)
+		igt_assert(new_info.unallocated_cpu_visible_size >=
+			   old_info.unallocated_cpu_visible_size + total);
+}
+
+static void test_query_regions_unallocated(int fd)
+{
+	struct drm_i915_query_memory_regions *regions;
+	struct drm_i915_query_item item;
+	int i;
+
+	memset(&item, 0, sizeof(item));
+	item.query_id = DRM_I915_QUERY_MEMORY_REGIONS;
+	i915_query_items(fd, &item, 1);
+	igt_assert(item.length > 0);
+
+	regions = calloc(1, item.length);
+
+	item.data_ptr = to_user_pointer(regions);
+	i915_query_items(fd, &item, 1);
+
+	igt_assert(regions->num_regions);
+
+	for (i = 0; i < regions->num_regions; i++) {
+		struct drm_i915_memory_region_info info = regions->regions[i];
+		struct drm_i915_gem_memory_class_instance ci = info.region;
+
+		if (ci.memory_class == I915_MEMORY_CLASS_DEVICE) {
+			fill_unallocated(fd, &item, i, true);
+			fill_unallocated(fd, &item, i, false);
+		}
+	}
+}
+
 static bool query_engine_info_supported(int fd)
 {
 	struct drm_i915_query_item item = {
@@ -1173,6 +1438,13 @@ igt_main
 		test_query_regions_sanity_check(fd);
 	}
 
+	igt_describe("Sanity check the region unallocated tracking");
+	igt_subtest("query-regions-unallocated") {
+		igt_require(query_regions_supported(fd));
+		igt_require(query_regions_unallocated_supported(fd));
+		test_query_regions_unallocated(fd);
+	}
+
 	igt_subtest_group {
 		igt_fixture {
 			igt_require(query_engine_info_supported(fd));
-- 
2.36.1

