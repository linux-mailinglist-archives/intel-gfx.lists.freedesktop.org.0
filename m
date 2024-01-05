Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 37E33824C62
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jan 2024 02:11:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42B0210E010;
	Fri,  5 Jan 2024 01:11:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE34410E010;
 Fri,  5 Jan 2024 01:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704417084; x=1735953084;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BP/Wz9HtqxxJR30NGG1B6g+boKe+xZipdcQJmDSWeIA=;
 b=PwJVjiOPHfvAELMRf5eK5Sl70Gd+KRyj0BeNEmj1T8JIAabz6V2IbY8j
 ZS1U5gOSHNtVMLzoCruYZbDUMxLgXmuum3fC+ZAfVfquVHtAzGGK7zeiM
 Z2pTTBdIsyCJLiLMDkxDYBNF5vD2iikNQk5lB0SXfg8Xco1RIaSLTcoM4
 PksIhEyNXVcg2u/iMevdK9UvsmEC6Uc1RTXmpdEsCjFrMjv1Tn8m9Cuos
 FtKFaTz6iIUkdjgAyOiz426F0uj/oFVqkWP8tP4ZNQSk9B57tc49vdcbS
 mn+NC902RMEU0JooIjauvyy+z4kbx6msa2Armq8of0GSgvtk+szRMTDDc Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="461706211"
X-IronPort-AV: E=Sophos;i="6.04,332,1695711600"; d="scan'208";a="461706211"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 17:11:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="1111946112"
X-IronPort-AV: E=Sophos;i="6.04,332,1695711600"; d="scan'208";a="1111946112"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by fmsmga005.fm.intel.com with ESMTP; 04 Jan 2024 17:11:23 -0800
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Subject: [PATCH i-g-t] tests/perf_pmu: Restore sysfs freq in exit handler
Date: Thu,  4 Jan 2024 17:10:00 -0800
Message-Id: <20240105011000.138538-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Seeing random issues where this test starts with invalid values.
Ensure that we restore the frequencies in case test exits early
due to some system issues.

Link: https://gitlab.freedesktop.org/drm/intel/-/issues/9432
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 tests/intel/perf_pmu.c | 53 +++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 52 insertions(+), 1 deletion(-)

diff --git a/tests/intel/perf_pmu.c b/tests/intel/perf_pmu.c
index c6e6a8b77..ceacc1d3d 100644
--- a/tests/intel/perf_pmu.c
+++ b/tests/intel/perf_pmu.c
@@ -2454,12 +2454,59 @@ static void pmu_read(int i915)
 		for_each_if((e)->class == I915_ENGINE_CLASS_RENDER) \
 			igt_dynamic_f("%s", e->name)
 
+int fd = -1;
+uint32_t *stash_min, *stash_max, *stash_boost;
+
+static void save_sysfs_freq(int i915)
+{
+	int gt, num_gts, sysfs, tmp;
+
+	num_gts = igt_sysfs_get_num_gt(i915);
+
+	stash_min = (uint32_t *)malloc(sizeof(uint32_t) * num_gts);
+	stash_max = (uint32_t *)malloc(sizeof(uint32_t) * num_gts);
+	stash_boost = (uint32_t *)malloc(sizeof(uint32_t) * num_gts);
+
+	/* Save boost, min and max across GTs */
+	i915_for_each_gt(i915, tmp, gt) {
+		sysfs = igt_sysfs_gt_open(i915, gt);
+		igt_require(sysfs >= 0);
+
+		stash_min[gt] = igt_sysfs_get_u32(sysfs, "rps_min_freq_mhz");
+		stash_max[gt] = igt_sysfs_get_u32(sysfs, "rps_max_freq_mhz");
+		stash_boost[gt] = igt_sysfs_get_u32(sysfs, "rps_boost_freq_mhz");
+		igt_debug("GT: %d, min: %d, max: %d, boost:%d\n",
+			  gt, stash_min[gt], stash_max[gt], stash_boost[gt]);
+
+		close(sysfs);
+	}
+}
+
+static void restore_sysfs_freq(int sig)
+{
+	int sysfs, gt, tmp;
+
+	/* Restore frequencies */
+	i915_for_each_gt(fd, tmp, gt) {
+		sysfs = igt_sysfs_gt_open(fd, gt);
+		igt_require(sysfs >= 0);
+
+		igt_require(__igt_sysfs_set_u32(sysfs, "rps_max_freq_mhz", stash_max[gt]));
+		igt_require(__igt_sysfs_set_u32(sysfs, "rps_min_freq_mhz", stash_min[gt]));
+		igt_require(__igt_sysfs_set_u32(sysfs, "rps_boost_freq_mhz", stash_boost[gt]));
+
+		close(sysfs);
+	}
+	free(stash_min);
+	free(stash_max);
+}
+
 igt_main
 {
 	const struct intel_execution_engine2 *e;
 	unsigned int num_engines = 0;
 	const intel_ctx_t *ctx = NULL;
-	int gt, tmp, fd = -1;
+	int gt, tmp;
 	int num_gt = 0;
 
 	/**
@@ -2482,6 +2529,7 @@ igt_main
 
 		i915_for_each_gt(fd, tmp, gt)
 			num_gt++;
+
 	}
 
 	igt_describe("Verify i915 pmu dir exists and read all events");
@@ -2664,6 +2712,9 @@ igt_main
 	 * Test GPU frequency.
 	 */
 	igt_subtest_with_dynamic("frequency") {
+		save_sysfs_freq(fd);
+		igt_install_exit_handler(restore_sysfs_freq);
+
 		i915_for_each_gt(fd, tmp, gt) {
 			igt_dynamic_f("gt%u", gt)
 				test_frequency(fd, gt);
-- 
2.38.1

