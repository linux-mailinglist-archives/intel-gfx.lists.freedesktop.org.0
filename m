Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F5337A2512
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 19:47:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3383310E667;
	Fri, 15 Sep 2023 17:46:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AFFB10E665;
 Fri, 15 Sep 2023 17:46:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694800011; x=1726336011;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HnAs4+tYPtj2yTEjhnY1TyocdlGPU7uRjA4XnkfD+/g=;
 b=eWXNDcRa7lU2AOUZWGWggxVbGAOHjXAgxz8WZsKGl0HlQ5YGeQrGCyl9
 iBepDh2pB771UaRf3qEyp8cDkSiT2SdE+SVjZMiSwdhPdQWmY41Oc2Y2r
 2nNZU7Bh4ywkXJJa4vQQZw51ugbaeyEcApD0R63M5PXUA201CN3kWKbGy
 at3W2gN2hwLgsYQ3wOAQDSOL+qdyJ2US/OrjBeWCcMnRQ6OdkGms1RKyL
 080HBDrulw1nLbJ0demnye6AEWf8bqVTCYE8rukDRAg+VmyBIvE3AW1+r
 muJDlQfSgGAPGMfNPl2LTPpLpYI24CIxUG8mm4pl3aa5C1OI6kEwSW9FJ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="445779268"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="445779268"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 10:46:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="868818262"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="868818262"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 10:46:50 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Sep 2023 10:46:32 -0700
