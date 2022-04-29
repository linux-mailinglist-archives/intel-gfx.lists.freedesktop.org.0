Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A06513F9D
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Apr 2022 02:40:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 008E110F4A9;
	Fri, 29 Apr 2022 00:40:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8374A10F427
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Apr 2022 00:39:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651192795; x=1682728795;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=drvsLLaQSkgVpzSrJqJAZPIiCek43ZK9XdupLTi+jCs=;
 b=VDc2YCES9pEsVMgo/M8ZGveUaYShdtq9nfUND4wl1UhJbso2te2r7/P1
 zjZMfIJTOj5Y2uKyk08cHQ7q6dXo7QE/LyXUCfGdnyb0NgfpSOs/LeW3e
 g0dNTzIqY4LyR0HyVbK0iQ0E3PkNcAHekZ/3HEd6q91uM0JtR0fSYDU6c
 tFIMmhHdP5G4qJ6M5JRC4iq+O9mQ84+Y8eJ3WCITYnzIbLpjOHlPrIwfD
 LhFgMcPcTF0CsJvqs5NSNIxGewZTlWyp39IaaKCByGrBvMJr0OubRPiij
 yoqwIXMDkuNRlEf5O7dj39+Yd9ld+iG3z2lIwuGH3W0xvm76b6tBz9leR A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10331"; a="329419334"
X-IronPort-AV: E=Sophos;i="5.91,296,1647327600"; d="scan'208";a="329419334"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2022 17:39:52 -0700
X-IronPort-AV: E=Sophos;i="5.91,296,1647327600"; d="scan'208";a="662069863"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154.com)
 ([10.165.21.154])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2022 17:39:52 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Apr 2022 17:39:38 -0700
Message-Id: <95d394daa7c4ef71ceb691da10dff5c4e9ec5ecd.1651192357.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1651192357.git.ashutosh.dixit@intel.com>
References: <cover.1651192357.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/9] drm/i915/gt: Convert callers to use per-gt
 pcode functions
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
Cc: Andi Shyti <andi.shyti@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Convert appropriate callers to use per-gt pcode functions. Callers using
pcode functions at "global scope", including *all* display functions are
not converted, they continue to use the legacy pcode interface.

v2: Convert to new uncore interface for pcode functions

Cc: Andi Shyti <andi.shyti@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 6 +++---
 drivers/gpu/drm/i915/gt/intel_llc.c           | 9 ++++-----
 drivers/gpu/drm/i915/gt/intel_rc6.c           | 4 ++--
 drivers/gpu/drm/i915/gt/intel_rps.c           | 6 +++---
 drivers/gpu/drm/i915/gt/selftest_llc.c        | 4 ++--
 drivers/gpu/drm/i915/gt/selftest_rps.c        | 4 ++--
 6 files changed, 16 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
index 0c6b9eb724ae..025158732b8d 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
@@ -138,7 +138,7 @@ static int gen6_drpc(struct seq_file *m)
 	}
 
 	if (GRAPHICS_VER(i915) <= 7)
-		snb_pcode_read(i915, GEN6_PCODE_READ_RC6VIDS, &rc6vids, NULL);
+		intel_pcode_read(gt->uncore, GEN6_PCODE_READ_RC6VIDS, &rc6vids, NULL);
 
 	seq_printf(m, "RC1e Enabled: %s\n",
 		   str_yes_no(rcctl1 & GEN6_RC_CTL_RC1e_ENABLE));
