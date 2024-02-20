Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADBE085CA72
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Feb 2024 23:09:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 107CB10E58F;
	Tue, 20 Feb 2024 22:09:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AmFWQzFU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF4ED10E58F
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Feb 2024 22:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708466968; x=1740002968;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JZxeZuqjFi8heVZSChG0Ns0cYbxkb2jobcB6s5blams=;
 b=AmFWQzFUpeIi6pNPGDuTVEnRIl4xJfQPt9tEqDCzSQFCJI1wqnYYwU6Z
 o0cAG/xvNehdAMg+31/j6gus7WnboNqUTAdnHQ2blHtASKL8DdLOZCROE
 4yfg54fzMQMRJiP1DqeetuWSBUfdvxWpB7mK8u3aSHiaHnZsVcN6JoL9E
 a/67akn17CP6kAB86PtsgPubKMMJ8Fmq+Kwb13XrIJVIyEFWMNzzHxXDq
 w23iB87+E6DNM8x/LUM6B2oatS0cTbgZUotVVPvWZjHQuElicLAUaRC3R
 ruDoJ5zhPMfY9gfUNx0S/k44xmxr2Znm25JWYCTj2hA9EcC/Rhfd82ToT Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="2709995"
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; 
   d="scan'208";a="2709995"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 14:09:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; 
   d="scan'208";a="9621107"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orviesa005.jf.intel.com with ESMTP; 20 Feb 2024 14:09:26 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com, Stanislav.Lisovskiy@intel.com,
 ville.syrjala@linux.intel.com, vidya.srinivas@intel.com
Subject: [PATCH 3/3] drm/i915: Fix bigjoiner case for DP2.0
Date: Wed, 21 Feb 2024 00:09:18 +0200
Message-Id: <20240220220918.8310-4-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20240220220918.8310-1-stanislav.lisovskiy@intel.com>
References: <20240220220918.8310-1-stanislav.lisovskiy@intel.com>
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

Patch calculates bigjoiner pipes in mst compute.
Patch also passes bigjoiner bool to validate plane
max size.

Signed-off-by: vsrini4 <vidya.srinivas@intel.com>
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 5307ddd4edcf5..fd27d9976c050 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -523,6 +523,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 				       struct drm_connector_state *conn_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
 	struct intel_dp *intel_dp = &intel_mst->primary->dp;
 	const struct intel_connector *connector =
@@ -540,6 +541,10 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
 
+	if (intel_dp_need_bigjoiner(intel_dp, adjusted_mode->crtc_hdisplay,
+				    adjusted_mode->crtc_clock))
+		pipe_config->bigjoiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
+
 	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->has_pch_encoder = false;
@@ -1318,12 +1323,6 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
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
@@ -1343,6 +1342,12 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 		return 0;
 	}
 
+	if (mode_rate > max_rate || mode->clock > max_dotclk ||
+	    drm_dp_calc_pbn_mode(mode->clock, min_bpp << 4) > port->full_pbn) {
+		*status = MODE_CLOCK_HIGH;
+		return 0;
+	}
+
 	if (DISPLAY_VER(dev_priv) >= 10 &&
 	    drm_dp_sink_supports_dsc(intel_connector->dp.dsc_dpcd)) {
 		/*
@@ -1385,7 +1390,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 		return 0;
 	}
 
-	*status = intel_mode_valid_max_plane_size(dev_priv, mode, false);
+	*status = intel_mode_valid_max_plane_size(dev_priv, mode, bigjoiner);
 	return 0;
 }
 
-- 
2.37.3

