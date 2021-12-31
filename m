Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D084823E1
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Dec 2021 13:01:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 749B889971;
	Fri, 31 Dec 2021 12:00:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AFB489971
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Dec 2021 12:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640952057; x=1672488057;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CtS1zidG6tDrtJL70KSaVDr62QYwDJeRPLM4jU7DL7U=;
 b=d6CW+IiFTQAWQDIq1zU5XvESVwqa+jo8JAQ7qHRwbT91ltAurjcFMH5Z
 VyYQ4pmByXAM3WW44Z/xTPPWPEHex7icQca+sMG+nvvJitWhq55N2FrD2
 QIaVbz/hgc/XeaMkot2k3y2p+cWr6bjZ8sor2oYHTKwYgPSZqJJdaB37X
 5VZjH28f+d0L4eQ7BOCcupbn13A4XRMgoijip2kMybLAphxtA2HAJ7IPa
 BXlvaPwAQJfWxcctkLQQSkbHdFKegDyoiAGz3MRzDXB32dXhT4r25jZI3
 trHc9hBRb8o2CzWaVPor9hv2lk7niY/aOZKUw5LX+O+Bx3ss0F5sptTOB Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10213"; a="242013294"
X-IronPort-AV: E=Sophos;i="5.88,251,1635231600"; d="scan'208";a="242013294"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2021 04:00:57 -0800
X-IronPort-AV: E=Sophos;i="5.88,251,1635231600"; d="scan'208";a="469064630"
Received: from arudakov-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.25.42])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2021 04:00:55 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 Dec 2021 14:00:51 +0200
Message-Id: <20211231120051.1252029-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/pcode: rename sandybridge_pcode_* to
 snb_pcode_*
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Prefer acronym-based naming to be in line with the rest of the driver.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c       | 13 +++-----
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 30 +++++++++---------
 drivers/gpu/drm/i915/display/intel_display.c  |  6 ++--
 .../drm/i915/display/intel_display_power.c    | 11 +++----
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  3 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c |  8 ++---
 drivers/gpu/drm/i915/gt/intel_llc.c           |  9 +++---
 drivers/gpu/drm/i915/gt/intel_rc6.c           |  5 ++-
 drivers/gpu/drm/i915/gt/intel_rps.c           |  8 ++---
 drivers/gpu/drm/i915/gt/selftest_llc.c        |  5 ++-
 drivers/gpu/drm/i915/gt/selftest_rps.c        |  5 ++-
 drivers/gpu/drm/i915/intel_dram.c             |  6 ++--
 drivers/gpu/drm/i915/intel_pcode.c            | 31 +++++++------------
 drivers/gpu/drm/i915/intel_pcode.h            | 12 +++----
 drivers/gpu/drm/i915/intel_pm.c               | 20 ++++++------
 15 files changed, 70 insertions(+), 102 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 2da4aacc956b..c35bad21b657 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -75,10 +75,9 @@ static int icl_pcode_read_qgv_point_info(struct drm_i915_private *dev_priv,
 	u16 dclk;
 	int ret;
 
-	ret = sandybridge_pcode_read(dev_priv,
-				     ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
-				     ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(point),
-				     &val, &val2);
+	ret = snb_pcode_read(dev_priv, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
+			     ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(point),
+			     &val, &val2);
 	if (ret)
 		return ret;
 
@@ -102,10 +101,8 @@ static int adls_pcode_read_psf_gv_point_info(struct drm_i915_private *dev_priv,
 	int ret;
 	int i;
 
-	ret = sandybridge_pcode_read(dev_priv,
-				     ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
-				     ADL_PCODE_MEM_SS_READ_PSF_GV_INFO,
-				     &val, NULL);
+	ret = snb_pcode_read(dev_priv, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
+			     ADL_PCODE_MEM_SS_READ_PSF_GV_INFO, &val, NULL);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 249f81a80eb7..6265dde258d7 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -804,8 +804,7 @@ static void bdw_set_cdclk(struct drm_i915_private *dev_priv,
 		     "trying to change cdclk frequency with cdclk not enabled\n"))
 		return;
 
-	ret = sandybridge_pcode_write(dev_priv,
-				      BDW_PCODE_DISPLAY_FREQ_CHANGE_REQ, 0x0);
+	ret = snb_pcode_write(dev_priv, BDW_PCODE_DISPLAY_FREQ_CHANGE_REQ, 0x0);
 	if (ret) {
 		drm_err(&dev_priv->drm,
 			"failed to inform pcode about cdclk change\n");
@@ -833,8 +832,8 @@ static void bdw_set_cdclk(struct drm_i915_private *dev_priv,
 			 LCPLL_CD_SOURCE_FCLK_DONE) == 0, 1))
 		drm_err(&dev_priv->drm, "Switching back to LCPLL failed\n");
 
