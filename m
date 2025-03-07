Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38723A5719E
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 20:25:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC62C10E1AB;
	Fri,  7 Mar 2025 19:25:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GfpqThlP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51B7B10E174;
 Fri,  7 Mar 2025 19:25:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741375548; x=1772911548;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=f2pUR8C4sbSY3/hAiwWU33U4O6IIT+iTRoHUcy/rITs=;
 b=GfpqThlPcH1m5hDA2AtcENvCj1YKg0hnvrL9C6FxJCEOEIwzL6CeBeRU
 W95UjH06bJNnD6HsFM0PU9kLoeuMD+Bc8/VQ0z/5ImD3p894phOBkl2/x
 a74yY5z10Kx9Ff+/3NPl8rnKNU8K7r8BR+j9SYQpFG2zDx0Y6tIwbmXMy
 lhVJF+a4wf+NYpNvmhYXbH6ecX/n3xKHUkxZ+AQc9HjXpl7FG/7QUXwuE
 L4zIUZGvp8Dhz1VJRCd0sQdrk7yQMgsAPUBToWFcKHm9rXVNOxaPt5rWS
 JojlBgRFaXMFUq1z+QPTLwAxYDwcSNRxhHzVOV955WT5CHs7m3k4YVAeZ A==;
X-CSE-ConnectionGUID: p5x6aW5RRfevH1TTE9q7xQ==
X-CSE-MsgGUID: jKrMJBstSoW7ONFK+ofqjA==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="42315899"
X-IronPort-AV: E=Sophos;i="6.14,230,1736841600"; d="scan'208";a="42315899"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 11:25:48 -0800
X-CSE-ConnectionGUID: xcmVHzYMQYOJDs/MuKnq2Q==
X-CSE-MsgGUID: GCPyDt2FTOiOSB8uEdaNZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="156622605"
Received: from tjmaciei-mobl5.ger.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.129])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 11:25:46 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Fri, 07 Mar 2025 16:25:11 -0300
Subject: [PATCH v3 1/3] drm/i915/display: Convert intel_bw.c internally to
 intel_display
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250307-xe3lpd-bandwidth-update-v3-1-58bbe81f65bf@intel.com>
References: <20250307-xe3lpd-bandwidth-update-v3-0-58bbe81f65bf@intel.com>
In-Reply-To: <20250307-xe3lpd-bandwidth-update-v3-0-58bbe81f65bf@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>, 
 =?utf-8?q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>
X-Mailer: b4 0.14.2
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

Update intel_bw.c internally use intel_display. Conversion of the public
interface will come as a follow-up.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 416 +++++++++++++++++---------------
 1 file changed, 217 insertions(+), 199 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 048be287224774110d94fe2944daa580d8dc20a6..d71dc796f1793f546fe04146e5987a9be56bae9b 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -11,6 +11,7 @@
 #include "intel_atomic.h"
 #include "intel_bw.h"
 #include "intel_cdclk.h"
+#include "intel_de.h"
 #include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "skl_watermark.h"
@@ -39,14 +40,14 @@ struct intel_qgv_info {
 	u8 deinterleave;
 };
 
