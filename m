Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CDA12162AA
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 01:58:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EB006E4BB;
	Mon,  6 Jul 2020 23:57:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 617C76E4AF
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2020 23:57:57 +0000 (UTC)
IronPort-SDR: Do+IL+2lM15hJc7waC8NI8w8+B26T4x9eANzsC+RYmIoXy2OhrxMQHetFBgB/qR0k/w2uDC/j1
 GrojcRofjNkg==
X-IronPort-AV: E=McAfee;i="6000,8403,9674"; a="147528450"
X-IronPort-AV: E=Sophos;i="5.75,321,1589266800"; d="scan'208";a="147528450"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2020 16:57:57 -0700
IronPort-SDR: gyek0dPYfCa0M81UarPDHie8UJIgobJhvrjbQyNj+TDtLAoX6XiK49MjRj8uZ1jSDbhZYKdMzF
 tWo2DORXzkBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,321,1589266800"; d="scan'208";a="357606854"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga001.jf.intel.com with ESMTP; 06 Jul 2020 16:57:57 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Jul 2020 16:57:49 -0700
Message-Id: <20200706235757.1020-2-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200706235757.1020-1-daniele.ceraolospurio@intel.com>
References: <20200706235757.1020-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/9] drm/i915: Convert device_info to
 uncore/de_read
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use intel_<uncore/de>_read instead of I915_READ to read the
informational registers.

Extended from an original sseu-only patch by Sandeep.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Andi Shyti <andi.shyti@intel.com>
Cc: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/intel_device_info.c | 77 +++++++++++++++---------
 1 file changed, 47 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 544ac61fbc36..c27a56aff5de 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -26,6 +26,7 @@
 #include <drm/i915_pciids.h>
 
 #include "display/intel_cdclk.h"
+#include "display/intel_de.h"
 #include "intel_device_info.h"
 #include "i915_drv.h"
 
