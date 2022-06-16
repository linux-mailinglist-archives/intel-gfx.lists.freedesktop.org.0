Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 126F954D939
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 06:21:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05D1F113D1C;
	Thu, 16 Jun 2022 04:21:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C12D3113D1C
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 04:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655353282; x=1686889282;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gL3M/n+jDFH9RpExm9hhDmdCSI/h6jAU2qoAyB3QtVQ=;
 b=n1pv5+4aBED0Y5fM6ELa/EHBWXrvAX0XTB18WsSYunZf0XM5K/rdaIBO
 g4MKLqKtJYgkSkVbmWjwkjokfq/2iERmtPi1tOk6dVaFGTXNGLLj9cHuu
 o5MT5U/W9ZE0wsk43lFxPwXQQMSitklSwfVX6AoEa8zrBv8et0jz9PlcV
 UQsDXNRWKhQmi861Y/aWPxxrgnb8qJRcoLf8SRpjuhpvlt6ASaILr0ico
 6lYhDpAbnDYyA1dv5yx0d/98//81U9648k+hxCy35u3kCxvTHDx6qTvcD
 QEU+/iLT/Oi6+MfxBPdOThScYNTtHLk7G1HGqSb+EWMIcada5tUa8dioS Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="279219528"
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="279219528"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 21:21:22 -0700
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="911993816"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 21:21:20 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jun 2022 09:52:47 +0530
Message-Id: <20220616042247.324969-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220616042247.324969-1-ankit.k.nautiyal@intel.com>
References: <20220616042247.324969-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 3/3] drm/i915/dp: Get optimal link config to
 have best compressed bpp
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

Currently, we take the max lane, rate and pipe bpp, to get the maximum
compressed bpp possible. We then set the output bpp to this value.
This patch provides support to have max bpp, min rate and min lanes,
that can support the min compressed bpp.
This patch also takes care of the validation case where bpp is forced
via debugfs.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 220 ++++++++++++++++++++----
 1 file changed, 182 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d0c63888dfff..4d06f245110f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1413,6 +1413,173 @@ static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
 	return drm_dsc_compute_rc_parameters(vdsc_cfg);
 }
 
+static bool is_dsc_bw_sufficient(int link_rate, int lane_count, int compressed_bpp,
+				 const struct drm_display_mode *adjusted_mode)
+{
+	int mode_rate = intel_dp_link_required(adjusted_mode->crtc_clock, compressed_bpp);
+	int link_avail = intel_dp_max_data_rate(link_rate, lane_count);
+
+	return mode_rate <= link_avail;
+}
+
+static int dsc_compute_link_config(struct intel_dp *intel_dp,
+				   struct intel_crtc_state *pipe_config,
+				   struct link_config_limits *limits,
+				   int pipe_bpp,
+				   u16 compressed_bpp)
+{
+	const struct drm_display_mode *adjusted_mode =
+		&pipe_config->hw.adjusted_mode;
+	int link_rate, lane_count;
+	int dsc_max_bpp;
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	int i;
+
+	for (i = 0; i < intel_dp->num_common_rates; i++) {
+		link_rate = intel_dp_common_rate(intel_dp, i);
+		if (link_rate < limits->min_rate || link_rate > limits->max_rate)
+			continue;
+
+		for (lane_count = limits->min_lane_count;
+		     lane_count <= limits->max_lane_count;
+		     lane_count <<= 1) {
+			dsc_max_bpp = intel_dp_dsc_get_output_bpp_max(dev_priv,
+								      link_rate,
+								      lane_count,
+								      adjusted_mode->crtc_clock,
+								      adjusted_mode->crtc_hdisplay,
+								      pipe_config->bigjoiner_pipes,
+								      pipe_bpp);
+			if (compressed_bpp > dsc_max_bpp)
+				continue;
+
+			if (!is_dsc_bw_sufficient(link_rate, lane_count,
+						  compressed_bpp, adjusted_mode))
+				continue;
+
+			pipe_config->lane_count = lane_count;
+			pipe_config->port_clock = link_rate;
+
+			return 0;
+		}
+	}
+
+	return -EINVAL;
+}
+
+static int _dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
+				       struct intel_crtc_state *pipe_config,
+				       struct link_config_limits *limits,
+				       int pipe_bpp)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	u16 compressed_bpp;
+	int dsc_min_bpp, dsc_max_bpp;
+	int ret;
+
+	dsc_min_bpp = 8;
+	if (DISPLAY_VER(dev_priv) <= 12)
+		dsc_max_bpp = 23;
+	else
+		dsc_max_bpp = 27;
+
+	for (compressed_bpp = dsc_max_bpp;
+	     compressed_bpp >= dsc_min_bpp;
+	     compressed_bpp--) {
+		ret = dsc_compute_link_config(intel_dp,
+					      pipe_config,
+					      limits,
+					      pipe_bpp,
+					      compressed_bpp);
+		if (ret == 0) {
+			pipe_config->dsc.compressed_bpp = compressed_bpp;
+			return 0;
+		}
+	}
+
+	return -EINVAL;
+}
+
+static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
+				      struct intel_crtc_state *pipe_config,
+				      struct link_config_limits *limits,
+				      int pipe_bpp)
+{
+	int ret;
+
+	if (intel_dp->force_dsc_bpp) {
+		u16 compressed_bpp = intel_dp->force_dsc_bpp;
+
+		ret = dsc_compute_link_config(intel_dp,
+					      pipe_config,
+					      limits,
+					      pipe_bpp,
+					      compressed_bpp);
+		if (ret == 0)
+			pipe_config->dsc.compressed_bpp = compressed_bpp;
+
+		return ret;
+	}
+
+	return _dsc_compute_compressed_bpp(intel_dp, pipe_config, limits, pipe_bpp);
+}
+
+static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
+					 struct intel_crtc_state *pipe_config,
+					 struct drm_connector_state *conn_state,
+					 struct link_config_limits *limits)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	u8 dsc_bpc[3] = {0};
+	u8 dsc_max_bpc, dsc_max_bpp;
+	u8 max_req_bpc = conn_state->max_requested_bpc;
+	int i, bpp, ret;
+	int num_bpc = drm_dp_dsc_sink_supported_input_bpcs(intel_dp->dsc_dpcd,
+							   dsc_bpc);
+
+	if (intel_dp->force_dsc_bpp) {
+		/* As of today we support DSC for only RGB */
+		if (intel_dp->force_dsc_bpp < 8)
+			return -EINVAL;
+	}
+
+	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
+	if (DISPLAY_VER(i915) >= 12)
+		dsc_max_bpc = min_t(u8, 12, limits->max_bpp);
+	else
+		dsc_max_bpc = min_t(u8, 10, max_req_bpc);
+
+	dsc_max_bpp = min(dsc_max_bpc * 3, limits->max_bpp);
+
+	/*
+	 * Get the maximum DSC bpc that will be supported by any valid
+	 * link configuration and compressed bpp.
+	 */
+	for (i = 0; i < num_bpc; i++) {
+		bpp = dsc_bpc[i] * 3;
+
+		if (bpp < limits->min_bpp)
+			continue;
+
+		if (bpp > limits->max_bpp)
+			break;
+
+		ret = dsc_compute_compressed_bpp(intel_dp, pipe_config,
+						 limits, bpp);
+		if (ret == 0) {
+			pipe_config->pipe_bpp = bpp;
+
+			return 0;
+		}
+	}
+
+	if (intel_dp->force_dsc_bpp)
+		drm_dbg_kms(&i915->drm, "Invalid DSC BPP %d for given mode",
+			    intel_dp->force_dsc_bpp);
+
+	return -EINVAL;
+}
+
 static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 				       struct intel_crtc_state *pipe_config,
 				       struct drm_connector_state *conn_state,
