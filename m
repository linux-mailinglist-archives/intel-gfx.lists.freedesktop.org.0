Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A96F5525942
	for <lists+intel-gfx@lfdr.de>; Fri, 13 May 2022 03:10:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 485FB10F3D3;
	Fri, 13 May 2022 01:10:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 949DA10F3D3
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 May 2022 01:10:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652404216; x=1683940216;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=W6kGk0ECfrm1H83+u6lnr0FiGJUaZ5RZlI2Ib0Cu6sM=;
 b=OWtD8bDKR3syhRdx/4LN/A/2cQtYARE3hy29ZEX8G1Pm0YoeL+R/K4gy
 V9hXFfWzxNjsbsjjfd1nAc98VoTHJPLY7EZG9+Am8+JBGgkHIAhV5tqyI
 Pu9CNCcrj1RIcpHtpKUw3mkewlUJWCYq//fqja2JqbOyCbQTYGhIJZEv8
 sGD2nVoZugTSIU8gZu/yxU6PBLhitTdKcQyx9rZIa/TMKekeEZorYgLhy
 CVjfeaQSBSkOqn9CR+mVc/bpNjna5iyPQBFDvQJ3y1hz5eS6HEFhI+Z2V
 LK0P73aq2eUau1gCyCaCbGSTiaGNH1C3MjTJ4ZzacEBwTGz8CbmsNL3HP w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10345"; a="252226994"
X-IronPort-AV: E=Sophos;i="5.91,221,1647327600"; d="scan'208";a="252226994"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2022 18:10:15 -0700
X-IronPort-AV: E=Sophos;i="5.91,221,1647327600"; d="scan'208";a="572763905"
Received: from orsosgc001.jf.intel.com ([10.165.21.154])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2022 18:10:15 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 May 2022 18:10:10 -0700
Message-Id: <20220513011010.73236-1-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] tests/i915_pm_freq_mult: New test for
 media freq factor
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

XEHPSDV and DG2/ATS-M allow media IP blocks to run at frequencies different
from the GT frequency. i915 exposes sysfs controls for these frequency
multipliers. IGT's introduced in this patch exercise and verify these
per-gt (gt/gtN) sysfs controls starting with the media freq factor (factor
and multiplier terms are used interchangeably).

v2: Added igt_describe's and s/igt_info/igt_debug/  (Kamil)
v3: Change test name from i915_pm_disag_freq to i915_pm_freq_mult (Kamil)
    Remove .defaults and media_RPx sysfs controls for first merege

Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 tests/i915/i915_pm_freq_mult.c | 146 +++++++++++++++++++++++++++++++++
 tests/meson.build              |   8 ++
 2 files changed, 154 insertions(+)
 create mode 100644 tests/i915/i915_pm_freq_mult.c