Message-Id: <20230915174651.1928176-12-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230915174651.1928176-1-lucas.demarchi@intel.com>
References: <20230915174651.1928176-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 11/30] drm/i915/display: Rename intel_dp->DP
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Now that DDI doesn't use that field anymore and it's restricted to
display/g4x_dp.c, rename it to follow the correspondent output_reg
field. This should avoid misuses of the old DP field, which would not
end up having the desired effect, and also make it clear what is
stashed in this variable.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c         | 118 +++++++++---------
 .../drm/i915/display/intel_display_types.h    |   2 +-
 2 files changed, 60 insertions(+), 60 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index e8ee0a08947e..b9e2ceb90806 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -117,27 +117,27 @@ static void intel_dp_prepare(struct intel_encoder *encoder,
 	/* Preserve the BIOS-computed detected bit. This is
 	 * supposed to be read-only.
 	 */
-	intel_dp->DP = intel_de_read(dev_priv, intel_dp->output_reg) & DP_DETECTED;
+	intel_dp->output_reg_bits = intel_de_read(dev_priv, intel_dp->output_reg) & DP_DETECTED;
 
 	/* Handle DP bits in common between all three register formats */
-	intel_dp->DP |= DP_VOLTAGE_0_4 | DP_PRE_EMPHASIS_0;
-	intel_dp->DP |= DP_PORT_WIDTH(pipe_config->lane_count);
+	intel_dp->output_reg_bits |= DP_VOLTAGE_0_4 | DP_PRE_EMPHASIS_0;
+	intel_dp->output_reg_bits |= DP_PORT_WIDTH(pipe_config->lane_count);
 
 	/* Split out the IBX/CPU vs CPT settings */
 
 	if (IS_IVYBRIDGE(dev_priv) && port == PORT_A) {
 		if (adjusted_mode->flags & DRM_MODE_FLAG_PHSYNC)
-			intel_dp->DP |= DP_SYNC_HS_HIGH;
+			intel_dp->output_reg_bits |= DP_SYNC_HS_HIGH;
 		if (adjusted_mode->flags & DRM_MODE_FLAG_PVSYNC)
-			intel_dp->DP |= DP_SYNC_VS_HIGH;
-		intel_dp->DP |= DP_LINK_TRAIN_OFF_CPT;
+			intel_dp->output_reg_bits |= DP_SYNC_VS_HIGH;
+		intel_dp->output_reg_bits |= DP_LINK_TRAIN_OFF_CPT;
 
 		if (drm_dp_enhanced_frame_cap(intel_dp->dpcd))
-			intel_dp->DP |= DP_ENHANCED_FRAMING;
+			intel_dp->output_reg_bits |= DP_ENHANCED_FRAMING;
 
-		intel_dp->DP |= DP_PIPE_SEL_IVB(crtc->pipe);
+		intel_dp->output_reg_bits |= DP_PIPE_SEL_IVB(crtc->pipe);
 	} else if (HAS_PCH_CPT(dev_priv) && port != PORT_A) {
-		intel_dp->DP |= DP_LINK_TRAIN_OFF_CPT;
+		intel_dp->output_reg_bits |= DP_LINK_TRAIN_OFF_CPT;
 
 		intel_de_rmw(dev_priv, TRANS_DP_CTL(crtc->pipe),
 			     TRANS_DP_ENH_FRAMING,
@@ -145,21 +145,21 @@ static void intel_dp_prepare(struct intel_encoder *encoder,
 			     TRANS_DP_ENH_FRAMING : 0);
 	} else {
 		if (IS_G4X(dev_priv) && pipe_config->limited_color_range)
-			intel_dp->DP |= DP_COLOR_RANGE_16_235;
+			intel_dp->output_reg_bits |= DP_COLOR_RANGE_16_235;
 
 		if (adjusted_mode->flags & DRM_MODE_FLAG_PHSYNC)
-			intel_dp->DP |= DP_SYNC_HS_HIGH;
+			intel_dp->output_reg_bits |= DP_SYNC_HS_HIGH;
 		if (adjusted_mode->flags & DRM_MODE_FLAG_PVSYNC)
-			intel_dp->DP |= DP_SYNC_VS_HIGH;
-		intel_dp->DP |= DP_LINK_TRAIN_OFF;
+			intel_dp->output_reg_bits |= DP_SYNC_VS_HIGH;
+		intel_dp->output_reg_bits |= DP_LINK_TRAIN_OFF;
 
 		if (pipe_config->enhanced_framing)
-			intel_dp->DP |= DP_ENHANCED_FRAMING;
+			intel_dp->output_reg_bits |= DP_ENHANCED_FRAMING;
 
 		if (IS_CHERRYVIEW(dev_priv))
-			intel_dp->DP |= DP_PIPE_SEL_CHV(crtc->pipe);
+			intel_dp->output_reg_bits |= DP_PIPE_SEL_CHV(crtc->pipe);
 		else
-			intel_dp->DP |= DP_PIPE_SEL(crtc->pipe);
+			intel_dp->output_reg_bits |= DP_PIPE_SEL(crtc->pipe);
 	}
 }
 
@@ -200,14 +200,14 @@ static void ilk_edp_pll_on(struct intel_dp *intel_dp,
 	drm_dbg_kms(&dev_priv->drm, "enabling eDP PLL for clock %d\n",
 		    pipe_config->port_clock);
 
-	intel_dp->DP &= ~DP_PLL_FREQ_MASK;
+	intel_dp->output_reg_bits &= ~DP_PLL_FREQ_MASK;
 
 	if (pipe_config->port_clock == 162000)
-		intel_dp->DP |= DP_PLL_FREQ_162MHZ;
+		intel_dp->output_reg_bits |= DP_PLL_FREQ_162MHZ;
 	else
-		intel_dp->DP |= DP_PLL_FREQ_270MHZ;
+		intel_dp->output_reg_bits |= DP_PLL_FREQ_270MHZ;
 
-	intel_de_write(dev_priv, DP_A, intel_dp->DP);
+	intel_de_write(dev_priv, DP_A, intel_dp->output_reg_bits);
 	intel_de_posting_read(dev_priv, DP_A);
 	udelay(500);
 
@@ -220,9 +220,9 @@ static void ilk_edp_pll_on(struct intel_dp *intel_dp,
 	if (IS_IRONLAKE(dev_priv))
 		intel_wait_for_vblank_if_active(dev_priv, !crtc->pipe);
 
-	intel_dp->DP |= DP_PLL_ENABLE;
+	intel_dp->output_reg_bits |= DP_PLL_ENABLE;
 
-	intel_de_write(dev_priv, DP_A, intel_dp->DP);
+	intel_de_write(dev_priv, DP_A, intel_dp->output_reg_bits);
 	intel_de_posting_read(dev_priv, DP_A);
 	udelay(200);
 }
@@ -239,9 +239,9 @@ static void ilk_edp_pll_off(struct intel_dp *intel_dp,
 
 	drm_dbg_kms(&dev_priv->drm, "disabling eDP PLL\n");
 
-	intel_dp->DP &= ~DP_PLL_ENABLE;
+	intel_dp->output_reg_bits &= ~DP_PLL_ENABLE;
 
-	intel_de_write(dev_priv, DP_A, intel_dp->DP);
+	intel_de_write(dev_priv, DP_A, intel_dp->output_reg_bits);
 	intel_de_posting_read(dev_priv, DP_A);
 	udelay(200);
 }
@@ -423,17 +423,17 @@ intel_dp_link_down(struct intel_encoder *encoder,
 
 	if ((IS_IVYBRIDGE(dev_priv) && port == PORT_A) ||
 	    (HAS_PCH_CPT(dev_priv) && port != PORT_A)) {
-		intel_dp->DP &= ~DP_LINK_TRAIN_MASK_CPT;
-		intel_dp->DP |= DP_LINK_TRAIN_PAT_IDLE_CPT;
+		intel_dp->output_reg_bits &= ~DP_LINK_TRAIN_MASK_CPT;
+		intel_dp->output_reg_bits |= DP_LINK_TRAIN_PAT_IDLE_CPT;
 	} else {
-		intel_dp->DP &= ~DP_LINK_TRAIN_MASK;
-		intel_dp->DP |= DP_LINK_TRAIN_PAT_IDLE;
+		intel_dp->output_reg_bits &= ~DP_LINK_TRAIN_MASK;
+		intel_dp->output_reg_bits |= DP_LINK_TRAIN_PAT_IDLE;
 	}
-	intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->DP);
+	intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->output_reg_bits);
 	intel_de_posting_read(dev_priv, intel_dp->output_reg);
 
-	intel_dp->DP &= ~(DP_PORT_EN | DP_AUDIO_OUTPUT_ENABLE);
-	intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->DP);
+	intel_dp->output_reg_bits &= ~(DP_PORT_EN | DP_AUDIO_OUTPUT_ENABLE);
+	intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->output_reg_bits);
 	intel_de_posting_read(dev_priv, intel_dp->output_reg);
 
 	/*
@@ -450,14 +450,14 @@ intel_dp_link_down(struct intel_encoder *encoder,
 		intel_set_pch_fifo_underrun_reporting(dev_priv, PIPE_A, false);
 
 		/* always enable with pattern 1 (as per spec) */