-	sandybridge_pcode_write(dev_priv, HSW_PCODE_DE_WRITE_FREQ_REQ,
-				cdclk_config->voltage_level);
+	snb_pcode_write(dev_priv, HSW_PCODE_DE_WRITE_FREQ_REQ,
+			cdclk_config->voltage_level);
 
 	intel_de_write(dev_priv, CDCLK_FREQ,
 		       DIV_ROUND_CLOSEST(cdclk, 1000) - 1);
@@ -1137,8 +1136,8 @@ static void skl_set_cdclk(struct drm_i915_private *dev_priv,
 	intel_de_posting_read(dev_priv, CDCLK_CTL);
 
 	/* inform PCU of the change */
-	sandybridge_pcode_write(dev_priv, SKL_PCODE_CDCLK_CONTROL,
-				cdclk_config->voltage_level);
+	snb_pcode_write(dev_priv, SKL_PCODE_CDCLK_CONTROL,
+			cdclk_config->voltage_level);
 
 	intel_update_cdclk(dev_priv);
 }
@@ -1716,10 +1715,9 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 		 * BSpec requires us to wait up to 150usec, but that leads to
 		 * timeouts; the 2ms used here is based on experiment.
 		 */
-		ret = sandybridge_pcode_write_timeout(dev_priv,
-						      HSW_PCODE_DE_WRITE_FREQ_REQ,
-						      0x80000000, 150, 2);
-
+		ret = snb_pcode_write_timeout(dev_priv,
+					      HSW_PCODE_DE_WRITE_FREQ_REQ,
+					      0x80000000, 150, 2);
 	if (ret) {
 		drm_err(&dev_priv->drm,
 			"Failed to inform PCU about cdclk change (err %d, freq %d)\n",
@@ -1780,8 +1778,8 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(dev_priv, pipe));
 
 	if (DISPLAY_VER(dev_priv) >= 11) {
-		ret = sandybridge_pcode_write(dev_priv, SKL_PCODE_CDCLK_CONTROL,
-					      cdclk_config->voltage_level);
+		ret = snb_pcode_write(dev_priv, SKL_PCODE_CDCLK_CONTROL,
+				      cdclk_config->voltage_level);
 	} else {
 		/*
 		 * The timeout isn't specified, the 2ms used here is based on
@@ -1789,10 +1787,10 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 		 * FIXME: Waiting for the request completion could be delayed
 		 * until the next PCODE request based on BSpec.
 		 */
-		ret = sandybridge_pcode_write_timeout(dev_priv,
-						      HSW_PCODE_DE_WRITE_FREQ_REQ,
-						      cdclk_config->voltage_level,
-						      150, 2);
+		ret = snb_pcode_write_timeout(dev_priv,
+					      HSW_PCODE_DE_WRITE_FREQ_REQ,
+					      cdclk_config->voltage_level,
+					      150, 2);
 	}
 
 	if (ret) {
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index bf7ce684dd8e..01e9b5baecd2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1118,8 +1118,8 @@ void hsw_enable_ips(const struct intel_crtc_state *crtc_state)
 	drm_WARN_ON(dev, !(crtc_state->active_planes & ~BIT(PLANE_CURSOR)));
 
 	if (IS_BROADWELL(dev_priv)) {
-		drm_WARN_ON(dev, sandybridge_pcode_write(dev_priv, DISPLAY_IPS_CONTROL,
-							 IPS_ENABLE | IPS_PCODE_CONTROL));
+		drm_WARN_ON(dev, snb_pcode_write(dev_priv, DISPLAY_IPS_CONTROL,
+						 IPS_ENABLE | IPS_PCODE_CONTROL));
 		/* Quoting Art Runyan: "its not safe to expect any particular
 		 * value in IPS_CTL bit 31 after enabling IPS through the
 		 * mailbox." Moreover, the mailbox may return a bogus state,
@@ -1149,7 +1149,7 @@ void hsw_disable_ips(const struct intel_crtc_state *crtc_state)
 
 	if (IS_BROADWELL(dev_priv)) {
 		drm_WARN_ON(dev,
-			    sandybridge_pcode_write(dev_priv, DISPLAY_IPS_CONTROL, 0));
+			    snb_pcode_write(dev_priv, DISPLAY_IPS_CONTROL, 0));
 		/*
 		 * Wait for PCODE to finish disabling IPS. The BSpec specified
 		 * 42ms timeout value leads to occasional timeouts so use 100ms
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 05babdcf5f2e..f5c9e64863be 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -682,9 +682,8 @@ static void icl_tc_cold_exit(struct drm_i915_private *i915)
 	int ret, tries = 0;
 
 	while (1) {
-		ret = sandybridge_pcode_write_timeout(i915,
-						      ICL_PCODE_EXIT_TCCOLD,
-						      0, 250, 1);
+		ret = snb_pcode_write_timeout(i915, ICL_PCODE_EXIT_TCCOLD, 0,
+					      250, 1);
 		if (ret != -EAGAIN || ++tries == 3)
 			break;
 		msleep(1);
@@ -4052,8 +4051,7 @@ tgl_tc_cold_request(struct drm_i915_private *i915, bool block)
 		 * Spec states that we should timeout the request after 200us
 		 * but the function below will timeout after 500us
 		 */
-		ret = sandybridge_pcode_read(i915, TGL_PCODE_TCCOLD, &low_val,
-					     &high_val);
+		ret = snb_pcode_read(i915, TGL_PCODE_TCCOLD, &low_val, &high_val);
 		if (ret == 0) {
 			if (block &&
 			    (low_val & TGL_PCODE_EXIT_TCCOLD_DATA_L_EXIT_FAILED))
@@ -5468,8 +5466,7 @@ static u32 hsw_read_dcomp(struct drm_i915_private *dev_priv)
 static void hsw_write_dcomp(struct drm_i915_private *dev_priv, u32 val)
 {
 	if (IS_HASWELL(dev_priv)) {
-		if (sandybridge_pcode_write(dev_priv,
-					    GEN6_PCODE_WRITE_D_COMP, val))
+		if (snb_pcode_write(dev_priv, GEN6_PCODE_WRITE_D_COMP, val))
 			drm_dbg_kms(&dev_priv->drm,
 				    "Failed to write to D_COMP\n");
 	} else {
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 4509fe7438e8..e1ecf38db0ef 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -297,8 +297,7 @@ static int intel_hdcp_load_keys(struct drm_i915_private *dev_priv)
 	 * Mailbox interface.
 	 */
 	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv)) {
-		ret = sandybridge_pcode_write(dev_priv,
-					      SKL_PCODE_LOAD_HDCP_KEYS, 1);
+		ret = snb_pcode_write(dev_priv, SKL_PCODE_LOAD_HDCP_KEYS, 1);
 		if (ret) {
 			drm_err(&dev_priv->drm,
 				"Failed to initiate HDCP key load (%d)\n",
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
index 404dfa7673c6..6c5c1d0363bf 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
@@ -134,8 +134,7 @@ static int gen6_drpc(struct seq_file *m)
 	}
 
 	if (GRAPHICS_VER(i915) <= 7)
-		sandybridge_pcode_read(i915, GEN6_PCODE_READ_RC6VIDS,
-				       &rc6vids, NULL);
+		snb_pcode_read(i915, GEN6_PCODE_READ_RC6VIDS, &rc6vids, NULL);
 
 	seq_printf(m, "RC1e Enabled: %s\n",
 		   yesno(rcctl1 & GEN6_RC_CTL_RC1e_ENABLE));
@@ -557,9 +556,8 @@ static int llc_show(struct seq_file *m, void *data)
 	wakeref = intel_runtime_pm_get(gt->uncore->rpm);
 	for (gpu_freq = min_gpu_freq; gpu_freq <= max_gpu_freq; gpu_freq++) {
 		ia_freq = gpu_freq;
-		sandybridge_pcode_read(i915,
-				       GEN6_PCODE_READ_MIN_FREQ_TABLE,
-				       &ia_freq, NULL);
+		snb_pcode_read(i915, GEN6_PCODE_READ_MIN_FREQ_TABLE,
+			       &ia_freq, NULL);
 		seq_printf(m, "%d\t\t%d\t\t\t\t%d\n",
 			   intel_gpu_freq(rps,
 					  (gpu_freq *
diff --git a/drivers/gpu/drm/i915/gt/intel_llc.c b/drivers/gpu/drm/i915/gt/intel_llc.c
index 08d7d5ae263a..63f18830c611 100644
--- a/drivers/gpu/drm/i915/gt/intel_llc.c
+++ b/drivers/gpu/drm/i915/gt/intel_llc.c
@@ -140,11 +140,10 @@ static void gen6_update_ring_freq(struct intel_llc *llc)
 		unsigned int ia_freq, ring_freq;
 
 		calc_ia_freq(llc, gpu_freq, &consts, &ia_freq, &ring_freq);
-		sandybridge_pcode_write(i915,
-					GEN6_PCODE_WRITE_MIN_FREQ_TABLE,
-					ia_freq << GEN6_PCODE_FREQ_IA_RATIO_SHIFT |
-					ring_freq << GEN6_PCODE_FREQ_RING_RATIO_SHIFT |
-					gpu_freq);
+		snb_pcode_write(i915, GEN6_PCODE_WRITE_MIN_FREQ_TABLE,
+				ia_freq << GEN6_PCODE_FREQ_IA_RATIO_SHIFT |
+				ring_freq << GEN6_PCODE_FREQ_RING_RATIO_SHIFT |
+				gpu_freq);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index c3155ee58689..bc3520ba58da 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -267,8 +267,7 @@ static void gen6_rc6_enable(struct intel_rc6 *rc6)
 	    GEN6_RC_CTL_HW_ENABLE;
 
 	rc6vids = 0;
-	ret = sandybridge_pcode_read(i915, GEN6_PCODE_READ_RC6VIDS,
-				     &rc6vids, NULL);
+	ret = snb_pcode_read(i915, GEN6_PCODE_READ_RC6VIDS, &rc6vids, NULL);
 	if (GRAPHICS_VER(i915) == 6 && ret) {
 		drm_dbg(&i915->drm, "Couldn't check for BIOS workaround\n");
 	} else if (GRAPHICS_VER(i915) == 6 &&
@@ -278,7 +277,7 @@ static void gen6_rc6_enable(struct intel_rc6 *rc6)
 			GEN6_DECODE_RC6_VID(rc6vids & 0xff), 450);
 		rc6vids &= 0xffff00;
 		rc6vids |= GEN6_ENCODE_RC6_VID(450);
-		ret = sandybridge_pcode_write(i915, GEN6_PCODE_WRITE_RC6VIDS, rc6vids);
+		ret = snb_pcode_write(i915, GEN6_PCODE_WRITE_RC6VIDS, rc6vids);
 		if (ret)
 			drm_err(&i915->drm,
 				"Couldn't fix incorrect rc6 voltage\n");
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 54e7df788dbf..4a09d1447817 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -1090,9 +1090,8 @@ static void gen6_rps_init(struct intel_rps *rps)
 	    IS_GEN9_BC(i915) || GRAPHICS_VER(i915) >= 11) {
 		u32 ddcc_status = 0;
 
-		if (sandybridge_pcode_read(i915,
-					   HSW_PCODE_DYNAMIC_DUTY_CYCLE_CONTROL,
-					   &ddcc_status, NULL) == 0)
+		if (snb_pcode_read(i915, HSW_PCODE_DYNAMIC_DUTY_CYCLE_CONTROL,
+				   &ddcc_status, NULL) == 0)
 			rps->efficient_freq =
 				clamp_t(u8,
 					(ddcc_status >> 8) & 0xff,
@@ -1940,8 +1939,7 @@ void intel_rps_init(struct intel_rps *rps)
 	if (GRAPHICS_VER(i915) == 6 || IS_IVYBRIDGE(i915) || IS_HASWELL(i915)) {
 		u32 params = 0;
 
-		sandybridge_pcode_read(i915, GEN6_READ_OC_PARAMS,
-				       &params, NULL);
+		snb_pcode_read(i915, GEN6_READ_OC_PARAMS, &params, NULL);
 		if (params & BIT(31)) { /* OC supported */
 			drm_dbg(&i915->drm,
 				"Overclocking supported, max: %dMHz, overclock: %dMHz\n",
diff --git a/drivers/gpu/drm/i915/gt/selftest_llc.c b/drivers/gpu/drm/i915/gt/selftest_llc.c
index 459b775f163a..2cd184ab32b1 100644
--- a/drivers/gpu/drm/i915/gt/selftest_llc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_llc.c
@@ -31,9 +31,8 @@ static int gen6_verify_ring_freq(struct intel_llc *llc)
 		calc_ia_freq(llc, gpu_freq, &consts, &ia_freq, &ring_freq);
 
 		val = gpu_freq;
-		if (sandybridge_pcode_read(i915,
-					   GEN6_PCODE_READ_MIN_FREQ_TABLE,
-					   &val, NULL)) {
+		if (snb_pcode_read(i915, GEN6_PCODE_READ_MIN_FREQ_TABLE,
+				   &val, NULL)) {
 			pr_err("Failed to read freq table[%d], range [%d, %d]\n",
 			       gpu_freq, consts.min_gpu_freq, consts.max_gpu_freq);
 			err = -ENXIO;
diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index 7ee2513e15f9..e2f8a7f12215 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -518,9 +518,8 @@ static void show_pcu_config(struct intel_rps *rps)
 	for (gpu_freq = min_gpu_freq; gpu_freq <= max_gpu_freq; gpu_freq++) {
 		int ia_freq = gpu_freq;
 
-		sandybridge_pcode_read(i915,
-				       GEN6_PCODE_READ_MIN_FREQ_TABLE,
-				       &ia_freq, NULL);
+		snb_pcode_read(i915, GEN6_PCODE_READ_MIN_FREQ_TABLE,
+			       &ia_freq, NULL);
 
 		pr_info("%5d  %5d  %5d\n",
 			gpu_freq * 50,
diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/intel_dram.c
index 84bb212bae4b..3e26ccabf7f9 100644
--- a/drivers/gpu/drm/i915/intel_dram.c
+++ b/drivers/gpu/drm/i915/intel_dram.c
@@ -389,10 +389,8 @@ static int icl_pcode_read_mem_global_info(struct drm_i915_private *dev_priv)
 	u32 val = 0;
 	int ret;
 
-	ret = sandybridge_pcode_read(dev_priv,
-				     ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
-				     ICL_PCODE_MEM_SS_READ_GLOBAL_INFO,
-				     &val, NULL);
+	ret = snb_pcode_read(dev_priv, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
+			     ICL_PCODE_MEM_SS_READ_GLOBAL_INFO, &val, NULL);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/intel_pcode.c b/drivers/gpu/drm/i915/intel_pcode.c
index e8c886e4e78d..db4403f63cac 100644
--- a/drivers/gpu/drm/i915/intel_pcode.c
+++ b/drivers/gpu/drm/i915/intel_pcode.c
@@ -51,11 +51,10 @@ static int gen7_check_mailbox_status(u32 mbox)
 	}
 }
 
-static int __sandybridge_pcode_rw(struct drm_i915_private *i915,
-				  u32 mbox, u32 *val, u32 *val1,
-				  int fast_timeout_us,
-				  int slow_timeout_ms,
-				  bool is_read)
+static int __snb_pcode_rw(struct drm_i915_private *i915, u32 mbox,
+			  u32 *val, u32 *val1,
+			  int fast_timeout_us, int slow_timeout_ms,
+			  bool is_read)
 {
 	struct intel_uncore *uncore = &i915->uncore;
 
@@ -94,15 +93,12 @@ static int __sandybridge_pcode_rw(struct drm_i915_private *i915,
 		return gen6_check_mailbox_status(mbox);
 }
 
-int sandybridge_pcode_read(struct drm_i915_private *i915, u32 mbox,
-			   u32 *val, u32 *val1)
+int snb_pcode_read(struct drm_i915_private *i915, u32 mbox, u32 *val, u32 *val1)
 {
 	int err;
 
 	mutex_lock(&i915->sb_lock);
-	err = __sandybridge_pcode_rw(i915, mbox, val, val1,
-				     500, 20,
-				     true);
+	err = __snb_pcode_rw(i915, mbox, val, val1, 500, 20, true);
 	mutex_unlock(&i915->sb_lock);
 
 	if (err) {
@@ -114,17 +110,14 @@ int sandybridge_pcode_read(struct drm_i915_private *i915, u32 mbox,
 	return err;
 }
 
-int sandybridge_pcode_write_timeout(struct drm_i915_private *i915,
-				    u32 mbox, u32 val,
-				    int fast_timeout_us,
-				    int slow_timeout_ms)
+int snb_pcode_write_timeout(struct drm_i915_private *i915, u32 mbox, u32 val,
+			    int fast_timeout_us, int slow_timeout_ms)
 {
 	int err;
 
 	mutex_lock(&i915->sb_lock);
-	err = __sandybridge_pcode_rw(i915, mbox, &val, NULL,
-				     fast_timeout_us, slow_timeout_ms,
-				     false);
+	err = __snb_pcode_rw(i915, mbox, &val, NULL,
+			     fast_timeout_us, slow_timeout_ms, false);
 	mutex_unlock(&i915->sb_lock);
 
 	if (err) {
@@ -140,9 +133,7 @@ static bool skl_pcode_try_request(struct drm_i915_private *i915, u32 mbox,
 				  u32 request, u32 reply_mask, u32 reply,
 				  u32 *status)
 {
-	*status = __sandybridge_pcode_rw(i915, mbox, &request, NULL,
-					 500, 0,
-					 true);
+	*status = __snb_pcode_rw(i915, mbox, &request, NULL, 500, 0, true);
 
 	return *status || ((request & reply_mask) == reply);
 }
diff --git a/drivers/gpu/drm/i915/intel_pcode.h b/drivers/gpu/drm/i915/intel_pcode.h
index 50806649d4b6..0962a17fac48 100644
--- a/drivers/gpu/drm/i915/intel_pcode.h
+++ b/drivers/gpu/drm/i915/intel_pcode.h
@@ -10,13 +10,11 @@
 
 struct drm_i915_private;
 
-int sandybridge_pcode_read(struct drm_i915_private *i915, u32 mbox,
-			   u32 *val, u32 *val1);
-int sandybridge_pcode_write_timeout(struct drm_i915_private *i915, u32 mbox,
-				    u32 val, int fast_timeout_us,
-				    int slow_timeout_ms);
-#define sandybridge_pcode_write(i915, mbox, val)	\
-	sandybridge_pcode_write_timeout(i915, mbox, val, 500, 0)
+int snb_pcode_read(struct drm_i915_private *i915, u32 mbox, u32 *val, u32 *val1);
+int snb_pcode_write_timeout(struct drm_i915_private *i915, u32 mbox, u32 val,
+			    int fast_timeout_us, int slow_timeout_ms);
+#define snb_pcode_write(i915, mbox, val)			\
+	snb_pcode_write_timeout(i915, mbox, val, 500, 0)
 
 int skl_pcode_request(struct drm_i915_private *i915, u32 mbox, u32 request,
 		      u32 reply_mask, u32 reply, int timeout_base_ms);
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index bdf97a8c9ef3..97aea4cddb29 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -2889,9 +2889,8 @@ static void intel_read_wm_latency(struct drm_i915_private *dev_priv,
 
 		/* read the first set of memory latencies[0:3] */
 		val = 0; /* data0 to be programmed to 0 for first set */
-		ret = sandybridge_pcode_read(dev_priv,
-					     GEN9_PCODE_READ_MEM_LATENCY,
-					     &val, NULL);
+		ret = snb_pcode_read(dev_priv, GEN9_PCODE_READ_MEM_LATENCY,
+				     &val, NULL);
 
 		if (ret) {
 			drm_err(&dev_priv->drm,
@@ -2909,9 +2908,8 @@ static void intel_read_wm_latency(struct drm_i915_private *dev_priv,
 
 		/* read the second set of memory latencies[4:7] */
 		val = 1; /* data0 to be programmed to 1 for second set */
-		ret = sandybridge_pcode_read(dev_priv,
-					     GEN9_PCODE_READ_MEM_LATENCY,
-					     &val, NULL);
+		ret = snb_pcode_read(dev_priv, GEN9_PCODE_READ_MEM_LATENCY,
+				     &val, NULL);
 		if (ret) {
 			drm_err(&dev_priv->drm,
 				"SKL Mailbox read error = %d\n", ret);
@@ -3701,9 +3699,9 @@ skl_setup_sagv_block_time(struct drm_i915_private *dev_priv)
 		u32 val = 0;
 		int ret;
 
-		ret = sandybridge_pcode_read(dev_priv,
-					     GEN12_PCODE_READ_SAGV_BLOCK_TIME_US,
-					     &val, NULL);
+		ret = snb_pcode_read(dev_priv,
+				     GEN12_PCODE_READ_SAGV_BLOCK_TIME_US,
+				     &val, NULL);
 		if (!ret) {
 			dev_priv->sagv_block_time_us = val;
 			return;
@@ -3750,8 +3748,8 @@ intel_enable_sagv(struct drm_i915_private *dev_priv)
 		return 0;
 
 	drm_dbg_kms(&dev_priv->drm, "Enabling SAGV\n");
-	ret = sandybridge_pcode_write(dev_priv, GEN9_PCODE_SAGV_CONTROL,
-				      GEN9_SAGV_ENABLE);
+	ret = snb_pcode_write(dev_priv, GEN9_PCODE_SAGV_CONTROL,
+			      GEN9_SAGV_ENABLE);
 
 	/* We don't need to wait for SAGV when enabling */
 
-- 
2.30.2

