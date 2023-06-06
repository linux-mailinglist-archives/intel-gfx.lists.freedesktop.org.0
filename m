Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A121F724E2D
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 22:35:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC66610E3C6;
	Tue,  6 Jun 2023 20:35:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91DC710E3C6;
 Tue,  6 Jun 2023 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686083753; x=1717619753;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=V6a6Q6qlRI11cEKHOjWkDFAeRzr/gEuKS6rsu3eTJRI=;
 b=dhL5fGab0iMa88Fv4RDygW1l/2oZ1QGbyruBlwrnbxa+BiqFWnJEgzEe
 dFY3tP360ZW9F1kK5q0hiYVQs04XDMj5KKtEnP4rsdbeWHVkdpIug7ypF
 oOYiZM/47F/cG9YRGz3hm8VHrDwJrvTEeUcfLK1g8BsVinjzZxyuM/lqv
 72tAN5lJgEV8BkyVkCU/QqrxpCS7fh5id62+j9qwmwXNLfq5gXgLwPEmv
 XIiZrvzwyQXIj9jOF3M9ufkMIho5BwC2ROj8A5aU4TrosAtUmxlpJgm+B
 PykpsUoZRKb8+x4eFsZYWofzbANzGBuB7oitFMM2oxU3fFzLuUkivrku9 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="385108864"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="385108864"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 13:35:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="712336605"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="712336605"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by fmsmga007.fm.intel.com with ESMTP; 06 Jun 2023 13:35:52 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Tue,  6 Jun 2023 13:35:35 -0700
Message-Id: <20230606203535.292739-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] tests/i915_pm_freq_api: Add a suspend
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

Verify that SLPC API works as expected after a suspend.

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 tests/i915/i915_pm_freq_api.c | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/tests/i915/i915_pm_freq_api.c b/tests/i915/i915_pm_freq_api.c
index 9005cd220..f35f1f8e0 100644
--- a/tests/i915/i915_pm_freq_api.c
+++ b/tests/i915/i915_pm_freq_api.c
@@ -18,6 +18,9 @@
  *
  * SUBTEST: freq-reset
  * Description: Test basic freq API works after a reset
+ *
+ * SUBTEST: freq-suspend
+ * Description: Test basic freq API works after a runtime suspend
  */
 
 IGT_TEST_DESCRIPTION("Test SLPC freq API");
@@ -99,6 +102,24 @@ static void test_reset(int i915, int dirfd, int gt)
 	igt_assert(get_freq(dirfd, RPS_MAX_FREQ_MHZ) == rpn);
 }
 
+static void test_suspend(int i915, int dirfd, int gt)
+{
+	uint32_t rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
+
+	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
+	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0);
+	usleep(ACT_FREQ_LATENCY_US);
+	igt_assert(get_freq(dirfd, RPS_MIN_FREQ_MHZ) == rpn);
+	igt_assert(get_freq(dirfd, RPS_MAX_FREQ_MHZ) == rpn);
+
+	/* Manually trigger a suspend */
+	igt_system_suspend_autoresume(SUSPEND_STATE_S3,
+				      SUSPEND_TEST_NONE);
+
+	igt_assert(get_freq(dirfd, RPS_MIN_FREQ_MHZ) == rpn);
+	igt_assert(get_freq(dirfd, RPS_MAX_FREQ_MHZ) == rpn);
+}
+
 igt_main
 {
 	int i915 = -1;
@@ -143,6 +164,15 @@ igt_main
 				test_reset(i915, dirfd, gt);
 	}
 
+	igt_describe("Test basic freq API works after suspend");
+	igt_subtest_with_dynamic_f("freq-suspend") {
+		int dirfd, gt;
+
+		for_each_sysfs_gt_dirfd(i915, dirfd, gt)
+			igt_dynamic_f("gt%u", gt)
+				test_suspend(i915, dirfd, gt);
+	}
+
 	igt_fixture {
 		int dirfd, gt;
 		/* Restore frequencies */
-- 
2.38.1

