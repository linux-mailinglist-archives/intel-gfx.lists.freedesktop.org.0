Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D7305F46A2
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 17:26:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE3E410E71C;
	Tue,  4 Oct 2022 15:26:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49A3010E727;
 Tue,  4 Oct 2022 15:26:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664897181; x=1696433181;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8d/ADbuhOvs3KEKVxrJnpk+C1p02ViY5IqEI5d8ORSU=;
 b=hJBMIK7Mdx4VQSH+26yKQ+hsm0Pzodywr6tKJ0OhNKydj3doby95DYqV
 2skJxqEwZjuj+SPlirb9sma1MkoPaKJKXTVvKltn9egmPu7o0pkBmA95w
 rOl3f+5OptDcYUA7IEYUU9R2fVrrZavrQnXVQdfYyipPuZE4FD/eO0hVd
 MA+NRW/bJc45qcV8XUy9YSYdZCqJbctL/7iec+2EzcWrQfzVAhjEv2koh
 HoVf2DOL/hRcprbkilt21Ny1z8cKXU3Suh04VNA2W8nxBGqnNzPZt69t7
 aXAGHsFrvfZ8Io9EzjyggGxa8xLNFbgnTrscQPdRN1mJTSPh4W6uALR4h A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="301659415"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="301659415"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 08:26:21 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="601655876"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="601655876"
Received: from ngverso-mobl2.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.7.149])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 08:26:19 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue,  4 Oct 2022 16:25:48 +0100
Message-Id: <20221004152549.436801-4-matthew.auld@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221004152549.436801-1-matthew.auld@intel.com>
References: <20221004152549.436801-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 4/5] tests/i915/query: sanity check
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

v2:
 - Split the rsvd0 check out, so we can in theory land that patch by
   itself (since that will fix the kernel failure vs old igt and could
   be merged early).
 - s/4096/PAGE_SIZE/ (Nirmoy)

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
---
 tests/i915/i915_query.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/tests/i915/i915_query.c b/tests/i915/i915_query.c
index 4e43c7cd..366427b4 100644
--- a/tests/i915/i915_query.c
+++ b/tests/i915/i915_query.c
@@ -30,6 +30,8 @@
 
 IGT_TEST_DESCRIPTION("Testing the i915 query uAPI.");
 
+#define PAGE_SIZE 4096
+
 /*
  * We should at least get 3 bytes for data for each slices, subslices & EUs
  * masks.
@@ -638,6 +640,8 @@ static void upload(int fd, struct igt_list_head *handles, uint32_t num_handles)
 	free(exec);
 }
 
+/** XXX: remove once we sync the uapi header */
+#define gtt_alignment rsvd0
 static void test_query_regions_sanity_check(int fd)
 {
 	struct drm_i915_query_memory_regions *regions;
@@ -664,6 +668,11 @@ static void test_query_regions_sanity_check(int fd)
 		struct drm_i915_gem_memory_class_instance r1 = info.region;
 		int j;
 
+		if (info.gtt_alignment) {
+			igt_assert_lte_u64(PAGE_SIZE, info.gtt_alignment);
+			igt_assert(is_power_of_two(info.gtt_alignment));
+		}
+
 		if (r1.memory_class == I915_MEMORY_CLASS_SYSTEM) {
 			igt_assert_eq(r1.memory_instance, 0);
 			found_system = true;
@@ -674,6 +683,9 @@ static void test_query_regions_sanity_check(int fd)
 			igt_assert(info.unallocated_cpu_visible_size == 0 ||
 				   info.unallocated_cpu_visible_size ==
 				   info.unallocated_size);
+
+			igt_assert(info.gtt_alignment == 0 ||
+				   info.gtt_alignment == PAGE_SIZE);
 		} else {
 			igt_assert(info.probed_cpu_visible_size <= info.probed_size);
 			igt_assert(info.unallocated_size <= info.probed_size);
-- 
2.37.3

