Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 949D5AB3B76
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 16:57:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3137E10E431;
	Mon, 12 May 2025 14:57:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E+WeN9JP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2105510E42F;
 Mon, 12 May 2025 14:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747061844; x=1778597844;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KnBsNbgvimrf0CJprcbXlZ5RNJTlQgni+hRbQoxFtlk=;
 b=E+WeN9JPsEU9/clwav7bLcZj0Wj3nZqmxo+BVp0X+lpbRLkTSNj9YSlo
 8ATWfikUKfkD9dQoJzQtD8ftn8C+u2qynW8Y/v72TYsWYQYByJ82gHKj6
 ns/udkeH3TU/q9lGDDB6PxtuLGT0poRcWA2k2uEjlDlZxJsUMltfW2b/f
 VHJgTX+HFXAQCYb+8dyZmQ4pw6XW7bh1nOJzcomY/GTv0MBkWh5dgO9Kn
 CrLa7XaC7jN+OFNvB6X+6hai7CEWP2cwvY5wDVOn1/TMaEsgJIn19UHBy
 4kheM+KVhRNmNO5Ur79Zpti1N7VPK4aC8mjAUgC7yKbkQhKz+hAw/AYHi g==;
X-CSE-ConnectionGUID: +OuWojyXSMG7mGrJj7YxBw==
X-CSE-MsgGUID: de337mNGSXapmkzhaxxpcg==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="60264674"
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="60264674"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 07:57:24 -0700
X-CSE-ConnectionGUID: o+j8H92hS+2T4CSYsdNeMA==
X-CSE-MsgGUID: VPTUOANORRS/dh/ySQZdvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="137857494"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.186])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 07:57:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	jani.nikula@intel.com
Subject: [PATCH v3 4/8] drm/i915: switch i915 core to generic VLV IOSF SB
 functions
Date: Mon, 12 May 2025 17:56:55 +0300
Message-Id: <3162c8768eeeba928bbc3d4aa2ddfc6a1030a451.1747061743.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1747061743.git.jani.nikula@intel.com>
References: <cover.1747061743.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

We'll want to relocate the unit specific functions to display, making
them inaccessible to i915 core. As there aren't that many users in i915
core, we can just convert them to the generic VLV IOSF SB read/write
functions.

v2: Use BIT(unit) for get/put

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c |  6 +--
 drivers/gpu/drm/i915/gt/intel_rps.c           | 46 +++++++++----------
 drivers/gpu/drm/i915/soc/intel_dram.c         |  4 +-
 3 files changed, 28 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
index 0704fe763afe..a059c6488b3d 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
@@ -366,9 +366,9 @@ void intel_gt_pm_frequency_dump(struct intel_gt *gt, struct drm_printer *p)
 		drm_printf(p, "SW control enabled: %s\n",
 			   str_yes_no((rpmodectl & GEN6_RP_MEDIA_MODE_MASK) == GEN6_RP_MEDIA_SW_MODE));
 
-		vlv_punit_get(i915);
-		freq_sts = vlv_punit_read(i915, PUNIT_REG_GPU_FREQ_STS);
-		vlv_punit_put(i915);
+		vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_PUNIT));
+		freq_sts = vlv_iosf_sb_read(i915, VLV_IOSF_SB_PUNIT, PUNIT_REG_GPU_FREQ_STS);
+		vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_PUNIT));
 
 		drm_printf(p, "PUNIT_REG_GPU_FREQ_STS: 0x%08x\n", freq_sts);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 7e0916e44d29..dc313bd73c94 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -820,9 +820,9 @@ static int vlv_rps_set(struct intel_rps *rps, u8 val)
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 	int err;
 
-	vlv_punit_get(i915);
-	err = vlv_punit_write(i915, PUNIT_REG_GPU_FREQ_REQ, val);
-	vlv_punit_put(i915);
+	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_PUNIT));
+	err = vlv_iosf_sb_write(i915, VLV_IOSF_SB_PUNIT, PUNIT_REG_GPU_FREQ_REQ, val);
+	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_PUNIT));
 
 	GT_TRACE(rps_to_gt(rps), "set val:%x, freq:%d\n",
 		 val, intel_gpu_freq(rps, val));
@@ -1280,7 +1280,7 @@ static int chv_rps_max_freq(struct intel_rps *rps)
 	struct intel_gt *gt = rps_to_gt(rps);
 	u32 val;
 
