Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 488913377E6
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 16:34:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 345DF6EE0A;
	Thu, 11 Mar 2021 15:34:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFBE06EDDE
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 15:34:32 +0000 (UTC)
IronPort-SDR: 40hpIxZH6XphPU8k/xHed/LTj2DV+W+5VHYNzx1qtLH6qgUpZ9kYN+fUhOe2qdGgro8BMJRWGH
 aMydyN9yFc6g==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="175797259"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="175797259"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 07:34:32 -0800
IronPort-SDR: lamqpb2cCSpR0LqDQ3z3E5BHxKMSXd7NCeBDFoNoVlSJlTFXfUkJ6HIRlPoaKtRzOPaXxiXmEX
 Kj4EEe43FSqA==
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="589251707"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 07:34:32 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 07:34:15 -0800
Message-Id: <20210311153415.3024607-24-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210311153415.3024607-1-matthew.d.roper@intel.com>
References: <20210311153415.3024607-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 23/23] drm/i915/xelpd: Add VRR guardband for
 VRR CTL
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

From: Manasi Navare <manasi.d.navare@intel.com>

On XE_LPD, VRR CTL register adds a new VRR Guardband bitfield
replacing the pipeline full and deprecating the pipeline override
bit.

This patch adds this corresponding bitfield in the register defs,
crtc state vrr structure and populates this in vrr compute
config and vrr enable functions. It also adds the corresponding
HW state readout for this field.

Cc: Aditya Swarup <aditya.swarup@intel.com>
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  8 ++-
 .../drm/i915/display/intel_display_types.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_vrr.c      | 56 +++++++++++++------
 drivers/gpu/drm/i915/i915_drv.h               |  3 +
 drivers/gpu/drm/i915/i915_reg.h               |  2 +
 5 files changed, 51 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 926707fd00e3..d032f1782bcb 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8127,10 +8127,11 @@ static void intel_dump_pipe_config(const struct intel_crtc_state *pipe_config,
 	    intel_hdmi_infoframe_enable(DP_SDP_VSC))
 		intel_dump_dp_vsc_sdp(dev_priv, &pipe_config->infoframes.vsc);
 
-	drm_dbg_kms(&dev_priv->drm, "vrr: %s, vmin: %d, vmax: %d, pipeline full: %d, flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
+	drm_dbg_kms(&dev_priv->drm, "vrr: %s, vmin: %d, vmax: %d, pipeline full: %d, guardband: %d flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
 		    yesno(pipe_config->vrr.enable),
 		    pipe_config->vrr.vmin, pipe_config->vrr.vmax,
-		    pipe_config->vrr.pipeline_full, pipe_config->vrr.flipline,
+		    pipe_config->vrr.pipeline_full, pipe_config->vrr.guardband,
+		    pipe_config->vrr.flipline,
 		    intel_vrr_vmin_vblank_start(pipe_config),
 		    intel_vrr_vmax_vblank_start(pipe_config));
 
@@ -9136,6 +9137,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_I(vrr.vmax);
 	PIPE_CONF_CHECK_I(vrr.flipline);
 	PIPE_CONF_CHECK_I(vrr.pipeline_full);
+	PIPE_CONF_CHECK_I(vrr.guardband);
 
 #undef PIPE_CONF_CHECK_X
 #undef PIPE_CONF_CHECK_I
@@ -12608,6 +12610,8 @@ int intel_modeset_init_noirq(struct drm_i915_private *i915)
 
 	i915->framestart_delay = 1; /* 1-4 */
 
+	i915->window2_delay = 0; /* No DSB so no window2 delay */
+
 	intel_mode_config_init(i915);
 
 	ret = intel_cdclk_init(i915);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index f159dce0f744..b2257213b8e8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1171,7 +1171,7 @@ struct intel_crtc_state {
 	struct {
 		bool enable;
 		u8 pipeline_full;
-		u16 flipline, vmin, vmax;
+		u16 flipline, vmin, vmax, guardband;
 	} vrr;
 
 	/* Stream Splitter for eDP MSO */
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index a9c2b2fd9252..7013163f4978 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -67,7 +67,10 @@ static int intel_vrr_vblank_exit_length(const struct intel_crtc_state *crtc_stat
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
 	/* The hw imposes the extra scanline before frame start */
-	return crtc_state->vrr.pipeline_full + i915->framestart_delay + 1;
+	if (DISPLAY_VER(i915) >= 13)
+		return crtc_state->vrr.guardband + i915->framestart_delay + 1;
+	else
+		return crtc_state->vrr.pipeline_full + i915->framestart_delay + 1;
 }
 
 int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state)
@@ -85,6 +88,8 @@ void
 intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			 struct drm_connector_state *conn_state)
 {
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
@@ -123,17 +128,26 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	crtc_state->vrr.flipline = crtc_state->vrr.vmin + 1;
 
 	/*
-	 * FIXME: s/4/framestart_delay+1/ to get consistent
-	 * earliest/latest points for register latching regardless
-	 * of the framestart_delay used?
-	 *
-	 * FIXME: this really needs the extra scanline to provide consistent
-	 * behaviour for all framestart_delay values. Otherwise with
-	 * framestart_delay==3 we will end up extending the min vblank by
-	 * one extra line.
+	 * For XE_LPD+, we use guardband and pipeline override
+	 * is deprecated.
 	 */
-	crtc_state->vrr.pipeline_full =
-		min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay - 4 - 1);
+	if (DISPLAY_VER(i915) >= 13)
+		crtc_state->vrr.guardband =
+			crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay -
+			i915->window2_delay;
+	else
+		/*
+		 * FIXME: s/4/framestart_delay+1/ to get consistent
+		 * earliest/latest points for register latching regardless
+		 * of the framestart_delay used?
+		 *
+		 * FIXME: this really needs the extra scanline to provide consistent
+		 * behaviour for all framestart_delay values. Otherwise with
+		 * framestart_delay==3 we will end up extending the min vblank by
+		 * one extra line.
+		 */
+		crtc_state->vrr.pipeline_full =
+			min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay - 4 - 1);
 
 	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
