Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F97D77BFA1
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Aug 2023 20:15:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFC1110E227;
	Mon, 14 Aug 2023 18:15:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDB1D10E227;
 Mon, 14 Aug 2023 18:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692036908; x=1723572908;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eT7/lNihjHAhNA908GkqV5Y5GiFpTh7F0TR4qqNL1ac=;
 b=c8BJmZYhc34x1ieCytNVFKHXQaCbvwSksst+Mo9wz6dRycHpezxBkl3M
 svJMSXg9jHwl773vsDgkqVIR2lroUjijcyLHLrNHWrN8gYse+kZ8NgrHG
 Ij7Avg2/rhzn9j2A57iMj7E3Vaj+kgV4VqHDAT6nY0bB5HDLcSKTuwl8j
 OdF0B2cMdLgQ86svKuF4NUfOm6VUIwIWuNRKDN1ldP/oLhOBINqkOj13w
 wYXEmOGO3QkopexYfR70Xx0tlWdc2Wouqi3mUXMSSazWzgrHVpxfkGHEX
 eKCeO/Q5MVNpRxxU6ElWPkVCs5MZXPLJVR+yLSjEvYtSV8UTPtL4mzFvT w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="369579258"
X-IronPort-AV: E=Sophos;i="6.01,173,1684825200"; d="scan'208";a="369579258"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 11:15:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="857162197"
X-IronPort-AV: E=Sophos;i="6.01,173,1684825200"; d="scan'208";a="857162197"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga004.jf.intel.com with ESMTP; 14 Aug 2023 11:15:07 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Mon, 14 Aug 2023 11:13:16 -0700
Message-Id: <20230814181316.408017-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 i-g-t] tests/i915_pm_freq_api: Ignore zero
 register value
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

Register read for requested_freq can return 0 when system is
in runtime_pm. Make allowance for this case.

v2: Explicit check for runtime_pm status (Riana)

Link: https://gitlab.freedesktop.org/drm/intel/issues/8736
Link: https://gitlab.freedesktop.org/drm/intel/issues/8989

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 tests/i915/i915_pm_freq_api.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/tests/i915/i915_pm_freq_api.c b/tests/i915/i915_pm_freq_api.c
index cf21cc936..6713ad213 100644
--- a/tests/i915/i915_pm_freq_api.c
+++ b/tests/i915/i915_pm_freq_api.c
@@ -95,14 +95,16 @@ static void test_reset(int i915, int dirfd, int gt, int count)
 		igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
 		igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0);
 		usleep(ACT_FREQ_LATENCY_US);
-		igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
+		if (igt_get_runtime_pm_status() == IGT_RUNTIME_PM_STATUS_ACTIVE)
+			igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
 
 		/* Manually trigger a GT reset */
 		fd = igt_debugfs_gt_open(i915, gt, "reset", O_WRONLY);
 		igt_require(fd >= 0);
 		igt_ignore_warn(write(fd, "1\n", 2));
 
-		igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
+		if (igt_get_runtime_pm_status() == IGT_RUNTIME_PM_STATUS_ACTIVE)
+			igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
 	}
 	close(fd);
 }
@@ -114,13 +116,15 @@ static void test_suspend(int i915, int dirfd, int gt)
 	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
 	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0);
 	usleep(ACT_FREQ_LATENCY_US);
-	igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
+	if (igt_get_runtime_pm_status() == IGT_RUNTIME_PM_STATUS_ACTIVE)
+		igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
 
 	/* Manually trigger a suspend */
 	igt_system_suspend_autoresume(SUSPEND_STATE_S3,
 				      SUSPEND_TEST_NONE);
 
-	igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
+	if (igt_get_runtime_pm_status() == IGT_RUNTIME_PM_STATUS_ACTIVE)
+		igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
 }
 
 int i915 = -1;
-- 
2.38.1

