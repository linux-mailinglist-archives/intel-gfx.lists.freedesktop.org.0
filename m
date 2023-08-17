Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 912CD77F8FC
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Aug 2023 16:30:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF4D710E4AE;
	Thu, 17 Aug 2023 14:30:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2941C10E3BA;
 Thu, 17 Aug 2023 14:30:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692282642; x=1723818642;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=435s74vpr+ql4ImLmDxEd2UgGOE3JykKRcmZf+PYy3k=;
 b=PA7tYvL5+V5vV6+4IMhmOVYPR9WbvJW378bommkxNm7wPeDyIC5cdjKz
 4vpfswX6Q5B3aupkNzmEk1aA6M9wYE/8g5To5qWSV29WTjvHD35a8S2S2
 +CPGljCUIxtQB9ZplnD96lnBhWVa5HbvKtk9qnoYEQacSzfs8KJG2ayFI
 zNNieDZNTKk8+UM05ybtEqNWqa8Ex2A5P4j1zSyga2EbfKsUllbpZTOYc
 4HfrX17mnbzxGnZMbb06uHcyItDRSk1ry0jE4/iqxrChA942/WlGm3bjo
 pjZtVpJzcnmIvQa6o2iMsLNcGxEyn/qtIyvzdx0Jhhq7t5Jnaq99wDGYE w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="376581644"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="376581644"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 07:28:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="858244059"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="858244059"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 07:28:27 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 17 Aug 2023 19:54:45 +0530
Message-Id: <20230817142459.89764-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230817142459.89764-1-ankit.k.nautiyal@intel.com>
References: <20230817142459.89764-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/18] drm/i915/dp: Use consistent name for link
 bpp and compressed bpp
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

Currently there are many places where we use output_bpp for link bpp and
compressed bpp.
Lets use consistent naming:
output_bpp : The intermediate value taking into account the
output_format chroma subsampling.
compressed_bpp : target bpp for the DSC encoder.
link_bpp : final bpp used in the link.

For 444 sampling without DSC:
link_bpp = output_bpp = pipe_bpp

For 420 sampling without DSC:
output_bpp = pipe_bpp / 2
link_bpp = output_bpp

For 444 sampling with DSC:
output_bpp = pipe_bpp
link_bpp = compressed_bpp, computed with output_bpp (i.e. pipe_bpp in
this case)

For 420 sampling with DSC:
output_bpp = pipe_bpp/2
link_bpp = compressed_bpp, computed with output_bpp

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 84 ++++++++++-----------
 drivers/gpu/drm/i915/display/intel_dp.h     | 14 ++--
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 22 +++---
 3 files changed, 60 insertions(+), 60 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a8b67805f3d4..9775c1cbed2b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -740,13 +740,13 @@ u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 p
 	return bits_per_pixel;
 }
 