-	val = vlv_punit_read(i915, FB_GFX_FMAX_AT_VMAX_FUSE);
+	val = vlv_iosf_sb_read(i915, VLV_IOSF_SB_PUNIT, FB_GFX_FMAX_AT_VMAX_FUSE);
 
 	switch (gt->info.sseu.eu_total) {
 	case 8:
@@ -1307,7 +1307,7 @@ static int chv_rps_rpe_freq(struct intel_rps *rps)
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 	u32 val;
 
-	val = vlv_punit_read(i915, PUNIT_GPU_DUTYCYCLE_REG);
+	val = vlv_iosf_sb_read(i915, VLV_IOSF_SB_PUNIT, PUNIT_GPU_DUTYCYCLE_REG);
 	val >>= PUNIT_GPU_DUTYCYCLE_RPE_FREQ_SHIFT;
 
 	return val & PUNIT_GPU_DUTYCYCLE_RPE_FREQ_MASK;
@@ -1318,7 +1318,7 @@ static int chv_rps_guar_freq(struct intel_rps *rps)
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 	u32 val;
 
-	val = vlv_punit_read(i915, FB_GFX_FMAX_AT_VMAX_FUSE);
+	val = vlv_iosf_sb_read(i915, VLV_IOSF_SB_PUNIT, FB_GFX_FMAX_AT_VMAX_FUSE);
 
 	return val & FB_GFX_FREQ_FUSE_MASK;
 }
@@ -1328,7 +1328,7 @@ static u32 chv_rps_min_freq(struct intel_rps *rps)
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 	u32 val;
 
-	val = vlv_punit_read(i915, FB_GFX_FMIN_AT_VMIN_FUSE);
+	val = vlv_iosf_sb_read(i915, VLV_IOSF_SB_PUNIT, FB_GFX_FMIN_AT_VMIN_FUSE);
 	val >>= FB_GFX_FMIN_AT_VMIN_FUSE_SHIFT;
 
 	return val & FB_GFX_FREQ_FUSE_MASK;
@@ -1362,14 +1362,14 @@ static bool chv_rps_enable(struct intel_rps *rps)
 			  GEN6_PM_RP_DOWN_TIMEOUT);
 
 	/* Setting Fixed Bias */
-	vlv_punit_get(i915);
+	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_PUNIT));
 
 	val = VLV_OVERRIDE_EN | VLV_SOC_TDP_EN | CHV_BIAS_CPU_50_SOC_50;
-	vlv_punit_write(i915, VLV_TURBO_SOC_OVERRIDE, val);
+	vlv_iosf_sb_write(i915, VLV_IOSF_SB_PUNIT, VLV_TURBO_SOC_OVERRIDE, val);
 
-	val = vlv_punit_read(i915, PUNIT_REG_GPU_FREQ_STS);
+	val = vlv_iosf_sb_read(i915, VLV_IOSF_SB_PUNIT, PUNIT_REG_GPU_FREQ_STS);
 
