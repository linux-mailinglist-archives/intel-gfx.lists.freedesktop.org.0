Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AAE0610D8F
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 11:44:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8745B10E7C3;
	Fri, 28 Oct 2022 09:44:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5649310E7BD
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 09:43:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666950235; x=1698486235;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=09G/cVVqR8V0XPSVC+3hDoyYTYy5iOwIthutVtBmZ14=;
 b=PZCGkyLcaQfnMq48GiWbd3v2hlth1KU0AeZSsFopuT1LBk4gwKugmneo
 pACU8Jrb1DEMio7RVZwKY9F/IFEWcavrzHWbS07qf6y0fgRLyfVPAmVHv
 MKOtcVuwapaqdD4O0Lm98Qa/ldLkybXc7jokF2EHO/PTfNF930Q+8WRCR
 CW5gThPZVYI5+ScgODk7+mifMtMVp137wdFuPuPo3XWGEeIy1bk23SYU2
 vACUGDo4NYkOW0U+3iEsRHLf2W1cTyhDUTbAc/6dsuD3Ltpu9B8//KtL3
 mU7AO62mMN1EHx9iHFRkfXVnmXkoPiGfABczVCMqJnBkUVKT1uZSPSech w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="335094662"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="335094662"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 02:43:55 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="758026595"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="758026595"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 02:43:52 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Oct 2022 15:14:06 +0530
Message-Id: <20221028094411.3673476-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221028094411.3673476-1-ankit.k.nautiyal@intel.com>
References: <20221028094411.3673476-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 4/9] drm/i915/display: Use sink_format
 instead of ycbcr420_output flag
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

Start passing the sink_format, to all functions that take a bool
ycbcr420_output as parameter. This will make the functions generic,
and will serve as a slight step towards 4:2:2 support later.

Suggested-by: Ville Syrj_l_ <ville.syrjala@linux.intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c   | 33 +++++++--------
 drivers/gpu/drm/i915/display/intel_hdmi.c | 50 ++++++++++++-----------
 drivers/gpu/drm/i915/display/intel_hdmi.h |  5 ++-
 3 files changed, 44 insertions(+), 44 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 95d0c653db7f..f40584130232 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -882,7 +882,8 @@ static int intel_dp_max_tmds_clock(struct intel_dp *intel_dp)
 
 static enum drm_mode_status
 intel_dp_tmds_clock_valid(struct intel_dp *intel_dp,
-			  int clock, int bpc, bool ycbcr420_output,
+			  int clock, int bpc,
+			  enum intel_output_format sink_format,
 			  bool respect_downstream_limits)
 {
 	int tmds_clock, min_tmds_clock, max_tmds_clock;
@@ -890,7 +891,7 @@ intel_dp_tmds_clock_valid(struct intel_dp *intel_dp,
 	if (!respect_downstream_limits)
 		return MODE_OK;
 
-	tmds_clock = intel_hdmi_tmds_clock(clock, bpc, ycbcr420_output);
+	tmds_clock = intel_hdmi_tmds_clock(clock, bpc, sink_format);
 
 	min_tmds_clock = intel_dp->dfp.min_tmds_clock;
 	max_tmds_clock = intel_dp_max_tmds_clock(intel_dp);
@@ -913,6 +914,7 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 	const struct drm_display_info *info = &connector->base.display_info;
 	enum drm_mode_status status;
 	bool ycbcr_420_only;
+	enum intel_output_format sink_format;
 
 	/* If PCON supports FRL MODE, check FRL bandwidth constraints */
 	if (intel_dp->dfp.pcon_max_frl_bw) {
@@ -939,18 +941,22 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 
 	ycbcr_420_only = drm_mode_is_420_only(info, mode);
 
+	if (ycbcr_420_only && connector->base.ycbcr_420_allowed)
+		sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
+	else
+		sink_format = INTEL_OUTPUT_FORMAT_RGB;
+
 	/* Assume 8bpc for the DP++/HDMI/DVI TMDS clock check */
 	status = intel_dp_tmds_clock_valid(intel_dp, target_clock,
-					   8, ycbcr_420_only, true);
+					   8, sink_format, true);
 
 	if (status != MODE_OK) {
-		if (ycbcr_420_only ||
-		    !connector->base.ycbcr_420_allowed ||
+		if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
 		    !drm_mode_is_420_also(info, mode))
 			return status;
-
+		sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
 		status = intel_dp_tmds_clock_valid(intel_dp, target_clock,
-						   8, true, true);
+						   8, sink_format, true);
 		if (status != MODE_OK)
 			return status;
 	}
@@ -1189,19 +1195,10 @@ static bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
 		drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd);
 }
 
