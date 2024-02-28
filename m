Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C878486B2B5
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 16:07:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5429C10E341;
	Wed, 28 Feb 2024 15:07:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KUrjzTVg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 306C710E341
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Feb 2024 15:07:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709132858; x=1740668858;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GHDAyRpK9GrZlTXL1ipYME8uE/QGX0X37j2kdh9VWt8=;
 b=KUrjzTVgNkuTYvMJN0Q0JoFel9owls5u2j5aOP5clW1T8rYvhDEPy1T6
 +9Nu0MF+VLsex62bpluCrhvaXM4tFC0ofjD+vKCBSDJOQaUp1eonIs3pv
 yDoZK6U6dj+qBTirL6TFeZqo1a4Nnv0aPRHOIl25ZAd7Gcf71d4XHZA1B
 NCE5r3B9i+SSb3J35IoYRwhoMd9bB3OMMdmaFV2crv7Z8jEIbiFPe8Qzd
 SYagHEelZQf602pDVDt/FQDbYEp+VcTySMxO1AGtsQbfNm5ScDtCRKu1R
 qneObF7Gj/WqZ0glSDrWFKzhBHHFsVnyzzMh5tS6U2JGyRi4A7S3KhwF2 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10998"; a="14954611"
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; d="scan'208";a="14954611"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 07:07:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; d="scan'208";a="12123549"
Received: from vsrini4-xps-8920.iind.intel.com (HELO localhost.localdomain)
 ([10.223.163.48])
 by orviesa004.jf.intel.com with ESMTP; 28 Feb 2024 07:07:36 -0800
From: Vidya Srinivas <vidya.srinivas@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: khaled.almahallawy@intel.com,
	Vidya Srinivas <vidya.srinivas@intel.com>
Subject: [PATCH 1/1] drm/i915: Allow bigjoiner for MST
Date: Wed, 28 Feb 2024 20:19:54 +0530
Message-Id: <20240228144954.6797-2-vidya.srinivas@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20240228144954.6797-1-vidya.srinivas@intel.com>
References: <20240227181849.22614-1-vidya.srinivas@intel.com>
 <20240228144954.6797-1-vidya.srinivas@intel.com>
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

We need bigjoiner support with MST functionality
for MST monitor resolutions > 5K to work.
Adding support for the same.

Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index db1254b036f1..c5e7293c13eb 100644
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
2.33.0

