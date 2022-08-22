Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ECB759BDEF
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Aug 2022 12:55:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE91E11240C;
	Mon, 22 Aug 2022 10:55:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 936A311237C
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Aug 2022 10:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661165699; x=1692701699;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tcpwgk4lCcX1w5mYm2oHUVmvbr4qEvK1w629PT6QXPk=;
 b=CO+1jg0zNXwIFQG0e1NZR7oYjtn+6v0eLJ/S0iaOHp3SldLA5ukOTrlz
 aTyAFeniUvZ3zKxaaF4lLIgErqAXEpvJcFmTCbAhIcKWlWX5npsyLHxS3
 WQn7ZATkMW1KNxPoxneFJLbax4AAsIbaK61H3ldESy4j2VY1FlfBCfCGt
 zZNNsMnalqWFTXoB0yPnkeP9/qTawvHOs7JFF9tJJaEE16zHItxuap6b3
 SzgW+oPkLsJ9iH8H4UkQdh/VygU0xxAn86sWr9VCoGWxLAkCTWSQcMxtF
 InUbmN2q0y12hSYfwoYUA8faTJJpyjg2wItU9mPMnLPlCy8KRb4EWURRq g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10446"; a="280353990"
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="280353990"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 03:54:59 -0700
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="585474048"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 03:54:57 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Aug 2022 16:24:24 +0530
Message-Id: <20220822105426.3521960-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220822105426.3521960-1-ankit.k.nautiyal@intel.com>
References: <20220822105426.3521960-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/5] drm/i915/dp: Fix DFP RGB->YCBCR conversion
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

This patch:
-uses the members of intel_dp->dfp to only store the
format conversion capabilities of the DP device.
-adds new members to crtc_state to help configure the DFP
output related conversions.
-pulls the decision making to use DFP conversion capabilities
for every mode during compute config.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  7 ++
 drivers/gpu/drm/i915/display/intel_dp.c       | 88 +++++++++++--------
 2 files changed, 59 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 0da9b208d56e..065ed19a5dd3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1311,6 +1311,12 @@ struct intel_crtc_state {
 
 	/* for loading single buffered registers during vblank */
 	struct drm_vblank_work vblank_work;
+
+	/* DP DFP color configuration */
+	struct {
+		bool rgb_to_ycbcr;
+		bool ycbcr_444_to_420;
+	} dp_dfp_config;
 };
 
 enum intel_pipe_crc_source {
@@ -1704,6 +1710,7 @@ struct intel_dp {
 		int pcon_max_frl_bw;
 		u8 max_bpc;
 		bool ycbcr_444_to_420;
+		bool ycbcr420_passthrough;
 		bool rgb_to_ycbcr;
 	} dfp;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index fc082a933d59..8ccbe591b9e2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1201,19 +1201,21 @@ static bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
 		drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd);
 }
 
-static bool intel_dp_is_ycbcr420(struct intel_dp *intel_dp,
-				 const struct intel_crtc_state *crtc_state)
+static bool intel_dp_is_ycbcr420(const struct intel_crtc_state *crtc_state)
 {
 	return crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
 		(crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444 &&
-		 intel_dp->dfp.ycbcr_444_to_420);
+		 crtc_state->dp_dfp_config.ycbcr_444_to_420) ||
+		(crtc_state->output_format == INTEL_OUTPUT_FORMAT_RGB &&
+		 crtc_state->dp_dfp_config.ycbcr_444_to_420 &&
+		 crtc_state->dp_dfp_config.rgb_to_ycbcr);
 }
 
 static int intel_dp_hdmi_compute_bpc(struct intel_dp *intel_dp,
 				     const struct intel_crtc_state *crtc_state,
 				     int bpc, bool respect_downstream_limits)
 {
-	bool ycbcr420_output = intel_dp_is_ycbcr420(intel_dp, crtc_state);
+	bool ycbcr420_output = intel_dp_is_ycbcr420(crtc_state);
 	int clock = crtc_state->hw.adjusted_mode.crtc_clock;
 
 	/*
@@ -1966,6 +1968,30 @@ static bool intel_dp_has_audio(struct intel_encoder *encoder,
 		return intel_conn_state->force_audio == HDMI_AUDIO_ON;
 }
 
+static void
+intel_dp_compute_dfp_ycbcr420(struct intel_encoder *encoder,
+			      struct intel_crtc_state *crtc_state)
+{
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+	if (!drm_dp_is_branch(intel_dp->dpcd))
+		return;
+
+	/* Mode is YCBCR420, output_format is also YCBCR420: Passthrough */
+	if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
+		return;
+
+	/* Mode is YCBCR420, output_format is YCBCR444: Downsample */
+	if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444) {
+		crtc_state->dp_dfp_config.ycbcr_444_to_420 = true;
+		return;
+	}
+
+	/* Mode is YCBCR420, output_format is RGB: Convert to YCBCR444 and Downsample */
+	crtc_state->dp_dfp_config.rgb_to_ycbcr = true;
+	crtc_state->dp_dfp_config.ycbcr_444_to_420 = true;
+}
+
 static int
 intel_dp_compute_output_format(struct intel_encoder *encoder,
 			       struct intel_crtc_state *crtc_state,
@@ -1984,7 +2010,10 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 
 	crtc_state->output_format = intel_dp_output_format(connector, ycbcr_420_only);
 
-	if (ycbcr_420_only && !intel_dp_is_ycbcr420(intel_dp, crtc_state)) {
+	if (ycbcr_420_only)
+		intel_dp_compute_dfp_ycbcr420(encoder, crtc_state);
+
+	if (ycbcr_420_only && !intel_dp_is_ycbcr420(crtc_state)) {
 		drm_dbg_kms(&i915->drm,
 			    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
 		crtc_state->output_format = INTEL_OUTPUT_FORMAT_RGB;
@@ -1993,12 +2022,13 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 	ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
 					   respect_downstream_limits);
 	if (ret) {
-		if (intel_dp_is_ycbcr420(intel_dp, crtc_state) ||
+		if (intel_dp_is_ycbcr420(crtc_state) ||
 		    !connector->base.ycbcr_420_allowed ||
 		    !drm_mode_is_420_also(info, adjusted_mode))
 			return ret;
 
 		crtc_state->output_format = intel_dp_output_format(connector, true);
+		intel_dp_compute_dfp_ycbcr420(encoder, crtc_state);
 		ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
 						   respect_downstream_limits);
 	}
@@ -2668,8 +2698,7 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
 		drm_dbg_kms(&i915->drm, "Failed to %s protocol converter HDMI mode\n",
 			    str_enable_disable(intel_dp->has_hdmi_sink));
 
-	tmp = crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444 &&
-		intel_dp->dfp.ycbcr_444_to_420 ? DP_CONVERSION_TO_YCBCR420_ENABLE : 0;
+	tmp = crtc_state->dp_dfp_config.ycbcr_444_to_420 ? DP_CONVERSION_TO_YCBCR420_ENABLE : 0;
 
 	if (drm_dp_dpcd_writeb(&intel_dp->aux,
 			       DP_PROTOCOL_CONVERTER_CONTROL_1, tmp) != 1)
@@ -2677,7 +2706,7 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
 			    "Failed to %s protocol converter YCbCr 4:2:0 conversion mode\n",
 			    str_enable_disable(intel_dp->dfp.ycbcr_444_to_420));
 
-	tmp = intel_dp->dfp.rgb_to_ycbcr ?
+	tmp = crtc_state->dp_dfp_config.rgb_to_ycbcr ?
 		DP_CONVERSION_BT709_RGB_YCBCR_ENABLE : 0;
 
 	if (drm_dp_pcon_convert_rgb_to_ycbcr(&intel_dp->aux, tmp) < 0)
@@ -2686,7 +2715,6 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
 			   str_enable_disable(tmp));
 }
 
