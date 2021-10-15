Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D894342F3FB
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 15:40:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B69526EDBA;
	Fri, 15 Oct 2021 13:40:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52F606EDBA
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Oct 2021 13:40:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="291396507"
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="291396507"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2021 06:40:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="461567216"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 15 Oct 2021 06:40:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Oct 2021 16:40:11 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Oct 2021 16:39:18 +0300
Message-Id: <20211015133921.4609-18-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
References: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 17/20] drm/i915/dp: Add support for "4:2:0 also"
 modes for DP
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Currently we only support "4:2:0 also" modes on native HDMI.
Extend that support for DP as well.

With all the HDMI DFP TMDS clock handling sorted out this
is now going to work for both native DP and DP->HDMI
converters. As with native HDMI we first check if RGB
output is possible, and if not we try YCbCr 4:2:0 instead.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 67 ++++++++++++++++++++++---
 1 file changed, 59 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 08aab7856f99..2fa3e3013978 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -820,6 +820,8 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 {
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	const struct drm_display_info *info = &connector->base.display_info;
+	enum drm_mode_status status;
+	bool ycbcr_420_only;
 
 	/* If PCON supports FRL MODE, check FRL bandwidth constraints */
 	if (intel_dp->dfp.pcon_max_frl_bw) {
@@ -844,9 +846,25 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 	    target_clock > intel_dp->dfp.max_dotclock)
 		return MODE_CLOCK_HIGH;
 
+	ycbcr_420_only = drm_mode_is_420_only(info, mode);
+
 	/* Assume 8bpc for the DP++/HDMI/DVI TMDS clock check */
-	return intel_dp_tmds_clock_valid(intel_dp, target_clock, 8,
-					 drm_mode_is_420_only(info, mode));
+	status = intel_dp_tmds_clock_valid(intel_dp, target_clock,
+					   8, ycbcr_420_only);
+
+	if (status != MODE_OK) {
+		if (ycbcr_420_only ||
+		    !connector->base.ycbcr_420_allowed ||
+		    !drm_mode_is_420_also(info, mode))
+			return status;
+
+		status = intel_dp_tmds_clock_valid(intel_dp, target_clock,
+						   8, true);
+		if (status != MODE_OK)
+			return status;
+	}
+
+	return MODE_OK;
 }
 
 static bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
@@ -1762,6 +1780,43 @@ static bool intel_dp_has_audio(struct intel_encoder *encoder,
 		return intel_conn_state->force_audio == HDMI_AUDIO_ON;
 }
 
+static int
+intel_dp_compute_output_format(struct intel_encoder *encoder,
+			       struct intel_crtc_state *crtc_state,
+			       struct drm_connector_state *conn_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+	struct intel_connector *connector = intel_dp->attached_connector;
+	const struct drm_display_info *info = &connector->base.display_info;
+	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	bool ycbcr_420_only;
+	int ret;
+
+	ycbcr_420_only = drm_mode_is_420_only(info, adjusted_mode);
+
+	crtc_state->output_format = intel_dp_output_format(connector, ycbcr_420_only);
+
+	if (ycbcr_420_only && !intel_dp_is_ycbcr420(intel_dp, crtc_state)) {
+		drm_dbg_kms(&i915->drm,
+			    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
+		crtc_state->output_format = INTEL_OUTPUT_FORMAT_RGB;
+	}
+
+	ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state);
+	if (ret) {
+		if (intel_dp_is_ycbcr420(intel_dp, crtc_state) ||
+		    !connector->base.ycbcr_420_allowed ||
+		    !drm_mode_is_420_also(info, adjusted_mode))
+			return ret;
+
+		crtc_state->output_format = intel_dp_output_format(connector, true);
+		ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state);
+	}
+
+	return ret;
+}
+
 int
 intel_dp_compute_config(struct intel_encoder *encoder,
 			struct intel_crtc_state *pipe_config,
@@ -1771,7 +1826,6 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct intel_connector *connector = intel_dp->attached_connector;
-	const struct drm_display_info *info = &connector->base.display_info;
 	bool constant_n = drm_dp_has_quirk(&intel_dp->desc, DP_DPCD_QUIRK_CONSTANT_N);
 	int ret = 0, output_bpp;
 
@@ -1799,11 +1853,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	if (intel_dp_hdisplay_bad(dev_priv, adjusted_mode->crtc_hdisplay))
 		return -EINVAL;
 
-	pipe_config->output_format =
-		intel_dp_output_format(connector, drm_mode_is_420_only(info, adjusted_mode));
-
-	ret = intel_dp_compute_link_config(encoder, pipe_config, conn_state);
-	if (ret < 0)
+	ret = intel_dp_compute_output_format(encoder, pipe_config, conn_state);
+	if (ret)
 		return ret;
 
 	if ((intel_dp_is_edp(intel_dp) && connector->panel.fixed_mode) ||
-- 
2.32.0

