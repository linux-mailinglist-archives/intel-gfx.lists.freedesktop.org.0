Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3F0A986A6
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 12:02:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2D5510E447;
	Wed, 23 Apr 2025 10:02:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aHKCQ5Qg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 172A710E1CC;
 Wed, 23 Apr 2025 10:02:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745402539; x=1776938539;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=o+ge37OrkcC+tb1x+rOtJ7W1r8i4Hsxik0sccAHAQdE=;
 b=aHKCQ5Qgy6rTdU5baGbhMJ02Bj9+EkQ1ET3s93BDIT2oXizTxEQs8xPo
 FQKD3SqAJ9K3JgihTJt7uiAD2NEb18GNDRbaP73Paa62fPp3V7Whk/ZZm
 RAtlrnLLOwhgV1PgOIKgP8LiKz3K4A1G4jsFqxIpFJuvgUsEhDYsWTDdZ
 E0lTiJHBvIXwg4qBxY7A5K/7i40OOmEIlX0EcO8GIc9oBehZQwvarKXS3
 pMe7awF0t70WvkEwpNfLOpkkpMJFmGaEWEn5V4Krk5cANIu1Cz1Iaf22C
 olmsA2AuwB0LR40TQrqLwDZAZBbYr2zHiGSm2uU4CkEkoqbS5OZGJrFCa Q==;
X-CSE-ConnectionGUID: CE5Eoj6xSEexeNZ01t6Kew==
X-CSE-MsgGUID: a1Oiu11eQkG1cmRALP1a5g==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="46223149"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="46223149"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 03:02:18 -0700
X-CSE-ConnectionGUID: 2ErTdD0xSxe4KfxvwDwTOQ==
X-CSE-MsgGUID: DCXxJ6OxT2+8FlJ2B8fkkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="137262522"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.175])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 03:02:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [CI 1/2] drm/i915/reg: use REG_BIT and friends to define DP registers
Date: Wed, 23 Apr 2025 13:02:12 +0300
Message-Id: <20250423100213.720585-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c |  23 +++--
 drivers/gpu/drm/i915/i915_reg.h       | 124 +++++++++-----------------
 2 files changed, 54 insertions(+), 93 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 38c7eea2414f..e0a98e6fd6d1 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -182,7 +182,7 @@ static void assert_dp_port(struct intel_dp *intel_dp, bool state)
 
 static void assert_edp_pll(struct intel_display *display, bool state)
 {
-	bool cur_state = intel_de_read(display, DP_A) & DP_PLL_ENABLE;
+	bool cur_state = intel_de_read(display, DP_A) & EDP_PLL_ENABLE;
 
 	INTEL_DISPLAY_STATE_WARN(display, cur_state != state,
 				 "eDP PLL state assertion failure (expected %s, current %s)\n",
@@ -204,12 +204,12 @@ static void ilk_edp_pll_on(struct intel_dp *intel_dp,
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
@@ -224,7 +224,7 @@ static void ilk_edp_pll_on(struct intel_dp *intel_dp,
 	if (display->platform.ironlake)
 		intel_wait_for_vblank_if_active(display, !crtc->pipe);
 
-	intel_dp->DP |= DP_PLL_ENABLE;
+	intel_dp->DP |= EDP_PLL_ENABLE;
 
 	intel_de_write(display, DP_A, intel_dp->DP);
 	intel_de_posting_read(display, DP_A);
@@ -242,7 +242,7 @@ static void ilk_edp_pll_off(struct intel_dp *intel_dp,
 
 	drm_dbg_kms(display->drm, "disabling eDP PLL\n");
 
-	intel_dp->DP &= ~DP_PLL_ENABLE;
+	intel_dp->DP &= ~EDP_PLL_ENABLE;
 
 	intel_de_write(display, DP_A, intel_dp->DP);
 	intel_de_posting_read(display, DP_A);
@@ -285,13 +285,13 @@ bool g4x_dp_port_enabled(struct intel_display *display,
 
 	/* asserts want to know the pipe even if the port is disabled */
 	if (display->platform.ivybridge && port == PORT_A)
-		*pipe = (val & DP_PIPE_SEL_MASK_IVB) >> DP_PIPE_SEL_SHIFT_IVB;
+		*pipe = REG_FIELD_GET(DP_PIPE_SEL_MASK_IVB, val);
 	else if (HAS_PCH_CPT(display) && port != PORT_A)
 		ret &= cpt_dp_port_selected(display, port, pipe);
 	else if (display->platform.cherryview)
-		*pipe = (val & DP_PIPE_SEL_MASK_CHV) >> DP_PIPE_SEL_SHIFT_CHV;
+		*pipe = REG_FIELD_GET(DP_PIPE_SEL_MASK_CHV, val);
 	else
-		*pipe = (val & DP_PIPE_SEL_MASK) >> DP_PIPE_SEL_SHIFT;
+		*pipe = REG_FIELD_GET(DP_PIPE_SEL_MASK, val);
 
 	return ret;
 }
@@ -386,13 +386,12 @@ static void intel_dp_get_config(struct intel_encoder *encoder,
 	if (display->platform.g4x && tmp & DP_COLOR_RANGE_16_235)
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
index 49beab8e324d..43a5b17e2b20 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1397,88 +1397,50 @@
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

