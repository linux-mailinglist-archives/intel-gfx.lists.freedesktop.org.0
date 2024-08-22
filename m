Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E95BD95BB50
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2024 18:05:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9180510EB51;
	Thu, 22 Aug 2024 16:05:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cxnoHpVs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC6BD10EB50;
 Thu, 22 Aug 2024 16:05:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724342721; x=1755878721;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zOlWg3AkRR6rKmIigdw+bYoj4T5l6N/fxuH5OVS0/kU=;
 b=cxnoHpVsnQj8P9FzbIPvSIwLS4sZhUXdOh9eKjmJfM0FQrPkZZHVeI4u
 nK3FPFs4Zz8AdvZVJ5wBksOYBBFxyuWK2VmfA9B98Ic2oD7ChPdPAJKqk
 YKoXcmT/tqWbDertzazCS0Q4b3XGyCex5vp9zWhS4ZanplB+BGR5gb3JR
 eqCrBf5K0qx/4fLLV9ZZVDCeArdVMRimIz/KfNCfU7dMEJePVJ1JKzGjh
 qL6K/Unbbt0nqPDSV5SQWI73lmd65MjIdqo8Ckp7kJZxUdAuCsZDeNADy
 PB4wY+Fv3e2yJGIS/3UWopjXqZBGQLjdbN6tCuQd2BW7aP5IKgtlpyLkg Q==;