-static int dg1_mchbar_read_qgv_point_info(struct drm_i915_private *dev_priv,
+static int dg1_mchbar_read_qgv_point_info(struct intel_display *display,
 					  struct intel_qgv_point *sp,
 					  int point)
 {
 	u32 dclk_ratio, dclk_reference;
 	u32 val;
 
-	val = intel_uncore_read(&dev_priv->uncore, SA_PERF_STATUS_0_0_0_MCHBAR_PC);
+	val = intel_de_read(display, SA_PERF_STATUS_0_0_0_MCHBAR_PC);
 	dclk_ratio = REG_FIELD_GET(DG1_QCLK_RATIO_MASK, val);
 	if (val & DG1_QCLK_REFERENCE)
 		dclk_reference = 6; /* 6 * 16.666 MHz = 100 MHz */
@@ -54,18 +55,18 @@ static int dg1_mchbar_read_qgv_point_info(struct drm_i915_private *dev_priv,
 		dclk_reference = 8; /* 8 * 16.666 MHz = 133 MHz */
 	sp->dclk = DIV_ROUND_UP((16667 * dclk_ratio * dclk_reference) + 500, 1000);
 
-	val = intel_uncore_read(&dev_priv->uncore, SKL_MC_BIOS_DATA_0_0_0_MCHBAR_PCU);
+	val = intel_de_read(display, SKL_MC_BIOS_DATA_0_0_0_MCHBAR_PCU);
 	if (val & DG1_GEAR_TYPE)
 		sp->dclk *= 2;
 
 	if (sp->dclk == 0)
 		return -EINVAL;
 
-	val = intel_uncore_read(&dev_priv->uncore, MCHBAR_CH0_CR_TC_PRE_0_0_0_MCHBAR);
+	val = intel_de_read(display, MCHBAR_CH0_CR_TC_PRE_0_0_0_MCHBAR);
 	sp->t_rp = REG_FIELD_GET(DG1_DRAM_T_RP_MASK, val);
 	sp->t_rdpre = REG_FIELD_GET(DG1_DRAM_T_RDPRE_MASK, val);
 
-	val = intel_uncore_read(&dev_priv->uncore, MCHBAR_CH0_CR_TC_PRE_0_0_0_MCHBAR_HIGH);
+	val = intel_de_read(display, MCHBAR_CH0_CR_TC_PRE_0_0_0_MCHBAR_HIGH);
 	sp->t_rcd = REG_FIELD_GET(DG1_DRAM_T_RCD_MASK, val);
 	sp->t_ras = REG_FIELD_GET(DG1_DRAM_T_RAS_MASK, val);
 
@@ -74,22 +75,23 @@ static int dg1_mchbar_read_qgv_point_info(struct drm_i915_private *dev_priv,
 	return 0;
 }
 
-static int icl_pcode_read_qgv_point_info(struct drm_i915_private *dev_priv,
+static int icl_pcode_read_qgv_point_info(struct intel_display *display,
 					 struct intel_qgv_point *sp,
 					 int point)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	u32 val = 0, val2 = 0;
 	u16 dclk;
 	int ret;
 
-	ret = snb_pcode_read(&dev_priv->uncore, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
+	ret = snb_pcode_read(&i915->uncore, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
 			     ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(point),
 			     &val, &val2);
 	if (ret)
 		return ret;
 
 	dclk = val & 0xffff;
-	sp->dclk = DIV_ROUND_UP((16667 * dclk) + (DISPLAY_VER(dev_priv) >= 12 ? 500 : 0),
+	sp->dclk = DIV_ROUND_UP((16667 * dclk) + (DISPLAY_VER(display) >= 12 ? 500 : 0),
 				1000);
 	sp->t_rp = (val & 0xff0000) >> 16;
 	sp->t_rcd = (val & 0xff000000) >> 24;
@@ -102,14 +104,15 @@ static int icl_pcode_read_qgv_point_info(struct drm_i915_private *dev_priv,
 	return 0;
 }
 
-static int adls_pcode_read_psf_gv_point_info(struct drm_i915_private *dev_priv,
-					    struct intel_psf_gv_point *points)
+static int adls_pcode_read_psf_gv_point_info(struct intel_display *display,
+					     struct intel_psf_gv_point *points)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	u32 val = 0;
 	int ret;
 	int i;
 
-	ret = snb_pcode_read(&dev_priv->uncore, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
+	ret = snb_pcode_read(&i915->uncore, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
 			     ADL_PCODE_MEM_SS_READ_PSF_GV_INFO, &val, NULL);
 	if (ret)
 		return ret;
@@ -122,10 +125,10 @@ static int adls_pcode_read_psf_gv_point_info(struct drm_i915_private *dev_priv,
 	return 0;
 }
 
-static u16 icl_qgv_points_mask(struct drm_i915_private *i915)
+static u16 icl_qgv_points_mask(struct intel_display *display)
 {
-	unsigned int num_psf_gv_points = i915->display.bw.max[0].num_psf_gv_points;
-	unsigned int num_qgv_points = i915->display.bw.max[0].num_qgv_points;
+	unsigned int num_psf_gv_points = display->bw.max[0].num_psf_gv_points;
+	unsigned int num_qgv_points = display->bw.max[0].num_qgv_points;
 	u16 qgv_points = 0, psf_points = 0;
 
 	/*
@@ -142,18 +145,19 @@ static u16 icl_qgv_points_mask(struct drm_i915_private *i915)
 	return ICL_PCODE_REQ_QGV_PT(qgv_points) | ADLS_PCODE_REQ_PSF_PT(psf_points);
 }
 
-static bool is_sagv_enabled(struct drm_i915_private *i915, u16 points_mask)
+static bool is_sagv_enabled(struct intel_display *display, u16 points_mask)
 {
-	return !is_power_of_2(~points_mask & icl_qgv_points_mask(i915) &
+	return !is_power_of_2(~points_mask & icl_qgv_points_mask(display) &
 			      ICL_PCODE_REQ_QGV_PT_MASK);
 }
 
 int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
 				  u32 points_mask)
 {
+	struct intel_display *display = &dev_priv->display;
 	int ret;
 
-	if (DISPLAY_VER(dev_priv) >= 14)
+	if (DISPLAY_VER(display) >= 14)
 		return 0;
 
 	/* bspec says to keep retrying for at least 1 ms */
@@ -164,27 +168,28 @@ int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
 				1);
 
 	if (ret < 0) {
-		drm_err(&dev_priv->drm,
+		drm_err(display->drm,
 			"Failed to disable qgv points (0x%x) points: 0x%x\n",
 			ret, points_mask);
 		return ret;
 	}
 
-	dev_priv->display.sagv.status = is_sagv_enabled(dev_priv, points_mask) ?
+	display->sagv.status = is_sagv_enabled(display, points_mask) ?
 		I915_SAGV_ENABLED : I915_SAGV_DISABLED;
 
 	return 0;
 }
 
-static int mtl_read_qgv_point_info(struct drm_i915_private *dev_priv,
+static int mtl_read_qgv_point_info(struct intel_display *display,
 				   struct intel_qgv_point *sp, int point)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	u32 val, val2;
 	u16 dclk;
 
-	val = intel_uncore_read(&dev_priv->uncore,
+	val = intel_uncore_read(&i915->uncore,
 				MTL_MEM_SS_INFO_QGV_POINT_LOW(point));
-	val2 = intel_uncore_read(&dev_priv->uncore,
+	val2 = intel_uncore_read(&i915->uncore,
 				 MTL_MEM_SS_INFO_QGV_POINT_HIGH(point));
 	dclk = REG_FIELD_GET(MTL_DCLK_MASK, val);
 	sp->dclk = DIV_ROUND_CLOSEST(16667 * dclk, 1000);
@@ -200,29 +205,30 @@ static int mtl_read_qgv_point_info(struct drm_i915_private *dev_priv,
 }
 
 static int
-intel_read_qgv_point_info(struct drm_i915_private *dev_priv,
+intel_read_qgv_point_info(struct intel_display *display,
 			  struct intel_qgv_point *sp,
 			  int point)
 {
-	if (DISPLAY_VER(dev_priv) >= 14)
-		return mtl_read_qgv_point_info(dev_priv, sp, point);
-	else if (IS_DG1(dev_priv))
-		return dg1_mchbar_read_qgv_point_info(dev_priv, sp, point);
+	if (DISPLAY_VER(display) >= 14)
+		return mtl_read_qgv_point_info(display, sp, point);
+	else if (display->platform.dg1)
+		return dg1_mchbar_read_qgv_point_info(display, sp, point);
 	else
-		return icl_pcode_read_qgv_point_info(dev_priv, sp, point);
+		return icl_pcode_read_qgv_point_info(display, sp, point);
 }
 
-static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
+static int icl_get_qgv_points(struct intel_display *display,
 			      struct intel_qgv_info *qi,
 			      bool is_y_tile)
 {
-	const struct dram_info *dram_info = &dev_priv->dram_info;
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	const struct dram_info *dram_info = &i915->dram_info;
 	int i, ret;
 
 	qi->num_points = dram_info->num_qgv_points;
 	qi->num_psf_points = dram_info->num_psf_gv_points;
 
-	if (DISPLAY_VER(dev_priv) >= 14) {
+	if (DISPLAY_VER(display) >= 14) {
 		switch (dram_info->type) {
 		case INTEL_DRAM_DDR4:
 			qi->t_bl = 4;
@@ -250,7 +256,7 @@ static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
 			MISSING_CASE(dram_info->type);
 			return -EINVAL;
 		}
-	} else if (DISPLAY_VER(dev_priv) >= 12) {
+	} else if (DISPLAY_VER(display) >= 12) {
 		switch (dram_info->type) {
 		case INTEL_DRAM_DDR4:
 			qi->t_bl = is_y_tile ? 8 : 4;
@@ -265,7 +271,7 @@ static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
 			qi->deinterleave = is_y_tile ? 1 : 2;
 			break;
 		case INTEL_DRAM_LPDDR4:
-			if (IS_ROCKETLAKE(dev_priv)) {
+			if (display->platform.rocketlake) {
 				qi->t_bl = 8;
 				qi->max_numchannels = 4;
 				qi->channel_width = 32;
@@ -284,39 +290,39 @@ static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
 			qi->max_numchannels = 1;
 			break;
 		}
-	} else if (DISPLAY_VER(dev_priv) == 11) {
-		qi->t_bl = dev_priv->dram_info.type == INTEL_DRAM_DDR4 ? 4 : 8;
+	} else if (DISPLAY_VER(display) == 11) {
+		qi->t_bl = dram_info->type == INTEL_DRAM_DDR4 ? 4 : 8;
 		qi->max_numchannels = 1;
 	}
 
-	if (drm_WARN_ON(&dev_priv->drm,
+	if (drm_WARN_ON(display->drm,
 			qi->num_points > ARRAY_SIZE(qi->points)))
 		qi->num_points = ARRAY_SIZE(qi->points);
 
 	for (i = 0; i < qi->num_points; i++) {
 		struct intel_qgv_point *sp = &qi->points[i];
 
-		ret = intel_read_qgv_point_info(dev_priv, sp, i);
+		ret = intel_read_qgv_point_info(display, sp, i);
 		if (ret) {
-			drm_dbg_kms(&dev_priv->drm, "Could not read QGV %d info\n", i);
+			drm_dbg_kms(display->drm, "Could not read QGV %d info\n", i);
 			return ret;
 		}
 
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "QGV %d: DCLK=%d tRP=%d tRDPRE=%d tRAS=%d tRCD=%d tRC=%d\n",
 			    i, sp->dclk, sp->t_rp, sp->t_rdpre, sp->t_ras,
 			    sp->t_rcd, sp->t_rc);
 	}
 
 	if (qi->num_psf_points > 0) {
-		ret = adls_pcode_read_psf_gv_point_info(dev_priv, qi->psf_points);
+		ret = adls_pcode_read_psf_gv_point_info(display, qi->psf_points);
 		if (ret) {
-			drm_err(&dev_priv->drm, "Failed to read PSF point data; PSF points will not be considered in bandwidth calculations.\n");
+			drm_err(display->drm, "Failed to read PSF point data; PSF points will not be considered in bandwidth calculations.\n");
 			qi->num_psf_points = 0;
 		}
 
 		for (i = 0; i < qi->num_psf_points; i++)
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "PSF GV %d: CLK=%d \n",
 				    i, qi->psf_points[i].clk);
 	}
@@ -398,20 +404,21 @@ static const struct intel_sa_info xe2_hpd_sa_info = {
 	/* Other values not used by simplified algorithm */
 };
 
-static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel_sa_info *sa)
+static int icl_get_bw_info(struct intel_display *display, const struct intel_sa_info *sa)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_qgv_info qi = {};
 	bool is_y_tile = true; /* assume y tile may be used */
-	int num_channels = max_t(u8, 1, dev_priv->dram_info.num_channels);
+	int num_channels = max_t(u8, 1, i915->dram_info.num_channels);
 	int ipqdepth, ipqdepthpch = 16;
 	int dclk_max;
 	int maxdebw;
-	int num_groups = ARRAY_SIZE(dev_priv->display.bw.max);
+	int num_groups = ARRAY_SIZE(display->bw.max);
 	int i, ret;
 
-	ret = icl_get_qgv_points(dev_priv, &qi, is_y_tile);
+	ret = icl_get_qgv_points(display, &qi, is_y_tile);
 	if (ret) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Failed to get memory subsystem information, ignoring bandwidth limits");
 		return ret;
 	}
@@ -422,7 +429,7 @@ static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 	qi.deinterleave = DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
 
 	for (i = 0; i < num_groups; i++) {
-		struct intel_bw_info *bi = &dev_priv->display.bw.max[i];
+		struct intel_bw_info *bi = &display->bw.max[i];
 		int clpchgroup;
 		int j;
 
@@ -449,7 +456,7 @@ static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 			bi->deratedbw[j] = min(maxdebw,
 					       bw * (100 - sa->derating) / 100);
 
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "BW%d / QGV %d: num_planes=%d deratedbw=%u\n",
 				    i, j, bi->num_planes, bi->deratedbw[j]);
 		}
@@ -460,44 +467,45 @@ static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 	 * as it will fail and pointless anyway.
 	 */
 	if (qi.num_points == 1)
-		dev_priv->display.sagv.status = I915_SAGV_NOT_CONTROLLED;
+		display->sagv.status = I915_SAGV_NOT_CONTROLLED;
 	else
-		dev_priv->display.sagv.status = I915_SAGV_ENABLED;
+		display->sagv.status = I915_SAGV_ENABLED;
 
 	return 0;
 }
 
-static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel_sa_info *sa)
+static int tgl_get_bw_info(struct intel_display *display, const struct intel_sa_info *sa)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_qgv_info qi = {};
-	const struct dram_info *dram_info = &dev_priv->dram_info;
+	const struct dram_info *dram_info = &i915->dram_info;
 	bool is_y_tile = true; /* assume y tile may be used */
-	int num_channels = max_t(u8, 1, dev_priv->dram_info.num_channels);
+	int num_channels = max_t(u8, 1, dram_info->num_channels);
 	int ipqdepth, ipqdepthpch = 16;
 	int dclk_max;
 	int maxdebw, peakbw;
 	int clperchgroup;
-	int num_groups = ARRAY_SIZE(dev_priv->display.bw.max);
+	int num_groups = ARRAY_SIZE(display->bw.max);
 	int i, ret;
 
-	ret = icl_get_qgv_points(dev_priv, &qi, is_y_tile);
+	ret = icl_get_qgv_points(display, &qi, is_y_tile);
 	if (ret) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Failed to get memory subsystem information, ignoring bandwidth limits");
 		return ret;
 	}
 
-	if (DISPLAY_VER(dev_priv) < 14 &&
+	if (DISPLAY_VER(display) < 14 &&
 	    (dram_info->type == INTEL_DRAM_LPDDR4 || dram_info->type == INTEL_DRAM_LPDDR5))
 		num_channels *= 2;
 
 	qi.deinterleave = qi.deinterleave ? : DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
 
-	if (num_channels < qi.max_numchannels && DISPLAY_VER(dev_priv) >= 12)
+	if (num_channels < qi.max_numchannels && DISPLAY_VER(display) >= 12)
 		qi.deinterleave = max(DIV_ROUND_UP(qi.deinterleave, 2), 1);
 
-	if (DISPLAY_VER(dev_priv) >= 12 && num_channels > qi.max_numchannels)
-		drm_warn(&dev_priv->drm, "Number of channels exceeds max number of channels.");
+	if (DISPLAY_VER(display) >= 12 && num_channels > qi.max_numchannels)
+		drm_warn(display->drm, "Number of channels exceeds max number of channels.");
 	if (qi.max_numchannels != 0)
 		num_channels = min_t(u8, num_channels, qi.max_numchannels);
 
@@ -514,7 +522,7 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 	clperchgroup = 4 * DIV_ROUND_UP(8, num_channels) * qi.deinterleave;
 
 	for (i = 0; i < num_groups; i++) {
-		struct intel_bw_info *bi = &dev_priv->display.bw.max[i];
+		struct intel_bw_info *bi = &display->bw.max[i];
 		struct intel_bw_info *bi_next;
 		int clpchgroup;
 		int j;
@@ -522,7 +530,7 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 		clpchgroup = (sa->deburst * qi.deinterleave / num_channels) << i;
 
 		if (i < num_groups - 1) {
-			bi_next = &dev_priv->display.bw.max[i + 1];
+			bi_next = &display->bw.max[i + 1];
 
 			if (clpchgroup < clperchgroup)
 				bi_next->num_planes = (ipqdepth - clpchgroup) /
@@ -554,7 +562,7 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 							  num_channels *
 							  qi.channel_width, 8);
 
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "BW%d / QGV %d: num_planes=%d deratedbw=%u peakbw: %u\n",
 				    i, j, bi->num_planes, bi->deratedbw[j],
 				    bi->peakbw[j]);
@@ -565,7 +573,7 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 
 			bi->psf_bw[j] = adl_calc_psf_bw(sp->clk);
 
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "BW%d / PSF GV %d: num_planes=%d bw=%u\n",
 				    i, j, bi->num_planes, bi->psf_bw[j]);
 		}
@@ -577,17 +585,17 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 	 * as it will fail and pointless anyway.
 	 */
 	if (qi.num_points == 1)
-		dev_priv->display.sagv.status = I915_SAGV_NOT_CONTROLLED;
+		display->sagv.status = I915_SAGV_NOT_CONTROLLED;
 	else
-		dev_priv->display.sagv.status = I915_SAGV_ENABLED;
+		display->sagv.status = I915_SAGV_ENABLED;
 
 	return 0;
 }
 
-static void dg2_get_bw_info(struct drm_i915_private *i915)
+static void dg2_get_bw_info(struct intel_display *display)
 {
-	unsigned int deratedbw = IS_DG2_G11(i915) ? 38000 : 50000;
-	int num_groups = ARRAY_SIZE(i915->display.bw.max);
+	unsigned int deratedbw = display->platform.dg2_g11 ? 38000 : 50000;
+	int num_groups = ARRAY_SIZE(display->bw.max);
 	int i;
 
 	/*
@@ -598,7 +606,7 @@ static void dg2_get_bw_info(struct drm_i915_private *i915)
 	 * whereas DG2-G11 platforms have 38 GB/s.
 	 */
 	for (i = 0; i < num_groups; i++) {
-		struct intel_bw_info *bi = &i915->display.bw.max[i];
+		struct intel_bw_info *bi = &display->bw.max[i];
 
 		bi->num_planes = 1;
 		/* Need only one dummy QGV point per group */
@@ -606,20 +614,21 @@ static void dg2_get_bw_info(struct drm_i915_private *i915)
 		bi->deratedbw[0] = deratedbw;
 	}
 
-	i915->display.sagv.status = I915_SAGV_NOT_CONTROLLED;
+	display->sagv.status = I915_SAGV_NOT_CONTROLLED;
 }
 
-static int xe2_hpd_get_bw_info(struct drm_i915_private *i915,
+static int xe2_hpd_get_bw_info(struct intel_display *display,
 			       const struct intel_sa_info *sa)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_qgv_info qi = {};
 	int num_channels = i915->dram_info.num_channels;
 	int peakbw, maxdebw;
 	int ret, i;
 
-	ret = icl_get_qgv_points(i915, &qi, true);
+	ret = icl_get_qgv_points(display, &qi, true);
 	if (ret) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Failed to get memory subsystem information, ignoring bandwidth limits");
 		return ret;
 	}
@@ -631,33 +640,33 @@ static int xe2_hpd_get_bw_info(struct drm_i915_private *i915,
 		const struct intel_qgv_point *point = &qi.points[i];
 		int bw = num_channels * (qi.channel_width / 8) * point->dclk;
 
-		i915->display.bw.max[0].deratedbw[i] =
+		display->bw.max[0].deratedbw[i] =
 			min(maxdebw, (100 - sa->derating) * bw / 100);
-		i915->display.bw.max[0].peakbw[i] = bw;
+		display->bw.max[0].peakbw[i] = bw;
 
-		drm_dbg_kms(&i915->drm, "QGV %d: deratedbw=%u peakbw: %u\n",
-			    i, i915->display.bw.max[0].deratedbw[i],
-			    i915->display.bw.max[0].peakbw[i]);
+		drm_dbg_kms(display->drm, "QGV %d: deratedbw=%u peakbw: %u\n",
+			    i, display->bw.max[0].deratedbw[i],
+			    display->bw.max[0].peakbw[i]);
 	}
 
 	/* Bandwidth does not depend on # of planes; set all groups the same */
-	i915->display.bw.max[0].num_planes = 1;
-	i915->display.bw.max[0].num_qgv_points = qi.num_points;
-	for (i = 1; i < ARRAY_SIZE(i915->display.bw.max); i++)
-		memcpy(&i915->display.bw.max[i], &i915->display.bw.max[0],
-		       sizeof(i915->display.bw.max[0]));
+	display->bw.max[0].num_planes = 1;
+	display->bw.max[0].num_qgv_points = qi.num_points;
+	for (i = 1; i < ARRAY_SIZE(display->bw.max); i++)
+		memcpy(&display->bw.max[i], &display->bw.max[0],
+		       sizeof(display->bw.max[0]));
 
 	/*
 	 * Xe2_HPD should always have exactly two QGV points representing
 	 * battery and plugged-in operation.
 	 */
-	drm_WARN_ON(&i915->drm, qi.num_points != 2);
-	i915->display.sagv.status = I915_SAGV_ENABLED;
+	drm_WARN_ON(display->drm, qi.num_points != 2);
+	display->sagv.status = I915_SAGV_ENABLED;
 
 	return 0;
 }
 
-static unsigned int icl_max_bw_index(struct drm_i915_private *dev_priv,
+static unsigned int icl_max_bw_index(struct intel_display *display,
 				     int num_planes, int qgv_point)
 {
 	int i;
@@ -667,9 +676,9 @@ static unsigned int icl_max_bw_index(struct drm_i915_private *dev_priv,
 	 */
 	num_planes = max(1, num_planes);
 
-	for (i = 0; i < ARRAY_SIZE(dev_priv->display.bw.max); i++) {
+	for (i = 0; i < ARRAY_SIZE(display->bw.max); i++) {
 		const struct intel_bw_info *bi =
-			&dev_priv->display.bw.max[i];
+			&display->bw.max[i];
 
 		/*
 		 * Pcode will not expose all QGV points when
@@ -685,7 +694,7 @@ static unsigned int icl_max_bw_index(struct drm_i915_private *dev_priv,
 	return UINT_MAX;
 }
 
-static unsigned int tgl_max_bw_index(struct drm_i915_private *dev_priv,
+static unsigned int tgl_max_bw_index(struct intel_display *display,
 				     int num_planes, int qgv_point)
 {
 	int i;
@@ -695,9 +704,9 @@ static unsigned int tgl_max_bw_index(struct drm_i915_private *dev_priv,
 	 */
 	num_planes = max(1, num_planes);
 
-	for (i = ARRAY_SIZE(dev_priv->display.bw.max) - 1; i >= 0; i--) {
+	for (i = ARRAY_SIZE(display->bw.max) - 1; i >= 0; i--) {
 		const struct intel_bw_info *bi =
-			&dev_priv->display.bw.max[i];
+			&display->bw.max[i];
 
 		/*
 		 * Pcode will not expose all QGV points when
@@ -713,52 +722,54 @@ static unsigned int tgl_max_bw_index(struct drm_i915_private *dev_priv,
 	return 0;
 }
 
-static unsigned int adl_psf_bw(struct drm_i915_private *dev_priv,
+static unsigned int adl_psf_bw(struct intel_display *display,
 			       int psf_gv_point)
 {
 	const struct intel_bw_info *bi =
-			&dev_priv->display.bw.max[0];
+			&display->bw.max[0];
 
 	return bi->psf_bw[psf_gv_point];
 }
 
-static unsigned int icl_qgv_bw(struct drm_i915_private *i915,
+static unsigned int icl_qgv_bw(struct intel_display *display,
 			       int num_active_planes, int qgv_point)
 {
 	unsigned int idx;
 
-	if (DISPLAY_VER(i915) >= 12)
-		idx = tgl_max_bw_index(i915, num_active_planes, qgv_point);
+	if (DISPLAY_VER(display) >= 12)
+		idx = tgl_max_bw_index(display, num_active_planes, qgv_point);
 	else
-		idx = icl_max_bw_index(i915, num_active_planes, qgv_point);
+		idx = icl_max_bw_index(display, num_active_planes, qgv_point);
 
-	if (idx >= ARRAY_SIZE(i915->display.bw.max))
+	if (idx >= ARRAY_SIZE(display->bw.max))
 		return 0;
 
-	return i915->display.bw.max[idx].deratedbw[qgv_point];
+	return display->bw.max[idx].deratedbw[qgv_point];
 }
 
 void intel_bw_init_hw(struct drm_i915_private *dev_priv)
 {
-	if (!HAS_DISPLAY(dev_priv))
+	struct intel_display *display = &dev_priv->display;
+
+	if (!HAS_DISPLAY(display))
 		return;
 
-	if (DISPLAY_VERx100(dev_priv) >= 1401 && IS_DGFX(dev_priv))
-		xe2_hpd_get_bw_info(dev_priv, &xe2_hpd_sa_info);
-	else if (DISPLAY_VER(dev_priv) >= 14)
-		tgl_get_bw_info(dev_priv, &mtl_sa_info);
-	else if (IS_DG2(dev_priv))
-		dg2_get_bw_info(dev_priv);
-	else if (IS_ALDERLAKE_P(dev_priv))
-		tgl_get_bw_info(dev_priv, &adlp_sa_info);
-	else if (IS_ALDERLAKE_S(dev_priv))
-		tgl_get_bw_info(dev_priv, &adls_sa_info);
-	else if (IS_ROCKETLAKE(dev_priv))
-		tgl_get_bw_info(dev_priv, &rkl_sa_info);
-	else if (DISPLAY_VER(dev_priv) == 12)
-		tgl_get_bw_info(dev_priv, &tgl_sa_info);
-	else if (DISPLAY_VER(dev_priv) == 11)
-		icl_get_bw_info(dev_priv, &icl_sa_info);
+	if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx)
+		xe2_hpd_get_bw_info(display, &xe2_hpd_sa_info);
+	else if (DISPLAY_VER(display) >= 14)
+		tgl_get_bw_info(display, &mtl_sa_info);
+	else if (display->platform.dg2)
+		dg2_get_bw_info(display);
+	else if (display->platform.alderlake_p)
+		tgl_get_bw_info(display, &adlp_sa_info);
+	else if (display->platform.alderlake_s)
+		tgl_get_bw_info(display, &adls_sa_info);
+	else if (display->platform.rocketlake)
+		tgl_get_bw_info(display, &rkl_sa_info);
+	else if (DISPLAY_VER(display) == 12)
+		tgl_get_bw_info(display, &tgl_sa_info);
+	else if (DISPLAY_VER(display) == 11)
+		icl_get_bw_info(display, &icl_sa_info);
 }
 
 static unsigned int intel_bw_crtc_num_active_planes(const struct intel_crtc_state *crtc_state)
@@ -772,8 +783,8 @@ static unsigned int intel_bw_crtc_num_active_planes(const struct intel_crtc_stat
 
 static unsigned int intel_bw_crtc_data_rate(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	unsigned int data_rate = 0;
 	enum plane_id plane_id;
 
@@ -787,7 +798,7 @@ static unsigned int intel_bw_crtc_data_rate(const struct intel_crtc_state *crtc_
 
 		data_rate += crtc_state->data_rate[plane_id];
 
-		if (DISPLAY_VER(i915) < 11)
+		if (DISPLAY_VER(display) < 11)
 			data_rate += crtc_state->data_rate_y[plane_id];
 	}
 
@@ -797,37 +808,37 @@ static unsigned int intel_bw_crtc_data_rate(const struct intel_crtc_state *crtc_
 /* "Maximum Pipe Read Bandwidth" */
 static int intel_bw_crtc_min_cdclk(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
-	if (DISPLAY_VER(i915) < 12)
+	if (DISPLAY_VER(display) < 12)
 		return 0;
 
 	return DIV_ROUND_UP_ULL(mul_u32_u32(intel_bw_crtc_data_rate(crtc_state), 10), 512);
 }
 
-static unsigned int intel_bw_num_active_planes(struct drm_i915_private *dev_priv,
+static unsigned int intel_bw_num_active_planes(struct intel_display *display,
 					       const struct intel_bw_state *bw_state)
 {
 	unsigned int num_active_planes = 0;
 	enum pipe pipe;
 
-	for_each_pipe(dev_priv, pipe)
+	for_each_pipe(display, pipe)
 		num_active_planes += bw_state->num_active_planes[pipe];
 
 	return num_active_planes;
 }
 
-static unsigned int intel_bw_data_rate(struct drm_i915_private *dev_priv,
+static unsigned int intel_bw_data_rate(struct intel_display *display,
 				       const struct intel_bw_state *bw_state)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	unsigned int data_rate = 0;
 	enum pipe pipe;
 
-	for_each_pipe(dev_priv, pipe)
+	for_each_pipe(display, pipe)
 		data_rate += bw_state->data_rate[pipe];
 
-	if (DISPLAY_VER(dev_priv) >= 13 && i915_vtd_active(dev_priv))
+	if (DISPLAY_VER(display) >= 13 && i915_vtd_active(i915))
 		data_rate = DIV_ROUND_UP(data_rate * 105, 100);
 
 	return data_rate;
@@ -836,10 +847,10 @@ static unsigned int intel_bw_data_rate(struct drm_i915_private *dev_priv,
 struct intel_bw_state *
 intel_atomic_get_old_bw_state(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_global_state *bw_state;
 
-	bw_state = intel_atomic_get_old_global_obj_state(state, &dev_priv->display.bw.obj);
+	bw_state = intel_atomic_get_old_global_obj_state(state, &display->bw.obj);
 
 	return to_intel_bw_state(bw_state);
 }
@@ -847,10 +858,10 @@ intel_atomic_get_old_bw_state(struct intel_atomic_state *state)
 struct intel_bw_state *
 intel_atomic_get_new_bw_state(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_global_state *bw_state;
 
-	bw_state = intel_atomic_get_new_global_obj_state(state, &dev_priv->display.bw.obj);
+	bw_state = intel_atomic_get_new_global_obj_state(state, &display->bw.obj);
 
 	return to_intel_bw_state(bw_state);
 }
@@ -858,27 +869,27 @@ intel_atomic_get_new_bw_state(struct intel_atomic_state *state)
 struct intel_bw_state *
 intel_atomic_get_bw_state(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_global_state *bw_state;
 
-	bw_state = intel_atomic_get_global_obj_state(state, &dev_priv->display.bw.obj);
+	bw_state = intel_atomic_get_global_obj_state(state, &display->bw.obj);
 	if (IS_ERR(bw_state))
 		return ERR_CAST(bw_state);
 
 	return to_intel_bw_state(bw_state);
 }
 
-static unsigned int icl_max_bw_qgv_point_mask(struct drm_i915_private *i915,
+static unsigned int icl_max_bw_qgv_point_mask(struct intel_display *display,
 					      int num_active_planes)
 {
-	unsigned int num_qgv_points = i915->display.bw.max[0].num_qgv_points;
+	unsigned int num_qgv_points = display->bw.max[0].num_qgv_points;
 	unsigned int max_bw_point = 0;
 	unsigned int max_bw = 0;
 	int i;
 
 	for (i = 0; i < num_qgv_points; i++) {
 		unsigned int max_data_rate =
-			icl_qgv_bw(i915, num_active_planes, i);
+			icl_qgv_bw(display, num_active_planes, i);
 
 		/*
 		 * We need to know which qgv point gives us
@@ -897,23 +908,23 @@ static unsigned int icl_max_bw_qgv_point_mask(struct drm_i915_private *i915,
 	return max_bw_point;
 }
 
-static u16 icl_prepare_qgv_points_mask(struct drm_i915_private *i915,
+static u16 icl_prepare_qgv_points_mask(struct intel_display *display,
 				       unsigned int qgv_points,
 				       unsigned int psf_points)
 {
 	return ~(ICL_PCODE_REQ_QGV_PT(qgv_points) |
-		 ADLS_PCODE_REQ_PSF_PT(psf_points)) & icl_qgv_points_mask(i915);
+		 ADLS_PCODE_REQ_PSF_PT(psf_points)) & icl_qgv_points_mask(display);
 }
 
-static unsigned int icl_max_bw_psf_gv_point_mask(struct drm_i915_private *i915)
+static unsigned int icl_max_bw_psf_gv_point_mask(struct intel_display *display)
 {
-	unsigned int num_psf_gv_points = i915->display.bw.max[0].num_psf_gv_points;
+	unsigned int num_psf_gv_points = display->bw.max[0].num_psf_gv_points;
 	unsigned int max_bw_point_mask = 0;
 	unsigned int max_bw = 0;
 	int i;
 
 	for (i = 0; i < num_psf_gv_points; i++) {
-		unsigned int max_data_rate = adl_psf_bw(i915, i);
+		unsigned int max_data_rate = adl_psf_bw(display, i);
 
 		if (max_data_rate > max_bw) {
 			max_bw_point_mask = BIT(i);
@@ -926,29 +937,31 @@ static unsigned int icl_max_bw_psf_gv_point_mask(struct drm_i915_private *i915)
 	return max_bw_point_mask;
 }
 
-static void icl_force_disable_sagv(struct drm_i915_private *i915,
+static void icl_force_disable_sagv(struct intel_display *display,
 				   struct intel_bw_state *bw_state)
 {
-	unsigned int qgv_points = icl_max_bw_qgv_point_mask(i915, 0);
-	unsigned int psf_points = icl_max_bw_psf_gv_point_mask(i915);
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	unsigned int qgv_points = icl_max_bw_qgv_point_mask(display, 0);
+	unsigned int psf_points = icl_max_bw_psf_gv_point_mask(display);
 
-	bw_state->qgv_points_mask = icl_prepare_qgv_points_mask(i915,
+	bw_state->qgv_points_mask = icl_prepare_qgv_points_mask(display,
 								qgv_points,
 								psf_points);
 
-	drm_dbg_kms(&i915->drm, "Forcing SAGV disable: mask 0x%x\n",
+	drm_dbg_kms(display->drm, "Forcing SAGV disable: mask 0x%x\n",
 		    bw_state->qgv_points_mask);
 
 	icl_pcode_restrict_qgv_points(i915, bw_state->qgv_points_mask);
 }
 
-static int mtl_find_qgv_points(struct drm_i915_private *i915,
+static int mtl_find_qgv_points(struct intel_display *display,
 			       unsigned int data_rate,
 			       unsigned int num_active_planes,
 			       struct intel_bw_state *new_bw_state)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	unsigned int best_rate = UINT_MAX;
-	unsigned int num_qgv_points = i915->display.bw.max[0].num_qgv_points;
+	unsigned int num_qgv_points = display->bw.max[0].num_qgv_points;
 	unsigned int qgv_peak_bw  = 0;
 	int i;
 	int ret;
@@ -964,7 +977,7 @@ static int mtl_find_qgv_points(struct drm_i915_private *i915,
 	 */
 	if (!intel_can_enable_sagv(i915, new_bw_state)) {
 		new_bw_state->qgv_point_peakbw = U16_MAX;
-		drm_dbg_kms(&i915->drm, "No SAGV, use UINT_MAX as peak bw.");
+		drm_dbg_kms(display->drm, "No SAGV, use UINT_MAX as peak bw.");
 		return 0;
 	}
 
@@ -974,27 +987,27 @@ static int mtl_find_qgv_points(struct drm_i915_private *i915,
 	 */
 	for (i = 0; i < num_qgv_points; i++) {
 		unsigned int bw_index =
-			tgl_max_bw_index(i915, num_active_planes, i);
+			tgl_max_bw_index(display, num_active_planes, i);
 		unsigned int max_data_rate;
 
-		if (bw_index >= ARRAY_SIZE(i915->display.bw.max))
+		if (bw_index >= ARRAY_SIZE(display->bw.max))
 			continue;
 
-		max_data_rate = i915->display.bw.max[bw_index].deratedbw[i];
+		max_data_rate = display->bw.max[bw_index].deratedbw[i];
 
 		if (max_data_rate < data_rate)
 			continue;
 
 		if (max_data_rate - data_rate < best_rate) {
 			best_rate = max_data_rate - data_rate;
-			qgv_peak_bw = i915->display.bw.max[bw_index].peakbw[i];
+			qgv_peak_bw = display->bw.max[bw_index].peakbw[i];
 		}
 
-		drm_dbg_kms(&i915->drm, "QGV point %d: max bw %d required %d qgv_peak_bw: %d\n",
+		drm_dbg_kms(display->drm, "QGV point %d: max bw %d required %d qgv_peak_bw: %d\n",
 			    i, max_data_rate, data_rate, qgv_peak_bw);
 	}
 
-	drm_dbg_kms(&i915->drm, "Matching peaks QGV bw: %d for required data rate: %d\n",
+	drm_dbg_kms(display->drm, "Matching peaks QGV bw: %d for required data rate: %d\n",
 		    qgv_peak_bw, data_rate);
 
 	/*
@@ -1002,7 +1015,7 @@ static int mtl_find_qgv_points(struct drm_i915_private *i915,
 	 * satisfying the required data rate is found
 	 */
 	if (qgv_peak_bw == 0) {
-		drm_dbg_kms(&i915->drm, "No QGV points for bw %d for display configuration(%d active planes).\n",
+		drm_dbg_kms(display->drm, "No QGV points for bw %d for display configuration(%d active planes).\n",
 			    data_rate, num_active_planes);
 		return -EINVAL;
 	}
@@ -1013,14 +1026,15 @@ static int mtl_find_qgv_points(struct drm_i915_private *i915,
 	return 0;
 }
 
-static int icl_find_qgv_points(struct drm_i915_private *i915,
+static int icl_find_qgv_points(struct intel_display *display,
 			       unsigned int data_rate,
 			       unsigned int num_active_planes,
 			       const struct intel_bw_state *old_bw_state,
 			       struct intel_bw_state *new_bw_state)
 {
-	unsigned int num_psf_gv_points = i915->display.bw.max[0].num_psf_gv_points;
-	unsigned int num_qgv_points = i915->display.bw.max[0].num_qgv_points;
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	unsigned int num_psf_gv_points = display->bw.max[0].num_psf_gv_points;
+	unsigned int num_qgv_points = display->bw.max[0].num_qgv_points;
 	u16 psf_points = 0;
 	u16 qgv_points = 0;
 	int i;
@@ -1031,22 +1045,22 @@ static int icl_find_qgv_points(struct drm_i915_private *i915,
 		return ret;
 
 	for (i = 0; i < num_qgv_points; i++) {
-		unsigned int max_data_rate = icl_qgv_bw(i915,
+		unsigned int max_data_rate = icl_qgv_bw(display,
 							num_active_planes, i);
 		if (max_data_rate >= data_rate)
 			qgv_points |= BIT(i);
 
-		drm_dbg_kms(&i915->drm, "QGV point %d: max bw %d required %d\n",
+		drm_dbg_kms(display->drm, "QGV point %d: max bw %d required %d\n",
 			    i, max_data_rate, data_rate);
 	}
 
 	for (i = 0; i < num_psf_gv_points; i++) {
-		unsigned int max_data_rate = adl_psf_bw(i915, i);
+		unsigned int max_data_rate = adl_psf_bw(display, i);
 
 		if (max_data_rate >= data_rate)
 			psf_points |= BIT(i);
 
-		drm_dbg_kms(&i915->drm, "PSF GV point %d: max bw %d"
+		drm_dbg_kms(display->drm, "PSF GV point %d: max bw %d"
 			    " required %d\n",
 			    i, max_data_rate, data_rate);
 	}
@@ -1057,14 +1071,14 @@ static int icl_find_qgv_points(struct drm_i915_private *i915,
 	 * reasons.
 	 */
 	if (qgv_points == 0) {
-		drm_dbg_kms(&i915->drm, "No QGV points provide sufficient memory"
+		drm_dbg_kms(display->drm, "No QGV points provide sufficient memory"
 			    " bandwidth %d for display configuration(%d active planes).\n",
 			    data_rate, num_active_planes);
 		return -EINVAL;
 	}
 
 	if (num_psf_gv_points > 0 && psf_points == 0) {
-		drm_dbg_kms(&i915->drm, "No PSF GV points provide sufficient memory"
+		drm_dbg_kms(display->drm, "No PSF GV points provide sufficient memory"
 			    " bandwidth %d for display configuration(%d active planes).\n",
 			    data_rate, num_active_planes);
 		return -EINVAL;
@@ -1076,8 +1090,8 @@ static int icl_find_qgv_points(struct drm_i915_private *i915,
 	 * cause.
 	 */
 	if (!intel_can_enable_sagv(i915, new_bw_state)) {
-		qgv_points = icl_max_bw_qgv_point_mask(i915, num_active_planes);
-		drm_dbg_kms(&i915->drm, "No SAGV, using single QGV point mask 0x%x\n",
+		qgv_points = icl_max_bw_qgv_point_mask(display, num_active_planes);
+		drm_dbg_kms(display->drm, "No SAGV, using single QGV point mask 0x%x\n",
 			    qgv_points);
 	}
 
@@ -1085,7 +1099,7 @@ static int icl_find_qgv_points(struct drm_i915_private *i915,
 	 * We store the ones which need to be masked as that is what PCode
 	 * actually accepts as a parameter.
 	 */
-	new_bw_state->qgv_points_mask = icl_prepare_qgv_points_mask(i915,
+	new_bw_state->qgv_points_mask = icl_prepare_qgv_points_mask(display,
 								    qgv_points,
 								    psf_points);
 	/*
@@ -1101,38 +1115,38 @@ static int icl_find_qgv_points(struct drm_i915_private *i915,
 	return 0;
 }
 
-static int intel_bw_check_qgv_points(struct drm_i915_private *i915,
+static int intel_bw_check_qgv_points(struct intel_display *display,
 				     const struct intel_bw_state *old_bw_state,
 				     struct intel_bw_state *new_bw_state)
 {
-	unsigned int data_rate = intel_bw_data_rate(i915, new_bw_state);
+	unsigned int data_rate = intel_bw_data_rate(display, new_bw_state);
 	unsigned int num_active_planes =
-			intel_bw_num_active_planes(i915, new_bw_state);
+			intel_bw_num_active_planes(display, new_bw_state);
 
 	data_rate = DIV_ROUND_UP(data_rate, 1000);
 
-	if (DISPLAY_VER(i915) >= 14)
-		return mtl_find_qgv_points(i915, data_rate, num_active_planes,
+	if (DISPLAY_VER(display) >= 14)
+		return mtl_find_qgv_points(display, data_rate, num_active_planes,
 					   new_bw_state);
 	else
-		return icl_find_qgv_points(i915, data_rate, num_active_planes,
+		return icl_find_qgv_points(display, data_rate, num_active_planes,
 					   old_bw_state, new_bw_state);
 }
 
-static bool intel_bw_state_changed(struct drm_i915_private *i915,
+static bool intel_bw_state_changed(struct intel_display *display,
 				   const struct intel_bw_state *old_bw_state,
 				   const struct intel_bw_state *new_bw_state)
 {
 	enum pipe pipe;
 
-	for_each_pipe(i915, pipe) {
+	for_each_pipe(display, pipe) {
 		const struct intel_dbuf_bw *old_crtc_bw =
 			&old_bw_state->dbuf_bw[pipe];
 		const struct intel_dbuf_bw *new_crtc_bw =
 			&new_bw_state->dbuf_bw[pipe];
 		enum dbuf_slice slice;
 
-		for_each_dbuf_slice(i915, slice) {
+		for_each_dbuf_slice(display, slice) {
 			if (old_crtc_bw->max_bw[slice] != new_crtc_bw->max_bw[slice] ||
 			    old_crtc_bw->active_planes[slice] != new_crtc_bw->active_planes[slice])
 				return true;
@@ -1151,7 +1165,8 @@ static void skl_plane_calc_dbuf_bw(struct intel_bw_state *bw_state,
 				   const struct skl_ddb_entry *ddb,
 				   unsigned int data_rate)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_dbuf_bw *crtc_bw = &bw_state->dbuf_bw[crtc->pipe];
 	unsigned int dbuf_mask = skl_ddb_dbuf_slice_mask(i915, ddb);
 	enum dbuf_slice slice;
@@ -1160,7 +1175,7 @@ static void skl_plane_calc_dbuf_bw(struct intel_bw_state *bw_state,
 	 * The arbiter can only really guarantee an
 	 * equal share of the total bw to each plane.
 	 */
-	for_each_dbuf_slice_in_mask(i915, slice, dbuf_mask) {
+	for_each_dbuf_slice_in_mask(display, slice, dbuf_mask) {
 		crtc_bw->max_bw[slice] = max(crtc_bw->max_bw[slice], data_rate);
 		crtc_bw->active_planes[slice] |= BIT(plane_id);
 	}
@@ -1169,8 +1184,8 @@ static void skl_plane_calc_dbuf_bw(struct intel_bw_state *bw_state,
 static void skl_crtc_calc_dbuf_bw(struct intel_bw_state *bw_state,
 				  const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_dbuf_bw *crtc_bw = &bw_state->dbuf_bw[crtc->pipe];
 	enum plane_id plane_id;
 
@@ -1191,7 +1206,7 @@ static void skl_crtc_calc_dbuf_bw(struct intel_bw_state *bw_state,
 				       &crtc_state->wm.skl.plane_ddb[plane_id],
 				       crtc_state->data_rate[plane_id]);
 
-		if (DISPLAY_VER(i915) < 11)
+		if (DISPLAY_VER(display) < 11)
 			skl_plane_calc_dbuf_bw(bw_state, crtc, plane_id,
 					       &crtc_state->wm.skl.plane_ddb_y[plane_id],
 					       crtc_state->data_rate[plane_id]);
@@ -1200,13 +1215,13 @@ static void skl_crtc_calc_dbuf_bw(struct intel_bw_state *bw_state,
 
 /* "Maximum Data Buffer Bandwidth" */
 static int
-intel_bw_dbuf_min_cdclk(struct drm_i915_private *i915,
+intel_bw_dbuf_min_cdclk(struct intel_display *display,
 			const struct intel_bw_state *bw_state)
 {
 	unsigned int total_max_bw = 0;
 	enum dbuf_slice slice;
 
-	for_each_dbuf_slice(i915, slice) {
+	for_each_dbuf_slice(display, slice) {
 		int num_active_planes = 0;
 		unsigned int max_bw = 0;
 		enum pipe pipe;
@@ -1215,7 +1230,7 @@ intel_bw_dbuf_min_cdclk(struct drm_i915_private *i915,
 		 * The arbiter can only really guarantee an
 		 * equal share of the total bw to each plane.
 		 */
-		for_each_pipe(i915, pipe) {
+		for_each_pipe(display, pipe) {
 			const struct intel_dbuf_bw *crtc_bw = &bw_state->dbuf_bw[pipe];
 
 			max_bw = max(crtc_bw->max_bw[slice], max_bw);
@@ -1232,12 +1247,13 @@ intel_bw_dbuf_min_cdclk(struct drm_i915_private *i915,
 int intel_bw_min_cdclk(struct drm_i915_private *i915,
 		       const struct intel_bw_state *bw_state)
 {
+	struct intel_display *display = &i915->display;
 	enum pipe pipe;
 	int min_cdclk;
 
-	min_cdclk = intel_bw_dbuf_min_cdclk(i915, bw_state);
+	min_cdclk = intel_bw_dbuf_min_cdclk(display, bw_state);
 
-	for_each_pipe(i915, pipe)
+	for_each_pipe(display, pipe)
 		min_cdclk = max(min_cdclk, bw_state->min_cdclk[pipe]);
 
 	return min_cdclk;
@@ -1246,6 +1262,7 @@ int intel_bw_min_cdclk(struct drm_i915_private *i915,
 int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
 			    bool *need_cdclk_calc)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_bw_state *new_bw_state = NULL;
 	const struct intel_bw_state *old_bw_state = NULL;
@@ -1255,7 +1272,7 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
 	struct intel_crtc *crtc;
 	int i;
 
-	if (DISPLAY_VER(dev_priv) < 9)
+	if (DISPLAY_VER(display) < 9)
 		return 0;
 
 	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
@@ -1274,7 +1291,7 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
 	if (!old_bw_state)
 		return 0;
 
-	if (intel_bw_state_changed(dev_priv, old_bw_state, new_bw_state)) {
+	if (intel_bw_state_changed(display, old_bw_state, new_bw_state)) {
 		int ret = intel_atomic_lock_global_state(&new_bw_state->base);
 		if (ret)
 			return ret;
@@ -1309,7 +1326,7 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
 	if (new_min_cdclk <= cdclk_state->bw_min_cdclk)
 		return 0;
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "new bandwidth min cdclk (%d kHz) > old min cdclk (%d kHz)\n",
 		    new_min_cdclk, cdclk_state->bw_min_cdclk);
 	*need_cdclk_calc = true;
@@ -1319,7 +1336,7 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
 
 static int intel_bw_check_data_rate(struct intel_atomic_state *state, bool *changed)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
 	struct intel_crtc *crtc;
 	int i;
@@ -1353,7 +1370,7 @@ static int intel_bw_check_data_rate(struct intel_atomic_state *state, bool *chan
 
 		*changed = true;
 
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[CRTC:%d:%s] data rate %u num active planes %u\n",
 			    crtc->base.base.id, crtc->base.name,
 			    new_bw_state->data_rate[crtc->pipe],
@@ -1365,14 +1382,15 @@ static int intel_bw_check_data_rate(struct intel_atomic_state *state, bool *chan
 
 int intel_bw_atomic_check(struct intel_atomic_state *state)
 {
+	struct intel_display *display = to_intel_display(state);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	bool changed = false;
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_bw_state *new_bw_state;
 	const struct intel_bw_state *old_bw_state;
 	int ret;
 
 	/* FIXME earlier gens need some checks too */
-	if (DISPLAY_VER(i915) < 11)
+	if (DISPLAY_VER(display) < 11)
 		return 0;
 
 	ret = intel_bw_check_data_rate(state, &changed);
@@ -1395,7 +1413,7 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 	if (!changed)
 		return 0;
 
-	ret = intel_bw_check_qgv_points(i915, old_bw_state, new_bw_state);
+	ret = intel_bw_check_qgv_points(display, old_bw_state, new_bw_state);
 	if (ret)
 		return ret;
 
@@ -1407,8 +1425,8 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 static void intel_bw_crtc_update(struct intel_bw_state *bw_state,
 				 const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
 	bw_state->data_rate[crtc->pipe] =
 		intel_bw_crtc_data_rate(crtc_state);
@@ -1416,7 +1434,7 @@ static void intel_bw_crtc_update(struct intel_bw_state *bw_state,
 		intel_bw_crtc_num_active_planes(crtc_state);
 	bw_state->force_check_qgv = true;
 
-	drm_dbg_kms(&i915->drm, "pipe %c data rate %u num active planes %u\n",
+	drm_dbg_kms(display->drm, "pipe %c data rate %u num active planes %u\n",
 		    pipe_name(crtc->pipe),
 		    bw_state->data_rate[crtc->pipe],
 		    bw_state->num_active_planes[crtc->pipe]);
@@ -1499,8 +1517,8 @@ int intel_bw_init(struct drm_i915_private *i915)
 	 * Limit this only if we have SAGV. And for Display version 14 onwards
 	 * sagv is handled though pmdemand requests
 	 */
-	if (intel_has_sagv(i915) && IS_DISPLAY_VER(i915, 11, 13))
-		icl_force_disable_sagv(i915, state);
+	if (intel_has_sagv(i915) && IS_DISPLAY_VER(display, 11, 13))
+		icl_force_disable_sagv(display, state);
 
 	return 0;
 }

-- 
2.48.1

