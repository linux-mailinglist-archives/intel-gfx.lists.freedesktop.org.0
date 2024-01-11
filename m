Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B7E82B70B
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jan 2024 23:21:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23FAF10E0E9;
	Thu, 11 Jan 2024 22:21:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8970110E0B5;
 Thu, 11 Jan 2024 22:21:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705011686; x=1736547686;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ltEsOIBj6Lln81qxMHMVlom9u6U8HQEo064v0MKQoaU=;
 b=LFYTtDRwKVZShbK8YbMAAn5oWLCl9ON773XAZot05b0e6IbrvR2c8Yzp
 zASHrmdDjv0fbLvvnpnujehR16zY6DhdO5FZ2XuADRJvGUGaDoAFp1W6m
 OTKny6ozrne8lYQUNVgwha9sdgawVeZwPJnZpOVm9xFbes5ggOZRQDF1Z
 dFpIxnNoIzhUul5zm9csMrJ42fOAh48JP+lDZsfCaBG0h0TFhGapEenfe
 UAp8dKT2cyaGsHLMnSXtLR77lr+92w/u5J1XmX9V6Toe+GDOz7/CQxN0o
 /J0pSr5q87kIZpTwly1Fp6wQkyZPjlEmsblvMnsWssqmqehl9DwN08PCf g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="17619862"
X-IronPort-AV: E=Sophos;i="6.04,187,1695711600"; d="scan'208";a="17619862"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2024 14:21:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="782799983"
X-IronPort-AV: E=Sophos;i="6.04,187,1695711600"; d="scan'208";a="782799983"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga002.jf.intel.com with ESMTP; 11 Jan 2024 14:21:25 -0800
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Subject: [PATCH i-g-t] tests/perf_pmu: Set defaults before frequency test
Date: Thu, 11 Jan 2024 14:20:54 -0800
Message-Id: <20240111222054.2403101-1-vinay.belgaumkar@intel.com>
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

Seeing random issues where this test skips due to invalid
boost freq at the start. Also ensure that we restore the frequencies at the end.

v2: Use save/restore functions instead of exit_handler. Adding an
exit_handler necessitated moving drm_close() into the handler. However,
the module-reload subtest at the end expects drm-fd to be closed.
Also setup expected frequencies (Kamil) and address other nits (Kamil)

Link: https://gitlab.freedesktop.org/drm/intel/-/issues/9432
Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 tests/intel/perf_pmu.c | 62 +++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 61 insertions(+), 1 deletion(-)

diff --git a/tests/intel/perf_pmu.c b/tests/intel/perf_pmu.c
index c6e6a8b77..4ae2b60ae 100644
--- a/tests/intel/perf_pmu.c
+++ b/tests/intel/perf_pmu.c
@@ -2454,12 +2454,69 @@ static void pmu_read(int i915)
 		for_each_if((e)->class == I915_ENGINE_CLASS_RENDER) \
 			igt_dynamic_f("%s", e->name)
 
+int fd = -1;
+uint32_t *stash_min, *stash_max, *stash_boost;
+
+static void save_sysfs_freq(int i915)
+{
+	int gt, num_gts, sysfs, tmp;
+	uint32_t rpn_freq, rp0_freq;
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
+		rpn_freq = igt_sysfs_get_u32(sysfs, "rps_RPn_freq_mhz");
+		rp0_freq = igt_sysfs_get_u32(sysfs, "rps_RP0_freq_mhz");
+
+		/* Set pre-conditions, in case frequencies are in non-default state */
+		igt_require(__igt_sysfs_set_u32(sysfs, "rps_max_freq_mhz", rp0_freq));
+		igt_require(__igt_sysfs_set_u32(sysfs, "rps_boost_freq_mhz", rp0_freq));
+		igt_require(__igt_sysfs_set_u32(sysfs, "rps_min_freq_mhz", rpn_freq));
+
+		close(sysfs);
+	}
+}
+
+static void restore_sysfs_freq(int i915)
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
+	free(stash_boost);
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
@@ -2664,12 +2721,15 @@ igt_main
 	 * Test GPU frequency.
 	 */
 	igt_subtest_with_dynamic("frequency") {
+		save_sysfs_freq(fd);
+
 		i915_for_each_gt(fd, tmp, gt) {
 			igt_dynamic_f("gt%u", gt)
 				test_frequency(fd, gt);
 			igt_dynamic_f("idle-gt%u", gt)
 				test_frequency_idle(fd, gt);
 		}
+		restore_sysfs_freq(fd);
 	}
 
 	/**
-- 
2.38.1