@@ -237,6 +238,7 @@ static void gen11_compute_sseu_info(struct sseu_dev_info *sseu,
 static void gen12_sseu_info_init(struct drm_i915_private *dev_priv)
 {
 	struct sseu_dev_info *sseu = &RUNTIME_INFO(dev_priv)->sseu;
+	struct intel_uncore *uncore = &dev_priv->uncore;
 	u8 s_en;
 	u32 dss_en;
 	u16 eu_en = 0;
@@ -250,12 +252,14 @@ static void gen12_sseu_info_init(struct drm_i915_private *dev_priv)
 	 */
 	intel_sseu_set_info(sseu, 1, 6, 16);
 
-	s_en = I915_READ(GEN11_GT_SLICE_ENABLE) & GEN11_GT_S_ENA_MASK;
+	s_en = intel_uncore_read(uncore, GEN11_GT_SLICE_ENABLE) &
+	       GEN11_GT_S_ENA_MASK;
 
-	dss_en = I915_READ(GEN12_GT_DSS_ENABLE);
+	dss_en = intel_uncore_read(uncore, GEN12_GT_DSS_ENABLE);
 
 	/* one bit per pair of EUs */
-	eu_en_fuse = ~(I915_READ(GEN11_EU_DISABLE) & GEN11_EU_DIS_MASK);
+	eu_en_fuse = ~(intel_uncore_read(uncore, GEN11_EU_DISABLE) &
+		       GEN11_EU_DIS_MASK);
 	for (eu = 0; eu < sseu->max_eus_per_subslice / 2; eu++)
 		if (eu_en_fuse & BIT(eu))
 			eu_en |= BIT(eu * 2) | BIT(eu * 2 + 1);
@@ -269,6 +273,7 @@ static void gen12_sseu_info_init(struct drm_i915_private *dev_priv)
 static void gen11_sseu_info_init(struct drm_i915_private *dev_priv)
 {
 	struct sseu_dev_info *sseu = &RUNTIME_INFO(dev_priv)->sseu;
+	struct intel_uncore *uncore = &dev_priv->uncore;
 	u8 s_en;
 	u32 ss_en;
 	u8 eu_en;
@@ -278,9 +283,12 @@ static void gen11_sseu_info_init(struct drm_i915_private *dev_priv)
 	else
 		intel_sseu_set_info(sseu, 1, 8, 8);
 
-	s_en = I915_READ(GEN11_GT_SLICE_ENABLE) & GEN11_GT_S_ENA_MASK;
-	ss_en = ~I915_READ(GEN11_GT_SUBSLICE_DISABLE);
-	eu_en = ~(I915_READ(GEN11_EU_DISABLE) & GEN11_EU_DIS_MASK);
+	s_en = intel_uncore_read(uncore, GEN11_GT_SLICE_ENABLE) &
+	       GEN11_GT_S_ENA_MASK;
+	ss_en = ~intel_uncore_read(uncore, GEN11_GT_SUBSLICE_DISABLE);
+
+	eu_en = ~(intel_uncore_read(uncore, GEN11_EU_DISABLE) &
+		  GEN11_EU_DIS_MASK);
 
 	gen11_compute_sseu_info(sseu, s_en, ss_en, eu_en);
 
@@ -292,8 +300,9 @@ static void gen11_sseu_info_init(struct drm_i915_private *dev_priv)
 
 static void gen10_sseu_info_init(struct drm_i915_private *dev_priv)
 {
+	struct intel_uncore *uncore = &dev_priv->uncore;
 	struct sseu_dev_info *sseu = &RUNTIME_INFO(dev_priv)->sseu;
-	const u32 fuse2 = I915_READ(GEN8_FUSE2);
+	const u32 fuse2 = intel_uncore_read(uncore, GEN8_FUSE2);
 	int s, ss;
 	const int eu_mask = 0xff;
 	u32 subslice_mask, eu_en;
@@ -304,26 +313,26 @@ static void gen10_sseu_info_init(struct drm_i915_private *dev_priv)
 			    GEN10_F2_S_ENA_SHIFT;
 
 	/* Slice0 */
-	eu_en = ~I915_READ(GEN8_EU_DISABLE0);
+	eu_en = ~intel_uncore_read(uncore, GEN8_EU_DISABLE0);
 	for (ss = 0; ss < sseu->max_subslices; ss++)
 		sseu_set_eus(sseu, 0, ss, (eu_en >> (8 * ss)) & eu_mask);
 	/* Slice1 */
 	sseu_set_eus(sseu, 1, 0, (eu_en >> 24) & eu_mask);
-	eu_en = ~I915_READ(GEN8_EU_DISABLE1);
+	eu_en = ~intel_uncore_read(uncore, GEN8_EU_DISABLE1);
 	sseu_set_eus(sseu, 1, 1, eu_en & eu_mask);
 	/* Slice2 */
 	sseu_set_eus(sseu, 2, 0, (eu_en >> 8) & eu_mask);
 	sseu_set_eus(sseu, 2, 1, (eu_en >> 16) & eu_mask);
 	/* Slice3 */
 	sseu_set_eus(sseu, 3, 0, (eu_en >> 24) & eu_mask);
-	eu_en = ~I915_READ(GEN8_EU_DISABLE2);
+	eu_en = ~intel_uncore_read(uncore, GEN8_EU_DISABLE2);
 	sseu_set_eus(sseu, 3, 1, eu_en & eu_mask);
 	/* Slice4 */
 	sseu_set_eus(sseu, 4, 0, (eu_en >> 8) & eu_mask);
 	sseu_set_eus(sseu, 4, 1, (eu_en >> 16) & eu_mask);
 	/* Slice5 */
 	sseu_set_eus(sseu, 5, 0, (eu_en >> 24) & eu_mask);
-	eu_en = ~I915_READ(GEN10_EU_DISABLE3);
+	eu_en = ~intel_uncore_read(uncore, GEN10_EU_DISABLE3);
 	sseu_set_eus(sseu, 5, 1, eu_en & eu_mask);
 
 	subslice_mask = (1 << 4) - 1;
@@ -372,7 +381,7 @@ static void cherryview_sseu_info_init(struct drm_i915_private *dev_priv)
 	u32 fuse;
 	u8 subslice_mask = 0;
 
-	fuse = I915_READ(CHV_FUSE_GT);
+	fuse = intel_uncore_read(&dev_priv->uncore, CHV_FUSE_GT);
 
 	sseu->slice_mask = BIT(0);
 	intel_sseu_set_info(sseu, 1, 2, 8);
@@ -425,11 +434,12 @@ static void gen9_sseu_info_init(struct drm_i915_private *dev_priv)
 {
 	struct intel_device_info *info = mkwrite_device_info(dev_priv);
 	struct sseu_dev_info *sseu = &RUNTIME_INFO(dev_priv)->sseu;
+	struct intel_uncore *uncore = &dev_priv->uncore;
 	int s, ss;
 	u32 fuse2, eu_disable, subslice_mask;
 	const u8 eu_mask = 0xff;
 
-	fuse2 = I915_READ(GEN8_FUSE2);
+	fuse2 = intel_uncore_read(uncore, GEN8_FUSE2);
 	sseu->slice_mask = (fuse2 & GEN8_F2_S_ENA_MASK) >> GEN8_F2_S_ENA_SHIFT;
 
 	/* BXT has a single slice and at most 3 subslices. */
@@ -455,7 +465,7 @@ static void gen9_sseu_info_init(struct drm_i915_private *dev_priv)
 
 		intel_sseu_set_subslices(sseu, s, subslice_mask);
 
-		eu_disable = I915_READ(GEN9_EU_DISABLE(s));
+		eu_disable = intel_uncore_read(uncore, GEN9_EU_DISABLE(s));
 		for (ss = 0; ss < sseu->max_subslices; ss++) {
 			int eu_per_ss;
 			u8 eu_disabled_mask;
@@ -528,10 +538,12 @@ static void gen9_sseu_info_init(struct drm_i915_private *dev_priv)
 static void bdw_sseu_info_init(struct drm_i915_private *dev_priv)
 {
 	struct sseu_dev_info *sseu = &RUNTIME_INFO(dev_priv)->sseu;
+	struct intel_uncore *uncore = &dev_priv->uncore;
 	int s, ss;
 	u32 fuse2, subslice_mask, eu_disable[3]; /* s_max */
+	u32 eu_disable0, eu_disable1, eu_disable2;
 
-	fuse2 = I915_READ(GEN8_FUSE2);
+	fuse2 = intel_uncore_read(uncore, GEN8_FUSE2);
 	sseu->slice_mask = (fuse2 & GEN8_F2_S_ENA_MASK) >> GEN8_F2_S_ENA_SHIFT;
 	intel_sseu_set_info(sseu, 3, 3, 8);
 
@@ -542,13 +554,15 @@ static void bdw_sseu_info_init(struct drm_i915_private *dev_priv)
 	subslice_mask = GENMASK(sseu->max_subslices - 1, 0);
 	subslice_mask &= ~((fuse2 & GEN8_F2_SS_DIS_MASK) >>
 			   GEN8_F2_SS_DIS_SHIFT);
-
-	eu_disable[0] = I915_READ(GEN8_EU_DISABLE0) & GEN8_EU_DIS0_S0_MASK;
-	eu_disable[1] = (I915_READ(GEN8_EU_DISABLE0) >> GEN8_EU_DIS0_S1_SHIFT) |
-			((I915_READ(GEN8_EU_DISABLE1) & GEN8_EU_DIS1_S1_MASK) <<
+	eu_disable0 = intel_uncore_read(uncore, GEN8_EU_DISABLE0);
+	eu_disable1 = intel_uncore_read(uncore, GEN8_EU_DISABLE1);
+	eu_disable2 = intel_uncore_read(uncore, GEN8_EU_DISABLE2);
+	eu_disable[0] = eu_disable0 & GEN8_EU_DIS0_S0_MASK;
+	eu_disable[1] = (eu_disable0 >> GEN8_EU_DIS0_S1_SHIFT) |
+			((eu_disable1 & GEN8_EU_DIS1_S1_MASK) <<
 			 (32 - GEN8_EU_DIS0_S1_SHIFT));
-	eu_disable[2] = (I915_READ(GEN8_EU_DISABLE1) >> GEN8_EU_DIS1_S2_SHIFT) |
-			((I915_READ(GEN8_EU_DISABLE2) & GEN8_EU_DIS2_S2_MASK) <<
+	eu_disable[2] = (eu_disable1 >> GEN8_EU_DIS1_S2_SHIFT) |
+			((eu_disable2 & GEN8_EU_DIS2_S2_MASK) <<
 			 (32 - GEN8_EU_DIS1_S2_SHIFT));
 
 	/*
@@ -635,7 +649,7 @@ static void hsw_sseu_info_init(struct drm_i915_private *dev_priv)
 		break;
 	}
 
-	fuse1 = I915_READ(HSW_PAVP_FUSE1);
+	fuse1 = intel_uncore_read(&dev_priv->uncore, HSW_PAVP_FUSE1);
 	switch ((fuse1 & HSW_F1_EU_DIS_MASK) >> HSW_F1_EU_DIS_SHIFT) {
 	default:
 		MISSING_CASE((fuse1 & HSW_F1_EU_DIS_MASK) >>
@@ -675,7 +689,8 @@ static void hsw_sseu_info_init(struct drm_i915_private *dev_priv)
 
 static u32 read_reference_ts_freq(struct drm_i915_private *dev_priv)
 {
-	u32 ts_override = I915_READ(GEN9_TIMESTAMP_OVERRIDE);
+	u32 ts_override = intel_uncore_read(&dev_priv->uncore,
+					    GEN9_TIMESTAMP_OVERRIDE);
 	u32 base_freq, frac_freq;
 
 	base_freq = ((ts_override & GEN9_TIMESTAMP_OVERRIDE_US_COUNTER_DIVIDER_MASK) >>
@@ -738,6 +753,7 @@ static u32 gen11_get_crystal_clock_freq(struct drm_i915_private *dev_priv,
 
 static u32 read_timestamp_frequency(struct drm_i915_private *dev_priv)
 {
+	struct intel_uncore *uncore = &dev_priv->uncore;
 	u32 f12_5_mhz = 12500000;
 	u32 f19_2_mhz = 19200000;
 	u32 f24_mhz = 24000000;
@@ -759,7 +775,7 @@ static u32 read_timestamp_frequency(struct drm_i915_private *dev_priv)
 		 */
 		return f12_5_mhz;
 	} else if (INTEL_GEN(dev_priv) <= 9) {
-		u32 ctc_reg = I915_READ(CTC_MODE);
+		u32 ctc_reg = intel_uncore_read(uncore, CTC_MODE);
 		u32 freq = 0;
 
 		if ((ctc_reg & CTC_SOURCE_PARAMETER_MASK) == CTC_SOURCE_DIVIDE_LOGIC) {
@@ -777,7 +793,7 @@ static u32 read_timestamp_frequency(struct drm_i915_private *dev_priv)
 
 		return freq;
 	} else if (INTEL_GEN(dev_priv) <= 12) {
-		u32 ctc_reg = I915_READ(CTC_MODE);
+		u32 ctc_reg = intel_uncore_read(uncore, CTC_MODE);
 		u32 freq = 0;
 
 		/* First figure out the reference frequency. There are 2 ways
@@ -788,7 +804,7 @@ static u32 read_timestamp_frequency(struct drm_i915_private *dev_priv)
 		if ((ctc_reg & CTC_SOURCE_PARAMETER_MASK) == CTC_SOURCE_DIVIDE_LOGIC) {
 			freq = read_reference_ts_freq(dev_priv);
 		} else {
-			u32 rpm_config_reg = I915_READ(RPM_CONFIG0);
+			u32 rpm_config_reg = intel_uncore_read(uncore, RPM_CONFIG0);
 
 			if (INTEL_GEN(dev_priv) <= 10)
 				freq = gen10_get_crystal_clock_freq(dev_priv,
@@ -967,8 +983,8 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 
 	if (HAS_DISPLAY(dev_priv) && IS_GEN_RANGE(dev_priv, 7, 8) &&
 	    HAS_PCH_SPLIT(dev_priv)) {
-		u32 fuse_strap = I915_READ(FUSE_STRAP);
-		u32 sfuse_strap = I915_READ(SFUSE_STRAP);
+		u32 fuse_strap = intel_de_read(dev_priv, FUSE_STRAP);
+		u32 sfuse_strap = intel_de_read(dev_priv, SFUSE_STRAP);
 
 		/*
 		 * SFUSE_STRAP is supposed to have a bit signalling the display
@@ -993,7 +1009,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 			info->cpu_transcoder_mask &= ~BIT(TRANSCODER_C);
 		}
 	} else if (HAS_DISPLAY(dev_priv) && INTEL_GEN(dev_priv) >= 9) {
-		u32 dfsm = I915_READ(SKL_DFSM);
+		u32 dfsm = intel_de_read(dev_priv, SKL_DFSM);
 
 		if (dfsm & SKL_DFSM_PIPE_A_DISABLE) {
 			info->pipe_mask &= ~BIT(PIPE_A);
@@ -1083,6 +1099,7 @@ void intel_driver_caps_print(const struct intel_driver_caps *caps,
 void intel_device_info_init_mmio(struct drm_i915_private *dev_priv)
 {
 	struct intel_device_info *info = mkwrite_device_info(dev_priv);
+	struct intel_uncore *uncore = &dev_priv->uncore;
 	unsigned int logical_vdbox = 0;
 	unsigned int i;
 	u32 media_fuse;
@@ -1092,7 +1109,7 @@ void intel_device_info_init_mmio(struct drm_i915_private *dev_priv)
 	if (INTEL_GEN(dev_priv) < 11)
 		return;
 
-	media_fuse = ~I915_READ(GEN11_GT_VEBOX_VDBOX_DISABLE);
+	media_fuse = ~intel_uncore_read(uncore, GEN11_GT_VEBOX_VDBOX_DISABLE);
 
 	vdbox_mask = media_fuse & GEN11_GT_VDBOX_DISABLE_MASK;
 	vebox_mask = (media_fuse & GEN11_GT_VEBOX_DISABLE_MASK) >>
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
