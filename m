Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A3F6F0649
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Apr 2023 15:02:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAF0A10EB56;
	Thu, 27 Apr 2023 13:02:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D99A10E299
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Apr 2023 13:02:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682600555; x=1714136555;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sE2nkOQah0OiXpiyb0S/M96AmYZsWbtW/j53VaET2PQ=;
 b=Kp2XQFkrXZJYTIVbAldwNIczErQVgJlLHcAvJQqZOv6+oD/7QFsh/Qh0
 rYSGd1gHT5M7rP4cBMEdG9D/gZRa2P/J2rk/nkxInAVFLfMnpg5AuCiQh
 dWNw414s/TasJlgG3mR6FwHCmHWQzL6/LF6kjCTKw4fg1u0H3y210vCsw
 awm43KE4j4YsJPXiclotEjR+tUiPwdoNBw5OTyRN0n5kPyl/BW7zxtdAw
 V1EPwi08TFJVsRKlS4FoPASFYN1pdwAS+aqKOAR0zkJIDw6lvzzR0sNa7
 SexOnJNt8mJEmPYwnRD+OKvO03mEjuo2ANr1ubHA2hcMJHKt3dwvDnDnZ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="412761846"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="412761846"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 06:00:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="805950106"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="805950106"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 06:00:53 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Apr 2023 18:26:00 +0530
Message-Id: <20230427125605.487769-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230427125605.487769-1-ankit.k.nautiyal@intel.com>
References: <20230427125605.487769-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/6] drm/i915/display: Add new member to
 configure PCON color conversion
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

The decision to use DFP output format conversion capabilities should be
during compute_config phase.

This patch adds new member to crtc_state to represent the final
output_format to the sink. In case of a DFP this can be different than
the output_format, as per the format conversion done via the PCON.

This will help to store only the format conversion capabilities of the
DP device in intel_dp->dfp, and use crtc_state to compute and store the
configuration for color/format conversion for a given mode.

v2: modified the new member to crtc_state to represent the final
output_format that eaches the sink, after possible conversion by
PCON kind of devices. (Ville)

v3: Addressed comments from Ville:
-Added comments to clarify difference between sink_format and
output_format.
-Corrected the order of setting sink_format and output_format.
-Added readout for sink_format in get_pipe_config hooks.

v4: Set sink_format for intel_sdvo too. (Ville)

v5: Rebased.

v6: Fixed condition to go for YCbCr420 format for dp and hdmi. (Ville)

v7: Fix the condition to set sink_format for HDMI.
Set hdmi output_format simply as sink_format. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com> (v3)
---
 drivers/gpu/drm/i915/display/icl_dsi.c        |  1 +
 drivers/gpu/drm/i915/display/intel_crt.c      |  1 +
 .../drm/i915/display/intel_crtc_state_dump.c  |  5 +--
 drivers/gpu/drm/i915/display/intel_display.c  |  5 +++
 .../drm/i915/display/intel_display_types.h    | 11 ++++++-
 drivers/gpu/drm/i915/display/intel_dp.c       | 33 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  1 +
 drivers/gpu/drm/i915/display/intel_dvo.c      |  1 +
 drivers/gpu/drm/i915/display/intel_hdmi.c     | 27 ++++++++++-----
 drivers/gpu/drm/i915/display/intel_lvds.c     |  1 +
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  1 +
 drivers/gpu/drm/i915/display/intel_tv.c       |  1 +
 drivers/gpu/drm/i915/display/vlv_dsi.c        |  1 +
 13 files changed, 67 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index ad78148e0788..2520a4314e0d 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1591,6 +1591,7 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
 		&pipe_config->hw.adjusted_mode;
 	int ret;
 
+	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 
 	ret = intel_panel_compute_config(intel_connector, adjusted_mode);
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 13519f78cf9f..f0f4897b3c3c 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -395,6 +395,7 @@ static int intel_crt_compute_config(struct intel_encoder *encoder,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
 
+	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 0cdcaa49656f..27d7bab46427 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -217,10 +217,11 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 
 	snprintf_output_types(buf, sizeof(buf), pipe_config->output_types);
 	drm_dbg_kms(&i915->drm,
-		    "active: %s, output_types: %s (0x%x), output format: %s\n",
+		    "active: %s, output_types: %s (0x%x), output format: %s, sink format: %s\n",
 		    str_yes_no(pipe_config->hw.active),
 		    buf, pipe_config->output_types,
-		    intel_output_format_name(pipe_config->output_format));
+		    intel_output_format_name(pipe_config->output_format),
+		    intel_output_format_name(pipe_config->sink_format));
 
 	drm_dbg_kms(&i915->drm,
 		    "cpu_transcoder: %s, pipe bpp: %i, dithering: %i\n",
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index bf391a6cd8d6..2860c40b73c4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2887,6 +2887,7 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 		return false;
 
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
+	pipe_config->sink_format = pipe_config->output_format;
 	pipe_config->cpu_transcoder = (enum transcoder) crtc->pipe;
 	pipe_config->shared_dpll = NULL;
 
@@ -3310,6 +3311,8 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
 		break;
 	}
 