-		intel_dp->DP &= ~(DP_PIPE_SEL_MASK | DP_LINK_TRAIN_MASK);
-		intel_dp->DP |= DP_PORT_EN | DP_PIPE_SEL(PIPE_A) |
+		intel_dp->output_reg_bits &= ~(DP_PIPE_SEL_MASK | DP_LINK_TRAIN_MASK);
+		intel_dp->output_reg_bits |= DP_PORT_EN | DP_PIPE_SEL(PIPE_A) |
 			DP_LINK_TRAIN_PAT_1;
-		intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->DP);
+		intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->output_reg_bits);
 		intel_de_posting_read(dev_priv, intel_dp->output_reg);
 
-		intel_dp->DP &= ~DP_PORT_EN;
-		intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->DP);
+		intel_dp->output_reg_bits &= ~DP_PORT_EN;
+		intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->output_reg_bits);
 		intel_de_posting_read(dev_priv, intel_dp->output_reg);
 
 		intel_wait_for_vblank_if_active(dev_priv, PIPE_A);
@@ -565,24 +565,24 @@ cpt_set_link_train(struct intel_dp *intel_dp,
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
-	intel_dp->DP &= ~DP_LINK_TRAIN_MASK_CPT;
+	intel_dp->output_reg_bits &= ~DP_LINK_TRAIN_MASK_CPT;
 
 	switch (intel_dp_training_pattern_symbol(dp_train_pat)) {
 	case DP_TRAINING_PATTERN_DISABLE:
-		intel_dp->DP |= DP_LINK_TRAIN_OFF_CPT;
+		intel_dp->output_reg_bits |= DP_LINK_TRAIN_OFF_CPT;
 		break;
 	case DP_TRAINING_PATTERN_1:
-		intel_dp->DP |= DP_LINK_TRAIN_PAT_1_CPT;
+		intel_dp->output_reg_bits |= DP_LINK_TRAIN_PAT_1_CPT;
 		break;
 	case DP_TRAINING_PATTERN_2:
-		intel_dp->DP |= DP_LINK_TRAIN_PAT_2_CPT;
+		intel_dp->output_reg_bits |= DP_LINK_TRAIN_PAT_2_CPT;
 		break;
 	default:
 		MISSING_CASE(intel_dp_training_pattern_symbol(dp_train_pat));
 		return;
 	}
 
-	intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->DP);
+	intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->output_reg_bits);
 	intel_de_posting_read(dev_priv, intel_dp->output_reg);
 }
 
