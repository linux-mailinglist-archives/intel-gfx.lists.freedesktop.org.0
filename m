Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C651E87A562
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 11:00:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0853B10F75D;
	Wed, 13 Mar 2024 10:00:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IQjZBHwu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D17E010F430
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Mar 2024 10:00:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710324010; x=1741860010;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RTIs2OtOU46LdZ37jCiO9gi5GtFBV3WDMZ8LpQyX9rc=;
 b=IQjZBHwuktzhnhIS0040SE/oE9Uu8TdeO4n4Y3beNmM7d3N6+cafvh5D
 VmWDgW/GUV/w5Ix3pAx7rBmQ64Jy02uw0gAtXuPnarusnJJhlH9jJ/r4M
 lnzSY0z67c9Y8gJU7Piu1LDKhX1pFI8ya4R1bJP0Mbqw46ekpvEwwysGB
 oVOfJCoKhLStZZvynWaucuxPI0pkYMtEgWAPwLiGtqBew4aY1VPbX/7U9
 S2oJ1TriuvEjVJC7ieFbLNktlcoZCug3ciFZ6k2dippplQqz7mekP8vD4
 iAtDNWJS1RWRu7cyZZlSdLTIaHgphxcJFq1Jd9rNc7sEDBvPlwuXK6b3R Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="8886012"
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; 
   d="scan'208";a="8886012"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 03:00:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; d="scan'208";a="11931659"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmviesa006.fm.intel.com with ESMTP; 13 Mar 2024 03:00:01 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Stanislav.Lisovskiy@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com, vidya.srinivas@intel.com
Subject: [PATCH 6/6] drm/i915: Allow bigjoiner for MST
Date: Wed, 13 Mar 2024 11:59:49 +0200
Message-Id: <20240313095949.6898-7-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20240313095949.6898-1-stanislav.lisovskiy@intel.com>
References: <20240313095949.6898-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
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

Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
Reviewed-by: Manasi Navare <navaremanasi@chromium.org>
---
 drivers/gpu/drm/i915/display/intel_ddi.c    |  6 ++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 57 +++++++++++++++------
 2 files changed, 46 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index edfd22bea9e7a..0f9b0123df39a 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3934,9 +3934,11 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
 		pipe_config->lane_count =
 			((temp & DDI_PORT_WIDTH_MASK) >> DDI_PORT_WIDTH_SHIFT) + 1;
 
-		if (DISPLAY_VER(dev_priv) >= 12)
-			pipe_config->mst_master_transcoder =
+		if (DISPLAY_VER(dev_priv) >= 12) {
+			if (!intel_crtc_is_bigjoiner_slave(pipe_config))
+				pipe_config->mst_master_transcoder =
 					REG_FIELD_GET(TRANS_DDI_MST_TRANSPORT_SELECT_MASK, temp);
+		}
 
 		intel_cpu_transcoder_get_m1_n1(crtc, cpu_transcoder,
 					       &pipe_config->dp_m_n);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 53aec023ce92f..c8dc4c7bf53cf 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -525,6 +525,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_atomic_state *state = to_intel_atomic_state(conn_state->state);
+	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
 	struct intel_dp *intel_dp = &intel_mst->primary->dp;
 	const struct intel_connector *connector =
@@ -542,6 +543,10 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
 
+	if (intel_dp_need_bigjoiner(intel_dp, adjusted_mode->crtc_hdisplay,
+				    adjusted_mode->crtc_clock))
+		pipe_config->bigjoiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
+
 	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->has_pch_encoder = false;
@@ -955,6 +960,8 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 		drm_atomic_get_mst_payload_state(new_mst_state, connector->port);
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	bool last_mst_stream;
+	u8 pipe_mask = intel_crtc_joined_pipe_mask(old_crtc_state);
+	struct intel_crtc *crtc;
 
 	intel_dp->active_mst_links--;
 	last_mst_stream = intel_dp->active_mst_links == 0;
