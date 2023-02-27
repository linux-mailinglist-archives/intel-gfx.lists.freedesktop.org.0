Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D66346A47E1
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Feb 2023 18:28:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53ADF10E086;
	Mon, 27 Feb 2023 17:28:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6A9A10E0D5
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Feb 2023 17:28:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677518922; x=1709054922;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=C3j5LyLiBWPyawQFh9h/2Nm923tM8ibRW+gZ6uhisus=;
 b=K2TifSvjSZgBUXQHcO4k2feikzQK0vfSVmgBu7br35ttcTNFHHycmzn7
 h4hTqHa4BkaYCH+ww78+mB79KoB8pAHztG7MSwUcwoYjkfoRn3PMUffR9
 7reFiJIzSdS4BV26luf58UkqQGxGCM50G35c66ryCC0H9qQvF1g9iT/4n
 ujTfxjVKkG/lwCYjHP+98Qzqx8HYQ5oHfF9g+4SD+4xXoHfhydGMWqUjt
 kXqRaozESqbzwL346vhO1fzXRdFpJcO//1lXOo7YcLvTND3WwAc4WMAs3
 kZwkk3BeSlSPbvYYoKGtmaS/Hh4bEXJ5UK1QPDkMKfy1tu3URdOcTDKxS g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="336198140"
X-IronPort-AV: E=Sophos;i="5.98,219,1673942400"; d="scan'208";a="336198140"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 09:23:49 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="651304692"
X-IronPort-AV: E=Sophos;i="5.98,219,1673942400"; d="scan'208";a="651304692"
Received: from dut-internal-9dd7.jf.intel.com ([10.24.14.53])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 09:23:49 -0800
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Feb 2023 09:19:19 -0800
Message-Id: <20230227171920.2438319-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 1/2] drm/i915: Migrate platform-dependent
 mock hugepage selftests to live
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
Cc: lucas.demarchi@intel.com, thomas.hellstrom@linux.intel.com,
 jonathan.cavitt@intel.com, matthew.auld@intel.com, daniel.vetter@intel.com,
 chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Convert the igt_mock_ppgtt_huge_fill and igt_mock_ppgtt_64K mock selftests into
live selftests as their requirements have recently become platform-dependent.
Additionally, apply necessary platform dependency checks to these tests.

v2: Reorder

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 .../gpu/drm/i915/gem/selftests/huge_pages.c   | 22 ++++++++++++++-----
 1 file changed, 17 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index defece0bcb81..375f119ab261 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -710,7 +710,7 @@ static void close_object_list(struct list_head *objects,
 	}
 }
 
-static int igt_mock_ppgtt_huge_fill(void *arg)
+static int igt_ppgtt_huge_fill(void *arg)
 {
 	struct i915_ppgtt *ppgtt = arg;
 	struct drm_i915_private *i915 = ppgtt->vm.i915;
@@ -784,7 +784,8 @@ static int igt_mock_ppgtt_huge_fill(void *arg)
 		GEM_BUG_ON(!expected_gtt);
 		GEM_BUG_ON(size);
 
-		if (expected_gtt & I915_GTT_PAGE_SIZE_4K)
+		if (expected_gtt & I915_GTT_PAGE_SIZE_4K &&
+		    GRAPHICS_VER_FULL(i915) < IP_VER(12, 50))
 			expected_gtt &= ~I915_GTT_PAGE_SIZE_64K;
 
 		i915_vma_unpin(vma);
@@ -831,7 +832,7 @@ static int igt_mock_ppgtt_huge_fill(void *arg)
 	return err;
 }
 
-static int igt_mock_ppgtt_64K(void *arg)
+static int igt_ppgtt_64K(void *arg)
 {
 	struct i915_ppgtt *ppgtt = arg;
 	struct drm_i915_private *i915 = ppgtt->vm.i915;
@@ -913,6 +914,17 @@ static int igt_mock_ppgtt_64K(void *arg)
 		unsigned int offset = objects[i].offset;
 		unsigned int flags = PIN_USER;
 
+		/*
+		 * For modern GTT models, the requirements for marking a page-table
+		 * as 64K have been relaxed.  Account for this.
+		 */
+
+		if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
+			expected_gtt = 0;
+			expected_gtt |= size & (SZ_64K | SZ_2M) ? I915_GTT_PAGE_SIZE_64K : 0;
+			expected_gtt |= size & SZ_4K ? I915_GTT_PAGE_SIZE_4K : 0;
+		}
+
 		for (single = 0; single <= 1; single++) {
 			obj = fake_huge_pages_object(i915, size, !!single);
 			if (IS_ERR(obj))
@@ -1910,8 +1922,6 @@ int i915_gem_huge_page_mock_selftests(void)
 		SUBTEST(igt_mock_exhaust_device_supported_pages),
 		SUBTEST(igt_mock_memory_region_huge_pages),
 		SUBTEST(igt_mock_ppgtt_misaligned_dma),
-		SUBTEST(igt_mock_ppgtt_huge_fill),
-		SUBTEST(igt_mock_ppgtt_64K),
 	};
 	struct drm_i915_private *dev_priv;
 	struct i915_ppgtt *ppgtt;
@@ -1962,6 +1972,8 @@ int i915_gem_huge_page_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(igt_ppgtt_sanity_check),
 		SUBTEST(igt_ppgtt_compact),
 		SUBTEST(igt_ppgtt_mixed),
+		SUBTEST(igt_ppgtt_huge_fill),
+		SUBTEST(igt_ppgtt_64K),
 	};
 
 	if (!HAS_PPGTT(i915)) {
-- 
2.25.1

