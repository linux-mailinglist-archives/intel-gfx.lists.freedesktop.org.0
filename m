Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6E9552FC4
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 12:30:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E122A10FA61;
	Tue, 21 Jun 2022 10:30:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 276D910F211;
 Tue, 21 Jun 2022 10:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655807440; x=1687343440;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CkzqznBqXC1nWfFt08Z56kncck6Ug+COQJKVsjFkGQ0=;
 b=fRw/PFdZDqkwBhP20uAsChfTcHUuo3yAwSQ6oXLCniaj2oVQn8AGGPy4
 nMWhgPO/4OPDgodUrboHFRSJtHxutEqGZO00eL1bEhrmnFMHq7g23t87f
 pTRzQQ5SuA71mZJIgrHP84Hry8/39C2qnGdHDdsXltc6bn7MUMbDSbe5B
 k/LYpXx4y/3jSGwPFUSre1PE771s+1393fGOStLEraL4Mcn3Hec5t2HPA
 pb//k3yV2e/7NwWB88NZGVrDJsLAq0vL3LTsN9/Drwq4Fa1RCoylh1RrB
 OGHwgam00lKPkFM37jKQ0N+BLcayUsdJt8EydJ+ItcXoLe1jA01UO2Xxl A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="280816948"
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="280816948"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 03:30:19 -0700
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="591596234"
Received: from jasonmor-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.200.10])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 03:30:18 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue, 21 Jun 2022 11:29:57 +0100
Message-Id: <20220621103001.184373-6-matthew.auld@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220621103001.184373-1-matthew.auld@intel.com>
References: <20220621103001.184373-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 5/9] tests/i915/query: sanity check the
 probed_cpu_visible_size
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

Add some basic sanity checks for this, like checking if this falls
within the probed_size.  On older kernels the value reported here should
be zero.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
---
 tests/i915/i915_query.c | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/tests/i915/i915_query.c b/tests/i915/i915_query.c
index b545fb4a..ea99dc8d 100644
--- a/tests/i915/i915_query.c
+++ b/tests/i915/i915_query.c
@@ -514,6 +514,11 @@ static bool query_regions_supported(int fd)
 	return __i915_query_items(fd, &item, 1) == 0 && item.length > 0;
 }
 
+/**
+ * XXX: Remove these once we can safely sync the uapi header with the kernel.
+ * Should be source compatible either way though.
+ */
+#define probed_cpu_visible_size rsvd1[0]
 static void test_query_regions_garbage_items(int fd)
 {
 	struct drm_i915_query_memory_regions *regions;
@@ -552,7 +557,10 @@ static void test_query_regions_garbage_items(int fd)
 
 		igt_assert_eq_u32(info.rsvd0, 0);
 
-		for (j = 0; j < ARRAY_SIZE(info.rsvd1); j++)
+		/*
+		 * rsvd1[0] : probed_cpu_visible_size
+		 */
+		for (j = 1; j < ARRAY_SIZE(info.rsvd1); j++)
 			igt_assert_eq_u32(info.rsvd1[j], 0);
 	}
 
@@ -587,13 +595,18 @@ static void test_query_regions_sanity_check(int fd)
 
 	found_system = false;
 	for (i = 0; i < regions->num_regions; i++) {
-		struct drm_i915_gem_memory_class_instance r1 =
-			regions->regions[i].region;
+		struct drm_i915_memory_region_info info = regions->regions[i];
+		struct drm_i915_gem_memory_class_instance r1 = info.region;
 		int j;
 
 		if (r1.memory_class == I915_MEMORY_CLASS_SYSTEM) {
 			igt_assert_eq(r1.memory_instance, 0);
 			found_system = true;
+
+			igt_assert(info.probed_cpu_visible_size == 0 ||
+				   info.probed_cpu_visible_size == info.probed_size);
+		} else {
+			igt_assert(info.probed_cpu_visible_size <= info.probed_size);
 		}
 
 		igt_assert(r1.memory_class == I915_MEMORY_CLASS_SYSTEM ||
-- 
2.36.1

