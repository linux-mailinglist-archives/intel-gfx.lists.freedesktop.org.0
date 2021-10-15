Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D65042F3F3
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 15:40:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC49A6EDAE;
	Fri, 15 Oct 2021 13:40:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFD8B6EDAE
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Oct 2021 13:40:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="291396491"
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="291396491"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2021 06:40:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="481692800"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 15 Oct 2021 06:40:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Oct 2021 16:40:02 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Oct 2021 16:39:15 +0300
Message-Id: <20211015133921.4609-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
References: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 14/20] drm/i915/dp: Pass around intel_connector
 rather than drm_connector
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

Prefer to use intel_connector over drm_connector. Also clean
up the related variable names a bit.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 38 ++++++++++++-------------
 1 file changed, 18 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index de2b3d33a726..d378aeee3287 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -711,13 +711,13 @@ static u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
 }
 
 static enum intel_output_format
-intel_dp_output_format(struct drm_connector *connector,
+intel_dp_output_format(struct intel_connector *connector,
 		       const struct drm_display_mode *mode)
 {
-	struct intel_dp *intel_dp = intel_attached_dp(to_intel_connector(connector));
-	const struct drm_display_info *info = &connector->display_info;
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	const struct drm_display_info *info = &connector->base.display_info;
 
-	if (!connector->ycbcr_420_allowed ||
+	if (!connector->base.ycbcr_420_allowed ||
 	    !drm_mode_is_420_only(info, mode))
 		return INTEL_OUTPUT_FORMAT_RGB;
 
@@ -753,7 +753,7 @@ static int intel_dp_output_bpp(enum intel_output_format output_format, int bpp)
 }
 
 static int
-intel_dp_mode_min_output_bpp(struct drm_connector *connector,
+intel_dp_mode_min_output_bpp(struct intel_connector *connector,
 			     const struct drm_display_mode *mode)
 {
 	enum intel_output_format output_format =
@@ -826,7 +826,7 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 	if (intel_dp->dfp.pcon_max_frl_bw) {
 		int target_bw;
 		int max_frl_bw;
-		int bpp = intel_dp_mode_min_output_bpp(&connector->base, mode);
+		int bpp = intel_dp_mode_min_output_bpp(connector, mode);
 
 		target_bw = bpp * target_clock;
 
@@ -862,13 +862,13 @@ static bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
 }
 
 static enum drm_mode_status
-intel_dp_mode_valid(struct drm_connector *connector,
+intel_dp_mode_valid(struct drm_connector *_connector,
 		    struct drm_display_mode *mode)
 {
-	struct intel_dp *intel_dp = intel_attached_dp(to_intel_connector(connector));
-	struct intel_connector *intel_connector = to_intel_connector(connector);
-	struct drm_display_mode *fixed_mode = intel_connector->panel.fixed_mode;
-	struct drm_i915_private *dev_priv = to_i915(connector->dev);
+	struct intel_connector *connector = to_intel_connector(_connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct drm_display_mode *fixed_mode = connector->panel.fixed_mode;
+	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	int target_clock = mode->clock;
 	int max_rate, mode_rate, max_lanes, max_link_clock;
 	int max_dotclk = dev_priv->max_dotclk_freq;
@@ -884,7 +884,7 @@ intel_dp_mode_valid(struct drm_connector *connector,
 		return MODE_H_ILLEGAL;
 
 	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
-		status = intel_panel_mode_valid(intel_connector, mode);
+		status = intel_panel_mode_valid(connector, mode);
 		if (status != MODE_OK)
 			return status;
 
@@ -958,8 +958,7 @@ intel_dp_mode_valid(struct drm_connector *connector,
 	if (mode_rate > max_rate && !dsc)
 		return MODE_CLOCK_HIGH;
 
-	status = intel_dp_mode_valid_downstream(intel_connector,
-						mode, target_clock);
+	status = intel_dp_mode_valid_downstream(connector, mode, target_clock);
 	if (status != MODE_OK)
 		return status;
 
@@ -1757,7 +1756,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-	struct intel_connector *intel_connector = intel_dp->attached_connector;
+	struct intel_connector *connector = intel_dp->attached_connector;
 	bool constant_n = drm_dp_has_quirk(&intel_dp->desc, DP_DPCD_QUIRK_CONSTANT_N);
 	int ret = 0, output_bpp;
 
@@ -1766,8 +1765,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 
 	pipe_config->has_audio = intel_dp_has_audio(encoder, pipe_config, conn_state);
 
-	if (intel_dp_is_edp(intel_dp) && intel_connector->panel.fixed_mode) {
-		ret = intel_panel_compute_config(intel_connector, adjusted_mode);
+	if (intel_dp_is_edp(intel_dp) && connector->panel.fixed_mode) {
+		ret = intel_panel_compute_config(connector, adjusted_mode);
 		if (ret)
 			return ret;
 	}
@@ -1785,14 +1784,13 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	if (intel_dp_hdisplay_bad(dev_priv, adjusted_mode->crtc_hdisplay))
 		return -EINVAL;
 
-	pipe_config->output_format = intel_dp_output_format(&intel_connector->base,
-							    adjusted_mode);
+	pipe_config->output_format = intel_dp_output_format(connector, adjusted_mode);
 
 	ret = intel_dp_compute_link_config(encoder, pipe_config, conn_state);
 	if (ret < 0)
 		return ret;
 
-	if ((intel_dp_is_edp(intel_dp) && intel_connector->panel.fixed_mode) ||
+	if ((intel_dp_is_edp(intel_dp) && connector->panel.fixed_mode) ||
 	    pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
 		ret = intel_panel_fitting(pipe_config, conn_state);
 		if (ret)
-- 
2.32.0