-u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
-				u32 link_clock, u32 lane_count,
-				u32 mode_clock, u32 mode_hdisplay,
-				bool bigjoiner,
-				enum intel_output_format output_format,
-				u32 pipe_bpp,
-				u32 timeslots)
+u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
+					u32 link_clock, u32 lane_count,
+					u32 mode_clock, u32 mode_hdisplay,
+					bool bigjoiner,
+					enum intel_output_format output_format,
+					u32 pipe_bpp,
+					u32 timeslots)
 {
 	u32 bits_per_pixel, max_bpp_small_joiner_ram;
 
@@ -1136,7 +1136,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	int target_clock = mode->clock;
 	int max_rate, mode_rate, max_lanes, max_link_clock;
 	int max_dotclk = dev_priv->max_dotclk_freq;
-	u16 dsc_max_output_bpp = 0;
+	u16 dsc_max_compressed_bpp = 0;
 	u8 dsc_slice_count = 0;
 	enum drm_mode_status status;
 	bool dsc = false, bigjoiner = false;
@@ -1191,21 +1191,21 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 		 * integer value since we support only integer values of bpp.
 		 */
 		if (intel_dp_is_edp(intel_dp)) {
-			dsc_max_output_bpp =
+			dsc_max_compressed_bpp =
 				drm_edp_dsc_sink_output_bpp(intel_dp->dsc_dpcd) >> 4;
 			dsc_slice_count =
 				drm_dp_dsc_sink_max_slice_count(intel_dp->dsc_dpcd,
 								true);
 		} else if (drm_dp_sink_supports_fec(intel_dp->fec_capable)) {
-			dsc_max_output_bpp =
-				intel_dp_dsc_get_output_bpp(dev_priv,
-							    max_link_clock,
-							    max_lanes,
-							    target_clock,
-							    mode->hdisplay,
-							    bigjoiner,
-							    output_format,
-							    pipe_bpp, 64) >> 4;
+			dsc_max_compressed_bpp =
+				intel_dp_dsc_get_max_compressed_bpp(dev_priv,
+								    max_link_clock,
+								    max_lanes,
+								    target_clock,
+								    mode->hdisplay,
+								    bigjoiner,
+								    output_format,
+								    pipe_bpp, 64) >> 4;
 			dsc_slice_count =
 				intel_dp_dsc_get_slice_count(intel_dp,
 							     target_clock,
@@ -1213,7 +1213,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 							     bigjoiner);
 		}
 
-		dsc = dsc_max_output_bpp && dsc_slice_count;
+		dsc = dsc_max_compressed_bpp && dsc_slice_count;
 	}
 
 	/*
@@ -1502,9 +1502,9 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 	int mode_rate, link_rate, link_avail;
 
 	for (bpp = limits->max_bpp; bpp >= limits->min_bpp; bpp -= 2 * 3) {
-		int output_bpp = intel_dp_output_bpp(pipe_config->output_format, bpp);
+		int link_bpp = intel_dp_output_bpp(pipe_config->output_format, bpp);
 
-		mode_rate = intel_dp_link_required(clock, output_bpp);
+		mode_rate = intel_dp_link_required(clock, link_bpp);
 
 		for (i = 0; i < intel_dp->num_common_rates; i++) {
 			link_rate = intel_dp_common_rate(intel_dp, i);
@@ -1733,21 +1733,21 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 			return -EINVAL;
 		}
 	} else {
-		u16 dsc_max_output_bpp = 0;
+		u16 dsc_max_compressed_bpp = 0;
 		u8 dsc_dp_slice_count;
 
 		if (compute_pipe_bpp) {
-			dsc_max_output_bpp =
-				intel_dp_dsc_get_output_bpp(dev_priv,
-							    pipe_config->port_clock,
-							    pipe_config->lane_count,
-							    adjusted_mode->crtc_clock,
-							    adjusted_mode->crtc_hdisplay,
-							    pipe_config->bigjoiner_pipes,
-							    pipe_config->output_format,
-							    pipe_bpp,
-							    timeslots);
-			if (!dsc_max_output_bpp) {
+			dsc_max_compressed_bpp =
+				intel_dp_dsc_get_max_compressed_bpp(dev_priv,
+								    pipe_config->port_clock,
+								    pipe_config->lane_count,
+								    adjusted_mode->crtc_clock,
+								    adjusted_mode->crtc_hdisplay,
+								    pipe_config->bigjoiner_pipes,
+								    pipe_config->output_format,
+								    pipe_bpp,
+								    timeslots);
+			if (!dsc_max_compressed_bpp) {
 				drm_dbg_kms(&dev_priv->drm,
 					    "Compressed BPP not supported\n");
 				return -EINVAL;
@@ -1775,7 +1775,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 							     pipe_config->pipe_bpp);
 
 			pipe_config->dsc.compressed_bpp = min_t(u16,
-								dsc_max_output_bpp >> 4,
+								dsc_max_compressed_bpp >> 4,
 								output_bpp);
 		}
 		pipe_config->dsc.slice_count = dsc_dp_slice_count;
@@ -2151,7 +2151,7 @@ static bool can_enable_drrs(struct intel_connector *connector,
 static void
 intel_dp_drrs_compute_config(struct intel_connector *connector,
 			     struct intel_crtc_state *pipe_config,
-			     int output_bpp)
+			     int link_bpp)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	const struct drm_display_mode *downclock_mode =
@@ -2176,7 +2176,7 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
 	if (pipe_config->splitter.enable)
 		pixel_clock /= pipe_config->splitter.link_count;
 
-	intel_link_compute_m_n(output_bpp, pipe_config->lane_count, pixel_clock,
+	intel_link_compute_m_n(link_bpp, pipe_config->lane_count, pixel_clock,
 			       pipe_config->port_clock, &pipe_config->dp_m2_n2,
 			       pipe_config->fec_enable);
 
@@ -2274,7 +2274,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	const struct drm_display_mode *fixed_mode;
 	struct intel_connector *connector = intel_dp->attached_connector;
-	int ret = 0, output_bpp;
+	int ret = 0, link_bpp;
 
 	if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
 		pipe_config->has_pch_encoder = true;
@@ -2324,10 +2324,10 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 		intel_dp_limited_color_range(pipe_config, conn_state);
 
 	if (pipe_config->dsc.compression_enable)
-		output_bpp = pipe_config->dsc.compressed_bpp;
+		link_bpp = pipe_config->dsc.compressed_bpp;
 	else
-		output_bpp = intel_dp_output_bpp(pipe_config->output_format,
-						 pipe_config->pipe_bpp);
+		link_bpp = intel_dp_output_bpp(pipe_config->output_format,
+					       pipe_config->pipe_bpp);
 
 	if (intel_dp->mso_link_count) {
 		int n = intel_dp->mso_link_count;
@@ -2351,7 +2351,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 
 	intel_dp_audio_compute_config(encoder, pipe_config, conn_state);
 
-	intel_link_compute_m_n(output_bpp,
+	intel_link_compute_m_n(link_bpp,
 			       pipe_config->lane_count,
 			       adjusted_mode->crtc_clock,
 			       pipe_config->port_clock,
@@ -2367,7 +2367,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 
 	intel_vrr_compute_config(pipe_config, conn_state);
 	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
-	intel_dp_drrs_compute_config(connector, pipe_config, output_bpp);
+	intel_dp_drrs_compute_config(connector, pipe_config, link_bpp);
 	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
 	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp, pipe_config, conn_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 7dd015385054..6fd423463f5c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -107,13 +107,13 @@ void intel_read_dp_sdp(struct intel_encoder *encoder,
 		       unsigned int type);
 bool intel_digital_port_connected(struct intel_encoder *encoder);
 int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 dsc_max_bpc);
-u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
-				u32 link_clock, u32 lane_count,
-				u32 mode_clock, u32 mode_hdisplay,
-				bool bigjoiner,
-				enum intel_output_format output_format,
-				u32 pipe_bpp,
-				u32 timeslots);
+u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
+					u32 link_clock, u32 lane_count,
+					u32 mode_clock, u32 mode_hdisplay,
+					bool bigjoiner,
+					enum intel_output_format output_format,
+					u32 pipe_bpp,
+					u32 timeslots);
 u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
 				int mode_clock, int mode_hdisplay,
 				bool bigjoiner);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index ef5375eb923e..1f00713fb1ad 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -915,7 +915,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 	int max_rate, mode_rate, max_lanes, max_link_clock;
 	int ret;
 	bool dsc = false, bigjoiner = false;
-	u16 dsc_max_output_bpp = 0;
+	u16 dsc_max_compressed_bpp = 0;
 	u8 dsc_slice_count = 0;
 	int target_clock = mode->clock;
 
@@ -969,15 +969,15 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 		int pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, U8_MAX);
 
 		if (drm_dp_sink_supports_fec(intel_dp->fec_capable)) {
-			dsc_max_output_bpp =
-				intel_dp_dsc_get_output_bpp(dev_priv,
-							    max_link_clock,
-							    max_lanes,
-							    target_clock,
-							    mode->hdisplay,
-							    bigjoiner,
-							    INTEL_OUTPUT_FORMAT_RGB,
-							    pipe_bpp, 64) >> 4;
+			dsc_max_compressed_bpp =
+				intel_dp_dsc_get_max_compressed_bpp(dev_priv,
+								    max_link_clock,
+								    max_lanes,
+								    target_clock,
+								    mode->hdisplay,
+								    bigjoiner,
+								    INTEL_OUTPUT_FORMAT_RGB,
+								    pipe_bpp, 64) >> 4;
 			dsc_slice_count =
 				intel_dp_dsc_get_slice_count(intel_dp,
 							     target_clock,
@@ -985,7 +985,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 							     bigjoiner);
 		}
 
-		dsc = dsc_max_output_bpp && dsc_slice_count;
+		dsc = dsc_max_compressed_bpp && dsc_slice_count;
 	}
 
 	/*
-- 
2.40.1

