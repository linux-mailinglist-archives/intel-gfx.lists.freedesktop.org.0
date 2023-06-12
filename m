Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5657B72CFC7
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jun 2023 21:42:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A76F010E06F;
	Mon, 12 Jun 2023 19:42:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77B8E10E2CE;
 Mon, 12 Jun 2023 19:42:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686598965; x=1718134965;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Mfq5DiwNFvwJVJJqgPECNTxcRfc+UheY8p9trsahyFc=;
 b=Lpy1pUEPpxippFxnrDuop7/dTqyQvuDH7/Su1lrlQILoKG6DJlK6xMVl
 FPA07r5LCrMxVa2UcWOhiEm8O4Tk9RROZ9Grv/K6plcvvofKRqOyt1cIe
 O78xBxBEjfhn4bvpoZqqtZl7tZoRXDDoYtnvZYDZv6lBpCDgKXisFdi4m
 S/PeFS8qDSK8X3k894XdUlUcgZBP+YMLC7avAhagwUnlWGWk+OA+ADJ5S
 d+PvfAkH+FMk6RD9ZfDK5cTJopTLUOfBZYJnPXEdg91mrB88P5MaUdEYO
 dU2UCj/i4TVE5FdMYzKAY8OMi36Yqzxrwz3fL2/Pp6wxxfkZ3HiFyFhPq g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="342831960"
X-IronPort-AV: E=Sophos;i="6.00,236,1681196400"; d="scan'208";a="342831960"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2023 12:42:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="855783552"
X-IronPort-AV: E=Sophos;i="6.00,236,1681196400"; d="scan'208";a="855783552"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by fmsmga001.fm.intel.com with ESMTP; 12 Jun 2023 12:42:29 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Mon, 12 Jun 2023 12:42:13 -0700
Message-Id: <20230612194213.528058-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 i-g-t] tests/i915_pm_freq_api: Add a suspend
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

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 tests/i915/i915_pm_freq_api.c | 89 +++++++++++++++++++++++++++--------
 1 file changed, 69 insertions(+), 20 deletions(-)

diff --git a/tests/i915/i915_pm_freq_api.c b/tests/i915/i915_pm_freq_api.c
index 9005cd220..4e1d4edca 100644
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
@@ -79,31 +85,64 @@ static void test_freq_basic_api(int dirfd, int gt)
 
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
+	close(i915);
+}
 
+igt_main
+{
 	igt_fixture {
 		int num_gts, dirfd, gt;
 
@@ -122,7 +161,9 @@ igt_main
 		for_each_sysfs_gt_dirfd(i915, dirfd, gt) {
 			stash_min[gt] = get_freq(dirfd, RPS_MIN_FREQ_MHZ);
 			stash_max[gt] = get_freq(dirfd, RPS_MAX_FREQ_MHZ);
+			igt_pm_ignore_slpc_efficient_freq(i915, dirfd, true);
 		}
+		igt_install_exit_handler(restore_sysfs_freq);
 	}
 
 	igt_describe("Test basic API for controlling min/max GT frequency");
@@ -140,16 +181,24 @@ igt_main
 
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