diff --git a/tests/i915/i915_pm_freq_mult.c b/tests/i915/i915_pm_freq_mult.c
new file mode 100644
index 000000000000..f7ec74a9f897
--- /dev/null
+++ b/tests/i915/i915_pm_freq_mult.c
@@ -0,0 +1,146 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#include <sys/types.h>
+#include <sys/stat.h>
+#include <fcntl.h>
+
+#include "i915/gem.h"
+#include "igt.h"
+#include "igt_sysfs.h"
+
+IGT_TEST_DESCRIPTION(
+	"Tests for sysfs controls (or multipliers) for IP blocks which run at "
+	"frequencies different from the main GT frequency."
+);
+
+#define FREQ_SCALE_FACTOR	0.00390625f	/* 1.0f / 256 */
+
+/*
+ * Firmware interfaces are not completely synchronous, a delay is needed
+ * before the requested freq is actually set.
+ * Media ratio read back after set will mismatch if this value is too small
+ */
+#define wait_freq_set()	usleep(100000)
+
+static int i915 = -1;
+const intel_ctx_t *ctx;
+uint64_t ahnd;
+
+static void spin_all(void)
+{
+	igt_spin_t *spin = igt_spin_new(i915, .ahnd = ahnd, .ctx = ctx, .engine = ALL_ENGINES,
+					.flags = IGT_SPIN_POLL_RUN);
+
+	/* Wait till at least one spinner starts */
+	igt_spin_busywait_until_started(spin);
+}
+
+static void setup_freq(int gt, int dir)
+{
+	int rp0, rp1, rpn, min, max, act, media;
+
+	ctx = intel_ctx_create_all_physical(i915);
+	ahnd = get_reloc_ahnd(i915, ctx->id);
+
+	/* Spin on all engines to jack freq up to max */
+	spin_all();
+	wait_freq_set();
+
+	/* Print some debug information */
+	rp0 = igt_sysfs_get_u32(dir, "rps_RP0_freq_mhz");
+	rp1 = igt_sysfs_get_u32(dir, "rps_RP1_freq_mhz");
+	rpn = igt_sysfs_get_u32(dir, "rps_RPn_freq_mhz");
+	min = igt_sysfs_get_u32(dir, "rps_min_freq_mhz");
+	max = igt_sysfs_get_u32(dir, "rps_max_freq_mhz");
+	act = igt_sysfs_get_u32(dir, "rps_act_freq_mhz");
+
+	igt_debug("RP0 MHz: %d, RP1 MHz: %d, RPn MHz: %d, min MHz: %d, max MHz: %d, act MHz: %d\n", rp0, rp1, rpn, min, max, act);
+
+	if (igt_sysfs_has_attr(dir, "media_freq_factor")) {
+		media = igt_sysfs_get_u32(dir, "media_freq_factor");
+		igt_debug("media ratio: %.2f\n", media * FREQ_SCALE_FACTOR);
+	}
+}
+
+static void cleanup(int dir)
+{
+	igt_free_spins(i915);
+	put_ahnd(ahnd);
+	intel_ctx_destroy(i915, ctx);
+	gem_quiescent_gpu(i915);
+}
+
+static void media_freq(int gt, int dir)
+{
+	float scale;
+
+	igt_require(igt_sysfs_has_attr(dir, "media_freq_factor"));
+
+	igt_sysfs_scanf(dir, "media_freq_factor.scale", "%g", &scale);
+	igt_assert_eq(scale, FREQ_SCALE_FACTOR);
+
+	setup_freq(gt, dir);
+	igt_debug("media ratio value 0.0 represents dynamic mode\n");
+
+	/*
+	 * Media freq ratio modes supported are: dynamic (0), 1:2 (128) and
+	 * 1:1 (256). Setting dynamic (0) can return any of the three
+	 * modes. Fixed ratio modes should return the same value.
+	 */
+	for (int v = 256; v >= 0; v -= 64) {
+		int getv, ret;
+
+		/*
+		 * Check that we can set the mode. Ratios other than 1:2
+		 * and 1:1 are not supported.
+		 */
+		ret = igt_sysfs_printf(dir, "media_freq_factor", "%u", v);
+		if (ret <= 0) {
+			igt_debug("Media ratio %.2f is not supported\n", v * scale);
+			continue;
+		}
+
+		wait_freq_set();
+
+		getv = igt_sysfs_get_u32(dir, "media_freq_factor");
+
+		igt_debug("media ratio set: %.2f, media ratio get: %.2f\n",
+			  v * scale, getv * scale);
+
+		/*
+		 * Skip validation in dynamic mode since the returned media
+		 * ratio and freq are platform dependent and not clearly defined
+		 */
+		if (v)
+			igt_assert_eq(getv, v);
+	}
+
+	cleanup(dir);
+}
+
+igt_main
+{
+	int dir, gt;
+
+	igt_fixture {
+		i915 = drm_open_driver(DRIVER_INTEL);
+
+		/* Frequency multipliers are not simulated. */
+		igt_require(!igt_run_in_simulation());
+	}
+
+	igt_describe("Tests for media frequency factor sysfs");
+	igt_subtest_with_dynamic("media-freq") {
+		for_each_sysfs_gt_dirfd(i915, dir, gt) {
+			igt_dynamic_f("gt%d", gt)
+				media_freq(gt, dir);
+		}
+	}
+
+	igt_fixture {
+		close(i915);
+	}
+}
diff --git a/tests/meson.build b/tests/meson.build
index fb0f1e37f633..70c3c9118c3b 100644
--- a/tests/meson.build
+++ b/tests/meson.build
@@ -368,6 +368,14 @@ test_executables += executable('gem_mmap_offset',
 	   install : true)
 test_list += 'gem_mmap_offset'
 
+test_executables += executable('i915_pm_freq_mult',
+	   join_paths('i915', 'i915_pm_freq_mult.c'),
+	   dependencies : test_deps + [ lib_igt_perf ],
+	   install_dir : libexecdir,
+	   install_rpath : libexecdir_rpathdir,
+	   install : true)
+test_list += 'i915_pm_freq_mult'
+
 test_executables += executable('i915_pm_rc6_residency',
 	   join_paths('i915', 'i915_pm_rc6_residency.c'),
 	   dependencies : test_deps + [ lib_igt_perf ],
-- 
2.34.1