X-CSE-ConnectionGUID: r3+S9hmaQJSgSYSLXnLVaA==
X-CSE-MsgGUID: YPifc5GjQNab7BVKV0RETw==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="22953083"
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="22953083"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 09:05:21 -0700
X-CSE-ConnectionGUID: blieqNSrRzaMoIEGOowByw==
X-CSE-MsgGUID: 4fhydX1DQQ+e0dxpVWUESw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="61169331"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.121])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 09:05:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 4/7] drm/i915/vrr: convert to struct intel_display
Date: Thu, 22 Aug 2024 19:04:52 +0300
Message-Id: <1d25a08c62a320133fbb0a89dac3dd1081139487.1724342644.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1724342644.git.jani.nikula@intel.com>
References: <cover.1724342644.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Going forward, struct intel_display shall replace struct
drm_i915_private as the main display device data pointer type. Convert
intel_vrr.[ch] to struct intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 127 +++++++++++------------
 1 file changed, 61 insertions(+), 66 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 7e1d9c718214..9a51f5bac307 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -17,8 +17,8 @@
 
 bool intel_vrr_is_capable(struct intel_connector *connector)
 {
+	struct intel_display *display = to_intel_display(connector);
 	const struct drm_display_info *info = &connector->base.display_info;
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_dp *intel_dp;
 
 	/*
@@ -43,7 +43,7 @@ bool intel_vrr_is_capable(struct intel_connector *connector)
 		return false;
 	}
 
-	return HAS_VRR(i915) &&
+	return HAS_VRR(display) &&
 		info->monitor_range.max_vfreq - info->monitor_range.min_vfreq > 10;
 }
 
@@ -89,10 +89,9 @@ intel_vrr_check_modeset(struct intel_atomic_state *state)
  */
 static int intel_vrr_vblank_exit_length(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
-	if (DISPLAY_VER(i915) >= 13)
+	if (DISPLAY_VER(display) >= 13)
 		return crtc_state->vrr.guardband;
 	else
 		/* The hw imposes the extra scanline before frame start */
@@ -113,11 +112,11 @@ int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state)
 static bool
 is_cmrr_frac_required(struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	int calculated_refresh_k, actual_refresh_k, pixel_clock_per_line;
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
-	if (!HAS_CMRR(i915))
+	if (!HAS_CMRR(display))
 		return false;
 
 	actual_refresh_k =
@@ -161,8 +160,7 @@ void
 intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			 struct drm_connector_state *conn_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
@@ -186,7 +184,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	if (!crtc_state->vrr.in_range)
 		return;
 
-	if (HAS_LRR(i915))
+	if (HAS_LRR(display))
 		crtc_state->update_lrr = true;
 
 	vmin = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
@@ -246,7 +244,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	 * For XE_LPD+, we use guardband and pipeline override
 	 * is deprecated.
 	 */
-	if (DISPLAY_VER(i915) >= 13) {
+	if (DISPLAY_VER(display) >= 13) {
 		crtc_state->vrr.guardband =
 			crtc_state->vrr.vmin + 1 - adjusted_mode->crtc_vblank_start;
 	} else {
@@ -258,9 +256,9 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 
 static u32 trans_vrr_ctl(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
-	if (DISPLAY_VER(i915) >= 13)
+	if (DISPLAY_VER(display) >= 13)
 		return VRR_CTL_IGN_MAX_SHIFT | VRR_CTL_FLIP_LINE_EN |
 			XELPD_VRR_CTL_VRR_GUARDBAND(crtc_state->vrr.guardband);
 	else
@@ -271,7 +269,7 @@ static u32 trans_vrr_ctl(const struct intel_crtc_state *crtc_state)
 
 void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
 	/*
@@ -279,133 +277,130 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 	 * TGL: generate VRR "safe window" for DSB vblank waits
 	 * ADL/DG2: make TRANS_SET_CONTEXT_LATENCY effective with VRR
 	 */
-	if (IS_DISPLAY_VER(dev_priv, 12, 13))
-		intel_de_rmw(dev_priv, CHICKEN_TRANS(cpu_transcoder),
+	if (IS_DISPLAY_VER(display, 12, 13))
+		intel_de_rmw(display, CHICKEN_TRANS(cpu_transcoder),
 			     0, PIPE_VBLANK_WITH_DELAY);
 
 	if (!crtc_state->vrr.flipline) {
-		intel_de_write(dev_priv,
-			       TRANS_VRR_CTL(dev_priv, cpu_transcoder), 0);
+		intel_de_write(display,
+			       TRANS_VRR_CTL(display, cpu_transcoder), 0);
 		return;
 	}
 
 	if (crtc_state->cmrr.enable) {
-		intel_de_write(dev_priv, TRANS_CMRR_M_HI(dev_priv, cpu_transcoder),
+		intel_de_write(display, TRANS_CMRR_M_HI(display, cpu_transcoder),
 			       upper_32_bits(crtc_state->cmrr.cmrr_m));
-		intel_de_write(dev_priv, TRANS_CMRR_M_LO(dev_priv, cpu_transcoder),
+		intel_de_write(display, TRANS_CMRR_M_LO(display, cpu_transcoder),
 			       lower_32_bits(crtc_state->cmrr.cmrr_m));
-		intel_de_write(dev_priv, TRANS_CMRR_N_HI(dev_priv, cpu_transcoder),
+		intel_de_write(display, TRANS_CMRR_N_HI(display, cpu_transcoder),
 			       upper_32_bits(crtc_state->cmrr.cmrr_n));
-		intel_de_write(dev_priv, TRANS_CMRR_N_LO(dev_priv, cpu_transcoder),
+		intel_de_write(display, TRANS_CMRR_N_LO(display, cpu_transcoder),
 			       lower_32_bits(crtc_state->cmrr.cmrr_n));
 	}
 
-	intel_de_write(dev_priv, TRANS_VRR_VMIN(dev_priv, cpu_transcoder),
+	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
 		       crtc_state->vrr.vmin - 1);
-	intel_de_write(dev_priv, TRANS_VRR_VMAX(dev_priv, cpu_transcoder),
+	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
 		       crtc_state->vrr.vmax - 1);
-	intel_de_write(dev_priv, TRANS_VRR_CTL(dev_priv, cpu_transcoder),
+	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
 		       trans_vrr_ctl(crtc_state));
-	intel_de_write(dev_priv, TRANS_VRR_FLIPLINE(dev_priv, cpu_transcoder),
+	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
 		       crtc_state->vrr.flipline - 1);
 }
 
 void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
 	if (!crtc_state->vrr.enable)
 		return;
 
-	intel_de_write(dev_priv, TRANS_PUSH(dev_priv, cpu_transcoder),
+	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
 		       TRANS_PUSH_EN | TRANS_PUSH_SEND);
 }
 
 bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
 	if (!crtc_state->vrr.enable)
 		return false;
 
-	return intel_de_read(dev_priv, TRANS_PUSH(dev_priv, cpu_transcoder)) & TRANS_PUSH_SEND;
+	return intel_de_read(display, TRANS_PUSH(display, cpu_transcoder)) & TRANS_PUSH_SEND;
 }
 
 void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
 	if (!crtc_state->vrr.enable)
 		return;
 
-	intel_de_write(dev_priv, TRANS_PUSH(dev_priv, cpu_transcoder),
+	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
 		       TRANS_PUSH_EN);
 
-	if (HAS_AS_SDP(dev_priv))
-		intel_de_write(dev_priv,
-			       TRANS_VRR_VSYNC(dev_priv, cpu_transcoder),
+	if (HAS_AS_SDP(display))
+		intel_de_write(display,
+			       TRANS_VRR_VSYNC(display, cpu_transcoder),
 			       VRR_VSYNC_END(crtc_state->vrr.vsync_end) |
 			       VRR_VSYNC_START(crtc_state->vrr.vsync_start));
 
 	if (crtc_state->cmrr.enable) {
-		intel_de_write(dev_priv, TRANS_VRR_CTL(dev_priv, cpu_transcoder),
+		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
 			       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
 			       trans_vrr_ctl(crtc_state));
 	} else {
-		intel_de_write(dev_priv, TRANS_VRR_CTL(dev_priv, cpu_transcoder),
+		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
 			       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
 	}
 }
 
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(old_crtc_state);
 	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
 
 	if (!old_crtc_state->vrr.enable)
 		return;
 
-	intel_de_write(dev_priv, TRANS_VRR_CTL(dev_priv, cpu_transcoder),
+	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
 		       trans_vrr_ctl(old_crtc_state));
-	intel_de_wait_for_clear(dev_priv,
-				TRANS_VRR_STATUS(dev_priv, cpu_transcoder),
+	intel_de_wait_for_clear(display,
+				TRANS_VRR_STATUS(display, cpu_transcoder),
 				VRR_STATUS_VRR_EN_LIVE, 1000);
-	intel_de_write(dev_priv, TRANS_PUSH(dev_priv, cpu_transcoder), 0);
+	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
 
-	if (HAS_AS_SDP(dev_priv))
-		intel_de_write(dev_priv,
-			       TRANS_VRR_VSYNC(dev_priv, cpu_transcoder), 0);
+	if (HAS_AS_SDP(display))
+		intel_de_write(display,
+			       TRANS_VRR_VSYNC(display, cpu_transcoder), 0);
 }
 
 void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	u32 trans_vrr_ctl, trans_vrr_vsync;
 
-	trans_vrr_ctl = intel_de_read(dev_priv,
-				      TRANS_VRR_CTL(dev_priv, cpu_transcoder));
+	trans_vrr_ctl = intel_de_read(display,
+				      TRANS_VRR_CTL(display, cpu_transcoder));
 
 	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
-	if (HAS_CMRR(dev_priv))
+	if (HAS_CMRR(display))
 		crtc_state->cmrr.enable = (trans_vrr_ctl & VRR_CTL_CMRR_ENABLE);
 
 	if (crtc_state->cmrr.enable) {
 		crtc_state->cmrr.cmrr_n =
-			intel_de_read64_2x32(dev_priv, TRANS_CMRR_N_LO(dev_priv, cpu_transcoder),
-					     TRANS_CMRR_N_HI(dev_priv, cpu_transcoder));
+			intel_de_read64_2x32(display, TRANS_CMRR_N_LO(display, cpu_transcoder),
+					     TRANS_CMRR_N_HI(display, cpu_transcoder));
 		crtc_state->cmrr.cmrr_m =
-			intel_de_read64_2x32(dev_priv, TRANS_CMRR_M_LO(dev_priv, cpu_transcoder),
-					     TRANS_CMRR_M_HI(dev_priv, cpu_transcoder));
+			intel_de_read64_2x32(display, TRANS_CMRR_M_LO(display, cpu_transcoder),
+					     TRANS_CMRR_M_HI(display, cpu_transcoder));
 	}
 
-	if (DISPLAY_VER(dev_priv) >= 13)
+	if (DISPLAY_VER(display) >= 13)
 		crtc_state->vrr.guardband =
 			REG_FIELD_GET(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, trans_vrr_ctl);
 	else
@@ -414,21 +409,21 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 				REG_FIELD_GET(VRR_CTL_PIPELINE_FULL_MASK, trans_vrr_ctl);
 
 	if (trans_vrr_ctl & VRR_CTL_FLIP_LINE_EN) {
-		crtc_state->vrr.flipline = intel_de_read(dev_priv,
-							 TRANS_VRR_FLIPLINE(dev_priv, cpu_transcoder)) + 1;
-		crtc_state->vrr.vmax = intel_de_read(dev_priv,
-						     TRANS_VRR_VMAX(dev_priv, cpu_transcoder)) + 1;
-		crtc_state->vrr.vmin = intel_de_read(dev_priv,
-						     TRANS_VRR_VMIN(dev_priv, cpu_transcoder)) + 1;
+		crtc_state->vrr.flipline = intel_de_read(display,
+							 TRANS_VRR_FLIPLINE(display, cpu_transcoder)) + 1;
+		crtc_state->vrr.vmax = intel_de_read(display,
+						     TRANS_VRR_VMAX(display, cpu_transcoder)) + 1;
+		crtc_state->vrr.vmin = intel_de_read(display,
+						     TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
 	}
 
 	if (crtc_state->vrr.enable) {
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 
-		if (HAS_AS_SDP(dev_priv)) {
+		if (HAS_AS_SDP(display)) {
 			trans_vrr_vsync =
-				intel_de_read(dev_priv,
-					      TRANS_VRR_VSYNC(dev_priv, cpu_transcoder));
+				intel_de_read(display,
+					      TRANS_VRR_VSYNC(display, cpu_transcoder));
 			crtc_state->vrr.vsync_start =
 				REG_FIELD_GET(VRR_VSYNC_START_MASK, trans_vrr_vsync);
 			crtc_state->vrr.vsync_end =
-- 
2.39.2