-
 bool intel_dp_get_colorimetry_status(struct intel_dp *intel_dp)
 {
 	u8 dprx = 0;
@@ -4534,7 +4562,6 @@ intel_dp_update_420(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	struct intel_connector *connector = intel_dp->attached_connector;
-	bool is_branch, ycbcr_420_passthrough, ycbcr_444_to_420, rgb_to_ycbcr;
 
 	/* No YCbCr output support on gmch platforms */
 	if (HAS_GMCH(i915))
@@ -4547,39 +4574,28 @@ intel_dp_update_420(struct intel_dp *intel_dp)
 	if (IS_IRONLAKE(i915))
 		return;
 
-	is_branch = drm_dp_is_branch(intel_dp->dpcd);
-	ycbcr_420_passthrough =
+	if (!drm_dp_is_branch(intel_dp->dpcd)) {
+		connector->base.ycbcr_420_allowed = true;
+		return;
+	}
+
+	intel_dp->dfp.ycbcr420_passthrough =
 		drm_dp_downstream_420_passthrough(intel_dp->dpcd,
 						  intel_dp->downstream_ports);
+
 	/* on-board LSPCON always assumed to support 4:4:4->4:2:0 conversion */
-	ycbcr_444_to_420 =
+	intel_dp->dfp.ycbcr_444_to_420 =
 		dp_to_dig_port(intel_dp)->lspcon.active ||
 		drm_dp_downstream_444_to_420_conversion(intel_dp->dpcd,
 							intel_dp->downstream_ports);
-	rgb_to_ycbcr = drm_dp_downstream_rgb_to_ycbcr_conversion(intel_dp->dpcd,
-								 intel_dp->downstream_ports,
-								 DP_DS_HDMI_BT709_RGB_YCBCR_CONV);
-
-	if (DISPLAY_VER(i915) >= 11) {
-		/* Let PCON convert from RGB->YCbCr if possible */
-		if (is_branch && rgb_to_ycbcr && ycbcr_444_to_420) {
-			intel_dp->dfp.rgb_to_ycbcr = true;
-			intel_dp->dfp.ycbcr_444_to_420 = true;
-			connector->base.ycbcr_420_allowed = true;
-		} else {
-		/* Prefer 4:2:0 passthrough over 4:4:4->4:2:0 conversion */
-			intel_dp->dfp.ycbcr_444_to_420 =
-				ycbcr_444_to_420 && !ycbcr_420_passthrough;
 
-			connector->base.ycbcr_420_allowed =
-				!is_branch || ycbcr_444_to_420 || ycbcr_420_passthrough;
-		}
-	} else {
-		/* 4:4:4->4:2:0 conversion is the only way */
-		intel_dp->dfp.ycbcr_444_to_420 = ycbcr_444_to_420;
+	intel_dp->dfp.rgb_to_ycbcr =
+		drm_dp_downstream_rgb_to_ycbcr_conversion(intel_dp->dpcd,
+							  intel_dp->downstream_ports,
+							  DP_DS_HDMI_BT709_RGB_YCBCR_CONV);
 
-		connector->base.ycbcr_420_allowed = ycbcr_444_to_420;
-	}
+	if (intel_dp->dfp.ycbcr420_passthrough || intel_dp->dfp.ycbcr_444_to_420)
+		connector->base.ycbcr_420_allowed = true;
 
 	drm_dbg_kms(&i915->drm,
 		    "[CONNECTOR:%d:%s] RGB->YcbCr conversion? %s, YCbCr 4:2:0 allowed? %s, YCbCr 4:4:4->4:2:0 conversion? %s\n",
-- 
2.25.1

