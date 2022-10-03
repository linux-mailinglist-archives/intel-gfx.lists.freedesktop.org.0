Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6518A5F3473
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 19:25:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF43510E453;
	Mon,  3 Oct 2022 17:25:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A72A010E44A;
 Mon,  3 Oct 2022 17:25:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664817939; x=1696353939;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nXtcvZIT5KZbiw2djFCBL17W0lyvFiev5BEZN6SxjWY=;
 b=ci+9ocqz51iPjjqr9TN2RR/vS7SIhK5bjY+M9+fwQnPvVZYpqz7RR/2w
 +YzvQ4Oo/sZSglhwXhOC42CRec7ai+IB39Ssxf5B130NmzfWPMEcNFI4p
 hMit+dDtA1QZB+nw+WdH0j2xlIQqLymljZFAfs6LJT3S5S8bpX20VZTpt
 zDNpP33Wwt/A+FyRNo3zTyTaOxFgrqcYJye3nOJ18F1ZL2FfEMlLp/WEJ
 FAV9YORgbKHD/5YYx6nBizMTAQSPmuXdwPPVrUef6uYwKngl7F8UhEzBU
 qwZ757IbWL+WQ2VYpcZxvlHU5J3orLdlPHlew/ZmZSOsjauNVTT+Y80U+ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="282413399"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="282413399"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 10:25:26 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="686202382"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="686202382"
Received: from adejeanb-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.6.198])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 10:25:25 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon,  3 Oct 2022 18:24:55 +0100
Message-Id: <20221003172456.97522-3-matthew.auld@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221003172456.97522-1-matthew.auld@intel.com>
References: <20221003172456.97522-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 3/4] tests/i915/query: sanity check
 reported GTT alignment
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

Ensure the kernel is reporting "normal" values here, based on our
current expectations.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
---
 tests/i915/i915_query.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/tests/i915/i915_query.c b/tests/i915/i915_query.c
index b92d7593..bff073d2 100644
--- a/tests/i915/i915_query.c
+++ b/tests/i915/i915_query.c
@@ -581,8 +581,6 @@ static void test_query_regions_garbage_items(int fd)
 		struct drm_i915_memory_region_info info = regions->regions[i];
 		int j;
 
-		igt_assert_eq_u32(info.rsvd0, 0);
-
 		/*
 		 * rsvd1[0] : probed_cpu_visible_size
 		 * rsvd1[1] : unallocated_cpu_visible_size
@@ -640,6 +638,8 @@ static void upload(int fd, struct igt_list_head *handles, uint32_t num_handles)
 	free(exec);
 }
 
+/** XXX: remove once we sync the uapi header */
+#define gtt_alignment rsvd0
 static void test_query_regions_sanity_check(int fd)
 {
 	struct drm_i915_query_memory_regions *regions;
@@ -666,6 +666,11 @@ static void test_query_regions_sanity_check(int fd)
 		struct drm_i915_gem_memory_class_instance r1 = info.region;
 		int j;
 
+		if (info.gtt_alignment) {
+			igt_assert_lte_u64(4096, info.gtt_alignment);
+			igt_assert(is_power_of_two(info.gtt_alignment));
+		}
+
 		if (r1.memory_class == I915_MEMORY_CLASS_SYSTEM) {
 			igt_assert_eq(r1.memory_instance, 0);
 			found_system = true;
@@ -676,6 +681,9 @@ static void test_query_regions_sanity_check(int fd)
 			igt_assert(info.unallocated_cpu_visible_size == 0 ||
 				   info.unallocated_cpu_visible_size ==
 				   info.unallocated_size);
+
+			igt_assert(info.gtt_alignment == 0 ||
+				   info.gtt_alignment == 4096);
 		} else {
 			igt_assert(info.probed_cpu_visible_size <= info.probed_size);
 			igt_assert(info.unallocated_size <= info.probed_size);
-- 
2.37.3

