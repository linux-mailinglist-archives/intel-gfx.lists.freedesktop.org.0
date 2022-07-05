Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F685669B8
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jul 2022 13:35:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0FA711373F;
	Tue,  5 Jul 2022 11:31:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80D5310E021;
 Tue,  5 Jul 2022 10:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657016154; x=1688552154;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=acOxwPIYXoBsMWLKRdLenUXoPkGzSh/6HNvwWH3VdwI=;
 b=OxTQQZZYw2K6o/i79XXfJuYBMPABNk2vqOFZve6PaMqPV+Bc+TVNoDfR
 yGWH4HuUvA4ydP8oxbUag+FVcuuwAGdAVad8RzFnuNbggRdWqJhiZqEU8
 bPjBppnvOEFfpCnuKKep7DXg18yJ+WGCrXduyf2mVEkzIi8fX0APF1oBB
 Aaff1KD1fgr3Dv0qWaUjsLr1gZ5UARtuZFMZqg1CQydeveHSFUzxI8rdF
 Vxqrvr+gYQ5pOJ4mCo2PoRIdloDIaTtCpFRsNNStRsoaXMxptn2jDl/F3
 NQV63pXNPijMNu2nMpP5+G100mr+OK/1iIrQ42KItEgeEbnzxlvGxvryT A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10398"; a="263105842"
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="263105842"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2022 03:15:54 -0700
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="919658587"
Received: from dilipban-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.227.194])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2022 03:15:53 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue,  5 Jul 2022 11:15:42 +0100
Message-Id: <20220705101542.116141-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] tests/i915_query: tweak the unallocated
 tracking test
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Make sure we always print the seed. Also make sure we use the correct
helpers for the igt_assert when comparing values of type uint64.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Nirmoy Das <nirmoy.das@linux.intel.com>
---
 tests/i915/i915_query.c | 36 +++++++++++++++++++-----------------
 1 file changed, 19 insertions(+), 17 deletions(-)

diff --git a/tests/i915/i915_query.c b/tests/i915/i915_query.c
index 840b4864..4abd3edc 100644
--- a/tests/i915/i915_query.c
+++ b/tests/i915/i915_query.c
@@ -784,9 +784,11 @@ static void fill_unallocated(int fd, struct drm_i915_query_item *item, int idx,
 	struct igt_list_head handles;
 	uint32_t num_handles;
 	uint64_t rem, total;
+	unsigned int seed;
 	int id;
 
-	srand(time(NULL));
+	seed = time(NULL);
+	srand(seed);
 
 	IGT_INIT_LIST_HEAD(&handles);
 
@@ -829,28 +831,28 @@ static void fill_unallocated(int fd, struct drm_i915_query_item *item, int idx,
 
 	upload(fd, &handles, num_handles);
 
+	igt_debug("fill completed with seed=%u, cpu_access=%d, idx=%d, total=%"PRIu64"KiB, num_handles=%u\n",
+		  seed, cpu_access, idx, total >> 10, num_handles);
+
 	old_info = new_info;
 	memset(regions, 0, item->length);
 	i915_query_items(fd, item, 1);
 	new_info = regions->regions[idx];
 
-	igt_assert_lte(new_info.unallocated_size,
-		       new_info.probed_size - total);
-	igt_assert_lt(new_info.unallocated_size, old_info.unallocated_size);
+	igt_assert_lte_u64(new_info.unallocated_size,
+			   new_info.probed_size - total);
+	igt_assert_lt_u64(new_info.unallocated_size, old_info.unallocated_size);
 	if (new_info.probed_cpu_visible_size ==
 	    new_info.probed_size) { /* full BAR */
-		igt_assert_eq(new_info.unallocated_cpu_visible_size,
-			      new_info.unallocated_size);
+		igt_assert_eq_u64(new_info.unallocated_cpu_visible_size,
+				  new_info.unallocated_size);
 	} else if (cpu_access) {
-		igt_assert_lt(new_info.unallocated_cpu_visible_size,
-			      old_info.unallocated_cpu_visible_size);
-		igt_assert_lte(new_info.unallocated_cpu_visible_size,
-			       new_info.probed_cpu_visible_size - total);
+		igt_assert_lt_u64(new_info.unallocated_cpu_visible_size,
+				  old_info.unallocated_cpu_visible_size);
+		igt_assert_lte_u64(new_info.unallocated_cpu_visible_size,
+				   new_info.probed_cpu_visible_size - total);
 	}
 
-	igt_debug("fill completed with idx=%d, total=%"PRIu64"KiB, num_handles=%u\n",
-		  idx, total >> 10, num_handles);
-
 	igt_list_for_each_entry_safe(iter, tmp, &handles, link) {
 		gem_close(fd, iter->handle);
 		free(iter);
@@ -863,11 +865,11 @@ static void fill_unallocated(int fd, struct drm_i915_query_item *item, int idx,
 	i915_query_items(fd, item, 1);
 	new_info = regions->regions[idx];
 
-	igt_assert(new_info.unallocated_size >=
-		   old_info.unallocated_size + total);
+	igt_assert_lt_u64(old_info.unallocated_size + total,
+			  new_info.unallocated_size);
 	if (cpu_access)
-		igt_assert(new_info.unallocated_cpu_visible_size >=
-			   old_info.unallocated_cpu_visible_size + total);
+		igt_assert_lt_u64(old_info.unallocated_cpu_visible_size + total,
+				  new_info.unallocated_cpu_visible_size);
 }
 
 static void test_query_regions_unallocated(int fd)
-- 
2.36.1