-static bool intel_dp_is_ycbcr420(struct intel_dp *intel_dp,
-				 const struct intel_crtc_state *crtc_state)
-{
-	return crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
-		(crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444 &&
-		 intel_dp->dfp.ycbcr_444_to_420);
-}
-
 static int intel_dp_hdmi_compute_bpc(struct intel_dp *intel_dp,
 				     const struct intel_crtc_state *crtc_state,
 				     int bpc, bool respect_downstream_limits)
 {
-	bool ycbcr420_output = intel_dp_is_ycbcr420(intel_dp, crtc_state);
 	int clock = crtc_state->hw.adjusted_mode.crtc_clock;
 
 	/*
@@ -1221,8 +1218,8 @@ static int intel_dp_hdmi_compute_bpc(struct intel_dp *intel_dp,
 
 	for (; bpc >= 8; bpc -= 2) {
 		if (intel_hdmi_bpc_possible(crtc_state, bpc,
-					    intel_dp->has_hdmi_sink, ycbcr420_output) &&
-		    intel_dp_tmds_clock_valid(intel_dp, clock, bpc, ycbcr420_output,
+					    intel_dp->has_hdmi_sink) &&
+		    intel_dp_tmds_clock_valid(intel_dp, clock, bpc, crtc_state->sink_format,
 					      respect_downstream_limits) == MODE_OK)
 			return bpc;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index bd802ce69174..cb7dd8ebb33f 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1803,11 +1803,6 @@ static bool intel_has_hdmi_sink(struct intel_hdmi *hdmi,
 		READ_ONCE(to_intel_digital_connector_state(conn_state)->force_audio) != HDMI_AUDIO_OFF_DVI;
 }
 
-static bool intel_hdmi_is_ycbcr420(const struct intel_crtc_state *crtc_state)
-{
-	return crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420;
-}
-
 static int hdmi_port_clock_limit(struct intel_hdmi *hdmi,
 				 bool respect_downstream_limits,
 				 bool has_hdmi_sink)
@@ -1881,10 +1876,11 @@ hdmi_port_clock_valid(struct intel_hdmi *hdmi,
 	return MODE_OK;
 }
 
-int intel_hdmi_tmds_clock(int clock, int bpc, bool ycbcr420_output)
+int intel_hdmi_tmds_clock(int clock, int bpc,
+			  enum intel_output_format sink_format)
 {
 	/* YCBCR420 TMDS rate requirement is half the pixel clock */
-	if (ycbcr420_output)
+	if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420)
 		clock /= 2;
 
 	/*
@@ -1911,7 +1907,8 @@ static bool intel_hdmi_source_bpc_possible(struct drm_i915_private *i915, int bp
 }
 
 static bool intel_hdmi_sink_bpc_possible(struct drm_connector *connector,
-					 int bpc, bool has_hdmi_sink, bool ycbcr420_output)
+					 int bpc, bool has_hdmi_sink,
+					 enum intel_output_format sink_format)
 {
 	const struct drm_display_info *info = &connector->display_info;
 	const struct drm_hdmi_info *hdmi = &info->hdmi;
@@ -1921,7 +1918,7 @@ static bool intel_hdmi_sink_bpc_possible(struct drm_connector *connector,
 		if (!has_hdmi_sink)
 			return false;
 
-		if (ycbcr420_output)
+		if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420)
 			return hdmi->y420_dc_modes & DRM_EDID_YCBCR420_DC_36;
 		else
 			return info->edid_hdmi_rgb444_dc_modes & DRM_EDID_HDMI_DC_36;
@@ -1929,7 +1926,7 @@ static bool intel_hdmi_sink_bpc_possible(struct drm_connector *connector,
 		if (!has_hdmi_sink)
 			return false;
 
-		if (ycbcr420_output)
+		if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420)
 			return hdmi->y420_dc_modes & DRM_EDID_YCBCR420_DC_30;
 		else
 			return info->edid_hdmi_rgb444_dc_modes & DRM_EDID_HDMI_DC_30;
@@ -1943,7 +1940,8 @@ static bool intel_hdmi_sink_bpc_possible(struct drm_connector *connector,
 
 static enum drm_mode_status
 intel_hdmi_mode_clock_valid(struct drm_connector *connector, int clock,
-			    bool has_hdmi_sink, bool ycbcr420_output)
+			    bool has_hdmi_sink,
+			    enum intel_output_format sink_format)
 {
 	struct drm_i915_private *i915 = to_i915(connector->dev);
 	struct intel_hdmi *hdmi = intel_attached_hdmi(to_intel_connector(connector));
@@ -1956,12 +1954,12 @@ intel_hdmi_mode_clock_valid(struct drm_connector *connector, int clock,
 	 * least one color depth is accepted.
 	 */
 	for (bpc = 12; bpc >= 8; bpc -= 2) {
-		int tmds_clock = intel_hdmi_tmds_clock(clock, bpc, ycbcr420_output);
+		int tmds_clock = intel_hdmi_tmds_clock(clock, bpc, sink_format);
 
 		if (!intel_hdmi_source_bpc_possible(i915, bpc))
 			continue;
 
-		if (!intel_hdmi_sink_bpc_possible(connector, bpc, has_hdmi_sink, ycbcr420_output))
+		if (!intel_hdmi_sink_bpc_possible(connector, bpc, has_hdmi_sink, sink_format))
 			continue;
 
 		status = hdmi_port_clock_valid(hdmi, tmds_clock, true, has_hdmi_sink);
@@ -1986,6 +1984,7 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
 	int max_dotclk = to_i915(connector->dev)->max_dotclk_freq;
 	bool has_hdmi_sink = intel_has_hdmi_sink(hdmi, connector->state);
 	bool ycbcr_420_only;
+	enum intel_output_format sink_format;
 
 	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return MODE_NO_DBLESCAN;
@@ -2013,14 +2012,17 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
 
 	ycbcr_420_only = drm_mode_is_420_only(&connector->display_info, mode);
 
-	status = intel_hdmi_mode_clock_valid(connector, clock, has_hdmi_sink, ycbcr_420_only);
+	sink_format = ycbcr_420_only ? INTEL_OUTPUT_FORMAT_YCBCR420 : INTEL_OUTPUT_FORMAT_RGB;
+
+	status = intel_hdmi_mode_clock_valid(connector, clock, has_hdmi_sink, sink_format);
 	if (status != MODE_OK) {
 		if (ycbcr_420_only ||
 		    !connector->ycbcr_420_allowed ||
 		    !drm_mode_is_420_also(&connector->display_info, mode))
 			return status;
 
-		status = intel_hdmi_mode_clock_valid(connector, clock, has_hdmi_sink, true);
+		sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
+		status = intel_hdmi_mode_clock_valid(connector, clock, has_hdmi_sink, sink_format);
 		if (status != MODE_OK)
 			return status;
 	}
@@ -2029,7 +2031,7 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
 }
 
 bool intel_hdmi_bpc_possible(const struct intel_crtc_state *crtc_state,
-			     int bpc, bool has_hdmi_sink, bool ycbcr420_output)
+			     int bpc, bool has_hdmi_sink)
 {
 	struct drm_atomic_state *state = crtc_state->uapi.state;
 	struct drm_connector_state *connector_state;
@@ -2040,7 +2042,8 @@ bool intel_hdmi_bpc_possible(const struct intel_crtc_state *crtc_state,
 		if (connector_state->crtc != crtc_state->uapi.crtc)
 			continue;
 
-		if (!intel_hdmi_sink_bpc_possible(connector, bpc, has_hdmi_sink, ycbcr420_output))
+		if (!intel_hdmi_sink_bpc_possible(connector, bpc, has_hdmi_sink,
+						  crtc_state->sink_format))
 			return false;
 	}
 
@@ -2065,14 +2068,13 @@ static bool hdmi_bpc_possible(const struct intel_crtc_state *crtc_state, int bpc
 		return false;
 
 	/* Display Wa_1405510057:icl,ehl */
-	if (intel_hdmi_is_ycbcr420(crtc_state) &&
+	if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 &&
 	    bpc == 10 && DISPLAY_VER(dev_priv) == 11 &&
 	    (adjusted_mode->crtc_hblank_end -
 	     adjusted_mode->crtc_hblank_start) % 8 == 2)
 		return false;
 
-	return intel_hdmi_bpc_possible(crtc_state, bpc, crtc_state->has_hdmi_sink,
-				       intel_hdmi_is_ycbcr420(crtc_state));
+	return intel_hdmi_bpc_possible(crtc_state, bpc, crtc_state->has_hdmi_sink);
 }
 
 static int intel_hdmi_compute_bpc(struct intel_encoder *encoder,
@@ -2080,7 +2082,6 @@ static int intel_hdmi_compute_bpc(struct intel_encoder *encoder,
 				  int clock, bool respect_downstream_limits)
 {
 	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
-	bool ycbcr420_output = intel_hdmi_is_ycbcr420(crtc_state);
 	int bpc;
 
 	/*
@@ -2098,7 +2099,8 @@ static int intel_hdmi_compute_bpc(struct intel_encoder *encoder,
 		bpc = 8;
 
 	for (; bpc >= 8; bpc -= 2) {
-		int tmds_clock = intel_hdmi_tmds_clock(clock, bpc, ycbcr420_output);
+		int tmds_clock = intel_hdmi_tmds_clock(clock, bpc,
+						       crtc_state->sink_format);
 
 		if (hdmi_bpc_possible(crtc_state, bpc) &&
 		    hdmi_port_clock_valid(intel_hdmi, tmds_clock,
@@ -2128,7 +2130,7 @@ static int intel_hdmi_compute_clock(struct intel_encoder *encoder,
 		return bpc;
 
 	crtc_state->port_clock =
-		intel_hdmi_tmds_clock(clock, bpc, intel_hdmi_is_ycbcr420(crtc_state));
+		intel_hdmi_tmds_clock(clock, bpc, crtc_state->sink_format);
 
 	/*
 	 * pipe_bpp could already be below 8bpc due to
@@ -2283,7 +2285,7 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 		return ret;
 	}
 
-	if (intel_hdmi_is_ycbcr420(pipe_config)) {
+	if (pipe_config->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
 		ret = intel_panel_fitting(pipe_config, conn_state);
 		if (ret)
 			return ret;
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
index 93f65a917c36..543db04e8a88 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.h
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
@@ -17,6 +17,7 @@ struct intel_digital_port;
 struct intel_encoder;
 struct intel_crtc_state;
 struct intel_hdmi;
+enum intel_output_format;
 struct drm_connector_state;
 union hdmi_infoframe;
 enum port;
@@ -45,8 +46,8 @@ void intel_read_infoframe(struct intel_encoder *encoder,
 bool intel_hdmi_limited_color_range(const struct intel_crtc_state *crtc_state,
 				    const struct drm_connector_state *conn_state);
 bool intel_hdmi_bpc_possible(const struct intel_crtc_state *crtc_state,
-			     int bpc, bool has_hdmi_sink, bool ycbcr420_output);
-int intel_hdmi_tmds_clock(int clock, int bpc, bool ycbcr420_output);
+			     int bpc, bool has_hdmi_sink);
+int intel_hdmi_tmds_clock(int clock, int bpc, enum intel_output_format sink_format);
 int intel_hdmi_dsc_get_bpp(int src_fractional_bpp, int slice_width,
 			   int num_slices, int output_format, bool hdmi_all_bpp,
 			   int hdmi_max_chunk_bytes);
-- 
2.25.1

