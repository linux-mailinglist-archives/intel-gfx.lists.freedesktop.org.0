Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29CF77569AD
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jul 2023 18:53:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DA7310E28B;
	Mon, 17 Jul 2023 16:53:28 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AE3810E288;
 Mon, 17 Jul 2023 16:53:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689612806; x=1721148806;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ovJPffleRKhidrXy1Uagutx7NYtyf30Qx4t3qkdolts=;
 b=arLVHiJheq/j+ZOmEZuIruaeKDFj7Y0BrEfxhcC+2nX0S31J67swEXjL
 4zOCuBVFhmenD1Jp4D6dW1KVCfvjdxM2O073csbZC8TL2VY6ADEIp7y/s
 +REzrYQCy4XBxo+hVhhWLCApbowfdHgkt/FBmnH5FZTfo/amzT12GYY7z
 ThVmFx7K0nyfk3UcLPoIDx86vGE3Kl4gNhLTKvVTt3Q+NofB3OTxjHktC
 YbEtgJhTWg0WqCw/5Hmmaxpf+gAIDC9OQ39zXE0FU4uc6tByK1jgaq1Ey
 NUUIBum4KN0R2+sbao324zFbEcT5aZBvBbScgmOFjROsDaG8I59gnTwK9 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="345576301"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="345576301"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 09:53:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="673592747"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="673592747"
Received: from rgwhiteh-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.205.103])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 09:53:23 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Mon, 17 Jul 2023 17:53:18 +0100
Message-Id: <20230717165318.831766-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] tests/i915_pm_rps: Fix test after silent
 conflict
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

A silent conflict sneaked in as I was merging
d86ca7e17b58 ("tests/i915_pm_rps: Exercise sysfs thresholds") in a way
that igt_sysfs_set_u32 has became a function returning void.

Assert is now built-in so drop it from the test.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Fixes: d86ca7e17b58 ("tests/i915_pm_rps: Exercise sysfs thresholds")
Reference: 54dc25efaf10 ("lib/igt_sysfs: add asserting helpers for read/write operations")
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Lukasz Laguna <lukasz.laguna@intel.com>
Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
---
 tests/i915/i915_pm_rps.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/tests/i915/i915_pm_rps.c b/tests/i915/i915_pm_rps.c
index 68bb99d62c19..6bebecb6bf59 100644
--- a/tests/i915/i915_pm_rps.c
+++ b/tests/i915/i915_pm_rps.c
@@ -1010,8 +1010,8 @@ static void test_thresholds(int i915, unsigned int gt, unsigned int flags)
 	igt_require(def_up && def_down);
 
 	/* Check invalid percentages are rejected */
-	igt_assert_eq(igt_sysfs_set_u32(sysfs, "rps_up_threshold_pct", 101), false);
-	igt_assert_eq(igt_sysfs_set_u32(sysfs, "rps_down_threshold_pct", 101), false);
+	igt_sysfs_set_u32(sysfs, "rps_up_threshold_pct", 101);
+	igt_sysfs_set_u32(sysfs, "rps_down_threshold_pct", 101);
 
 	/*
 	 * Invent some random up-down thresholds, but always include 0 and 100
@@ -1034,8 +1034,8 @@ static void test_thresholds(int i915, unsigned int gt, unsigned int flags)
 	/* Exercise the thresholds with a GPU load to trigger park/unpark etc */
 	for (i = 0; i < points; i++) {
 		igt_info("Testing thresholds up %u%% and down %u%%...\n", ta[i], tb[i]);
-		igt_assert_eq(igt_sysfs_set_u32(sysfs, "rps_up_threshold_pct", ta[i]), true);
-		igt_assert_eq(igt_sysfs_set_u32(sysfs, "rps_down_threshold_pct", tb[i]), true);
+		igt_sysfs_set_u32(sysfs, "rps_up_threshold_pct", ta[i]);
+		igt_sysfs_set_u32(sysfs, "rps_down_threshold_pct", tb[i]);
 
 		if (flags & TEST_IDLE) {
 			gem_quiescent_gpu(i915);
@@ -1069,8 +1069,8 @@ static void test_thresholds(int i915, unsigned int gt, unsigned int flags)
 	gem_quiescent_gpu(i915);
 
 	/* Restore defaults */
-	igt_assert_eq(igt_sysfs_set_u32(sysfs, "rps_up_threshold_pct", def_up), true);
-	igt_assert_eq(igt_sysfs_set_u32(sysfs, "rps_down_threshold_pct", def_down), true);
+	igt_sysfs_set_u32(sysfs, "rps_up_threshold_pct", def_up);
+	igt_sysfs_set_u32(sysfs, "rps_down_threshold_pct", def_down);
 
 	free(ta);
 	free(tb);
-- 
2.39.2