@@ -593,24 +593,24 @@ g4x_set_link_train(struct intel_dp *intel_dp,
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
-	intel_dp->DP &= ~DP_LINK_TRAIN_MASK;
+	intel_dp->output_reg_bits &= ~DP_LINK_TRAIN_MASK;
 
 	switch (intel_dp_training_pattern_symbol(dp_train_pat)) {
 	case DP_TRAINING_PATTERN_DISABLE:
-		intel_dp->DP |= DP_LINK_TRAIN_OFF;
+		intel_dp->output_reg_bits |= DP_LINK_TRAIN_OFF;
 		break;
 	case DP_TRAINING_PATTERN_1:
-		intel_dp->DP |= DP_LINK_TRAIN_PAT_1;
+		intel_dp->output_reg_bits |= DP_LINK_TRAIN_PAT_1;
 		break;
 	case DP_TRAINING_PATTERN_2:
-		intel_dp->DP |= DP_LINK_TRAIN_PAT_2;
+		intel_dp->output_reg_bits |= DP_LINK_TRAIN_PAT_2;
 		break;
 	default:
 		MISSING_CASE(intel_dp_training_pattern_symbol(dp_train_pat));
 		return;
 	}
 
-	intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->DP);
+	intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->output_reg_bits);
 	intel_de_posting_read(dev_priv, intel_dp->output_reg);
 }
 
@@ -630,11 +630,11 @@ static void intel_dp_enable_port(struct intel_dp *intel_dp,
 	 * write to enable the port. Otherwise link training will
 	 * fail when the power sequencer is freshly used for this port.
 	 */
-	intel_dp->DP |= DP_PORT_EN;
+	intel_dp->output_reg_bits |= DP_PORT_EN;
 	if (crtc_state->has_audio)
-		intel_dp->DP |= DP_AUDIO_OUTPUT_ENABLE;
+		intel_dp->output_reg_bits |= DP_AUDIO_OUTPUT_ENABLE;
 
-	intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->DP);
+	intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->output_reg_bits);
 	intel_de_posting_read(dev_priv, intel_dp->output_reg);
 }
 
@@ -1007,10 +1007,10 @@ g4x_set_signal_levels(struct intel_encoder *encoder,
 	drm_dbg_kms(&dev_priv->drm, "Using signal levels %08x\n",
 		    signal_levels);
 
-	intel_dp->DP &= ~(DP_VOLTAGE_MASK | DP_PRE_EMPHASIS_MASK);
-	intel_dp->DP |= signal_levels;
+	intel_dp->output_reg_bits &= ~(DP_VOLTAGE_MASK | DP_PRE_EMPHASIS_MASK);
+	intel_dp->output_reg_bits |= signal_levels;
 
-	intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->DP);
+	intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->output_reg_bits);
 	intel_de_posting_read(dev_priv, intel_dp->output_reg);
 }
 
@@ -1055,10 +1055,10 @@ snb_cpu_edp_set_signal_levels(struct intel_encoder *encoder,
 	drm_dbg_kms(&dev_priv->drm, "Using signal levels %08x\n",
 		    signal_levels);
 
-	intel_dp->DP &= ~EDP_LINK_TRAIN_VOL_EMP_MASK_SNB;
-	intel_dp->DP |= signal_levels;
+	intel_dp->output_reg_bits &= ~EDP_LINK_TRAIN_VOL_EMP_MASK_SNB;
+	intel_dp->output_reg_bits |= signal_levels;
 
-	intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->DP);
+	intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->output_reg_bits);
 	intel_de_posting_read(dev_priv, intel_dp->output_reg);
 }
 
@@ -1107,10 +1107,10 @@ ivb_cpu_edp_set_signal_levels(struct intel_encoder *encoder,
 	drm_dbg_kms(&dev_priv->drm, "Using signal levels %08x\n",
 		    signal_levels);
 
-	intel_dp->DP &= ~EDP_LINK_TRAIN_VOL_EMP_MASK_IVB;
-	intel_dp->DP |= signal_levels;
+	intel_dp->output_reg_bits &= ~EDP_LINK_TRAIN_VOL_EMP_MASK_IVB;
+	intel_dp->output_reg_bits |= signal_levels;
 
-	intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->DP);
+	intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->output_reg_bits);
 	intel_de_posting_read(dev_priv, intel_dp->output_reg);
 }
 
@@ -1237,7 +1237,7 @@ static void intel_dp_encoder_reset(struct drm_encoder *encoder)
 	struct drm_i915_private *dev_priv = to_i915(encoder->dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(to_intel_encoder(encoder));
 
-	intel_dp->DP = intel_de_read(dev_priv, intel_dp->output_reg);
+	intel_dp->output_reg_bits = intel_de_read(dev_priv, intel_dp->output_reg);
 
 	intel_dp->reset_link_params = true;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 3c54fe2bfddd..37cd0e70e3aa 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1701,7 +1701,7 @@ struct intel_psr {
 
 struct intel_dp {
 	i915_reg_t output_reg;
-	u32 DP;
+	u32 output_reg_bits;
 	int link_rate;
 	u8 lane_count;
 	u8 sink_count;
-- 
2.40.1

