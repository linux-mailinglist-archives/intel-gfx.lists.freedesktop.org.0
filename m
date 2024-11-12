Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5640D9C55DC
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2024 12:11:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8DFA10E5CB;
	Tue, 12 Nov 2024 11:11:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DSWhipJ6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D2AA10E5C6;
 Tue, 12 Nov 2024 11:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731409877; x=1762945877;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CKdB0lcDlcAzTAjGVkSX0509b35tzLx1n7OB5Qbf33s=;
 b=DSWhipJ6mGTeBVRDOpKCtQ0ZSksiHiVh3BqW7zHadYBRpTh9XdypgEM7
 JMhZg2y0rClOX7WMUYVzvcubj6hwN+X9C8onxZ4474yX6Rekc4yl8hQVz
 Prux9RTd8AEQXyQlBugmKif4VLDUYP6e4IcLvGJJu7cX+PenJJs7meaOU
 /TEHWTFnwa2tDaDqGq/WFu4ndy0AN6F8DbaDqa+Z92IYBUZLGAAROAGqA
 Rflp8rev7L/p+gD8TDhUzt28VRvCwn+Z17cWtgP/LCWkPo+QvyopQ6GjP
 a/dpIIFgw8C9BlMJ6R0Z+PjjJnwi4haEq5s1ZPk6NHTqHSHbLJkJb7uDQ Q==;
X-CSE-ConnectionGUID: 9LMn5sCeSEiKPh4XO0WAZQ==
X-CSE-MsgGUID: zGgyV3U2Sni9so1/PGYaIg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="31094684"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="31094684"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 03:11:16 -0800
X-CSE-ConnectionGUID: XcOGclEIRf22DP1RYqxy+g==
X-CSE-MsgGUID: 67QC4cgBSrixZHfhSVMEeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="92363081"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.121])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 03:11:15 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Imre Deak <imre.deak@intel.com>
Subject: [CI v2 5/8] drm/i915/display: make CHICKEN_TRANS() display version
 aware
Date: Tue, 12 Nov 2024 13:10:41 +0200
Message-Id: <712c17ee22537b0628aa32695743bc017b3fe332.1731409802.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731409802.git.jani.nikula@intel.com>
References: <cover.1731409802.git.jani.nikula@intel.com>
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

Making register macros platform or display version aware is not exactly
something I want to promote widely, but in this case it's the lesser of
two evils. hsw_chicken_trans_reg() is not pretty, and it doesn't have a
suitable home.

v2: Rebase

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     | 21 ++++++--------------
 drivers/gpu/drm/i915/display/intel_ddi.h     |  2 --
 drivers/gpu/drm/i915/display/intel_display.c | 15 +++++++-------
 drivers/gpu/drm/i915/display/intel_dp_mst.c  |  4 ++--
 drivers/gpu/drm/i915/display/intel_hdcp.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c     |  4 ++--
 drivers/gpu/drm/i915/display/intel_vrr.c     |  2 +-
 drivers/gpu/drm/i915/i915_reg.h              |  5 +++--
 8 files changed, 23 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 4c482a6cf1c7..b067e5fb17c3 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3292,18 +3292,8 @@ static void intel_enable_ddi_dp(struct intel_atomic_state *state,
 	trans_port_sync_stop_link_train(state, encoder, crtc_state);
 }
 
-/* FIXME bad home for this function */
-i915_reg_t hsw_chicken_trans_reg(struct drm_i915_private *i915,
-				 enum transcoder cpu_transcoder)
-{
-	return DISPLAY_VER(i915) >= 14 ?
-		MTL_CHICKEN_TRANS(cpu_transcoder) :
-		CHICKEN_TRANS(cpu_transcoder);
-}
-
 static i915_reg_t
