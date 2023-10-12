Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7A6C7C7722
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 21:45:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4A3110E546;
	Thu, 12 Oct 2023 19:45:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08B2D10E546
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 19:45:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697139926; x=1728675926;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=knmNDepX5791icTRQkz1y2B+LPV8iCOGtHdOQljrNmM=;
 b=kcQPp0Pqmz+C0v6sR6Ea1L0cppSwJc0BJxYhNHIFARDn+ngBWaXtLc4h
 18YlF+QaNRERG7+rQQhWKTIA8VFKDHhoTqRPlp31e+WFt4IIM6gciCzac
 tBELHTXD2/b0C4z1Jf3xVBylatKu3jNs+PkPNS/jbu0Z1ZaSJhcq4iYiS
 mN+mIk/iFOXbBCzn6s9oOakzWY5QjI3DcrcuaWTrvEI/jab2wP6kdIArl
 whwSg9jutKYt0to8IIA0plKWNdFPX2GoRynKt/Xmp/qXGUM9VlJe/bKv1
 JClGGFHlzXKCWObcKnA6BfdyDlAEMkIz4AMh+ISFcVQu9gNvyyYe/cumz g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="384865224"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="384865224"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 12:45:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="824741566"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="824741566"
Received: from vsrini4-xps-8920.iind.intel.com (HELO localhost.localdomain)
 ([10.223.163.48])
 by fmsmga004.fm.intel.com with ESMTP; 12 Oct 2023 12:45:09 -0700
From: vsrini4 <vidya.srinivas@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Oct 2023 01:00:00 +0530
Message-Id: <20231012193000.11917-1-vidya.srinivas@intel.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Fix bigjoiner case for DP2.0
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
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index e3f176a093d2..f499ce39b2a8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -308,6 +308,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 				       struct drm_connector_state *conn_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
 	struct intel_dp *intel_dp = &intel_mst->primary->dp;
 	const struct drm_display_mode *adjusted_mode =
@@ -318,6 +319,10 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
 
+	if (intel_dp_need_bigjoiner(intel_dp, adjusted_mode->crtc_hdisplay,
+				    adjusted_mode->crtc_clock))
+		pipe_config->bigjoiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
+
 	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->has_pch_encoder = false;
@@ -936,12 +941,6 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 	if (ret)
 		return ret;
 
-	if (mode_rate > max_rate || mode->clock > max_dotclk ||
-	    drm_dp_calc_pbn_mode(mode->clock, min_bpp, false) > port->full_pbn) {
-		*status = MODE_CLOCK_HIGH;
-		return 0;
-	}
-
 	if (mode->clock < 10000) {
 		*status = MODE_CLOCK_LOW;
 		return 0;
@@ -957,6 +956,12 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 		max_dotclk *= 2;
 	}
 
+	if (mode_rate > max_rate || mode->clock > max_dotclk ||
+	    drm_dp_calc_pbn_mode(mode->clock, min_bpp, false) > port->full_pbn) {
+		*status = MODE_CLOCK_HIGH;
+		return 0;
+	}
+
 	if (DISPLAY_VER(dev_priv) >= 10 &&
 	    drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)) {
 		/*
@@ -994,7 +999,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 	if (mode_rate > max_rate && !dsc)
 		return MODE_CLOCK_HIGH;
 
-	*status = intel_mode_valid_max_plane_size(dev_priv, mode, false);
+	*status = intel_mode_valid_max_plane_size(dev_priv, mode, bigjoiner);
 	return 0;
 }
 
-- 
2.33.0

