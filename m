Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37CD18764C9
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Mar 2024 14:12:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 782EB10F9FF;
	Fri,  8 Mar 2024 13:12:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cjw6YOe7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1677F10F9FF
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Mar 2024 13:12:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709903521; x=1741439521;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+n1LDus5bN5wrqoBBq9Q8RZIFVWL+8PeYGqBTUyqW1s=;
 b=cjw6YOe7TSNjwxVQdcVHDdAVw7sNuNXRGIw6TMqsgBSxvExO3VMJNnsf
 2w2/0e3Kh4ZDOHmvkDeQUvTpXwEgch9e2CZ8p6elYTvCO4/giO8zF49d8
 HC8Pg9fS5gftzAjy+x5J6yVI6UJzxfJzMEZFg48f261X+e2k6OvSsxwnG
 7+vnJ0Va4qE7IyQzNbSaUmLjetAEuL8FpAzvZREY7iQMCta0cy3dYROKR
 V1fQg6/HTVEY5nI7W2gdrbXtJpigkBV8w/Kf5F/1AzGJtBZP8WuBfzaAz
 DgMoMLetLKDcJCukvytVCOFENfnH8pPKiZ7dfIvyDyIvEvrchmr39Ad41 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="4760608"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; 
   d="scan'208";a="4760608"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 05:12:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="10470423"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orviesa010.jf.intel.com with ESMTP; 08 Mar 2024 05:12:00 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Stanislav.Lisovskiy@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com, vidya.srinivas@intel.com
Subject: [PATCH 6/6] drm/i915: Allow bigjoiner for MST
Date: Fri,  8 Mar 2024 15:11:46 +0200
Message-Id: <20240308131146.32714-7-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20240308131146.32714-1-stanislav.lisovskiy@intel.com>
References: <20240308131146.32714-1-stanislav.lisovskiy@intel.com>
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

Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
Reviewed-by: Manasi Navare <navaremanasi@chromium.org>
---
 drivers/gpu/drm/i915/display/intel_ddi.c    |  6 ++++--
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 17 +++++++++--------
 2 files changed, 13 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 3756975bd561c..3bf8941107473 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3924,9 +3924,11 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
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
index 53aec023ce92f..3e6e2cd08d3ab 100644
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
@@ -1330,12 +1335,6 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
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
@@ -1349,8 +1348,10 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
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
@@ -1397,7 +1398,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 		return 0;
 	}
 
-	*status = intel_mode_valid_max_plane_size(dev_priv, mode, false);
+	*status = intel_mode_valid_max_plane_size(dev_priv, mode, bigjoiner);
 	return 0;
 }
 
-- 
2.37.3

