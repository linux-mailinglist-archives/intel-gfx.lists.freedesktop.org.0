Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A57AE74BA00
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Jul 2023 01:25:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEABE10E616;
	Fri,  7 Jul 2023 23:24:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DD2A10E611;
 Fri,  7 Jul 2023 23:24:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688772297; x=1720308297;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6IfelZgBiwIgaclusZlue8JyHxWdgmz0GKTw+QchrBQ=;
 b=kGXfUVyfnkMU3c8B160IuVZxzSTxRevNru4Vn6xMhO2ZbXr2w/V8ej6m
 /aWzCvAT1elAkyUSV2kVRsgAJle4AKI1VdbCQM5GlC+pBLI9xKN4k1dGp
 Bj1MyDbcaaFT03mwoA68ceCADSHRIto/Ig186i+dRRjpCbs0i9s0g0Ey6
 7CYRGL5Wt/smAxlmw/c2zjwJb0uJFHndhJHRrw6UzvxHRVq1cR2bSIcw8
 LThPpASD1UVrvGx97J/mtkyiqTuFf5eqHOhi6vgviMHmxF8x2N2T3+w/H
 xs/XSCNA254Q9BYyAYWGiNcNysw749nNQ0g8nYdMAXEeHuLwuMoPxz4BL g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10764"; a="427687905"
X-IronPort-AV: E=Sophos;i="6.01,189,1684825200"; d="scan'208";a="427687905"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2023 16:24:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10764"; a="670311503"
X-IronPort-AV: E=Sophos;i="6.01,189,1684825200"; d="scan'208";a="670311503"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga003.jf.intel.com with ESMTP; 07 Jul 2023 16:24:56 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Fri,  7 Jul 2023 16:23:59 -0700
Message-Id: <20230707232359.81039-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] i915_pm_freq_api: Add some debug to tests
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

Some subtests seem to be failing in CI, use igt_assert_(lt/eq) which
print the values being compared and some additional debug as well.

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 tests/i915/i915_pm_freq_api.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/tests/i915/i915_pm_freq_api.c b/tests/i915/i915_pm_freq_api.c
index 522abee35..cdb2e70ca 100644
--- a/tests/i915/i915_pm_freq_api.c
+++ b/tests/i915/i915_pm_freq_api.c
@@ -55,6 +55,7 @@ static void test_freq_basic_api(int dirfd, int gt)
 	rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
 	rp0 = get_freq(dirfd, RPS_RP0_FREQ_MHZ);
 	rpe = get_freq(dirfd, RPS_RP1_FREQ_MHZ);
+	igt_debug("RPn: %d, RPe: %d, RP0: %d", rpn, rpe, rp0);
 
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