@@ -1440,16 +1607,11 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		return -EINVAL;
 	}
 
-	/*
-	 * For now enable DSC for max bpp, max link rate, max lane count.
-	 * Optimize this later for the minimum possible link rate/lane count
-	 * with DSC enabled for the requested mode.
-	 */
-	pipe_config->pipe_bpp = pipe_bpp_max;
-	pipe_config->port_clock = limits->max_rate;
-	pipe_config->lane_count = limits->max_lane_count;
-
 	if (intel_dp_is_edp(intel_dp)) {
+		pipe_config->pipe_bpp = pipe_bpp_max;
+		pipe_config->port_clock = limits->max_rate;
+		pipe_config->lane_count = limits->max_lane_count;
+
 		pipe_config->dsc.compressed_bpp =
 			min_t(u16, drm_edp_dsc_sink_output_bpp(intel_dp->dsc_dpcd) >> 4,
 			      pipe_config->pipe_bpp);
@@ -1457,46 +1619,28 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 			drm_dp_dsc_sink_max_slice_count(intel_dp->dsc_dpcd,
 							true);
 	} else {
-		u16 dsc_max_output_bpp;
 		u8 dsc_dp_slice_count;
 
-		dsc_max_output_bpp =
-			intel_dp_dsc_get_output_bpp_max(dev_priv,
-							pipe_config->port_clock,
-							pipe_config->lane_count,
-							adjusted_mode->crtc_clock,
-							adjusted_mode->crtc_hdisplay,
-							pipe_config->bigjoiner_pipes,
-							pipe_bpp_max);
+		ret = intel_dp_dsc_compute_pipe_bpp(intel_dp, pipe_config,
+						    conn_state, limits);
+		if (ret < 0) {
+			drm_dbg_kms(&dev_priv->drm,
+				    "Cannot support mode with DSC with any link config\n");
+			return ret;
+		}
+
 		dsc_dp_slice_count =
 			intel_dp_dsc_get_slice_count(intel_dp,
 						     adjusted_mode->crtc_clock,
 						     adjusted_mode->crtc_hdisplay,
 						     pipe_config->bigjoiner_pipes);
-		if (!dsc_max_output_bpp || !dsc_dp_slice_count) {
+		if (!dsc_dp_slice_count) {
 			drm_dbg_kms(&dev_priv->drm,
-				    "Compressed BPP/Slice Count not supported\n");
+				    "Slice Count not supported\n");
 			return -EINVAL;
 		}
-		pipe_config->dsc.compressed_bpp = min_t(u16, dsc_max_output_bpp,
-							pipe_config->pipe_bpp);
-		pipe_config->dsc.slice_count = dsc_dp_slice_count;
-	}
 
-	/* As of today we support DSC for only RGB */
-	if (intel_dp->force_dsc_bpp) {
-		if (intel_dp->force_dsc_bpp >= 8 &&
-		    intel_dp->force_dsc_bpp < pipe_bpp_max) {
-			drm_dbg_kms(&dev_priv->drm,
-				    "DSC BPP forced to %d",
-				    intel_dp->force_dsc_bpp);
-			pipe_config->dsc.compressed_bpp =
-						intel_dp->force_dsc_bpp;
-		} else {
-			drm_dbg_kms(&dev_priv->drm,
-				    "Invalid DSC BPP %d",
-				    intel_dp->force_dsc_bpp);
-		}
+		pipe_config->dsc.slice_count = dsc_dp_slice_count;
 	}
 
 	/*
-- 
2.25.1