-	vlv_punit_put(i915);
+	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_PUNIT));
 
 	/* RPS code assumes GPLL is used */
 	drm_WARN_ONCE(&i915->drm, (val & GPLLENABLE) == 0,
@@ -1387,7 +1387,7 @@ static int vlv_rps_guar_freq(struct intel_rps *rps)
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 	u32 val, rp1;
 
-	val = vlv_nc_read(i915, IOSF_NC_FB_GFX_FREQ_FUSE);
+	val = vlv_iosf_sb_read(i915, VLV_IOSF_SB_NC, IOSF_NC_FB_GFX_FREQ_FUSE);
 
 	rp1 = val & FB_GFX_FGUARANTEED_FREQ_FUSE_MASK;
 	rp1 >>= FB_GFX_FGUARANTEED_FREQ_FUSE_SHIFT;
@@ -1400,7 +1400,7 @@ static int vlv_rps_max_freq(struct intel_rps *rps)
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 	u32 val, rp0;
 
-	val = vlv_nc_read(i915, IOSF_NC_FB_GFX_FREQ_FUSE);
+	val = vlv_iosf_sb_read(i915, VLV_IOSF_SB_NC, IOSF_NC_FB_GFX_FREQ_FUSE);
 
 	rp0 = (val & FB_GFX_MAX_FREQ_FUSE_MASK) >> FB_GFX_MAX_FREQ_FUSE_SHIFT;
 	/* Clamp to max */
@@ -1414,9 +1414,9 @@ static int vlv_rps_rpe_freq(struct intel_rps *rps)
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 	u32 val, rpe;
 
-	val = vlv_nc_read(i915, IOSF_NC_FB_GFX_FMAX_FUSE_LO);
+	val = vlv_iosf_sb_read(i915, VLV_IOSF_SB_NC, IOSF_NC_FB_GFX_FMAX_FUSE_LO);
 	rpe = (val & FB_FMAX_VMIN_FREQ_LO_MASK) >> FB_FMAX_VMIN_FREQ_LO_SHIFT;
-	val = vlv_nc_read(i915, IOSF_NC_FB_GFX_FMAX_FUSE_HI);
+	val = vlv_iosf_sb_read(i915, VLV_IOSF_SB_NC, IOSF_NC_FB_GFX_FMAX_FUSE_HI);
 	rpe |= (val & FB_FMAX_VMIN_FREQ_HI_MASK) << 5;
 
 	return rpe;
@@ -1427,7 +1427,7 @@ static int vlv_rps_min_freq(struct intel_rps *rps)
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 	u32 val;
 
-	val = vlv_punit_read(i915, PUNIT_REG_GPU_LFM) & 0xff;
+	val = vlv_iosf_sb_read(i915, VLV_IOSF_SB_PUNIT, PUNIT_REG_GPU_LFM) & 0xff;
 	/*
 	 * According to the BYT Punit GPU turbo HAS 1.1.6.3 the minimum value
 	 * for the minimum frequency in GPLL mode is 0xc1. Contrary to this on
@@ -1463,15 +1463,15 @@ static bool vlv_rps_enable(struct intel_rps *rps)
 	/* WaGsvRC0ResidencyMethod:vlv */
 	rps->pm_events = GEN6_PM_RP_UP_EI_EXPIRED;
 
-	vlv_punit_get(i915);
+	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_PUNIT));
 
 	/* Setting Fixed Bias */
 	val = VLV_OVERRIDE_EN | VLV_SOC_TDP_EN | VLV_BIAS_CPU_125_SOC_875;
-	vlv_punit_write(i915, VLV_TURBO_SOC_OVERRIDE, val);
+	vlv_iosf_sb_write(i915, VLV_IOSF_SB_PUNIT, VLV_TURBO_SOC_OVERRIDE, val);
 
-	val = vlv_punit_read(i915, PUNIT_REG_GPU_FREQ_STS);
+	val = vlv_iosf_sb_read(i915, VLV_IOSF_SB_PUNIT, PUNIT_REG_GPU_FREQ_STS);
 
-	vlv_punit_put(i915);
+	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_PUNIT));
 
 	/* RPS code assumes GPLL is used */
 	drm_WARN_ONCE(&i915->drm, (val & GPLLENABLE) == 0,
@@ -2119,9 +2119,9 @@ static u32 __read_cagf(struct intel_rps *rps, bool take_fw)
 	} else if (GRAPHICS_VER(i915) >= 12) {
 		r = GEN12_RPSTAT1;
 	} else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
-		vlv_punit_get(i915);
-		freq = vlv_punit_read(i915, PUNIT_REG_GPU_FREQ_STS);
-		vlv_punit_put(i915);
+		vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_PUNIT));
+		freq = vlv_iosf_sb_read(i915, VLV_IOSF_SB_PUNIT, PUNIT_REG_GPU_FREQ_STS);
+		vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_PUNIT));
 	} else if (GRAPHICS_VER(i915) >= 6) {
 		r = GEN6_RPSTAT1;
 	} else {
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index 0b92ab4e9fb9..e8d6bd116b44 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -98,7 +98,7 @@ static unsigned int chv_mem_freq(struct drm_i915_private *i915)
 	u32 val;
 
 	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_CCK));
-	val = vlv_cck_read(i915, CCK_FUSE_REG);
+	val = vlv_iosf_sb_read(i915, VLV_IOSF_SB_CCK, CCK_FUSE_REG);
 	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_CCK));
 
 	switch ((val >> 2) & 0x7) {
@@ -114,7 +114,7 @@ static unsigned int vlv_mem_freq(struct drm_i915_private *i915)
 	u32 val;
 
 	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_PUNIT));
-	val = vlv_punit_read(i915, PUNIT_REG_GPU_FREQ_STS);
+	val = vlv_iosf_sb_read(i915, VLV_IOSF_SB_PUNIT, PUNIT_REG_GPU_FREQ_STS);
 	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_PUNIT));
 
 	switch ((val >> 6) & 3) {
-- 
2.39.5