@@ -545,8 +545,8 @@ static int llc_show(struct seq_file *m, void *data)
 	wakeref = intel_runtime_pm_get(gt->uncore->rpm);
 	for (gpu_freq = min_gpu_freq; gpu_freq <= max_gpu_freq; gpu_freq++) {
 		ia_freq = gpu_freq;
-		snb_pcode_read(i915, GEN6_PCODE_READ_MIN_FREQ_TABLE,
-			       &ia_freq, NULL);
+		intel_pcode_read(gt->uncore, GEN6_PCODE_READ_MIN_FREQ_TABLE,
+				 &ia_freq, NULL);
 		seq_printf(m, "%d\t\t%d\t\t\t\t%d\n",
 			   intel_gpu_freq(rps,
 					  (gpu_freq *
diff --git a/drivers/gpu/drm/i915/gt/intel_llc.c b/drivers/gpu/drm/i915/gt/intel_llc.c
index 40e2e28ee6c7..3c70a937b86a 100644
--- a/drivers/gpu/drm/i915/gt/intel_llc.c
+++ b/drivers/gpu/drm/i915/gt/intel_llc.c
@@ -124,7 +124,6 @@ static void calc_ia_freq(struct intel_llc *llc,
 
 static void gen6_update_ring_freq(struct intel_llc *llc)
 {
-	struct drm_i915_private *i915 = llc_to_gt(llc)->i915;
 	struct ia_constants consts;
 	unsigned int gpu_freq;
 
@@ -142,10 +141,10 @@ static void gen6_update_ring_freq(struct intel_llc *llc)
 		unsigned int ia_freq, ring_freq;
 
 		calc_ia_freq(llc, gpu_freq, &consts, &ia_freq, &ring_freq);
-		snb_pcode_write(i915, GEN6_PCODE_WRITE_MIN_FREQ_TABLE,
-				ia_freq << GEN6_PCODE_FREQ_IA_RATIO_SHIFT |
-				ring_freq << GEN6_PCODE_FREQ_RING_RATIO_SHIFT |
-				gpu_freq);
+		intel_pcode_write(llc_to_gt(llc)->uncore, GEN6_PCODE_WRITE_MIN_FREQ_TABLE,
+				  ia_freq << GEN6_PCODE_FREQ_IA_RATIO_SHIFT |
+				  ring_freq << GEN6_PCODE_FREQ_RING_RATIO_SHIFT |
+				  gpu_freq);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index b4770690e794..c284baafa895 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -272,7 +272,7 @@ static void gen6_rc6_enable(struct intel_rc6 *rc6)
 	    GEN6_RC_CTL_HW_ENABLE;
 
 	rc6vids = 0;
-	ret = snb_pcode_read(i915, GEN6_PCODE_READ_RC6VIDS, &rc6vids, NULL);
+	ret = intel_pcode_read(rc6_to_gt(rc6)->uncore, GEN6_PCODE_READ_RC6VIDS, &rc6vids, NULL);
 	if (GRAPHICS_VER(i915) == 6 && ret) {
 		drm_dbg(&i915->drm, "Couldn't check for BIOS workaround\n");
 	} else if (GRAPHICS_VER(i915) == 6 &&
@@ -282,7 +282,7 @@ static void gen6_rc6_enable(struct intel_rc6 *rc6)
 			GEN6_DECODE_RC6_VID(rc6vids & 0xff), 450);
 		rc6vids &= 0xffff00;
 		rc6vids |= GEN6_ENCODE_RC6_VID(450);
-		ret = snb_pcode_write(i915, GEN6_PCODE_WRITE_RC6VIDS, rc6vids);
+		ret = intel_pcode_write(rc6_to_gt(rc6)->uncore, GEN6_PCODE_WRITE_RC6VIDS, rc6vids);
 		if (ret)
 			drm_err(&i915->drm,
 				"Couldn't fix incorrect rc6 voltage\n");
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 3476a11f294c..08aa6bf3abe2 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -1142,8 +1142,8 @@ static void gen6_rps_init(struct intel_rps *rps)
 
 		if (IS_GEN9_BC(i915) || GRAPHICS_VER(i915) >= 11)
 			mult = GEN9_FREQ_SCALER;
-		if (snb_pcode_read(i915, HSW_PCODE_DYNAMIC_DUTY_CYCLE_CONTROL,
-				   &ddcc_status, NULL) == 0)
+		if (intel_pcode_read(rps_to_gt(rps)->uncore, HSW_PCODE_DYNAMIC_DUTY_CYCLE_CONTROL,
+				     &ddcc_status, NULL) == 0)
 			rps->efficient_freq =
 				clamp_t(u32,
 					((ddcc_status >> 8) & 0xff) * mult,
@@ -1982,7 +1982,7 @@ void intel_rps_init(struct intel_rps *rps)
 	if (GRAPHICS_VER(i915) == 6 || IS_IVYBRIDGE(i915) || IS_HASWELL(i915)) {
 		u32 params = 0;
 
-		snb_pcode_read(i915, GEN6_READ_OC_PARAMS, &params, NULL);
+		intel_pcode_read(rps_to_gt(rps)->uncore, GEN6_READ_OC_PARAMS, &params, NULL);
 		if (params & BIT(31)) { /* OC supported */
 			drm_dbg(&i915->drm,
 				"Overclocking supported, max: %dMHz, overclock: %dMHz\n",
diff --git a/drivers/gpu/drm/i915/gt/selftest_llc.c b/drivers/gpu/drm/i915/gt/selftest_llc.c
index 2cd184ab32b1..f6833b13170e 100644
--- a/drivers/gpu/drm/i915/gt/selftest_llc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_llc.c
@@ -31,8 +31,8 @@ static int gen6_verify_ring_freq(struct intel_llc *llc)
 		calc_ia_freq(llc, gpu_freq, &consts, &ia_freq, &ring_freq);
 
 		val = gpu_freq;
-		if (snb_pcode_read(i915, GEN6_PCODE_READ_MIN_FREQ_TABLE,
-				   &val, NULL)) {
+		if (intel_pcode_read(llc_to_gt(llc)->uncore, GEN6_PCODE_READ_MIN_FREQ_TABLE,
+				     &val, NULL)) {
 			pr_err("Failed to read freq table[%d], range [%d, %d]\n",
 			       gpu_freq, consts.min_gpu_freq, consts.max_gpu_freq);
 			err = -ENXIO;
diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index 6a69ac0184ad..ca231b34c77e 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -521,8 +521,8 @@ static void show_pcu_config(struct intel_rps *rps)
 	for (gpu_freq = min_gpu_freq; gpu_freq <= max_gpu_freq; gpu_freq++) {
 		int ia_freq = gpu_freq;
 
-		snb_pcode_read(i915, GEN6_PCODE_READ_MIN_FREQ_TABLE,
-			       &ia_freq, NULL);
+		intel_pcode_read(rps_to_gt(rps)->uncore, GEN6_PCODE_READ_MIN_FREQ_TABLE,
+				 &ia_freq, NULL);
 
 		pr_info("%5d  %5d  %5d\n",
 			gpu_freq * 50,
-- 
2.34.1

