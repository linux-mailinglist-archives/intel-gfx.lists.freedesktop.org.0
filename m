Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C00560A0C
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jun 2022 21:11:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E448010ED1A;
	Wed, 29 Jun 2022 19:11:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3665410ED1A;
 Wed, 29 Jun 2022 19:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656529884; x=1688065884;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CkzqznBqXC1nWfFt08Z56kncck6Ug+COQJKVsjFkGQ0=;
 b=KxBV56Yc8K8y6ZW035j4zgzp5xebilRyTAtmgukbrpRhvaOfuU2G7rkF
 1HD6FfLICYyLEoFVnoIppUSpC6wdsgcOvFRkqWxFCBt2+5gFNIm35ZhUb
 VMwx8V9zqzhfpJnux4IMs51CcOiOVBJGn+LjD/xahVkGf9nTHWWtG4C2A
 RImtKWobrSMkT4B95DXyywZ2yMvOiwfh+NBIcCuyi+1iQU3DCrAOdzwNJ
 Fmnbe0kzOMrjEQaEloSB0WOpPKsO1N3X5kepARabA6a39nkv2Fsb/CTsD
 JJig8GTSN04SPq7o2hofkQieTqttHZIy5Qonbq/5UACUv16224S5RCiWv w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="368439141"
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="368439141"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 12:07:15 -0700
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="733297135"
Received: from nwalsh-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.202.136])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 12:07:15 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 29 Jun 2022 20:06:54 +0100
Message-Id: <20220629190658.395463-5-matthew.auld@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220629190658.395463-1-matthew.auld@intel.com>
References: <20220629190658.395463-1-matthew.auld@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
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

