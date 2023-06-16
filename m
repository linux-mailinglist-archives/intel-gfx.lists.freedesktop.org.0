Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF6FE733529
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jun 2023 17:51:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BB7510E0E3;
	Fri, 16 Jun 2023 15:51:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06D2E10E0E3;
 Fri, 16 Jun 2023 15:51:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686930675; x=1718466675;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4PU5YrTSKa4ctAb/xI0hjgcj2uRVop27m8j0TuQ1cZA=;
 b=EBoivnuYVYAQJt/TueSTnPS2ehUjVpzuFBMT0YVhKXhPxhB3wWib6UrA
 DAELI6CoB9wHmXTp6cRqdaYkCxeq4fF9NFuNCZeqWd/4GDMSxnK3GFaKu
 8x7CDrXbJMnxyKjsKjvwAK0s3KQE3nhN+v6/LrxsG68CQJdjW57uNmfxy
 RCYI1D5zgxeveVoly9pGQqHwb8xVAHTNRRzWHnG6GWvjEn1M3PeOHS2Pu
 0dfjUDNaDSbYO+fCyS7/JXaRlTzEFsArMEiJdXCjYJOTyHeu2KN34GfZN
 5nFWRHPNPdvDZNkY4pSdXIN67s+NLJS5JUAsdXv7imq927FTaoDEoY78t w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="422896115"
X-IronPort-AV: E=Sophos;i="6.00,247,1681196400"; d="scan'208";a="422896115"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2023 08:51:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="825781471"
X-IronPort-AV: E=Sophos;i="6.00,247,1681196400"; d="scan'208";a="825781471"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by fmsmga002.fm.intel.com with ESMTP; 16 Jun 2023 08:51:13 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Fri, 16 Jun 2023 08:50:48 -0700
Message-Id: <20230616155048.1013239-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 i-g-t] tests/i915_pm_freq_api: Add a suspend
 subtest
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

Verify that SLPC API works as expected after a suspend. Added
another subtest that does multiple GT resets and checks freq api
works as expected after each one.

We now check requested frequency instead of soft min/max after a
reset or suspend. That ensures the soft limits got applied
correctly at init. Also, disable efficient freq before starting the
test which allows current freq to be consistent with SLPC min freq.

v2: Restore freq in exit handler (Ashutosh)
v3: Free the allocated stash arrays

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 tests/i915/i915_pm_freq_api.c | 92 +++++++++++++++++++++++++++--------
 1 file changed, 71 insertions(+), 21 deletions(-)

diff --git a/tests/i915/i915_pm_freq_api.c b/tests/i915/i915_pm_freq_api.c
index 9005cd220..522abee35 100644
--- a/tests/i915/i915_pm_freq_api.c
+++ b/tests/i915/i915_pm_freq_api.c
@@ -18,6 +18,12 @@
  *
  * SUBTEST: freq-reset
  * Description: Test basic freq API works after a reset
+ *
+ * SUBTEST: freq-reset-multiple
+ * Description: Test basic freq API works after multiple resets
+ *
+ * SUBTEST: freq-suspend
+ * Description: Test basic freq API works after a runtime suspend
  */
 
 IGT_TEST_DESCRIPTION("Test SLPC freq API");
@@ -49,7 +55,6 @@ static void test_freq_basic_api(int dirfd, int gt)
 	rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
 	rp0 = get_freq(dirfd, RPS_RP0_FREQ_MHZ);
 	rpe = get_freq(dirfd, RPS_RP1_FREQ_MHZ);
-	igt_info("System min freq: %dMHz; max freq: %dMHz\n", rpn, rp0);
 
 	/*
 	 * Negative bound tests
@@ -79,31 +84,66 @@ static void test_freq_basic_api(int dirfd, int gt)
 
 }
 
-static void test_reset(int i915, int dirfd, int gt)
+static void test_reset(int i915, int dirfd, int gt, int count)
 {
 	uint32_t rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
 	int fd;
 
+	for (int i = 0; i < count; i++) {
+		igt_assert_f(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0,
+			     "Failed after %d good cycles\n", i);
+		igt_assert_f(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0,
+			     "Failed after %d good cycles\n", i);
+		usleep(ACT_FREQ_LATENCY_US);
+		igt_assert_f(get_freq(dirfd, RPS_CUR_FREQ_MHZ) == rpn,
+			     "Failed after %d good cycles\n", i);
+
+		/* Manually trigger a GT reset */
+		fd = igt_debugfs_gt_open(i915, gt, "reset", O_WRONLY);
+		igt_require(fd >= 0);
+		igt_ignore_warn(write(fd, "1\n", 2));
+
+		igt_assert_f(get_freq(dirfd, RPS_CUR_FREQ_MHZ) == rpn,
+			     "Failed after %d good cycles\n", i);
+	}
+	close(fd);
+}
+
+static void test_suspend(int i915, int dirfd, int gt)
+{
+	uint32_t rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
+
 	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
 	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0);
 	usleep(ACT_FREQ_LATENCY_US);