+	pipe_config->sink_format = pipe_config->output_format;
+
 	pipe_config->gamma_mode = REG_FIELD_GET(TRANSCONF_GAMMA_MODE_MASK_ILK, tmp);
 
 	pipe_config->framestart_delay = REG_FIELD_GET(TRANSCONF_FRAME_START_DELAY_MASK, tmp) + 1;
@@ -3708,6 +3711,8 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 			bdw_get_pipe_misc_output_format(crtc);
 	}
 
+	pipe_config->sink_format = pipe_config->output_format;
+
 	pipe_config->gamma_mode = intel_de_read(dev_priv,
 						GAMMA_MODE(crtc->pipe));
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 35c260bd1461..806e6c7f1413 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1299,9 +1299,18 @@ struct intel_crtc_state {
 	/* HDMI High TMDS char rate ratio */
 	bool hdmi_high_tmds_clock_ratio;
 
-	/* Output format RGB/YCBCR etc */
+	/*
+	 * Output format RGB/YCBCR etc., that is coming out
+	 * at the end of the pipe.
+	 */
 	enum intel_output_format output_format;
 
+	/*
+	 * Sink output format RGB/YCBCR etc., that is going
+	 * into the sink.
+	 */
+	enum intel_output_format sink_format;
+
 	/* enable pipe gamma? */
 	bool gamma_enable;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1d28a2560ae0..be2327015b45 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -843,14 +843,15 @@ u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
 
 static enum intel_output_format
 intel_dp_output_format(struct intel_connector *connector,
-		       bool ycbcr_420_output)
+		       enum intel_output_format sink_format)
 {
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
 
 	if (intel_dp->force_dsc_output_format)
 		return intel_dp->force_dsc_output_format;
 
-	if (!connector->base.ycbcr_420_allowed || !ycbcr_420_output)
+	if (!connector->base.ycbcr_420_allowed ||
+	    sink_format != INTEL_OUTPUT_FORMAT_YCBCR420)
 		return INTEL_OUTPUT_FORMAT_RGB;
 
 	if (intel_dp->dfp.rgb_to_ycbcr &&
@@ -889,8 +890,14 @@ intel_dp_mode_min_output_bpp(struct intel_connector *connector,
 			     const struct drm_display_mode *mode)
 {
 	const struct drm_display_info *info = &connector->base.display_info;
-	enum intel_output_format output_format =
-		intel_dp_output_format(connector, drm_mode_is_420_only(info, mode));
+	enum intel_output_format output_format, sink_format;
+
+	if (drm_mode_is_420_only(info, mode))
+		sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
+	else
+		sink_format = INTEL_OUTPUT_FORMAT_RGB;
+
+	output_format = intel_dp_output_format(connector, sink_format);
 
 	return intel_dp_output_bpp(output_format, intel_dp_min_bpp(output_format));
 }
@@ -2105,23 +2112,29 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 
 	ycbcr_420_only = drm_mode_is_420_only(info, adjusted_mode);
 
-	crtc_state->output_format = intel_dp_output_format(connector, ycbcr_420_only);
-
-	if (ycbcr_420_only && !intel_dp_is_ycbcr420(intel_dp, crtc_state)) {
+	if (ycbcr_420_only && !connector->base.ycbcr_420_allowed) {
 		drm_dbg_kms(&i915->drm,
 			    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
-		crtc_state->output_format = INTEL_OUTPUT_FORMAT_RGB;
+		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
+	} else if (ycbcr_420_only) {
+		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
+	} else {
+		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	}
 
+	crtc_state->output_format = intel_dp_output_format(connector, crtc_state->sink_format);
+
 	ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
 					   respect_downstream_limits);
 	if (ret) {
-		if (intel_dp_is_ycbcr420(intel_dp, crtc_state) ||
+		if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
 		    !connector->base.ycbcr_420_allowed ||
 		    !drm_mode_is_420_also(info, adjusted_mode))
 			return ret;
 
-		crtc_state->output_format = intel_dp_output_format(connector, true);
+		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
+		crtc_state->output_format = intel_dp_output_format(connector,
+								   crtc_state->sink_format);
 		ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
 						   respect_downstream_limits);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 2c49d9ab86a2..63d61e610210 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -318,6 +318,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
 
+	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->has_pch_encoder = false;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index eb2dcd866cc8..9884678743b6 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -271,6 +271,7 @@ static int intel_dvo_compute_config(struct intel_encoder *encoder,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
 
+	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 8141d5184856..f1392ff41390 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2172,9 +2172,9 @@ static bool intel_hdmi_has_audio(struct intel_encoder *encoder,
 }
 
 static enum intel_output_format
-intel_hdmi_output_format(const struct intel_crtc_state *crtc_state,
-			 struct intel_connector *connector,
-			 bool ycbcr_420_output)
+intel_hdmi_sink_format(const struct intel_crtc_state *crtc_state,
+		       struct intel_connector *connector,
+		       bool ycbcr_420_output)
 {
 	if (!crtc_state->has_hdmi_sink)
 		return INTEL_OUTPUT_FORMAT_RGB;
@@ -2185,6 +2185,12 @@ intel_hdmi_output_format(const struct intel_crtc_state *crtc_state,
 		return INTEL_OUTPUT_FORMAT_RGB;
 }
 
+static enum intel_output_format
+intel_hdmi_output_format(const struct intel_crtc_state *crtc_state)
+{
+	return crtc_state->sink_format;
+}
+
 static int intel_hdmi_compute_output_format(struct intel_encoder *encoder,
 					    struct intel_crtc_state *crtc_state,
 					    const struct drm_connector_state *conn_state,
@@ -2197,23 +2203,26 @@ static int intel_hdmi_compute_output_format(struct intel_encoder *encoder,
 	bool ycbcr_420_only = drm_mode_is_420_only(info, adjusted_mode);
 	int ret;
 
-	crtc_state->output_format =
-		intel_hdmi_output_format(crtc_state, connector, ycbcr_420_only);
+	crtc_state->sink_format =
+		intel_hdmi_sink_format(crtc_state, connector, ycbcr_420_only);
 
-	if (ycbcr_420_only && !intel_hdmi_is_ycbcr420(crtc_state)) {
+	if (ycbcr_420_only && crtc_state->sink_format != INTEL_OUTPUT_FORMAT_YCBCR420) {
 		drm_dbg_kms(&i915->drm,
 			    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
-		crtc_state->output_format = INTEL_OUTPUT_FORMAT_RGB;
+		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	}
 
+	crtc_state->output_format = intel_hdmi_output_format(crtc_state);
 	ret = intel_hdmi_compute_clock(encoder, crtc_state, respect_downstream_limits);
 	if (ret) {
-		if (intel_hdmi_is_ycbcr420(crtc_state) ||
+		if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
+		    !crtc_state->has_hdmi_sink ||
 		    !connector->base.ycbcr_420_allowed ||
 		    !drm_mode_is_420_also(info, adjusted_mode))
 			return ret;
 
-		crtc_state->output_format = intel_hdmi_output_format(crtc_state, connector, true);
+		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
+		crtc_state->output_format = intel_hdmi_output_format(crtc_state);
 		ret = intel_hdmi_compute_clock(encoder, crtc_state, respect_downstream_limits);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 8e9a3d72b83b..1f4349a12a02 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -437,6 +437,7 @@ static int intel_lvds_compute_config(struct intel_encoder *encoder,
 		crtc_state->pipe_bpp = lvds_bpp;
 	}
 
+	crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	crtc_state->output_format = INTEL_OUTPUT_FORMAT_RGB;
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index e12ba458636c..34ee9dd82a78 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -1351,6 +1351,7 @@ static int intel_sdvo_compute_config(struct intel_encoder *encoder,
 
 	DRM_DEBUG_KMS("forcing bpc to 8 for SDVO\n");
 	pipe_config->pipe_bpp = 8*3;
+	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 
 	if (HAS_PCH_SPLIT(to_i915(encoder->base.dev)))
diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index e3ccface0c9d..96fe4a280077 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -1206,6 +1206,7 @@ intel_tv_compute_config(struct intel_encoder *encoder,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
 
+	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 
 	drm_dbg_kms(&dev_priv->drm, "forcing bpc to 8 for TV\n");
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 028965ab442d..746999eac969 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -280,6 +280,7 @@ static int intel_dsi_compute_config(struct intel_encoder *encoder,
 	int ret;
 
 	drm_dbg_kms(&dev_priv->drm, "\n");
+	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 
 	ret = intel_panel_compute_config(intel_connector, adjusted_mode);
-- 
2.25.1

