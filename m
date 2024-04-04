Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4258D899084
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Apr 2024 23:35:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C49B113580;
	Thu,  4 Apr 2024 21:35:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CxTd+dga";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 864DD113580
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Apr 2024 21:35:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712266544; x=1743802544;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JOuaZp4vuWJIO5T+vSpGcp9EIetNaZkhSIXhZtCUt9g=;
 b=CxTd+dgaBuBxig5DUvggXJFQyk6CX5tdHZQQhdlT4N5v2ovCqmhgC+pC
 wlxuLNWefn/q6mCaZc9UWoA0r21EufQ+7z65xA0dRaUBRXwRye7pGScoq
 PaJIODqVpLz0mb6Db/tUVYae6NgnMGTx8+3kjAAYoPtWp8vsezQGXqdFb
 W09ODD3UG3oNHLSp/GA/1JR6+I+/FTNCnudbU58Eo2jK30wGcqZbiGEa+
 bVvG7USDH6u6iB4/3EYrp5RRikNG6UjGDnQiMl7WdLrktGcv6mYsFe3cb
 KNkhnA4xKyJVQrQd+NW+DiMQQNmwVliw1ZIYpNvuxGWpEWfvyMRd/tI+s A==;
X-CSE-ConnectionGUID: RX3cLzRLSuq4J9pEqmq8ww==
X-CSE-MsgGUID: Dap15GiTRQ6rp/ToB2f2Sw==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="7710854"
X-IronPort-AV: E=Sophos;i="6.07,180,1708416000"; 
   d="scan'208";a="7710854"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 14:35:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="827790648"
X-IronPort-AV: E=Sophos;i="6.07,180,1708416000"; d="scan'208";a="827790648"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 04 Apr 2024 14:35:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Apr 2024 00:35:40 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Manasi Navare <navaremanasi@chromium.org>,
 Arun R Murthy <arun.r.murthy@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v2 17/17] drm/i915: Allow bigjoiner for MST
Date: Fri,  5 Apr 2024 00:34:41 +0300
Message-ID: <20240404213441.17637-18-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
References: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
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

Reviewed-by: Manasi Navare <navaremanasi@chromium.org>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
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