-gen9_chicken_trans_reg_by_port(struct drm_i915_private *dev_priv,
-			       enum port port)
+gen9_chicken_trans_reg_by_port(struct intel_display *display, enum port port)
 {
 	static const enum transcoder trans[] = {
 		[PORT_A] = TRANSCODER_EDP,
@@ -3313,12 +3303,12 @@ gen9_chicken_trans_reg_by_port(struct drm_i915_private *dev_priv,
 		[PORT_E] = TRANSCODER_A,
 	};
 
-	drm_WARN_ON(&dev_priv->drm, DISPLAY_VER(dev_priv) < 9);
+	drm_WARN_ON(display->drm, DISPLAY_VER(display) < 9);
 
-	if (drm_WARN_ON(&dev_priv->drm, port < PORT_A || port > PORT_E))
+	if (drm_WARN_ON(display->drm, port < PORT_A || port > PORT_E))
 		port = PORT_A;
 
-	return CHICKEN_TRANS(trans[port]);
+	return CHICKEN_TRANS(display, trans[port]);
 }
 
 static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
@@ -3326,6 +3316,7 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
 				  const struct intel_crtc_state *crtc_state,
 				  const struct drm_connector_state *conn_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct drm_connector *connector = conn_state->connector;
@@ -3356,7 +3347,7 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
 		 * the bits affect a specific DDI port rather than
 		 * a specific transcoder.
 		 */
-		i915_reg_t reg = gen9_chicken_trans_reg_by_port(dev_priv, port);
+		i915_reg_t reg = gen9_chicken_trans_reg_by_port(display, port);
 		u32 val;
 
 		val = intel_de_read(dev_priv, reg);
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
index b7fdf0a388cf..0d5d820740f6 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi.h
@@ -28,8 +28,6 @@ i915_reg_t dp_tp_ctl_reg(struct intel_encoder *encoder,
 			 const struct intel_crtc_state *crtc_state);
 i915_reg_t dp_tp_status_reg(struct intel_encoder *encoder,
 			    const struct intel_crtc_state *crtc_state);
-i915_reg_t hsw_chicken_trans_reg(struct drm_i915_private *i915,
-				 enum transcoder cpu_transcoder);
 void intel_ddi_fdi_post_disable(struct intel_atomic_state *state,
 				struct intel_encoder *intel_encoder,
 				const struct intel_crtc_state *old_crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 03f33669e666..e790a2de5b3d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -511,6 +511,7 @@ void vlv_wait_port_ready(struct intel_display *display,
 
 void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state)
 {
+	struct intel_display *display = to_intel_display(new_crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
@@ -554,8 +555,7 @@ void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state)
 		if (DISPLAY_VER(dev_priv) == 14)
 			set |= DP_FEC_BS_JITTER_WA;
 
-		intel_de_rmw(dev_priv,
-			     hsw_chicken_trans_reg(dev_priv, cpu_transcoder),
+		intel_de_rmw(display, CHICKEN_TRANS(display, cpu_transcoder),
 			     clear, set);
 	}
 
@@ -591,6 +591,7 @@ void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state)
 
 void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state)
 {
+	struct intel_display *display = to_intel_display(old_crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
@@ -628,7 +629,7 @@ void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state)
 	intel_de_write(dev_priv, TRANSCONF(dev_priv, cpu_transcoder), val);
 
 	if (DISPLAY_VER(dev_priv) >= 12)
-		intel_de_rmw(dev_priv, hsw_chicken_trans_reg(dev_priv, cpu_transcoder),
+		intel_de_rmw(display, CHICKEN_TRANS(display, cpu_transcoder),
 			     FECSTALL_DIS_DPTSTREAM_DPTTG, 0);
 
 	if ((val & TRANSCONF_ENABLE) == 0)
@@ -1744,10 +1745,9 @@ static void hsw_set_linetime_wm(const struct intel_crtc_state *crtc_state)
 
 static void hsw_set_frame_start_delay(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
-	intel_de_rmw(i915, hsw_chicken_trans_reg(i915, crtc_state->cpu_transcoder),
+	intel_de_rmw(display, CHICKEN_TRANS(display, crtc_state->cpu_transcoder),
 		     HSW_FRAME_START_DELAY_MASK,
 		     HSW_FRAME_START_DELAY(crtc_state->framestart_delay - 1));
 }
@@ -4112,6 +4112,7 @@ static void intel_joiner_get_config(struct intel_crtc_state *crtc_state)
 static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 				struct intel_crtc_state *pipe_config)
 {
+	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	bool active;
 	u32 tmp;
@@ -4188,7 +4189,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 	}
 
 	if (!transcoder_is_dsi(pipe_config->cpu_transcoder)) {
-		tmp = intel_de_read(dev_priv, hsw_chicken_trans_reg(dev_priv, pipe_config->cpu_transcoder));
+		tmp = intel_de_read(display, CHICKEN_TRANS(display, pipe_config->cpu_transcoder));
 
 		pipe_config->framestart_delay = REG_FIELD_GET(HSW_FRAME_START_DELAY_MASK, tmp) + 1;
 	} else {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 7641ced64610..5afbaa5b1841 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1326,8 +1326,8 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 	if (ret < 0)
 		intel_dp_queue_modeset_retry_for_link(state, primary_encoder, pipe_config);
 
-	if (DISPLAY_VER(dev_priv) >= 12)
-		intel_de_rmw(dev_priv, hsw_chicken_trans_reg(dev_priv, trans),
+	if (DISPLAY_VER(display) >= 12)
+		intel_de_rmw(display, CHICKEN_TRANS(display, trans),
 			     FECSTALL_DIS_DPTSTREAM_DPTTG,
 			     pipe_config->fec_enable ? FECSTALL_DIS_DPTSTREAM_DPTTG : 0);
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index ad6cdee465bc..b368584f481d 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -52,7 +52,7 @@ intel_hdcp_adjust_hdcp_line_rekeying(struct intel_encoder *encoder,
 		rekey_reg = TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder);
 		rekey_bit = TRANS_DDI_HDCP_LINE_REKEY_DISABLE;
 	} else if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_D0, STEP_FOREVER)) {
-		rekey_reg = MTL_CHICKEN_TRANS(hdcp->cpu_transcoder);
+		rekey_reg = CHICKEN_TRANS(display, hdcp->cpu_transcoder);
 		rekey_bit = HDCP_LINE_REKEY_DISABLE;
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 2055bf015517..3c498b3ed175 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1892,7 +1892,7 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 
 	if (intel_dp->psr.sel_update_enabled) {
 		if (DISPLAY_VER(display) == 9)
-			intel_de_rmw(display, CHICKEN_TRANS(cpu_transcoder), 0,
+			intel_de_rmw(display, CHICKEN_TRANS(display, cpu_transcoder), 0,
 				     PSR2_VSC_ENABLE_PROG_HEADER |
 				     PSR2_ADD_VERTICAL_LINE_COUNT);
 
@@ -1904,7 +1904,7 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 		if (!intel_dp->psr.panel_replay_enabled &&
 		    (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_A0, STEP_B0) ||
 		     IS_ALDERLAKE_P(dev_priv)))
-			intel_de_rmw(display, hsw_chicken_trans_reg(dev_priv, cpu_transcoder),
+			intel_de_rmw(display, CHICKEN_TRANS(display, cpu_transcoder),
 				     0, ADLP_1_BASED_X_GRANULARITY);
 
 		/* Wa_16012604467:adlp,mtl[a0,b0] */
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 19a5d0076bb8..b386e62d1664 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -288,7 +288,7 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 	 * ADL/DG2: make TRANS_SET_CONTEXT_LATENCY effective with VRR
 	 */
 	if (IS_DISPLAY_VER(display, 12, 13))
-		intel_de_rmw(display, CHICKEN_TRANS(cpu_transcoder),
+		intel_de_rmw(display, CHICKEN_TRANS(display, cpu_transcoder),
 			     0, PIPE_VBLANK_WITH_DELAY);
 
 	if (!intel_vrr_possible(crtc_state)) {
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 261f388b49c7..7a35be56b7ef 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2755,7 +2755,7 @@
 #define _CHICKEN_TRANS_C	0x420c8
 #define _CHICKEN_TRANS_EDP	0x420cc
 #define _CHICKEN_TRANS_D	0x420d8
-#define CHICKEN_TRANS(trans)	_MMIO(_PICK((trans), \
+#define _CHICKEN_TRANS(trans)	_MMIO(_PICK((trans), \
 					    [TRANSCODER_EDP] = _CHICKEN_TRANS_EDP, \
 					    [TRANSCODER_A] = _CHICKEN_TRANS_A, \
 					    [TRANSCODER_B] = _CHICKEN_TRANS_B, \
@@ -2763,9 +2763,10 @@
 					    [TRANSCODER_D] = _CHICKEN_TRANS_D))
 #define _MTL_CHICKEN_TRANS_A	0x604e0
 #define _MTL_CHICKEN_TRANS_B	0x614e0
-#define MTL_CHICKEN_TRANS(trans)	_MMIO_TRANS((trans), \
+#define _MTL_CHICKEN_TRANS(trans)	_MMIO_TRANS((trans), \
 						    _MTL_CHICKEN_TRANS_A, \
 						    _MTL_CHICKEN_TRANS_B)
+#define CHICKEN_TRANS(display, trans)	(DISPLAY_VER(display) >= 14 ? _MTL_CHICKEN_TRANS(trans) : _CHICKEN_TRANS(trans))
 #define   PIPE_VBLANK_WITH_DELAY	REG_BIT(31) /* tgl+ */
 #define   SKL_UNMASK_VBL_TO_PIPE_IN_SRD	REG_BIT(30) /* skl+ */
 #define   HSW_FRAME_START_DELAY_MASK	REG_GENMASK(28, 27)
-- 
2.39.5

