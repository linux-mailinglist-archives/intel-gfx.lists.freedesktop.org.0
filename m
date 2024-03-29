Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 084C4891040
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 02:14:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56A7410EF69;
	Fri, 29 Mar 2024 01:14:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="chpfllq2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5ED8110EEE0
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Mar 2024 01:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711674840; x=1743210840;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cgeTjgPZxOmP5cDzW90ZepeceIeYmZM7rpsGExqSuJY=;
 b=chpfllq2Nup9YxloFxbiIn0qlrbom2TZuauGv7lLqQeMphDY3SldK01U
 82c/HX5gC/YoGeLKsJ8zrSxLPA6IDIqrAMRbw7j38dG07zta+bUAVwyM0
 tFmIh06vwYPwEG+DcrVv5y+IaomfrFQakD181braxkGeSugpzuzEn0A+o
 1Z9ADaAyN4C67wjRdbn6z9bVDfcnOOJ6c6ULokMp8+u+xDYOoqIXRdQVO
 LrP0OwBi8m33CnrpnaIOFZpJramswRKYbkTV098SV+uwsr1obFLuc85jF
 4sSNGXsm8bpouCy/mxgb9jVXY7ioDpMK+MPH7T+e44EELoE3uNp4Rmr6U Q==;
X-CSE-ConnectionGUID: C7nfWMnxQRSXjf85+0Tszg==
X-CSE-MsgGUID: QKORxJGXSoKrj3NVUa44uA==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="6756353"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; 
   d="scan'208";a="6756353"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 18:14:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="827786789"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="827786789"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 28 Mar 2024 18:13:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 29 Mar 2024 03:13:56 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Manasi Navare <navaremanasi@chromium.org>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH 21/22] drm/i915: Allow bigjoiner for MST
Date: Fri, 29 Mar 2024 03:12:53 +0200
Message-ID: <20240329011254.24160-22-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
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

Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
Reviewed-by: Manasi Navare <navaremanasi@chromium.org>
Co-developed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 25 ++++++++++++---------
 1 file changed, 14 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 2d601d214915..c1530c01f541 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -525,6 +525,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_atomic_state *state = to_intel_atomic_state(conn_state->state);
+	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
 	struct intel_dp *intel_dp = &intel_mst->primary->dp;
 	struct intel_connector *connector =
@@ -542,6 +543,11 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
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
@@ -1341,10 +1347,6 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 					       max_link_clock, max_lanes);
 	mode_rate = intel_dp_link_required(mode->clock, min_bpp);
 
-	ret = drm_modeset_lock(&mgr->base.lock, ctx);
-	if (ret)
-		return ret;
-
 	/*
 	 * TODO:
 	 * - Also check if compression would allow for the mode
@@ -1357,17 +1359,18 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
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
@@ -1410,7 +1413,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 		return 0;
 	}
 
-	*status = intel_mode_valid_max_plane_size(dev_priv, mode, false);
+	*status = intel_mode_valid_max_plane_size(dev_priv, mode, bigjoiner);
 	return 0;
 }
 
-- 
2.43.2

