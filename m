Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 029886A39F3
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Feb 2023 05:06:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F7AA10E0CE;
	Mon, 27 Feb 2023 04:06:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4F2110E0BF
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Feb 2023 04:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677470759; x=1709006759;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yzaYC1Ai5HghRbNPiY0W8+9qzoKuhBeP8DAOIyNu6fY=;
 b=BNsSEesYqXozAmaZ6MIQdTQuGBW1EfhQ7yso0tS8nuyalGf5qJJglu5e
 rkqaX7zL6ctSmv5ZlJ66zLm6at7Xk0OF2lDFyl9VMYBm2aXIJEQhxk2tV
 XkW1YyQMpjNxXBwQFzNt+h4xUu5IC0LBCI+o67l7sIemru2lmaA6m/lht
 sxz6jXVBkefkGz2iopJXdTNxQPlpjCr8lth4CUmVXbKoyuwib2SYv4dN3
 fNRUj7MXTWUjetrA9nWwbH2tHYVn5FRNsUNYSeD0dDctwOLUjh3bk2kQf
 1eA3Ua7Zdzz871j8Mve3DWXhiZo56sQyu+PfV9ZppXkmzQSY8aW2o6E+Z Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10633"; a="335251369"
X-IronPort-AV: E=Sophos;i="5.97,330,1669104000"; d="scan'208";a="335251369"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2023 20:05:59 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10633"; a="783146986"
X-IronPort-AV: E=Sophos;i="5.97,330,1669104000"; d="scan'208";a="783146986"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2023 20:05:57 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Feb 2023 09:33:12 +0530
Message-Id: <20230227040324.130811-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230227040324.130811-1-ankit.k.nautiyal@intel.com>
References: <20230227040324.130811-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v10 01/13] drm/i915/display: Add new member to
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
 drivers/gpu/drm/i915/display/intel_hdmi.c     | 23 +++++++------
 drivers/gpu/drm/i915/display/intel_lvds.c     |  1 +
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  1 +
 drivers/gpu/drm/i915/display/intel_tv.c       |  1 +
 drivers/gpu/drm/i915/display/vlv_dsi.c        |  1 +
 13 files changed, 62 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index b5316715bb3b..8fef5afe7abc 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1580,6 +1580,7 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
 		&pipe_config->hw.adjusted_mode;
 	int ret;
 
+	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 
 	ret = intel_panel_compute_config(intel_connector, adjusted_mode);
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 8f2ebead0826..e925e21d87fc 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -393,6 +393,7 @@ static int intel_crt_compute_config(struct intel_encoder *encoder,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
 
+	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 766633566fd6..185cd1971aa5 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -178,10 +178,11 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 
 	snprintf_output_types(buf, sizeof(buf), pipe_config->output_types);
 	drm_dbg_kms(&i915->drm,
-		    "active: %s, output_types: %s (0x%x), output format: %s\n",
+		    "active: %s, output_types: %s (0x%x), output format: %s, sink format: %s\n",
 		    str_yes_no(pipe_config->hw.active),
 		    buf, pipe_config->output_types,
-		    output_formats(pipe_config->output_format));
+		    output_formats(pipe_config->output_format),
+		    output_formats(pipe_config->sink_format));
 
 	drm_dbg_kms(&i915->drm,
 		    "cpu_transcoder: %s, pipe bpp: %i, dithering: %i\n",
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a1fbdf32bd21..9fdb6cc06b67 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3126,6 +3126,7 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 		return false;
 
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
+	pipe_config->sink_format = pipe_config->output_format;
 	pipe_config->cpu_transcoder = (enum transcoder) crtc->pipe;
 	pipe_config->shared_dpll = NULL;
 
@@ -3585,6 +3586,8 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
 		break;
 	}
 
+	pipe_config->sink_format = pipe_config->output_format;
+
 	pipe_config->gamma_mode = REG_FIELD_GET(TRANSCONF_GAMMA_MODE_MASK_ILK, tmp);
 
 	pipe_config->framestart_delay = REG_FIELD_GET(TRANSCONF_FRAME_START_DELAY_MASK, tmp) + 1;
