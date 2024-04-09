Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF1389E087
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Apr 2024 18:35:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4DCE112D6D;
	Tue,  9 Apr 2024 16:35:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JbI9Ylhk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03711112E08
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Apr 2024 16:35:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712680525; x=1744216525;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GI8u4O/rm7i5c7ufVOCOVtdlwt16K+sUw0NGRNAD6F4=;
 b=JbI9Ylhkg1NMies83Ur/2TUHBQ6+wYn7da5UDfj6PnqtdMKXDNaAd09Y
 HWvslc6Evo5da6unV6kkhrrNNMsWGSJLK2DQEbYQAnve3kM0DQfPH1gBs
 Wem54ePB9mLnuPC8yDt0/ytAO6CCQ1Mxd/FgusT29tzaRhOBEKsBixr+W
 opk54rfjZ82bMMzunaJ/XzdOj5GSsVt4qAu5srl20jZIyokHTmobKtWvS
 40XKE7bms0ICjnh+jTCHPUuhVljpd/p8cb0q3FWpEM+Cd3PBuhw4gwzCu
 lwNb8ecITRMak+yuLI6T3lMtpkCjNzPJXFW108vc2xjrOOJYo95UStHVJ w==;
X-CSE-ConnectionGUID: JMWytLETRq+BdY5ANesMeQ==
X-CSE-MsgGUID: wxnyN0L7RQyyCsRxxzgE1w==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="18570871"
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; d="scan'208";a="18570871"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 09:35:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="827792691"
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; d="scan'208";a="827792691"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 09 Apr 2024 09:35:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 09 Apr 2024 19:35:21 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Manasi Navare <navaremanasi@chromium.org>,
 Arun R Murthy <arun.r.murthy@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v3 6/6] drm/i915: Allow bigjoiner for MST
Date: Tue,  9 Apr 2024 19:35:02 +0300
Message-ID: <20240409163502.29633-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240409163502.29633-1-ville.syrjala@linux.intel.com>
References: <20240409163502.29633-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

From: Vidya Srinivas <vidya.srinivas@intel.com>

We need bigjoiner support with MST functionality
for MST monitor resolutions > 5K to work.
Adding support for the same.

v2: Addressed review comments from Jani.
Revert rejection of MST bigjoiner modes and add
functionality

v3: Fixed pipe_mismatch WARN for mst_master_transcoder
Credits-to: Manasi Navare <navaremanasi@chromium.org>

v4: Utilize intel_crtc_joined_pipe_mask() also for handling
    bigjoiner slave pipes for MST case(Stan)
[v5: vsyrjala: chunked the modeset squence stuff out,
               removed bogus mst master transcoder hack,
	       keep mgr_lock near the full_pbn check]
[v6: vsyrjala: Calculate DSC slices correctly for bigjoiner (Imre)]

Reviewed-by: Manasi Navare <navaremanasi@chromium.org>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
Co-developed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 28 +++++++++++----------
 1 file changed, 15 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index b1c95e04a45c..9084641e33f5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -88,11 +88,10 @@ static int intel_dp_mst_bw_overhead(const struct intel_crtc_state *crtc_state,
 
 	if (dsc) {
 		flags |= DRM_DP_BW_OVERHEAD_DSC;
-		/* TODO: add support for bigjoiner */
 		dsc_slice_count = intel_dp_dsc_get_slice_count(connector,
 							       adjusted_mode->clock,
 							       adjusted_mode->hdisplay,
-							       false);
+							       crtc_state->bigjoiner_pipes);
 	}
 
 	overhead = drm_dp_bw_overhead(crtc_state->lane_count,
@@ -525,6 +524,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_atomic_state *state = to_intel_atomic_state(conn_state->state);
+	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
 	struct intel_dp *intel_dp = &intel_mst->primary->dp;
 	struct intel_connector *connector =
@@ -542,6 +542,11 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
 
+	if (intel_dp_need_bigjoiner(intel_dp, connector,
+				    adjusted_mode->crtc_hdisplay,
+				    adjusted_mode->crtc_clock))
+		pipe_config->bigjoiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
+
 	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->has_pch_encoder = false;
@@ -1341,10 +1346,6 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 					       max_link_clock, max_lanes);
 	mode_rate = intel_dp_link_required(mode->clock, min_bpp);
 
-	ret = drm_modeset_lock(&mgr->base.lock, ctx);
-	if (ret)
-		return ret;
-
 	/*
 	 * TODO:
 	 * - Also check if compression would allow for the mode
@@ -1357,17 +1358,18 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 	 *   corresponding link capabilities of the sink) in case the
 	 *   stream is uncompressed for it by the last branch device.
 	 */
-	if (mode_rate > max_rate || mode->clock > max_dotclk ||
-	    drm_dp_calc_pbn_mode(mode->clock, min_bpp << 4) > port->full_pbn) {
-		*status = MODE_CLOCK_HIGH;
-		return 0;
-	}
 	if (intel_dp_need_bigjoiner(intel_dp, intel_connector,
 				    mode->hdisplay, target_clock)) {
 		bigjoiner = true;
 		max_dotclk *= 2;
+	}
 
-		/* TODO: add support for bigjoiner */
+	ret = drm_modeset_lock(&mgr->base.lock, ctx);
+	if (ret)
+		return ret;
+
+	if (mode_rate > max_rate || mode->clock > max_dotclk ||
+	    drm_dp_calc_pbn_mode(mode->clock, min_bpp << 4) > port->full_pbn) {
 		*status = MODE_CLOCK_HIGH;
 		return 0;
 	}
@@ -1410,7 +1412,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 		return 0;
 	}
 
-	*status = intel_mode_valid_max_plane_size(dev_priv, mode, false);
+	*status = intel_mode_valid_max_plane_size(dev_priv, mode, bigjoiner);
 	return 0;
 }
 
-- 
2.43.2

