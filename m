Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2350A4E3DFE
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 13:01:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9950110E27B;
	Tue, 22 Mar 2022 12:01:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8D4E10E27B
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 12:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647950460; x=1679486460;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=SmCzXEF18BLMlmebWOA+NAVbjSkN9xI0Vq9PJZEfs8g=;
 b=ZJJHwuGyL5wK0qXz0eRe5VtGb9TspfzknUWOoS9wSYjfyESpb1C95kUi
 IDidlEsiVhGFZ2i1oktQs/MceS1yFEN8A4gIMFdL0Mf0ThFjDyHwnu0yC
 rPQkDXYYdgoccHUMn5qiXq/tBXVICrP+Tcj4wy26y0yyMd1wqbM9HjADE
 PDXXBhVJdPnvepYkSgRwLFWguSiiO4q/nBAA/9jjkRsM3f9ADThSbKzAi
 MSoU2NBHUaXggIZsdX275o77PdVWiChQTN24eRTc3OayxRCmcWkyVuxlH
 gxSErVqcRY3awO5usBPYHqwfRzZq3H0K7FC5US0hRVUo2ImO+XwC0ohS5 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="239957097"
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="239957097"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 05:00:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="552072239"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga007.fm.intel.com with SMTP; 22 Mar 2022 05:00:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 22 Mar 2022 14:00:42 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Mar 2022 14:00:12 +0200
Message-Id: <20220322120015.28074-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220322120015.28074-1-ville.syrjala@linux.intel.com>
References: <20220322120015.28074-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 09/12] drm/i915/dp: Add support for "4:2:0
 also" modes for DP
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
index 436d0b0f0b76..3dbb68fa4e51 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -895,6 +895,8 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 {
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	const struct drm_display_info *info = &connector->base.display_info;
+	enum drm_mode_status status;
+	bool ycbcr_420_only;
 
 	/* If PCON supports FRL MODE, check FRL bandwidth constraints */
 	if (intel_dp->dfp.pcon_max_frl_bw) {
@@ -919,9 +921,25 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
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
@@ -1829,6 +1847,43 @@ static bool intel_dp_has_audio(struct intel_encoder *encoder,
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
@@ -1839,7 +1894,6 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	const struct drm_display_mode *fixed_mode;
 	struct intel_connector *connector = intel_dp->attached_connector;
-	const struct drm_display_info *info = &connector->base.display_info;
 	bool constant_n = drm_dp_has_quirk(&intel_dp->desc, DP_DPCD_QUIRK_CONSTANT_N);
 	int ret = 0, output_bpp;
 
@@ -1868,11 +1922,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
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
 
 	if ((intel_dp_is_edp(intel_dp) && fixed_mode) ||
-- 
2.34.1

