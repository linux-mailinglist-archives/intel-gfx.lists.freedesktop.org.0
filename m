Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93FF97572C4
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jul 2023 06:24:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 949F610E053;
	Tue, 18 Jul 2023 04:24:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A36B410E053;
 Tue, 18 Jul 2023 04:24:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689654258; x=1721190258;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bQYGc/rqa+jsvb5ODuKhX8ui6PpBP1V8Y3YgI8Dzyi0=;
 b=S9Ymnmm3oVZXl/DrIP1RbufngxWouNmlv3fdq3U+xuVcGBpjCRIaJuNt
 lWGL7IV14HskXhKcWEvKB0RAvWWtInvSe+KL9zwlLEcAp0TEfwQFeRGMs
 uTOeGxQcIXwVKNQabMaKsXqcvZALv2Y30NZx8M5RWGC/H+BSCSX7F1Wg+
 DWCW9dLznag6qtqELiZQnRNjTM3IZoyzGgcWjc/ga7Vt9Sl3zOiHDKUXh
 NEePKvUg+zu7ZeRVKcQwtm+ijrjDNS6iFMTfDc+lwihE+wxGtNCDkXS0h
 0K8CxTPqJ9yu/26fDjqbwGj8Iy5E1hKx6Yf6ojjaPrHBZJIfAtpZOyh/5 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="356043860"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="356043860"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 21:24:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="847561078"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="847561078"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga004.jf.intel.com with ESMTP; 17 Jul 2023 21:24:06 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Mon, 17 Jul 2023 21:23:00 -0700
Message-Id: <20230718042300.966115-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 i-g-t] i915_pm_freq_api: Add some debug to
 tests
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

Some subtests seem to be failing in CI, use igt_assert_eq where we
compare the requested freq, which will print the values being compared.
Also print the RP values at the beginning of the test.

v2: Print GT as well (Ashutosh)
v3: Minor commit message correction (Ashutosh)

Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 tests/i915/i915_pm_freq_api.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/tests/i915/i915_pm_freq_api.c b/tests/i915/i915_pm_freq_api.c
index 522abee35..a7bbd4896 100644
--- a/tests/i915/i915_pm_freq_api.c
+++ b/tests/i915/i915_pm_freq_api.c
@@ -55,6 +55,7 @@ static void test_freq_basic_api(int dirfd, int gt)
 	rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
 	rp0 = get_freq(dirfd, RPS_RP0_FREQ_MHZ);
 	rpe = get_freq(dirfd, RPS_RP1_FREQ_MHZ);
+	igt_debug("GT: %d, RPn: %d, RPe: %d, RP0: %d", gt, rpn, rpe, rp0);
 
 	/*
 	 * Negative bound tests
@@ -90,21 +91,18 @@ static void test_reset(int i915, int dirfd, int gt, int count)
 	int fd;
 
 	for (int i = 0; i < count; i++) {
-		igt_assert_f(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0,
-			     "Failed after %d good cycles\n", i);
-		igt_assert_f(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0,
-			     "Failed after %d good cycles\n", i);
+		igt_debug("Running cycle: %d", i);
+		igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
+		igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0);
 		usleep(ACT_FREQ_LATENCY_US);
-		igt_assert_f(get_freq(dirfd, RPS_CUR_FREQ_MHZ) == rpn,
-			     "Failed after %d good cycles\n", i);
+		igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
 
 		/* Manually trigger a GT reset */
 		fd = igt_debugfs_gt_open(i915, gt, "reset", O_WRONLY);
 		igt_require(fd >= 0);
 		igt_ignore_warn(write(fd, "1\n", 2));
 
-		igt_assert_f(get_freq(dirfd, RPS_CUR_FREQ_MHZ) == rpn,
-			     "Failed after %d good cycles\n", i);
+		igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
 	}
 	close(fd);
 }
@@ -116,13 +114,13 @@ static void test_suspend(int i915, int dirfd, int gt)
 	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
 	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0);
 	usleep(ACT_FREQ_LATENCY_US);
-	igt_assert(get_freq(dirfd, RPS_CUR_FREQ_MHZ) == rpn);
+	igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
 
 	/* Manually trigger a suspend */
 	igt_system_suspend_autoresume(SUSPEND_STATE_S3,
 				      SUSPEND_TEST_NONE);
 
-	igt_assert(get_freq(dirfd, RPS_CUR_FREQ_MHZ) == rpn);
+	igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
 }
 
 int i915 = -1;
-- 
2.38.1

