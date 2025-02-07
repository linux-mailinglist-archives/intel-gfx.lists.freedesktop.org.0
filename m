Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF2BA2C3BA
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2025 14:35:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 091D710EAF9;
	Fri,  7 Feb 2025 13:35:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XfTJlwwr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A96610E325;
 Fri,  7 Feb 2025 13:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738935335; x=1770471335;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IVhOMD9uf++CJQYE8D4UV3tAUXsYBNGK5XflcEwtR/s=;
 b=XfTJlwwrf2DktqOnl18ehFN+cRhJGQSV7pf1+V1VDJcfFSoDNx07ZqTD
 ATZvM3TyutP31z63xVf9+Yc9FDdW1qN3q1Qz1Aycq6cVutCZdBmw5Iwk+
 janwddmdy3WC3VEnnsocUdWkFKxoemov/9HyuVM0tWP00RMOzi83VOcFU
 mNPEYbClJWNL0kSgbUKh0A/gkqAvZvYArmBnTQTG0B9J5jzgwig0qJUfC
 g7vDZtQt/wH8dC1Kv+4NpF7LYK4S03Y11PaaaD5GkOKRpkwZMISc1HPCB
 0NtuAvpK62HYYX5HOMM2NcLLKPsjCCxRoaL9Hs8VImLjglTcOxnyUskn+ w==;
X-CSE-ConnectionGUID: ZKO/N17ESVqEf3TfwLD4+A==
X-CSE-MsgGUID: rpDm4MY2TAiqPBEu2VBt6Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="43496351"
X-IronPort-AV: E=Sophos;i="6.13,267,1732608000"; d="scan'208";a="43496351"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 05:35:35 -0800
X-CSE-ConnectionGUID: kE9R5+q4TdqFdBpit19Fzw==
X-CSE-MsgGUID: md0D65hVRVWTqYcqxRRSgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116728125"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 05:35:32 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 1/3] drm/i915/reg: use REG_BIT and friends to define DP
 registers
