Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7FBB633625
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 08:46:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40CBA10E395;
	Tue, 22 Nov 2022 07:46:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 024B810E008
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 07:45:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669103156; x=1700639156;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=j999WAXM9XddmdEej6fcwpA0giXtr5BQNAvjUumCEJA=;
 b=FDumWuebK6aVjsXxtyQKSsmRHykHshatjOR1Fcz37aSeYG3t0pbTvHZr
 riuRkCh+Ja0nzK5DfMHGwkzFL+GEhlle4xMOvBtxC85DI40nIFWNHDokP
 HWt7aEWaeTYJ9j8A5l/j04Gazd020RN+8yIzgrPuy9gVdaQm9o4VFPRwc
 JdPaVkrDcEJNvoluGbNqrZbAsdy015tauMduxKzhtgCncAZZrGizR+DWK
 0tuT80xoKmsqER4BbyVnqKrQtJtZ3PhO+LJg9+CgkU2pb/eCQ/2rYk92A
 hphteRsS6iOghO5ZpXVaQ7GJbFOW/ejUKmkiDt7kJVGVrkzkFcbsYNdZD Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="378015342"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="378015342"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 23:45:55 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="783756287"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="783756287"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 23:45:53 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Nov 2022 13:16:35 +0530
Message-Id: <20221122074644.2969553-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221122074644.2969553-1-ankit.k.nautiyal@intel.com>
References: <20221122074644.2969553-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 01/10] drm/i915/display: Add new member to
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

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com> (v3)
---
 drivers/gpu/drm/i915/display/icl_dsi.c        |  1 +
 drivers/gpu/drm/i915/display/intel_crt.c      |  1 +
 .../drm/i915/display/intel_crtc_state_dump.c  |  5 +--
 drivers/gpu/drm/i915/display/intel_display.c  |  5 +++
 .../drm/i915/display/intel_display_types.h    | 11 +++++-
 drivers/gpu/drm/i915/display/intel_dp.c       | 34 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  1 +
 drivers/gpu/drm/i915/display/intel_dvo.c      |  1 +
 drivers/gpu/drm/i915/display/intel_hdmi.c     | 24 +++++++------
 drivers/gpu/drm/i915/display/intel_lvds.c     |  1 +
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  1 +
 drivers/gpu/drm/i915/display/intel_tv.c       |  1 +
 drivers/gpu/drm/i915/display/vlv_dsi.c        |  1 +
 13 files changed, 62 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index d16b30a2dded..0ca0d23f42c6 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1667,6 +1667,7 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
 		&pipe_config->hw.adjusted_mode;
 	int ret;
 
+	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 
 	ret = intel_panel_compute_config(intel_connector, adjusted_mode);
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 797ad9489f7e..eb5964b3ff95 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -393,6 +393,7 @@ static int intel_crt_compute_config(struct intel_encoder *encoder,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
 
+	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index e3273fe8ddac..9b61884851fc 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -163,10 +163,11 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 
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
index b3e23708d194..79b5e9843f74 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3243,6 +3243,7 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 		return false;
 
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
+	pipe_config->sink_format = pipe_config->output_format;
 	pipe_config->cpu_transcoder = (enum transcoder) crtc->pipe;
 	pipe_config->shared_dpll = NULL;
 
@@ -3702,6 +3703,8 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
 		break;
 	}
 
+	pipe_config->sink_format = pipe_config->output_format;
+
 	pipe_config->gamma_mode = REG_FIELD_GET(PIPECONF_GAMMA_MODE_MASK_ILK, tmp);
 
 	pipe_config->framestart_delay = REG_FIELD_GET(PIPECONF_FRAME_START_DELAY_MASK, tmp) + 1;
@@ -4096,6 +4099,8 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 			bdw_get_pipemisc_output_format(crtc);
 	}
 
+	pipe_config->sink_format = pipe_config->output_format;
+
 	pipe_config->gamma_mode = intel_de_read(dev_priv,
 						GAMMA_MODE(crtc->pipe));
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index f07395065a69..a7c9fdb44101 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1267,9 +1267,18 @@ struct intel_crtc_state {
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
index 67089711d9e2..3ff9796f83e1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -788,11 +788,12 @@ static u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
 
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
@@ -831,8 +832,14 @@ intel_dp_mode_min_output_bpp(struct intel_connector *connector,
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
@@ -1985,23 +1992,28 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 
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
-		    !connector->base.ycbcr_420_allowed ||
+		if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
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
index 4077a979a924..e53e7ece624c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -148,6 +148,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
 
+	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->has_pch_encoder = false;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 575cb920bd43..4e68b626a067 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -276,6 +276,7 @@ static int intel_dvo_compute_config(struct intel_encoder *encoder,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
 
+	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index bac85d88054f..2d822cacf169 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2185,13 +2185,13 @@ static bool intel_hdmi_has_audio(struct intel_encoder *encoder,
 
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
@@ -2209,23 +2209,25 @@ static int intel_hdmi_compute_output_format(struct intel_encoder *encoder,
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
-		    !connector->base.ycbcr_420_allowed ||
+		if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
 		    !drm_mode_is_420_also(info, adjusted_mode))
 			return ret;
 
-		crtc_state->output_format = intel_hdmi_output_format(crtc_state, connector, true);
+		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
+		crtc_state->output_format = intel_hdmi_output_format(crtc_state, connector);
 		ret = intel_hdmi_compute_clock(encoder, crtc_state, respect_downstream_limits);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 7bf1bdfd03ec..ee526fef2276 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -440,6 +440,7 @@ static int intel_lvds_compute_config(struct intel_encoder *intel_encoder,
 		pipe_config->pipe_bpp = lvds_bpp;
 	}
 
+	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 329b9d9af667..f6b09412da5a 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -1327,6 +1327,7 @@ static int intel_sdvo_compute_config(struct intel_encoder *encoder,
 
 	DRM_DEBUG_KMS("forcing bpc to 8 for SDVO\n");
 	pipe_config->pipe_bpp = 8*3;
+	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 
 	if (HAS_PCH_SPLIT(to_i915(encoder->base.dev)))
diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index 4d2101ca1692..da2e46c2687a 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -1206,6 +1206,7 @@ intel_tv_compute_config(struct intel_encoder *encoder,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
 
+	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 
 	drm_dbg_kms(&dev_priv->drm, "forcing bpc to 8 for TV\n");
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 84481030883a..1958774860dc 100644
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