-	igt_assert(get_freq(dirfd, RPS_MIN_FREQ_MHZ) == rpn);
+	igt_assert(get_freq(dirfd, RPS_CUR_FREQ_MHZ) == rpn);
 
-	/* Manually trigger a GT reset */
-	fd = igt_debugfs_gt_open(i915, gt, "reset", O_WRONLY);
-	igt_require(fd >= 0);
-	igt_ignore_warn(write(fd, "1\n", 2));
-	close(fd);
+	/* Manually trigger a suspend */
+	igt_system_suspend_autoresume(SUSPEND_STATE_S3,
+				      SUSPEND_TEST_NONE);
 
-	igt_assert(get_freq(dirfd, RPS_MIN_FREQ_MHZ) == rpn);
-	igt_assert(get_freq(dirfd, RPS_MAX_FREQ_MHZ) == rpn);
+	igt_assert(get_freq(dirfd, RPS_CUR_FREQ_MHZ) == rpn);
 }
 
-igt_main
+int i915 = -1;
+uint32_t *stash_min, *stash_max;
+
+static void restore_sysfs_freq(int sig)
 {
-	int i915 = -1;
-	uint32_t *stash_min, *stash_max;
+	int dirfd, gt;
+	/* Restore frequencies */
+	for_each_sysfs_gt_dirfd(i915, dirfd, gt) {
+		igt_pm_ignore_slpc_efficient_freq(i915, dirfd, false);
+		igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, stash_max[gt]) > 0);
+		igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, stash_min[gt]) > 0);
+	}
+	free(stash_min);
+	free(stash_max);
+	close(i915);
+}
 
+igt_main
+{
 	igt_fixture {
 		int num_gts, dirfd, gt;
 
@@ -122,7 +162,9 @@ igt_main
 		for_each_sysfs_gt_dirfd(i915, dirfd, gt) {
 			stash_min[gt] = get_freq(dirfd, RPS_MIN_FREQ_MHZ);
 			stash_max[gt] = get_freq(dirfd, RPS_MAX_FREQ_MHZ);
+			igt_pm_ignore_slpc_efficient_freq(i915, dirfd, true);
 		}
+		igt_install_exit_handler(restore_sysfs_freq);
 	}
 
 	igt_describe("Test basic API for controlling min/max GT frequency");
@@ -140,16 +182,24 @@ igt_main
 
 		for_each_sysfs_gt_dirfd(i915, dirfd, gt)
 			igt_dynamic_f("gt%u", gt)
-				test_reset(i915, dirfd, gt);
+				test_reset(i915, dirfd, gt, 1);
 	}
 
-	igt_fixture {
+	igt_describe("Test basic freq API works after multiple resets");
+	igt_subtest_with_dynamic_f("freq-reset-multiple") {
 		int dirfd, gt;
-		/* Restore frequencies */
-		for_each_sysfs_gt_dirfd(i915, dirfd, gt) {
-			igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, stash_max[gt]) > 0);
-			igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, stash_min[gt]) > 0);
-		}
-		close(i915);
+
+		for_each_sysfs_gt_dirfd(i915, dirfd, gt)
+			igt_dynamic_f("gt%u", gt)
+				test_reset(i915, dirfd, gt, 50);
+	}
+
+	igt_describe("Test basic freq API works after suspend");
+	igt_subtest_with_dynamic_f("freq-suspend") {
+		int dirfd, gt;
+
+		for_each_sysfs_gt_dirfd(i915, dirfd, gt)
+			igt_dynamic_f("gt%u", gt)
+				test_suspend(i915, dirfd, gt);
 	}
 }
-- 
2.38.1

