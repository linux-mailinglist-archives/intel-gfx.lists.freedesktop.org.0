Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B417835E1
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 00:43:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFBD310E100;
	Mon, 21 Aug 2023 22:43:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A52BC10E100;
 Mon, 21 Aug 2023 22:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692657785; x=1724193785;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=l6oN3VbfPsxhjy2BDVUdjeHWRItUG1GnIx5Z0Wv1TEU=;
 b=hdAMnh4aAjCaBYhcmxqkP+hKtiseH4ttPjxIRnE2/j4Z0gLjqCUsDtYw
 VRvIKbdJXz6bWXekaMcjJw+/FDqHqol2TZAxv5XZ+L4ENsb2mi+2NAl97
 9tGE+6uQO0pnz3JYzuWFdtk+55q3M58OEzo1/Y83AMoACNmAwCfO84PTp
 epvfitm5/D7Q06zyILBW1zJKCadnUvvuIIkIs8Ek4Rp6ED7noXPqP2zZC
 W0eI0Ot4GnDvuY0+9u574u4dJD5hsylI+Psvu+HQi5mtU/uB69leFT2Qp
 FuUlPDhmytAF20N9+A2GoL4A/XukIGCm852eWdKBj7PmtM7LpOVu2L7G5 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="437639726"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="437639726"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 15:43:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="685821825"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="685821825"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga003.jf.intel.com with ESMTP; 21 Aug 2023 15:43:04 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Mon, 21 Aug 2023 15:41:06 -0700
Message-Id: <20230821224106.1412967-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 i-g-t] tests/i915_pm_freq_api: Ignore zero
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
v3: Revert back to v1, the runtime util functions do not work
as expected.
v4: Add a debug print for min/max freq before test begins

Link: https://gitlab.freedesktop.org/drm/intel/issues/8736
Link: https://gitlab.freedesktop.org/drm/intel/issues/8989

Reviewed-by: Riana Tauro <riana.tauro@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 tests/i915/i915_pm_freq_api.c | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/tests/i915/i915_pm_freq_api.c b/tests/i915/i915_pm_freq_api.c
index cf21cc936..2912287c4 100644
--- a/tests/i915/i915_pm_freq_api.c
+++ b/tests/i915/i915_pm_freq_api.c
@@ -88,6 +88,7 @@ static void test_freq_basic_api(int dirfd, int gt)
 static void test_reset(int i915, int dirfd, int gt, int count)
 {
 	uint32_t rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
+	uint32_t req_freq;
 	int fd;
 
 	for (int i = 0; i < count; i++) {
@@ -95,14 +96,18 @@ static void test_reset(int i915, int dirfd, int gt, int count)
 		igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
 		igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0);
 		usleep(ACT_FREQ_LATENCY_US);
-		igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
+		req_freq = get_freq(dirfd, RPS_CUR_FREQ_MHZ);
+		if (req_freq)
+			igt_assert_eq(req_freq, rpn);
 
 		/* Manually trigger a GT reset */
 		fd = igt_debugfs_gt_open(i915, gt, "reset", O_WRONLY);
 		igt_require(fd >= 0);
 		igt_ignore_warn(write(fd, "1\n", 2));
 
-		igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
+		req_freq = get_freq(dirfd, RPS_CUR_FREQ_MHZ);
+		if (req_freq)
+			igt_assert_eq(req_freq, rpn);
 	}
 	close(fd);
 }
@@ -110,17 +115,22 @@ static void test_reset(int i915, int dirfd, int gt, int count)
 static void test_suspend(int i915, int dirfd, int gt)
 {
 	uint32_t rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
+	uint32_t req_freq;
 
 	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
 	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0);
 	usleep(ACT_FREQ_LATENCY_US);
-	igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
+	req_freq = get_freq(dirfd, RPS_CUR_FREQ_MHZ);
+	if (req_freq)
+		igt_assert_eq(req_freq, rpn);
 
 	/* Manually trigger a suspend */
 	igt_system_suspend_autoresume(SUSPEND_STATE_S3,
 				      SUSPEND_TEST_NONE);
 
-	igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
+	req_freq = get_freq(dirfd, RPS_CUR_FREQ_MHZ);
+	if (req_freq)
+		igt_assert_eq(req_freq, rpn);
 }
 
 int i915 = -1;
@@ -160,6 +170,7 @@ igt_main
 		for_each_sysfs_gt_dirfd(i915, dirfd, gt) {
 			stash_min[gt] = get_freq(dirfd, RPS_MIN_FREQ_MHZ);
 			stash_max[gt] = get_freq(dirfd, RPS_MAX_FREQ_MHZ);
+			igt_debug("GT: %d, min: %d, max: %d", gt, stash_min[gt], stash_max[gt]);
 			igt_pm_ignore_slpc_efficient_freq(i915, dirfd, true);
 		}
 		igt_install_exit_handler(restore_sysfs_freq);
-- 
2.38.1