@@ -962,7 +969,12 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 		    DISPLAY_VER(dev_priv) >= 12 && last_mst_stream &&
 		    !intel_dp_mst_is_master_trans(old_crtc_state));
 
-	intel_crtc_vblank_off(old_crtc_state);
+	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc, pipe_mask) {
+		const struct intel_crtc_state *_old_crtc_state =
+			intel_atomic_get_old_crtc_state(state, crtc);
+
+		intel_crtc_vblank_off(_old_crtc_state);
+	}
 
 	intel_disable_transcoder(old_crtc_state);
 
@@ -980,12 +992,17 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 
 	intel_ddi_disable_transcoder_func(old_crtc_state);
 
-	intel_dsc_disable(old_crtc_state);
+	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc, pipe_mask) {
+		const struct intel_crtc_state *_old_crtc_state =
+			intel_atomic_get_old_crtc_state(state, crtc);
 
-	if (DISPLAY_VER(dev_priv) >= 9)
-		skl_scaler_disable(old_crtc_state);
-	else
-		ilk_pfit_disable(old_crtc_state);
+		intel_dsc_disable(_old_crtc_state);
+
+		if (DISPLAY_VER(dev_priv) >= 9)
+			skl_scaler_disable(_old_crtc_state);
+		else
+			ilk_pfit_disable(_old_crtc_state);
+	}
 
 	/*
 	 * Power down mst path before disabling the port, otherwise we end
@@ -1131,6 +1148,8 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 		drm_atomic_get_new_mst_topology_state(&state->base, &intel_dp->mst_mgr);
 	enum transcoder trans = pipe_config->cpu_transcoder;
 	bool first_mst_stream = intel_dp->active_mst_links == 1;
+	u8 pipe_mask = intel_crtc_joined_pipe_mask(pipe_config);
+	struct intel_crtc *crtc;
 
 	drm_WARN_ON(&dev_priv->drm, pipe_config->has_pch_encoder);
 
@@ -1172,7 +1191,19 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 
 	intel_enable_transcoder(pipe_config);
 
-	intel_crtc_vblank_on(pipe_config);
+	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, crtc, pipe_mask) {
+		const struct intel_crtc_state *new_crtc_state =
+			intel_atomic_get_new_crtc_state(state, crtc);
+
+		intel_dsc_enable(new_crtc_state);
+
+		if (DISPLAY_VER(dev_priv) >= 9)
+			skl_pfit_enable(new_crtc_state);
+		else
+			ilk_pfit_enable(new_crtc_state);
+
+		intel_crtc_vblank_on(new_crtc_state);
+	}
 
 	intel_hdcp_enable(state, encoder, pipe_config, conn_state);
 }
@@ -1330,12 +1361,6 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 	 *   corresponding link capabilities of the sink) in case the
 	 *   stream is uncompressed for it by the last branch device.
 	 */
-	if (mode_rate > max_rate || mode->clock > max_dotclk ||
-	    drm_dp_calc_pbn_mode(mode->clock, min_bpp << 4) > port->full_pbn) {
-		*status = MODE_CLOCK_HIGH;
-		return 0;
-	}
-
 	if (mode->clock < 10000) {
 		*status = MODE_CLOCK_LOW;
 		return 0;
@@ -1349,8 +1374,10 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 	if (intel_dp_need_bigjoiner(intel_dp, mode->hdisplay, target_clock)) {
 		bigjoiner = true;
 		max_dotclk *= 2;
+	}
 
-		/* TODO: add support for bigjoiner */
+	if (mode_rate > max_rate || mode->clock > max_dotclk ||
+	    drm_dp_calc_pbn_mode(mode->clock, min_bpp << 4) > port->full_pbn) {
 		*status = MODE_CLOCK_HIGH;
 		return 0;
 	}
@@ -1397,7 +1424,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 		return 0;
 	}
 
-	*status = intel_mode_valid_max_plane_size(dev_priv, mode, false);
+	*status = intel_mode_valid_max_plane_size(dev_priv, mode, bigjoiner);
 	return 0;
 }
 
-- 
2.37.3

