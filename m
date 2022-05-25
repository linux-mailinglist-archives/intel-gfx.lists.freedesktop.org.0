Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE6B9534324
	for <lists+intel-gfx@lfdr.de>; Wed, 25 May 2022 20:38:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B84EE10EC82;
	Wed, 25 May 2022 18:38:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A67310EC6C;
 Wed, 25 May 2022 18:38:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653503887; x=1685039887;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DW/PmY4i8OBxGQoWxi2e1p4sWBJNFuYzdCwOvpaTQHQ=;
 b=DfwRgcBstmePlJs+t69n2y5OnhNkH5PFIYbkA62Nnlx/VIJMqRZjfx/H
 8f6sYFELDUw6BUZCyamwpqHd7g2YLgrZ14k4EpGXVvxX5090k2YL0Clry
 5NTPYnrZ89DM/IzCtWtCYlcOvfENM/zTGPLfz6CpFmzX/kGuhSDS7p0Zn
 tV3ZIrMRtdeGWELRU8X5nMrWhtxPitCc7BShPP55mVy0u3SBAxANArqL3
 vQlpOrMVy8QXQIk1fF1BXwdZZmUuL0UKXNiDyaGz4/uKJVav8Nlm700Kz
 zKvvIzGASXTwiyHpA4Ji5ArL+9JPX/05QBX8W3gQbydo1ygzzvJ7PmEBI Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10358"; a="336954774"
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="336954774"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 11:37:53 -0700
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="526989524"
Received: from daithiby-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.5.16])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 11:37:51 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 25 May 2022 19:36:58 +0100
Message-Id: <20220525183702.490989-6-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.3
In-Reply-To: <20220525183702.490989-1-matthew.auld@intel.com>
References: <20220525183702.490989-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 5/9] tests/i915/query: sanity check the
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
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add some basic sanity checks for this, like checking if this falls
within the probed_size.  On older kernels the value reported here should
be zero.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 tests/i915/i915_query.c | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/tests/i915/i915_query.c b/tests/i915/i915_query.c
index 246a979a..6b036241 100644
--- a/tests/i915/i915_query.c
+++ b/tests/i915/i915_query.c
@@ -513,6 +513,11 @@ static bool query_regions_supported(int fd)
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
@@ -551,7 +556,10 @@ static void test_query_regions_garbage_items(int fd)
 
 		igt_assert_eq_u32(info.rsvd0, 0);
 
-		for (j = 0; j < ARRAY_SIZE(info.rsvd1); j++)
+		/*
+		 * rsvd1[0] : probed_cpu_visible_size
+		 */
+		for (j = 1; j < ARRAY_SIZE(info.rsvd1); j++)
 			igt_assert_eq_u32(info.rsvd1[j], 0);
 	}
 
@@ -586,13 +594,18 @@ static void test_query_regions_sanity_check(int fd)
 
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
+			igt_assert(info.probed_cpu_visible_size ==
+				   info.probed_size);
+		} else {
+			igt_assert(info.probed_cpu_visible_size <= info.probed_size);
 		}
 
 		igt_assert(r1.memory_class == I915_MEMORY_CLASS_SYSTEM ||
-- 
2.34.3

