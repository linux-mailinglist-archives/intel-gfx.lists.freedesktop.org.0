Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E443F7A52AB
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Sep 2023 21:06:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F72710E2CB;
	Mon, 18 Sep 2023 19:06:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B88C10E2C9;
 Mon, 18 Sep 2023 19:06:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695063981; x=1726599981;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XpITVDVb7GEbTfvKa42spx+DkpTy/t1vp5jfoRQayLA=;
 b=MxDarsjbuQL1JNjep3xvu+B5+ULgqWirOjPCmK1+07fiHuHhft71nH40
 uerKIPZNncjjPyeMaG6SKMu+rUIQM+Vddocsy0JfVOzmVtt+tpwcNzY/0
 VpZTOqu4UGHYs5HTRXwVsVmj77KRqFSN6mAS9XUwjfEB8bIX1TwkIIUNe
 7M5SlVC0BbY7jIG7i/vANNUFbMmCe1Houuhb7OBjXRZNp2pBwlkxHVw6N
 SR8DgNdjlAE4Yb9U35iATUny2ZQiaHAeuoMw1pt8fnRGPg0LJt+OtxRmc
 C606yw+FmZ/mNX6YC3BihWklAzLjdsVjCXfSpbYbbn1+MKTPezB8Ir/oy A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="466092554"
X-IronPort-AV: E=Sophos;i="6.02,157,1688454000"; d="scan'208";a="466092554"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 12:06:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="1076695174"
X-IronPort-AV: E=Sophos;i="6.02,157,1688454000"; d="scan'208";a="1076695174"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by fmsmga005.fm.intel.com with ESMTP; 18 Sep 2023 12:06:02 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Mon, 18 Sep 2023 12:02:59 -0700
Message-Id: <20230918190259.2817143-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] tests/i915_pm_freq_api: Set min/max to
 expected values
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A prior(rps) test leaves the system in a bad state causing failures
in the basic test. Set min/max to expected values before running it.
Test will restore values at the end.

Link: https://gitlab.freedesktop.org/drm/intel/-/issues/8670

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 tests/intel/i915_pm_freq_api.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/tests/intel/i915_pm_freq_api.c b/tests/intel/i915_pm_freq_api.c
index 03bd0d05b..6018692a2 100644
--- a/tests/intel/i915_pm_freq_api.c
+++ b/tests/intel/i915_pm_freq_api.c
@@ -55,7 +55,11 @@ static void test_freq_basic_api(int dirfd, int gt)
 	rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
 	rp0 = get_freq(dirfd, RPS_RP0_FREQ_MHZ);
 	rpe = get_freq(dirfd, RPS_RP1_FREQ_MHZ);
-	igt_debug("GT: %d, RPn: %d, RPe: %d, RP0: %d", gt, rpn, rpe, rp0);
+	igt_debug("GT: %d, RPn: %d, RPe: %d, RP0: %d\n", gt, rpn, rpe, rp0);
+
+	/* Set min/max to RPn, RP0 for baseline behavior */
+	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
+	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rp0) > 0);
 
 	/*
 	 * Negative bound tests
@@ -170,7 +174,7 @@ igt_main
 		for_each_sysfs_gt_dirfd(i915, dirfd, gt) {
 			stash_min[gt] = get_freq(dirfd, RPS_MIN_FREQ_MHZ);
 			stash_max[gt] = get_freq(dirfd, RPS_MAX_FREQ_MHZ);
-			igt_debug("GT: %d, min: %d, max: %d", gt, stash_min[gt], stash_max[gt]);
+			igt_debug("GT: %d, min: %d, max: %d\n", gt, stash_min[gt], stash_max[gt]);
 			igt_pm_ignore_slpc_efficient_freq(i915, dirfd, true);
 		}
 		igt_install_exit_handler(restore_sysfs_freq);
-- 
2.38.1