Date: Fri,  7 Feb 2025 15:35:20 +0200
Message-Id: <719f1ceb87262ae49bb20209d3928da343126226.1738935286.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1738935286.git.jani.nikula@intel.com>
References: <cover.1738935286.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Define the DP register contents using the REG_BIT, REG_GENMASK,
etc. macros. Ditch the unhelpful comments. Rename eDP related register
content macros to have EDP_ prefix.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c |  23 +++--
 drivers/gpu/drm/i915/i915_reg.h       | 124 +++++++++-----------------
 2 files changed, 54 insertions(+), 93 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 56353377466c..a82102d3a167 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -183,7 +183,7 @@ static void assert_dp_port(struct intel_dp *intel_dp, bool state)
 static void assert_edp_pll(struct drm_i915_private *dev_priv, bool state)
 {
 	struct intel_display *display = &dev_priv->display;
-	bool cur_state = intel_de_read(display, DP_A) & DP_PLL_ENABLE;
+	bool cur_state = intel_de_read(display, DP_A) & EDP_PLL_ENABLE;
 
 	INTEL_DISPLAY_STATE_WARN(display, cur_state != state,
 				 "eDP PLL state assertion failure (expected %s, current %s)\n",
@@ -206,12 +206,12 @@ static void ilk_edp_pll_on(struct intel_dp *intel_dp,
 	drm_dbg_kms(display->drm, "enabling eDP PLL for clock %d\n",
 		    pipe_config->port_clock);
 
-	intel_dp->DP &= ~DP_PLL_FREQ_MASK;
+	intel_dp->DP &= ~EDP_PLL_FREQ_MASK;
 
 	if (pipe_config->port_clock == 162000)
-		intel_dp->DP |= DP_PLL_FREQ_162MHZ;
+		intel_dp->DP |= EDP_PLL_FREQ_162MHZ;
 	else
-		intel_dp->DP |= DP_PLL_FREQ_270MHZ;
+		intel_dp->DP |= EDP_PLL_FREQ_270MHZ;
 
 	intel_de_write(display, DP_A, intel_dp->DP);
 	intel_de_posting_read(display, DP_A);
@@ -226,7 +226,7 @@ static void ilk_edp_pll_on(struct intel_dp *intel_dp,
 	if (IS_IRONLAKE(dev_priv))
 		intel_wait_for_vblank_if_active(dev_priv, !crtc->pipe);
 
-	intel_dp->DP |= DP_PLL_ENABLE;
+	intel_dp->DP |= EDP_PLL_ENABLE;
 
 	intel_de_write(display, DP_A, intel_dp->DP);
 	intel_de_posting_read(display, DP_A);
@@ -246,7 +246,7 @@ static void ilk_edp_pll_off(struct intel_dp *intel_dp,
 
 	drm_dbg_kms(display->drm, "disabling eDP PLL\n");
 
-	intel_dp->DP &= ~DP_PLL_ENABLE;
+	intel_dp->DP &= ~EDP_PLL_ENABLE;
 
 	intel_de_write(display, DP_A, intel_dp->DP);
 	intel_de_posting_read(display, DP_A);
@@ -291,13 +291,13 @@ bool g4x_dp_port_enabled(struct drm_i915_private *dev_priv,
 
 	/* asserts want to know the pipe even if the port is disabled */
 	if (IS_IVYBRIDGE(dev_priv) && port == PORT_A)
-		*pipe = (val & DP_PIPE_SEL_MASK_IVB) >> DP_PIPE_SEL_SHIFT_IVB;
+		*pipe = REG_FIELD_GET(DP_PIPE_SEL_MASK_IVB, val);
 	else if (HAS_PCH_CPT(dev_priv) && port != PORT_A)
 		ret &= cpt_dp_port_selected(dev_priv, port, pipe);
 	else if (IS_CHERRYVIEW(dev_priv))
-		*pipe = (val & DP_PIPE_SEL_MASK_CHV) >> DP_PIPE_SEL_SHIFT_CHV;
+		*pipe = REG_FIELD_GET(DP_PIPE_SEL_MASK_CHV, val);
 	else
-		*pipe = (val & DP_PIPE_SEL_MASK) >> DP_PIPE_SEL_SHIFT;
+		*pipe = REG_FIELD_GET(DP_PIPE_SEL_MASK, val);
 
 	return ret;
 }
@@ -393,13 +393,12 @@ static void intel_dp_get_config(struct intel_encoder *encoder,
 	if (IS_G4X(dev_priv) && tmp & DP_COLOR_RANGE_16_235)
 		pipe_config->limited_color_range = true;
 
-	pipe_config->lane_count =
-		((tmp & DP_PORT_WIDTH_MASK) >> DP_PORT_WIDTH_SHIFT) + 1;
+	pipe_config->lane_count = REG_FIELD_GET(DP_PORT_WIDTH_MASK, tmp) + 1;
 
 	g4x_dp_get_m_n(pipe_config);
 
 	if (port == PORT_A) {
-		if ((intel_de_read(display, DP_A) & DP_PLL_FREQ_MASK) == DP_PLL_FREQ_162MHZ)
+		if ((intel_de_read(display, DP_A) & EDP_PLL_FREQ_MASK) == EDP_PLL_FREQ_162MHZ)
 			pipe_config->port_clock = 162000;
 		else
 			pipe_config->port_clock = 270000;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 670cd2371f94..da658c3591f0 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1394,88 +1394,50 @@
 #define VLV_DP_B		_MMIO(VLV_DISPLAY_BASE + 0x64100)
 #define VLV_DP_C		_MMIO(VLV_DISPLAY_BASE + 0x64200)
 #define CHV_DP_D		_MMIO(VLV_DISPLAY_BASE + 0x64300)
-#define   DP_PORT_EN			(1 << 31)
-#define   DP_PIPE_SEL_SHIFT		30
-#define   DP_PIPE_SEL_MASK		(1 << 30)
-#define   DP_PIPE_SEL(pipe)		((pipe) << 30)
-#define   DP_PIPE_SEL_SHIFT_IVB		29
-#define   DP_PIPE_SEL_MASK_IVB		(3 << 29)
-#define   DP_PIPE_SEL_IVB(pipe)		((pipe) << 29)
+#define   DP_PORT_EN			REG_BIT(31)
+#define   DP_PIPE_SEL_MASK		REG_GENMASK(30, 30)
+#define   DP_PIPE_SEL(pipe)		REG_FIELD_PREP(DP_PIPE_SEL_MASK, (pipe))
+#define   DP_PIPE_SEL_MASK_IVB		REG_GENMASK(30, 29)
+#define   DP_PIPE_SEL_IVB(pipe)		REG_FIELD_PREP(DP_PIPE_SEL_MASK_IVB, (pipe))
 #define   DP_PIPE_SEL_SHIFT_CHV		16
-#define   DP_PIPE_SEL_MASK_CHV		(3 << 16)
-#define   DP_PIPE_SEL_CHV(pipe)		((pipe) << 16)
-
-/* Link training mode - select a suitable mode for each stage */
-#define   DP_LINK_TRAIN_PAT_1		(0 << 28)
-#define   DP_LINK_TRAIN_PAT_2		(1 << 28)
-#define   DP_LINK_TRAIN_PAT_IDLE	(2 << 28)
-#define   DP_LINK_TRAIN_OFF		(3 << 28)
-#define   DP_LINK_TRAIN_MASK		(3 << 28)
-#define   DP_LINK_TRAIN_SHIFT		28
-
-/* CPT Link training mode */
-#define   DP_LINK_TRAIN_PAT_1_CPT	(0 << 8)
-#define   DP_LINK_TRAIN_PAT_2_CPT	(1 << 8)
-#define   DP_LINK_TRAIN_PAT_IDLE_CPT	(2 << 8)
-#define   DP_LINK_TRAIN_OFF_CPT		(3 << 8)
-#define   DP_LINK_TRAIN_MASK_CPT	(7 << 8)
-#define   DP_LINK_TRAIN_SHIFT_CPT	8
-
-/* Signal voltages. These are mostly controlled by the other end */
-#define   DP_VOLTAGE_0_4		(0 << 25)
-#define   DP_VOLTAGE_0_6		(1 << 25)
-#define   DP_VOLTAGE_0_8		(2 << 25)
-#define   DP_VOLTAGE_1_2		(3 << 25)
-#define   DP_VOLTAGE_MASK		(7 << 25)
-#define   DP_VOLTAGE_SHIFT		25
-
-/* Signal pre-emphasis levels, like voltages, the other end tells us what
- * they want
- */
-#define   DP_PRE_EMPHASIS_0		(0 << 22)
-#define   DP_PRE_EMPHASIS_3_5		(1 << 22)
-#define   DP_PRE_EMPHASIS_6		(2 << 22)
-#define   DP_PRE_EMPHASIS_9_5		(3 << 22)
-#define   DP_PRE_EMPHASIS_MASK		(7 << 22)
-#define   DP_PRE_EMPHASIS_SHIFT		22
-
-/* How many wires to use. I guess 3 was too hard */
-#define   DP_PORT_WIDTH(width)		(((width) - 1) << 19)
-#define   DP_PORT_WIDTH_MASK		(7 << 19)
-#define   DP_PORT_WIDTH_SHIFT		19
-
-/* Mystic DPCD version 1.1 special mode */
-#define   DP_ENHANCED_FRAMING		(1 << 18)
-
-/* eDP */
-#define   DP_PLL_FREQ_270MHZ		(0 << 16)
-#define   DP_PLL_FREQ_162MHZ		(1 << 16)
-#define   DP_PLL_FREQ_MASK		(3 << 16)
-
-/* locked once port is enabled */
-#define   DP_PORT_REVERSAL		(1 << 15)
-
-/* eDP */
-#define   DP_PLL_ENABLE			(1 << 14)
-
-/* sends the clock on lane 15 of the PEG for debug */
-#define   DP_CLOCK_OUTPUT_ENABLE	(1 << 13)
-
-#define   DP_SCRAMBLING_DISABLE		(1 << 12)
-#define   DP_SCRAMBLING_DISABLE_IRONLAKE	(1 << 7)
-
-/* limit RGB values to avoid confusing TVs */
-#define   DP_COLOR_RANGE_16_235		(1 << 8)
-
-/* Turn on the audio link */
-#define   DP_AUDIO_OUTPUT_ENABLE	(1 << 6)
-
-/* vs and hs sync polarity */
-#define   DP_SYNC_VS_HIGH		(1 << 4)
-#define   DP_SYNC_HS_HIGH		(1 << 3)
-
-/* A fantasy */
-#define   DP_DETECTED			(1 << 2)
+#define   DP_PIPE_SEL_MASK_CHV		REG_GENMASK(17, 16)
+#define   DP_PIPE_SEL_CHV(pipe)		REG_FIELD_PREP(DP_PIPE_SEL_MASK_CHV, (pipe))
+#define   DP_LINK_TRAIN_MASK		REG_GENMASK(29, 28)
+#define   DP_LINK_TRAIN_PAT_1		REG_FIELD_PREP(DP_LINK_TRAIN_MASK, 0)
+#define   DP_LINK_TRAIN_PAT_2		REG_FIELD_PREP(DP_LINK_TRAIN_MASK, 1)
+#define   DP_LINK_TRAIN_PAT_IDLE	REG_FIELD_PREP(DP_LINK_TRAIN_MASK, 2)
+#define   DP_LINK_TRAIN_OFF		REG_FIELD_PREP(DP_LINK_TRAIN_MASK, 3)
+#define   DP_LINK_TRAIN_MASK_CPT	REG_GENMASK(10, 8)
+#define   DP_LINK_TRAIN_PAT_1_CPT	REG_FIELD_PREP(DP_LINK_TRAIN_MASK_CPT, 0)
+#define   DP_LINK_TRAIN_PAT_2_CPT	REG_FIELD_PREP(DP_LINK_TRAIN_MASK_CPT, 1)
+#define   DP_LINK_TRAIN_PAT_IDLE_CPT	REG_FIELD_PREP(DP_LINK_TRAIN_MASK_CPT, 2)
+#define   DP_LINK_TRAIN_OFF_CPT		REG_FIELD_PREP(DP_LINK_TRAIN_MASK_CPT, 3)
+#define   DP_VOLTAGE_MASK		REG_GENMASK(27, 25)
+#define   DP_VOLTAGE_0_4		REG_FIELD_PREP(DP_VOLTAGE_MASK, 0)
+#define   DP_VOLTAGE_0_6		REG_FIELD_PREP(DP_VOLTAGE_MASK, 1)
+#define   DP_VOLTAGE_0_8		REG_FIELD_PREP(DP_VOLTAGE_MASK, 2)
+#define   DP_VOLTAGE_1_2		REG_FIELD_PREP(DP_VOLTAGE_MASK, 3)
+#define   DP_PRE_EMPHASIS_MASK		REG_GENMASK(24, 22)
+#define   DP_PRE_EMPHASIS_0		REG_FIELD_PREP(DP_PRE_EMPHASIS_MASK, 0)
+#define   DP_PRE_EMPHASIS_3_5		REG_FIELD_PREP(DP_PRE_EMPHASIS_MASK, 1)
+#define   DP_PRE_EMPHASIS_6		REG_FIELD_PREP(DP_PRE_EMPHASIS_MASK, 2)
+#define   DP_PRE_EMPHASIS_9_5		REG_FIELD_PREP(DP_PRE_EMPHASIS_MASK, 3)
+#define   DP_PORT_WIDTH_MASK		REG_GENMASK(21, 19)
+#define   DP_PORT_WIDTH(width)		REG_FIELD_PREP(DP_PORT_WIDTH_MASK, (width) - 1)
+#define   DP_ENHANCED_FRAMING		REG_BIT(18)
+#define   EDP_PLL_FREQ_MASK		REG_GENMASK(17, 16)
+#define   EDP_PLL_FREQ_270MHZ		REG_FIELD_PREP(EDP_PLL_FREQ_MASK, 0)
+#define   EDP_PLL_FREQ_162MHZ		REG_FIELD_PREP(EDP_PLL_FREQ_MASK, 1)
+#define   DP_PORT_REVERSAL		REG_BIT(15)
+#define   EDP_PLL_ENABLE		REG_BIT(14)
+#define   DP_CLOCK_OUTPUT_ENABLE	REG_BIT(13)
+#define   DP_SCRAMBLING_DISABLE		REG_BIT(12)
+#define   DP_SCRAMBLING_DISABLE_ILK	REG_BIT(7)
+#define   DP_COLOR_RANGE_16_235		REG_BIT(8)
+#define   DP_AUDIO_OUTPUT_ENABLE	REG_BIT(6)
+#define   DP_SYNC_VS_HIGH		REG_BIT(4)
+#define   DP_SYNC_HS_HIGH		REG_BIT(3)
+#define   DP_DETECTED			REG_BIT(2)
 
 /*
  * Computing GMCH M and N values for the Display Port link
-- 
2.39.5