@@ -148,10 +162,15 @@ void intel_vrr_enable(struct intel_encoder *encoder,
 	if (!crtc_state->vrr.enable)
 		return;
 
-	trans_vrr_ctl = VRR_CTL_VRR_ENABLE |
-		VRR_CTL_IGN_MAX_SHIFT | VRR_CTL_FLIP_LINE_EN |
-		VRR_CTL_PIPELINE_FULL(crtc_state->vrr.pipeline_full) |
-		VRR_CTL_PIPELINE_FULL_OVERRIDE;
+	if (DISPLAY_VER(dev_priv) >= 13)
+		trans_vrr_ctl = VRR_CTL_VRR_ENABLE |
+			VRR_CTL_IGN_MAX_SHIFT | VRR_CTL_FLIP_LINE_EN |
+			XELPD_VRR_CTL_VRR_GUARDBAND(crtc_state->vrr.guardband);
+	else
+		trans_vrr_ctl = VRR_CTL_VRR_ENABLE |
+			VRR_CTL_IGN_MAX_SHIFT | VRR_CTL_FLIP_LINE_EN |
+			VRR_CTL_PIPELINE_FULL(crtc_state->vrr.pipeline_full) |
+			VRR_CTL_PIPELINE_FULL_OVERRIDE;
 
 	intel_de_write(dev_priv, TRANS_VRR_VMIN(cpu_transcoder), crtc_state->vrr.vmin - 1);
 	intel_de_write(dev_priv, TRANS_VRR_VMAX(cpu_transcoder), crtc_state->vrr.vmax - 1);
@@ -198,8 +217,11 @@ void intel_vrr_get_config(struct intel_crtc *crtc,
 	if (!crtc_state->vrr.enable)
 		return;
 
-	if (trans_vrr_ctl & VRR_CTL_PIPELINE_FULL_OVERRIDE)
-		crtc_state->vrr.pipeline_full = REG_FIELD_GET(VRR_CTL_PIPELINE_FULL_MASK, trans_vrr_ctl);
+	if (DISPLAY_VER(dev_priv) >= 13)
+		crtc_state->vrr.guardband = REG_FIELD_GET(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, trans_vrr_ctl);
+	else
+		if (trans_vrr_ctl & VRR_CTL_PIPELINE_FULL_OVERRIDE)
+			crtc_state->vrr.pipeline_full = REG_FIELD_GET(VRR_CTL_PIPELINE_FULL_MASK, trans_vrr_ctl);
 	if (trans_vrr_ctl & VRR_CTL_FLIP_LINE_EN)
 		crtc_state->vrr.flipline = intel_de_read(dev_priv, TRANS_VRR_FLIPLINE(cpu_transcoder)) + 1;
 	crtc_state->vrr.vmax = intel_de_read(dev_priv, TRANS_VRR_VMAX(cpu_transcoder)) + 1;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 5ec0524d3418..30103b22c086 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1139,6 +1139,9 @@ struct drm_i915_private {
 
 	u8 framestart_delay;
 
+	/* Window2 specifies time required to program DSB (Window2) in number of scan lines */
+	u8 window2_delay;
+
 	u8 pch_ssc_use;
 
 	/* For i915gm/i945gm vblank irq workaround */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 95fd6bb8f0ff..6a48e046dedf 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4356,6 +4356,8 @@ enum {
 #define   VRR_CTL_PIPELINE_FULL_MASK		REG_GENMASK(10, 3)
 #define   VRR_CTL_PIPELINE_FULL(x)		REG_FIELD_PREP(VRR_CTL_PIPELINE_FULL_MASK, (x))
 #define   VRR_CTL_PIPELINE_FULL_OVERRIDE	REG_BIT(0)
+#define	  XELPD_VRR_CTL_VRR_GUARDBAND_MASK	REG_GENMASK(15, 0)
+#define	  XELPD_VRR_CTL_VRR_GUARDBAND(x)	REG_FIELD_PREP(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, (x))
 
 #define _TRANS_VRR_VMAX_A		0x60424
 #define _TRANS_VRR_VMAX_B		0x61424
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