@@ -3983,6 +3986,8 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 			bdw_get_pipemisc_output_format(crtc);
 	}
 
+	pipe_config->sink_format = pipe_config->output_format;
+
 	pipe_config->gamma_mode = intel_de_read(dev_priv,
 						GAMMA_MODE(crtc->pipe));
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 748b0cd411fa..c28835d9db6f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1273,9 +1273,18 @@ struct intel_crtc_state {
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
index d25a93258f8b..1a30cc021b25 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -806,11 +806,12 @@ u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
 
 static enum intel_output_format
 intel_dp_output_format(struct intel_connector *connector,
-		       bool ycbcr_420_output)
+		       enum intel_output_format sink_format)
 {
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
 
-	if (!connector->base.ycbcr_420_allowed || !ycbcr_420_output)
+	if (!connector->base.ycbcr_420_allowed ||
+	    sink_format != INTEL_OUTPUT_FORMAT_YCBCR420)
 		return INTEL_OUTPUT_FORMAT_RGB;
 
 	if (intel_dp->dfp.rgb_to_ycbcr &&
@@ -849,8 +850,14 @@ intel_dp_mode_min_output_bpp(struct intel_connector *connector,
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
@@ -2035,23 +2042,29 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 
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
index a860cbc5dbea..ff0b821a901a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -293,6 +293,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
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
index c7e9e1fbed37..1ad0540c13ee 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2171,13 +2171,13 @@ static bool intel_hdmi_has_audio(struct intel_encoder *encoder,
 
 static enum intel_output_format
 intel_hdmi_output_format(const struct intel_crtc_state *crtc_state,
-			 struct intel_connector *connector,
-			 bool ycbcr_420_output)
+			 struct intel_connector *connector)
 {
 	if (!crtc_state->has_hdmi_sink)
 		return INTEL_OUTPUT_FORMAT_RGB;
 
-	if (connector->base.ycbcr_420_allowed && ycbcr_420_output)
+	if (connector->base.ycbcr_420_allowed &&
+	    crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420)
 		return INTEL_OUTPUT_FORMAT_YCBCR420;
 	else
 		return INTEL_OUTPUT_FORMAT_RGB;
@@ -2195,23 +2195,26 @@ static int intel_hdmi_compute_output_format(struct intel_encoder *encoder,
 	bool ycbcr_420_only = drm_mode_is_420_only(info, adjusted_mode);
 	int ret;
 
-	crtc_state->output_format =
-		intel_hdmi_output_format(crtc_state, connector, ycbcr_420_only);
-
-	if (ycbcr_420_only && !intel_hdmi_is_ycbcr420(crtc_state)) {
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
 
+	crtc_state->output_format = intel_hdmi_output_format(crtc_state, connector);
 	ret = intel_hdmi_compute_clock(encoder, crtc_state, respect_downstream_limits);
 	if (ret) {
-		if (intel_hdmi_is_ycbcr420(crtc_state) ||
+		if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
 		    !connector->base.ycbcr_420_allowed ||
 		    !drm_mode_is_420_also(info, adjusted_mode))
 			return ret;
 
-		crtc_state->output_format = intel_hdmi_output_format(crtc_state, connector, true);
+		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
+		crtc_state->output_format = intel_hdmi_output_format(crtc_state, connector);
 		ret = intel_hdmi_compute_clock(encoder, crtc_state, respect_downstream_limits);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index a504b3a7fbd5..a7783da37dfd 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -436,6 +436,7 @@ static int intel_lvds_compute_config(struct intel_encoder *encoder,
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
index 3b5ff84dc615..6f7ac225293e 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -1204,6 +1204,7 @@ intel_tv_compute_config(struct intel_encoder *encoder,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
 
+	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 
 	drm_dbg_kms(&dev_priv->drm, "forcing bpc to 8 for TV\n");
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 8d2e6e151ba0..82c30feb7a91 100644
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

