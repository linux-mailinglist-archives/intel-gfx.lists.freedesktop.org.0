Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6FC4E3DF9
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 13:00:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D340810E560;
	Tue, 22 Mar 2022 12:00:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0A7110E55C
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 12:00:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647950436; x=1679486436;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=qZSOp5UE+hnurzgT5lCw12f0CZ9u1EUtk16US87stI4=;
 b=OkTqM7FS+sJCSAf1fyTb9PLW6IfRBLwG98SR0PQQkM6IFtNDXOrerD3N
 5aac84ObhZvyFM4ky9H//HL+RI4/eaK+UzMomTltL1M/SkZLzTKtJuDNp
 YMhd1Cvvy4YHw592IGamYPtYqjAB15jE5n2NsLE51L9iu3p9yuvmdLQ7j
 jX8fAjhToNlmiJkpewCnrL0bKJjwm6LnTcHUOv+hem3ydVXiiZ/lvHfAq
 IezvgHCMDiUAvx/XcPv4NZdIghULYuEIQSc56oVCukUr4eaQ8fdfb1xTd
 CTXSlpBg4NffYKb6dNHQAHefRm0zHXZLPCMrU5KlppCf+I4lfVxZrtc7o Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="238403822"
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="238403822"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 05:00:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="637019669"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by FMSMGA003.fm.intel.com with SMTP; 22 Mar 2022 05:00:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 22 Mar 2022 14:00:33 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Mar 2022 14:00:09 +0200
Message-Id: <20220322120015.28074-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220322120015.28074-1-ville.syrjala@linux.intel.com>
References: <20220322120015.28074-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 06/12] drm/i915/dp: Pass around
 intel_connector rather than drm_connector
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
index a655af1ab359..94faf3c28d2d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -786,13 +786,13 @@ static u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
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
 
@@ -828,7 +828,7 @@ static int intel_dp_output_bpp(enum intel_output_format output_format, int bpp)
 }
 
 static int
-intel_dp_mode_min_output_bpp(struct drm_connector *connector,
+intel_dp_mode_min_output_bpp(struct intel_connector *connector,
 			     const struct drm_display_mode *mode)
 {
 	enum intel_output_format output_format =
@@ -901,7 +901,7 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 	if (intel_dp->dfp.pcon_max_frl_bw) {
 		int target_bw;
 		int max_frl_bw;
-		int bpp = intel_dp_mode_min_output_bpp(&connector->base, mode);
+		int bpp = intel_dp_mode_min_output_bpp(connector, mode);
 
 		target_bw = bpp * target_clock;
 
@@ -937,12 +937,12 @@ static bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
 }
 
 static enum drm_mode_status
-intel_dp_mode_valid(struct drm_connector *connector,
+intel_dp_mode_valid(struct drm_connector *_connector,
 		    struct drm_display_mode *mode)
 {
-	struct intel_dp *intel_dp = intel_attached_dp(to_intel_connector(connector));
-	struct intel_connector *intel_connector = to_intel_connector(connector);
-	struct drm_i915_private *dev_priv = to_i915(connector->dev);
+	struct intel_connector *connector = to_intel_connector(_connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	const struct drm_display_mode *fixed_mode;
 	int target_clock = mode->clock;
 	int max_rate, mode_rate, max_lanes, max_link_clock;
@@ -958,9 +958,9 @@ intel_dp_mode_valid(struct drm_connector *connector,
 	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
 		return MODE_H_ILLEGAL;
 
-	fixed_mode = intel_panel_fixed_mode(intel_connector, mode);
+	fixed_mode = intel_panel_fixed_mode(connector, mode);
 	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
-		status = intel_panel_mode_valid(intel_connector, mode);
+		status = intel_panel_mode_valid(connector, mode);
 		if (status != MODE_OK)
 			return status;
 
@@ -1034,8 +1034,7 @@ intel_dp_mode_valid(struct drm_connector *connector,
 	if (mode_rate > max_rate && !dsc)
 		return MODE_CLOCK_HIGH;
 
-	status = intel_dp_mode_valid_downstream(intel_connector,
-						mode, target_clock);
+	status = intel_dp_mode_valid_downstream(connector, mode, target_clock);
 	if (status != MODE_OK)
 		return status;
 
@@ -1825,7 +1824,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	const struct drm_display_mode *fixed_mode;
-	struct intel_connector *intel_connector = intel_dp->attached_connector;
+	struct intel_connector *connector = intel_dp->attached_connector;
 	bool constant_n = drm_dp_has_quirk(&intel_dp->desc, DP_DPCD_QUIRK_CONSTANT_N);
 	int ret = 0, output_bpp;
 
@@ -1834,9 +1833,9 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 
 	pipe_config->has_audio = intel_dp_has_audio(encoder, pipe_config, conn_state);
 
-	fixed_mode = intel_panel_fixed_mode(intel_connector, adjusted_mode);
+	fixed_mode = intel_panel_fixed_mode(connector, adjusted_mode);
 	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
-		ret = intel_panel_compute_config(intel_connector, adjusted_mode);
+		ret = intel_panel_compute_config(connector, adjusted_mode);
 		if (ret)
 			return ret;
 	}
@@ -1854,8 +1853,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	if (intel_dp_hdisplay_bad(dev_priv, adjusted_mode->crtc_hdisplay))
 		return -EINVAL;
 
-	pipe_config->output_format = intel_dp_output_format(&intel_connector->base,
-							    adjusted_mode);
+	pipe_config->output_format = intel_dp_output_format(connector, adjusted_mode);
 
 	ret = intel_dp_compute_link_config(encoder, pipe_config, conn_state);
 	if (ret < 0)
@@ -1913,7 +1911,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 
 	intel_vrr_compute_config(pipe_config, conn_state);
 	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
-	intel_drrs_compute_config(intel_connector, pipe_config,
+	intel_drrs_compute_config(connector, pipe_config,
 				  output_bpp, constant_n);
 	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
 	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp, pipe_config, conn_state);
-- 
2.34.1

