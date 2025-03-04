Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32ECEA4DA65
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 11:28:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C33AB10E568;
	Tue,  4 Mar 2025 10:28:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q4cSa1WL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D95F510E56C;
 Tue,  4 Mar 2025 10:28:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741084085; x=1772620085;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NBF2QXHqXq1Ikz7nCy8nVnM4pQT4uwylkznda40QBTM=;
 b=Q4cSa1WLYpLUAcpYcZzTTo19g600waOp8J+CGx0HDLK4nI49IYZtGxI4
 039XztlkybCwBdBsdv93oXDLHkC5ypmyPqESCfjY2PmFer5370JlNztJ8
 gycZSt1VXaN08Jro4+rxm05nKJFpPl3LraVszmVKZgaIqiV5GlGkoSvPw
 NYFIVQ7aSiS2hpp1WagmIEdIzg3PLvRTe0bG8pgBY4ULwPGYi7JVzGv6e
 v0l4zI10M3059c/2XIUfVSb/TeAHINz9YsSpT2a+6UZntG1fBUZs9D3Kp
 CemzSFJQGoN6ey0BrA6wldCQ8Z0n6MoxkJb5RzVayFlBH/HcRo2ljHmy+ A==;
X-CSE-ConnectionGUID: h0qzIoRGQy6GT2NRKk7lVg==
X-CSE-MsgGUID: Kajstk1oRISIaKzM94VB1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="52632792"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="52632792"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 02:28:04 -0800
X-CSE-ConnectionGUID: zRteNIV+TlePBBXtXEvvnA==
X-CSE-MsgGUID: inR4EIrrQFOPOHOOoxHfyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="118321702"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.192])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 02:28:01 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 5/5] drm/i915/display: convert intel_display.c to struct
 intel_display
Date: Tue,  4 Mar 2025 12:27:34 +0200
Message-Id: <1c0bafcb978d1cf4f4d54be2f497386f5302f7c8.1741084010.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1741084010.git.jani.nikula@intel.com>
References: <cover.1741084010.git.jani.nikula@intel.com>
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

Going forward, struct intel_display is the main display device data
pointer. Convert as much as possible of intel_display.c to struct
intel_display.

This exposes a couple of outside issues that need to be fixed as well,
in a register macro and a DSI PLL stub.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 834 +++++++++----------
 drivers/gpu/drm/i915/display/vlv_dsi_pll.h   |   6 +-
 drivers/gpu/drm/i915/i915_reg.h              |   4 +-
 3 files changed, 413 insertions(+), 431 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6962bc0da53c..f7cb38145e9d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -203,29 +203,29 @@ static bool is_hdr_mode(const struct intel_crtc_state *crtc_state)
 
 /* WA Display #0827: Gen9:all */
 static void
-skl_wa_827(struct drm_i915_private *dev_priv, enum pipe pipe, bool enable)
+skl_wa_827(struct intel_display *display, enum pipe pipe, bool enable)
 {
-	intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(pipe),
+	intel_de_rmw(display, CLKGATE_DIS_PSL(pipe),
 		     DUPS1_GATING_DIS | DUPS2_GATING_DIS,
 		     enable ? DUPS1_GATING_DIS | DUPS2_GATING_DIS : 0);
 }
 
 /* Wa_2006604312:icl,ehl */
 static void
-icl_wa_scalerclkgating(struct drm_i915_private *dev_priv, enum pipe pipe,
+icl_wa_scalerclkgating(struct intel_display *display, enum pipe pipe,
 		       bool enable)
 {
-	intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(pipe),
+	intel_de_rmw(display, CLKGATE_DIS_PSL(pipe),
 		     DPFR_GATING_DIS,
 		     enable ? DPFR_GATING_DIS : 0);
 }
 
 /* Wa_1604331009:icl,jsl,ehl */
 static void
-icl_wa_cursorclkgating(struct drm_i915_private *dev_priv, enum pipe pipe,
+icl_wa_cursorclkgating(struct intel_display *display, enum pipe pipe,
 		       bool enable)
 {
-	intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(pipe),
+	intel_de_rmw(display, CLKGATE_DIS_PSL(pipe),
 		     CURSOR_GATING_DIS,
 		     enable ? CURSOR_GATING_DIS : 0);
 }
@@ -405,16 +405,16 @@ struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state)
 static void
 intel_wait_for_pipe_off(const struct intel_crtc_state *old_crtc_state)
 {
+	struct intel_display *display = to_intel_display(old_crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
-	if (DISPLAY_VER(dev_priv) >= 4) {
+	if (DISPLAY_VER(display) >= 4) {
 		enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
 
 		/* Wait for the Pipe State to go off */
-		if (intel_de_wait_for_clear(dev_priv, TRANSCONF(dev_priv, cpu_transcoder),
+		if (intel_de_wait_for_clear(display, TRANSCONF(display, cpu_transcoder),
 					    TRANSCONF_STATE_ENABLE, 100))
-			drm_WARN(&dev_priv->drm, 1, "pipe_off wait timed out\n");
+			drm_WARN(display->drm, 1, "pipe_off wait timed out\n");
 	} else {
 		intel_wait_for_pipe_scanline_stopped(crtc);
 	}
@@ -468,10 +468,10 @@ static void assert_plane(struct intel_plane *plane, bool state)
 
 static void assert_planes_disabled(struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	struct intel_plane *plane;
 
-	for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, plane)
+	for_each_intel_plane_on_crtc(display->drm, crtc, plane)
 		assert_plane_disabled(plane);
 }
 
@@ -479,7 +479,6 @@ void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state)
 {
 	struct intel_display *display = to_intel_display(new_crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
 	enum pipe pipe = crtc->pipe;
 	u32 val;
@@ -493,7 +492,7 @@ void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state)
 	 * a plane.  On ILK+ the pipe PLLs are integrated, so we don't
 	 * need the check.
 	 */
-	if (HAS_GMCH(dev_priv)) {
+	if (HAS_GMCH(display)) {
 		if (intel_crtc_has_type(new_crtc_state, INTEL_OUTPUT_DSI))
 			assert_dsi_pll_enabled(display);
 		else
@@ -510,11 +509,11 @@ void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state)
 	}
 
 	/* Wa_22012358565:adl-p */
-	if (DISPLAY_VER(dev_priv) == 13)
+	if (DISPLAY_VER(display) == 13)
 		intel_de_rmw(display, PIPE_ARB_CTL(display, pipe),
 			     0, PIPE_ARB_USE_PROG_SLOTS);
 
-	if (DISPLAY_VER(dev_priv) >= 14) {
+	if (DISPLAY_VER(display) >= 14) {
 		u32 clear = DP_DSC_INSERT_SF_AT_EOL_WA;
 		u32 set = 0;
 
@@ -528,7 +527,7 @@ void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state)
 	val = intel_de_read(display, TRANSCONF(display, cpu_transcoder));
 	if (val & TRANSCONF_ENABLE) {
 		/* we keep both pipes enabled on 830 */
-		drm_WARN_ON(&dev_priv->drm, !IS_I830(dev_priv));
+		drm_WARN_ON(display->drm, !display->platform.i830);
 		return;
 	}
 
@@ -559,12 +558,11 @@ void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state)
 {
 	struct intel_display *display = to_intel_display(old_crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
 	enum pipe pipe = crtc->pipe;
 	u32 val;
 
-	drm_dbg_kms(&dev_priv->drm, "disabling pipe %c\n", pipe_name(pipe));
+	drm_dbg_kms(display->drm, "disabling pipe %c\n", pipe_name(pipe));
 
 	/*
 	 * Make sure planes won't keep trying to pump pixels to us,
@@ -572,7 +570,7 @@ void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state)
 	 */
 	assert_planes_disabled(crtc);
 
-	val = intel_de_read(dev_priv, TRANSCONF(dev_priv, cpu_transcoder));
+	val = intel_de_read(display, TRANSCONF(display, cpu_transcoder));
 	if ((val & TRANSCONF_ENABLE) == 0)
 		return;
 
@@ -584,17 +582,17 @@ void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state)
 		val &= ~TRANSCONF_DOUBLE_WIDE;
 
 	/* Don't disable pipe or pipe PLLs if needed */
-	if (!IS_I830(dev_priv))
+	if (!display->platform.i830)
 		val &= ~TRANSCONF_ENABLE;
 
 	/* Wa_1409098942:adlp+ */
-	if (DISPLAY_VER(dev_priv) >= 13 &&
+	if (DISPLAY_VER(display) >= 13 &&
 	    old_crtc_state->dsc.compression_enable)
 		val &= ~TRANSCONF_PIXEL_COUNT_SCALING_MASK;
 
-	intel_de_write(dev_priv, TRANSCONF(dev_priv, cpu_transcoder), val);
+	intel_de_write(display, TRANSCONF(display, cpu_transcoder), val);
 
-	if (DISPLAY_VER(dev_priv) >= 12)
+	if (DISPLAY_VER(display) >= 12)
 		intel_de_rmw(display, CHICKEN_TRANS(display, cpu_transcoder),
 			     FECSTALL_DIS_DPTSTREAM_DPTTG, 0);
 
@@ -643,7 +641,7 @@ void intel_set_plane_visible(struct intel_crtc_state *crtc_state,
 
 void intel_plane_fixup_bitmasks(struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct drm_plane *plane;
 
 	/*
@@ -654,7 +652,7 @@ void intel_plane_fixup_bitmasks(struct intel_crtc_state *crtc_state)
 	crtc_state->enabled_planes = 0;
 	crtc_state->active_planes = 0;
 
-	drm_for_each_plane_mask(plane, &dev_priv->drm,
+	drm_for_each_plane_mask(plane, display->drm,
 				crtc_state->uapi.plane_mask) {
 		crtc_state->enabled_planes |= BIT(to_intel_plane(plane)->id);
 		crtc_state->active_planes |= BIT(to_intel_plane(plane)->id);
@@ -671,7 +669,7 @@ void intel_plane_disable_noatomic(struct intel_crtc *crtc,
 	struct intel_plane_state *plane_state =
 		to_intel_plane_state(plane->base.state);
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "Disabling [PLANE:%d:%s] on [CRTC:%d:%s]\n",
 		    plane->base.base.id, plane->base.name,
 		    crtc->base.base.id, crtc->base.name);
@@ -699,7 +697,7 @@ void intel_plane_disable_noatomic(struct intel_crtc *crtc,
 	 * event which is after the vblank start event, so we need to have a
 	 * wait-for-vblank between disabling the plane and the pipe.
 	 */
-	if (HAS_GMCH(dev_priv) &&
+	if (HAS_GMCH(display) &&
 	    intel_set_memory_cxsr(dev_priv, false))
 		intel_plane_initial_vblank_wait(crtc);
 
@@ -707,7 +705,7 @@ void intel_plane_disable_noatomic(struct intel_crtc *crtc,
 	 * Gen2 reports pipe underruns whenever all planes are disabled.
 	 * So disable underrun reporting before all the planes get disabled.
 	 */
-	if (DISPLAY_VER(dev_priv) == 2 && !crtc_state->active_planes)
+	if (DISPLAY_VER(display) == 2 && !crtc_state->active_planes)
 		intel_set_cpu_fifo_underrun_reporting(display, crtc->pipe, false);
 
 	intel_plane_disable_arm(NULL, plane, crtc_state);
@@ -727,12 +725,12 @@ intel_plane_fence_y_offset(const struct intel_plane_state *plane_state)
 
 static void icl_set_pipe_chicken(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 	u32 tmp;
 
-	tmp = intel_de_read(dev_priv, PIPE_CHICKEN(pipe));
+	tmp = intel_de_read(display, PIPE_CHICKEN(pipe));
 
 	/*
 	 * Display WA #1153: icl
@@ -752,16 +750,16 @@ static void icl_set_pipe_chicken(const struct intel_crtc_state *crtc_state)
 	 * Underrun recovery must always be disabled on display 13+.
 	 * DG2 chicken bit meaning is inverted compared to other platforms.
 	 */
-	if (IS_DG2(dev_priv))
+	if (display->platform.dg2)
 		tmp &= ~UNDERRUN_RECOVERY_ENABLE_DG2;
-	else if ((DISPLAY_VER(dev_priv) >= 13) && (DISPLAY_VER(dev_priv) < 30))
+	else if ((DISPLAY_VER(display) >= 13) && (DISPLAY_VER(display) < 30))
 		tmp |= UNDERRUN_RECOVERY_DISABLE_ADLP;
 
 	/* Wa_14010547955:dg2 */
-	if (IS_DG2(dev_priv))
+	if (display->platform.dg2)
 		tmp |= DG2_RENDER_CCSTAG_4_3_EN;
 
-	intel_de_write(dev_priv, PIPE_CHICKEN(pipe), tmp);
+	intel_de_write(display, PIPE_CHICKEN(pipe), tmp);
 }
 
 bool intel_has_pending_fb_unpin(struct intel_display *display)
@@ -833,13 +831,13 @@ static void intel_crtc_dpms_overlay_disable(struct intel_crtc *crtc)
 
 static bool needs_nv12_wa(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
 	if (!crtc_state->nv12_planes)
 		return false;
 
 	/* WA Display #0827: Gen9:all */
-	if (DISPLAY_VER(dev_priv) == 9)
+	if (DISPLAY_VER(display) == 9)
 		return true;
 
 	return false;
@@ -847,10 +845,10 @@ static bool needs_nv12_wa(const struct intel_crtc_state *crtc_state)
 
 static bool needs_scalerclk_wa(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
 	/* Wa_2006604312:icl,ehl */
-	if (crtc_state->scaler_state.scaler_users > 0 && DISPLAY_VER(dev_priv) == 11)
+	if (crtc_state->scaler_state.scaler_users > 0 && DISPLAY_VER(display) == 11)
 		return true;
 
 	return false;
@@ -858,31 +856,31 @@ static bool needs_scalerclk_wa(const struct intel_crtc_state *crtc_state)
 
 static bool needs_cursorclk_wa(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
 	/* Wa_1604331009:icl,jsl,ehl */
 	if (is_hdr_mode(crtc_state) &&
 	    crtc_state->active_planes & BIT(PLANE_CURSOR) &&
-	    DISPLAY_VER(dev_priv) == 11)
+	    DISPLAY_VER(display) == 11)
 		return true;
 
 	return false;
 }
 
-static void intel_async_flip_vtd_wa(struct drm_i915_private *i915,
+static void intel_async_flip_vtd_wa(struct intel_display *display,
 				    enum pipe pipe, bool enable)
 {
-	if (DISPLAY_VER(i915) == 9) {
+	if (DISPLAY_VER(display) == 9) {
 		/*
 		 * "Plane N stretch max must be programmed to 11b (x1)
 		 *  when Async flips are enabled on that plane."
 		 */
-		intel_de_rmw(i915, CHICKEN_PIPESL_1(pipe),
+		intel_de_rmw(display, CHICKEN_PIPESL_1(pipe),
 			     SKL_PLANE1_STRETCH_MAX_MASK,
 			     enable ? SKL_PLANE1_STRETCH_MAX_X1 : SKL_PLANE1_STRETCH_MAX_X8);
 	} else {
 		/* Also needed on HSW/BDW albeit undocumented */
-		intel_de_rmw(i915, CHICKEN_PIPESL_1(pipe),
+		intel_de_rmw(display, CHICKEN_PIPESL_1(pipe),
 			     HSW_PRI_STRETCH_MAX_MASK,
 			     enable ? HSW_PRI_STRETCH_MAX_X1 : HSW_PRI_STRETCH_MAX_X8);
 	}
@@ -890,10 +888,12 @@ static void intel_async_flip_vtd_wa(struct drm_i915_private *i915,
 
 static bool needs_async_flip_vtd_wa(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
 	return crtc_state->uapi.async_flip && i915_vtd_active(i915) &&
-		(DISPLAY_VER(i915) == 9 || IS_BROADWELL(i915) || IS_HASWELL(i915));
+		(DISPLAY_VER(display) == 9 || display->platform.broadwell ||
+		 display->platform.haswell);
 }
 
 static void intel_encoders_audio_enable(struct intel_atomic_state *state,
@@ -1042,6 +1042,7 @@ static bool audio_disabling(const struct intel_crtc_state *old_crtc_state,
 static void intel_post_plane_update(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
@@ -1060,19 +1061,19 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 
 	if (needs_async_flip_vtd_wa(old_crtc_state) &&
 	    !needs_async_flip_vtd_wa(new_crtc_state))
-		intel_async_flip_vtd_wa(dev_priv, pipe, false);
+		intel_async_flip_vtd_wa(display, pipe, false);
 
 	if (needs_nv12_wa(old_crtc_state) &&
 	    !needs_nv12_wa(new_crtc_state))
-		skl_wa_827(dev_priv, pipe, false);
+		skl_wa_827(display, pipe, false);
 
 	if (needs_scalerclk_wa(old_crtc_state) &&
 	    !needs_scalerclk_wa(new_crtc_state))
-		icl_wa_scalerclkgating(dev_priv, pipe, false);
+		icl_wa_scalerclkgating(display, pipe, false);
 
 	if (needs_cursorclk_wa(old_crtc_state) &&
 	    !needs_cursorclk_wa(new_crtc_state))
-		icl_wa_cursorclkgating(dev_priv, pipe, false);
+		icl_wa_cursorclkgating(display, pipe, false);
 
 	if (intel_crtc_needs_color_update(new_crtc_state))
 		intel_color_post_update(new_crtc_state);
@@ -1194,22 +1195,22 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 
 	if (!needs_async_flip_vtd_wa(old_crtc_state) &&
 	    needs_async_flip_vtd_wa(new_crtc_state))
-		intel_async_flip_vtd_wa(dev_priv, pipe, true);
+		intel_async_flip_vtd_wa(display, pipe, true);
 
 	/* Display WA 827 */
 	if (!needs_nv12_wa(old_crtc_state) &&
 	    needs_nv12_wa(new_crtc_state))
-		skl_wa_827(dev_priv, pipe, true);
+		skl_wa_827(display, pipe, true);
 
 	/* Wa_2006604312:icl,ehl */
 	if (!needs_scalerclk_wa(old_crtc_state) &&
 	    needs_scalerclk_wa(new_crtc_state))
-		icl_wa_scalerclkgating(dev_priv, pipe, true);
+		icl_wa_scalerclkgating(display, pipe, true);
 
 	/* Wa_1604331009:icl,jsl,ehl */
 	if (!needs_cursorclk_wa(old_crtc_state) &&
 	    needs_cursorclk_wa(new_crtc_state))
-		icl_wa_cursorclkgating(dev_priv, pipe, true);
+		icl_wa_cursorclkgating(display, pipe, true);
 
 	/*
 	 * Vblank time updates from the shadow to live plane control register
@@ -1220,7 +1221,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 	 * event which is after the vblank start event, so we need to have a
 	 * wait-for-vblank between disabling the plane and the pipe.
 	 */
-	if (HAS_GMCH(dev_priv) && old_crtc_state->hw.active &&
+	if (HAS_GMCH(display) && old_crtc_state->hw.active &&
 	    new_crtc_state->disable_cxsr && intel_set_memory_cxsr(dev_priv, false))
 		intel_crtc_wait_for_next_vblank(crtc);
 
@@ -1231,7 +1232,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 	 *
 	 * WaCxSRDisabledForSpriteScaling:ivb
 	 */
-	if (!HAS_GMCH(dev_priv) && old_crtc_state->hw.active &&
+	if (!HAS_GMCH(display) && old_crtc_state->hw.active &&
 	    new_crtc_state->disable_cxsr && ilk_disable_cxsr(dev_priv))
 		intel_crtc_wait_for_next_vblank(crtc);
 
@@ -1267,7 +1268,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 	 * chance of catching underruns with the intermediate watermarks
 	 * vs. the old plane configuration.
 	 */
-	if (DISPLAY_VER(dev_priv) == 2 && planes_disabling(old_crtc_state, new_crtc_state))
+	if (DISPLAY_VER(display) == 2 && planes_disabling(old_crtc_state, new_crtc_state))
 		intel_set_cpu_fifo_underrun_reporting(display, pipe, false);
 
 	/*
@@ -1308,7 +1309,7 @@ static void intel_crtc_disable_planes(struct intel_atomic_state *state,
 
 static void intel_encoders_update_prepare(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
 	struct intel_crtc *crtc;
 	int i;
@@ -1317,7 +1318,7 @@ static void intel_encoders_update_prepare(struct intel_atomic_state *state)
 	 * Make sure the DPLL state is up-to-date for fastset TypeC ports after non-blocking commits.
 	 * TODO: Update the DPLL state for all cases in the encoder->update_prepare() hook.
 	 */
-	if (i915->display.dpll.mgr) {
+	if (display->dpll.mgr) {
 		for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
 			if (intel_crtc_needs_modeset(new_crtc_state))
 				continue;
@@ -1513,7 +1514,7 @@ static void ilk_crtc_enable(struct intel_atomic_state *state,
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
-	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
+	if (drm_WARN_ON(display->drm, crtc->active))
 		return;
 
 	/*
@@ -1582,26 +1583,26 @@ static void ilk_crtc_enable(struct intel_atomic_state *state,
 /* Display WA #1180: WaDisableScalarClockGating: glk */
 static bool glk_need_scaler_clock_gating_wa(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
-	return DISPLAY_VER(i915) == 10 && crtc_state->pch_pfit.enabled;
+	return DISPLAY_VER(display) == 10 && crtc_state->pch_pfit.enabled;
 }
 
 static void glk_pipe_scaler_clock_gating_wa(struct intel_crtc *crtc, bool enable)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	u32 mask = DPF_GATING_DIS | DPF_RAM_GATING_DIS | DPFR_GATING_DIS;
 
-	intel_de_rmw(i915, CLKGATE_DIS_PSL(crtc->pipe),
+	intel_de_rmw(display, CLKGATE_DIS_PSL(crtc->pipe),
 		     mask, enable ? mask : 0);
 }
 
 static void hsw_set_linetime_wm(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
-	intel_de_write(dev_priv, WM_LINETIME(crtc->pipe),
+	intel_de_write(display, WM_LINETIME(crtc->pipe),
 		       HSW_LINETIME(crtc_state->linetime) |
 		       HSW_IPS_LINETIME(crtc_state->ips_linetime));
 }
@@ -1617,8 +1618,8 @@ static void hsw_set_frame_start_delay(const struct intel_crtc_state *crtc_state)
 
 static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
 	if (crtc_state->has_pch_encoder) {
@@ -1632,11 +1633,11 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
 	}
 
 	intel_set_transcoder_timings(crtc_state);
-	if (HAS_VRR(dev_priv))
+	if (HAS_VRR(display))
 		intel_vrr_set_transcoder_timings(crtc_state);
 
 	if (cpu_transcoder != TRANSCODER_EDP)
-		intel_de_write(dev_priv, TRANS_MULT(dev_priv, cpu_transcoder),
+		intel_de_write(display, TRANS_MULT(display, cpu_transcoder),
 			       crtc_state->pixel_multiplier - 1);
 
 	hsw_set_frame_start_delay(crtc_state);
@@ -1650,12 +1651,11 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
 	struct intel_crtc *pipe_crtc;
 	int i;
 
-	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
+	if (drm_WARN_ON(display->drm, crtc->active))
 		return;
 	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, new_crtc_state, i)
 		intel_dmc_enable_pipe(display, pipe_crtc->pipe);
@@ -1678,12 +1678,12 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 
 		intel_dsc_enable(pipe_crtc_state);
 
-		if (HAS_UNCOMPRESSED_JOINER(dev_priv))
+		if (HAS_UNCOMPRESSED_JOINER(display))
 			intel_uncompressed_joiner_enable(pipe_crtc_state);
 
 		intel_set_pipe_src_size(pipe_crtc_state);
 
-		if (DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
+		if (DISPLAY_VER(display) >= 9 || display->platform.broadwell)
 			bdw_set_pipe_misc(NULL, pipe_crtc_state);
 	}
 
@@ -1699,7 +1699,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 		if (glk_need_scaler_clock_gating_wa(pipe_crtc_state))
 			glk_pipe_scaler_clock_gating_wa(pipe_crtc, true);
 
-		if (DISPLAY_VER(dev_priv) >= 9)
+		if (DISPLAY_VER(display) >= 9)
 			skl_pfit_enable(pipe_crtc_state);
 		else
 			ilk_pfit_enable(pipe_crtc_state);
@@ -1712,7 +1712,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 
 		hsw_set_linetime_wm(pipe_crtc_state);
 
-		if (DISPLAY_VER(dev_priv) >= 11)
+		if (DISPLAY_VER(display) >= 11)
 			icl_set_pipe_chicken(pipe_crtc_state);
 
 		intel_initial_watermarks(state, pipe_crtc);
@@ -1735,7 +1735,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 		 * enabling, we need to change the workaround.
 		 */
 		hsw_workaround_pipe = pipe_crtc_state->hsw_workaround_pipe;
-		if (IS_HASWELL(dev_priv) && hsw_workaround_pipe != INVALID_PIPE) {
+		if (display->platform.haswell && hsw_workaround_pipe != INVALID_PIPE) {
 			struct intel_crtc *wa_crtc =
 				intel_crtc_for_pipe(display, hsw_workaround_pipe);
 
@@ -1943,8 +1943,8 @@ intel_aux_power_domain(struct intel_digital_port *dig_port)
 static void get_crtc_power_domains(struct intel_crtc_state *crtc_state,
 				   struct intel_power_domain_mask *mask)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	struct drm_encoder *encoder;
 	enum pipe pipe = crtc->pipe;
@@ -1960,14 +1960,14 @@ static void get_crtc_power_domains(struct intel_crtc_state *crtc_state,
 	    crtc_state->pch_pfit.force_thru)
 		set_bit(POWER_DOMAIN_PIPE_PANEL_FITTER(pipe), mask->bits);
 
-	drm_for_each_encoder_mask(encoder, &dev_priv->drm,
+	drm_for_each_encoder_mask(encoder, display->drm,
 				  crtc_state->uapi.encoder_mask) {
 		struct intel_encoder *intel_encoder = to_intel_encoder(encoder);
 
 		set_bit(intel_encoder->power_domain, mask->bits);
 	}
 
-	if (HAS_DDI(dev_priv) && crtc_state->has_audio)
+	if (HAS_DDI(display) && crtc_state->has_audio)
 		set_bit(POWER_DOMAIN_AUDIO_MMIO, mask->bits);
 
 	if (crtc_state->shared_dpll)
@@ -2035,22 +2035,21 @@ static void valleyview_crtc_enable(struct intel_atomic_state *state,
 	struct intel_display *display = to_intel_display(crtc);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
-	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
+	if (drm_WARN_ON(display->drm, crtc->active))
 		return;
 
 	i9xx_configure_cpu_transcoder(new_crtc_state);
 
 	intel_set_pipe_src_size(new_crtc_state);
 
-	intel_de_write(dev_priv, VLV_PIPE_MSA_MISC(pipe), 0);
+	intel_de_write(display, VLV_PIPE_MSA_MISC(display, pipe), 0);
 
-	if (IS_CHERRYVIEW(dev_priv) && pipe == PIPE_B) {
-		intel_de_write(dev_priv, CHV_BLEND(dev_priv, pipe),
+	if (display->platform.cherryview && pipe == PIPE_B) {
+		intel_de_write(display, CHV_BLEND(display, pipe),
 			       CHV_BLEND_LEGACY);
-		intel_de_write(dev_priv, CHV_CANVAS(dev_priv, pipe), 0);
+		intel_de_write(display, CHV_CANVAS(display, pipe), 0);
 	}
 
 	crtc->active = true;
@@ -2059,7 +2058,7 @@ static void valleyview_crtc_enable(struct intel_atomic_state *state,
 
 	intel_encoders_pre_pll_enable(state, crtc);
 
-	if (IS_CHERRYVIEW(dev_priv))
+	if (display->platform.cherryview)
 		chv_enable_pll(new_crtc_state);
 	else
 		vlv_enable_pll(new_crtc_state);
@@ -2087,7 +2086,7 @@ static void i9xx_crtc_enable(struct intel_atomic_state *state,
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
-	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
+	if (drm_WARN_ON(display->drm, crtc->active))
 		return;
 
 	i9xx_configure_cpu_transcoder(new_crtc_state);
@@ -2096,7 +2095,7 @@ static void i9xx_crtc_enable(struct intel_atomic_state *state,
 
 	crtc->active = true;
 
-	if (DISPLAY_VER(dev_priv) != 2)
+	if (DISPLAY_VER(display) != 2)
 		intel_set_cpu_fifo_underrun_reporting(display, pipe, true);
 
 	intel_encoders_pre_enable(state, crtc);
@@ -2116,7 +2115,7 @@ static void i9xx_crtc_enable(struct intel_atomic_state *state,
 	intel_encoders_enable(state, crtc);
 
 	/* prevents spurious underruns */
-	if (DISPLAY_VER(dev_priv) == 2)
+	if (DISPLAY_VER(display) == 2)
 		intel_crtc_wait_for_next_vblank(crtc);
 }
 
@@ -2133,7 +2132,7 @@ static void i9xx_crtc_disable(struct intel_atomic_state *state,
 	 * On gen2 planes are double buffered but the pipe isn't, so we must
 	 * wait for planes to fully turn off before disabling the pipe.
 	 */
-	if (DISPLAY_VER(dev_priv) == 2)
+	if (DISPLAY_VER(display) == 2)
 		intel_crtc_wait_for_next_vblank(crtc);
 
 	intel_encoders_disable(state, crtc);
@@ -2147,9 +2146,9 @@ static void i9xx_crtc_disable(struct intel_atomic_state *state,
 	intel_encoders_post_disable(state, crtc);
 
 	if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DSI)) {
-		if (IS_CHERRYVIEW(dev_priv))
+		if (display->platform.cherryview)
 			chv_disable_pll(dev_priv, pipe);
-		else if (IS_VALLEYVIEW(dev_priv))
+		else if (display->platform.valleyview)
 			vlv_disable_pll(dev_priv, pipe);
 		else
 			i9xx_disable_pll(old_crtc_state);
@@ -2157,14 +2156,14 @@ static void i9xx_crtc_disable(struct intel_atomic_state *state,
 
 	intel_encoders_post_pll_disable(state, crtc);
 
-	if (DISPLAY_VER(dev_priv) != 2)
+	if (DISPLAY_VER(display) != 2)
 		intel_set_cpu_fifo_underrun_reporting(display, pipe, false);
 
-	if (!dev_priv->display.funcs.wm->initial_watermarks)
+	if (!display->funcs.wm->initial_watermarks)
 		intel_update_watermarks(dev_priv);
 
 	/* clock the pipe down to 640x480@60 to potentially save power */
-	if (IS_I830(dev_priv))
+	if (display->platform.i830)
 		i830_enable_pipe(display, pipe);
 }
 
@@ -2178,11 +2177,11 @@ void intel_encoder_destroy(struct drm_encoder *encoder)
 
 static bool intel_crtc_supports_double_wide(const struct intel_crtc *crtc)
 {
-	const struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 
 	/* GDG double wide on either pipe, otherwise pipe A only */
-	return HAS_DOUBLE_WIDE(dev_priv) &&
-		(crtc->pipe == PIPE_A || IS_I915G(dev_priv));
+	return HAS_DOUBLE_WIDE(display) &&
+		(crtc->pipe == PIPE_A || display->platform.i915g);
 }
 
 static u32 ilk_pipe_pixel_rate(const struct intel_crtc_state *crtc_state)
@@ -2229,9 +2228,9 @@ static void intel_mode_from_crtc_timings(struct drm_display_mode *mode,
 
 static void intel_crtc_compute_pixel_rate(struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
-	if (HAS_GMCH(dev_priv))
+	if (HAS_GMCH(display))
 		/* FIXME calculate proper pipe pixel rate for GMCH pfit */
 		crtc_state->pixel_rate =
 			crtc_state->hw.pipe_mode.crtc_clock;
@@ -2342,6 +2341,7 @@ static void intel_joiner_compute_pipe_src(struct intel_crtc_state *crtc_state)
 
 static int intel_crtc_compute_pipe_src(struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
@@ -2355,7 +2355,7 @@ static int intel_crtc_compute_pipe_src(struct intel_crtc_state *crtc_state)
 	 */
 	if (drm_rect_width(&crtc_state->pipe_src) & 1) {
 		if (crtc_state->double_wide) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "[CRTC:%d:%s] Odd pipe source width not supported with double wide pipe\n",
 				    crtc->base.base.id, crtc->base.name);
 			return -EINVAL;
@@ -2363,7 +2363,7 @@ static int intel_crtc_compute_pipe_src(struct intel_crtc_state *crtc_state)
 
 		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS) &&
 		    intel_is_dual_link_lvds(i915)) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "[CRTC:%d:%s] Odd pipe source width not supported with dual link LVDS\n",
 				    crtc->base.base.id, crtc->base.name);
 			return -EINVAL;
@@ -2375,11 +2375,11 @@ static int intel_crtc_compute_pipe_src(struct intel_crtc_state *crtc_state)
 
 static int intel_crtc_compute_pipe_mode(struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	struct drm_display_mode *pipe_mode = &crtc_state->hw.pipe_mode;
-	int clock_limit = i915->display.cdclk.max_dotclk_freq;
+	int clock_limit = display->cdclk.max_dotclk_freq;
 
 	/*
 	 * Start with the adjusted_mode crtc timings, which
@@ -2394,8 +2394,8 @@ static int intel_crtc_compute_pipe_mode(struct intel_crtc_state *crtc_state)
 	intel_joiner_adjust_timings(crtc_state, pipe_mode);
 	intel_mode_from_crtc_timings(pipe_mode, pipe_mode);
 
-	if (DISPLAY_VER(i915) < 4) {
-		clock_limit = i915->display.cdclk.max_cdclk_freq * 9 / 10;
+	if (DISPLAY_VER(display) < 4) {
+		clock_limit = display->cdclk.max_cdclk_freq * 9 / 10;
 
 		/*
 		 * Enable double wide mode when the dot clock
@@ -2403,13 +2403,13 @@ static int intel_crtc_compute_pipe_mode(struct intel_crtc_state *crtc_state)
 		 */
 		if (intel_crtc_supports_double_wide(crtc) &&
 		    pipe_mode->crtc_clock > clock_limit) {
-			clock_limit = i915->display.cdclk.max_dotclk_freq;
+			clock_limit = display->cdclk.max_dotclk_freq;
 			crtc_state->double_wide = true;
 		}
 	}
 
 	if (pipe_mode->crtc_clock > clock_limit) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[CRTC:%d:%s] requested pixel clock (%d kHz) too high (max: %d kHz, double wide: %s)\n",
 			    crtc->base.base.id, crtc->base.name,
 			    pipe_mode->crtc_clock, clock_limit,
@@ -2641,15 +2641,15 @@ void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
 
 static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
 	int vsyncshift = 0;
 
-	drm_WARN_ON(&dev_priv->drm, transcoder_is_dsi(cpu_transcoder));
+	drm_WARN_ON(display->drm, transcoder_is_dsi(cpu_transcoder));
 
 	/* We need to be careful not to changed the adjusted mode, for otherwise
 	 * the hw state checker will get angry at the mismatch. */
@@ -2676,9 +2676,9 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	 * VBLANK_START no longer works on ADL+, instead we must use
 	 * TRANS_SET_CONTEXT_LATENCY to configure the pipe vblank start.
 	 */
-	if (DISPLAY_VER(dev_priv) >= 13) {
-		intel_de_write(dev_priv,
-			       TRANS_SET_CONTEXT_LATENCY(dev_priv, cpu_transcoder),
+	if (DISPLAY_VER(display) >= 13) {
+		intel_de_write(display,
+			       TRANS_SET_CONTEXT_LATENCY(display, cpu_transcoder),
 			       crtc_vblank_start - crtc_vdisplay);
 
 		/*
@@ -2688,28 +2688,28 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 		crtc_vblank_start = 1;
 	}
 
-	if (DISPLAY_VER(dev_priv) >= 4)
-		intel_de_write(dev_priv,
-			       TRANS_VSYNCSHIFT(dev_priv, cpu_transcoder),
+	if (DISPLAY_VER(display) >= 4)
+		intel_de_write(display,
+			       TRANS_VSYNCSHIFT(display, cpu_transcoder),
 			       vsyncshift);
 
-	intel_de_write(dev_priv, TRANS_HTOTAL(dev_priv, cpu_transcoder),
+	intel_de_write(display, TRANS_HTOTAL(display, cpu_transcoder),
 		       HACTIVE(adjusted_mode->crtc_hdisplay - 1) |
 		       HTOTAL(adjusted_mode->crtc_htotal - 1));
-	intel_de_write(dev_priv, TRANS_HBLANK(dev_priv, cpu_transcoder),
+	intel_de_write(display, TRANS_HBLANK(display, cpu_transcoder),
 		       HBLANK_START(adjusted_mode->crtc_hblank_start - 1) |
 		       HBLANK_END(adjusted_mode->crtc_hblank_end - 1));
-	intel_de_write(dev_priv, TRANS_HSYNC(dev_priv, cpu_transcoder),
+	intel_de_write(display, TRANS_HSYNC(display, cpu_transcoder),
 		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
 		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
 
-	intel_de_write(dev_priv, TRANS_VTOTAL(dev_priv, cpu_transcoder),
+	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
 		       VACTIVE(crtc_vdisplay - 1) |
 		       VTOTAL(crtc_vtotal - 1));
-	intel_de_write(dev_priv, TRANS_VBLANK(dev_priv, cpu_transcoder),
+	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
 		       VBLANK_START(crtc_vblank_start - 1) |
 		       VBLANK_END(crtc_vblank_end - 1));
-	intel_de_write(dev_priv, TRANS_VSYNC(dev_priv, cpu_transcoder),
+	intel_de_write(display, TRANS_VSYNC(display, cpu_transcoder),
 		       VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
 		       VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
 
@@ -2717,22 +2717,21 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	 * programmed with the VTOTAL_EDP value. Same for VTOTAL_C. This is
 	 * documented on the DDI_FUNC_CTL register description, EDP Input Select
 	 * bits. */
-	if (IS_HASWELL(dev_priv) && cpu_transcoder == TRANSCODER_EDP &&
+	if (display->platform.haswell && cpu_transcoder == TRANSCODER_EDP &&
 	    (pipe == PIPE_B || pipe == PIPE_C))
-		intel_de_write(dev_priv, TRANS_VTOTAL(dev_priv, pipe),
+		intel_de_write(display, TRANS_VTOTAL(display, pipe),
 			       VACTIVE(crtc_vdisplay - 1) |
 			       VTOTAL(crtc_vtotal - 1));
 }
 
 static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
 
-	drm_WARN_ON(&dev_priv->drm, transcoder_is_dsi(cpu_transcoder));
+	drm_WARN_ON(display->drm, transcoder_is_dsi(cpu_transcoder));
 
 	crtc_vdisplay = adjusted_mode->crtc_vdisplay;
 	crtc_vtotal = adjusted_mode->crtc_vtotal;
@@ -2745,9 +2744,9 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 		crtc_vblank_end -= 1;
 	}
 
-	if (DISPLAY_VER(dev_priv) >= 13) {
-		intel_de_write(dev_priv,
-			       TRANS_SET_CONTEXT_LATENCY(dev_priv, cpu_transcoder),
+	if (DISPLAY_VER(display) >= 13) {
+		intel_de_write(display,
+			       TRANS_SET_CONTEXT_LATENCY(display, cpu_transcoder),
 			       crtc_vblank_start - crtc_vdisplay);
 
 		/*
@@ -2761,22 +2760,22 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 	 * The hardware actually ignores TRANS_VBLANK.VBLANK_END in DP mode.
 	 * But let's write it anyway to keep the state checker happy.
 	 */
-	intel_de_write(dev_priv, TRANS_VBLANK(dev_priv, cpu_transcoder),
+	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
 		       VBLANK_START(crtc_vblank_start - 1) |
 		       VBLANK_END(crtc_vblank_end - 1));
 	/*
 	 * The double buffer latch point for TRANS_VTOTAL
 	 * is the transcoder's undelayed vblank.
 	 */
-	intel_de_write(dev_priv, TRANS_VTOTAL(dev_priv, cpu_transcoder),
+	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
 		       VACTIVE(crtc_vdisplay - 1) |
 		       VTOTAL(crtc_vtotal - 1));
 }
 
 static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	int width = drm_rect_width(&crtc_state->pipe_src);
 	int height = drm_rect_height(&crtc_state->pipe_src);
 	enum pipe pipe = crtc->pipe;
@@ -2784,63 +2783,62 @@ static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state)
 	/* pipesrc controls the size that is scaled from, which should
 	 * always be the user's requested size.
 	 */
-	intel_de_write(dev_priv, PIPESRC(dev_priv, pipe),
+	intel_de_write(display, PIPESRC(display, pipe),
 		       PIPESRC_WIDTH(width - 1) | PIPESRC_HEIGHT(height - 1));
 }
 
 static bool intel_pipe_is_interlaced(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (DISPLAY_VER(dev_priv) == 2)
+	if (DISPLAY_VER(display) == 2)
 		return false;
 
-	if (DISPLAY_VER(dev_priv) >= 9 ||
-	    IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
-		return intel_de_read(dev_priv,
-				     TRANSCONF(dev_priv, cpu_transcoder)) & TRANSCONF_INTERLACE_MASK_HSW;
+	if (DISPLAY_VER(display) >= 9 ||
+	    display->platform.broadwell || display->platform.haswell)
+		return intel_de_read(display,
+				     TRANSCONF(display, cpu_transcoder)) & TRANSCONF_INTERLACE_MASK_HSW;
 	else
-		return intel_de_read(dev_priv,
-				     TRANSCONF(dev_priv, cpu_transcoder)) & TRANSCONF_INTERLACE_MASK;
+		return intel_de_read(display,
+				     TRANSCONF(display, cpu_transcoder)) & TRANSCONF_INTERLACE_MASK;
 }
 
 static void intel_get_transcoder_timings(struct intel_crtc *crtc,
 					 struct intel_crtc_state *pipe_config)
 {
-	struct drm_device *dev = crtc->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_display *display = to_intel_display(crtc);
 	enum transcoder cpu_transcoder = pipe_config->cpu_transcoder;
 	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	u32 tmp;
 
-	tmp = intel_de_read(dev_priv, TRANS_HTOTAL(dev_priv, cpu_transcoder));
+	tmp = intel_de_read(display, TRANS_HTOTAL(display, cpu_transcoder));
 	adjusted_mode->crtc_hdisplay = REG_FIELD_GET(HACTIVE_MASK, tmp) + 1;
 	adjusted_mode->crtc_htotal = REG_FIELD_GET(HTOTAL_MASK, tmp) + 1;
 
 	if (!transcoder_is_dsi(cpu_transcoder)) {
-		tmp = intel_de_read(dev_priv,
-				    TRANS_HBLANK(dev_priv, cpu_transcoder));
+		tmp = intel_de_read(display,
+				    TRANS_HBLANK(display, cpu_transcoder));
 		adjusted_mode->crtc_hblank_start = REG_FIELD_GET(HBLANK_START_MASK, tmp) + 1;
 		adjusted_mode->crtc_hblank_end = REG_FIELD_GET(HBLANK_END_MASK, tmp) + 1;
 	}
 
-	tmp = intel_de_read(dev_priv, TRANS_HSYNC(dev_priv, cpu_transcoder));
+	tmp = intel_de_read(display, TRANS_HSYNC(display, cpu_transcoder));
 	adjusted_mode->crtc_hsync_start = REG_FIELD_GET(HSYNC_START_MASK, tmp) + 1;
 	adjusted_mode->crtc_hsync_end = REG_FIELD_GET(HSYNC_END_MASK, tmp) + 1;
 
-	tmp = intel_de_read(dev_priv, TRANS_VTOTAL(dev_priv, cpu_transcoder));
+	tmp = intel_de_read(display, TRANS_VTOTAL(display, cpu_transcoder));
 	adjusted_mode->crtc_vdisplay = REG_FIELD_GET(VACTIVE_MASK, tmp) + 1;
 	adjusted_mode->crtc_vtotal = REG_FIELD_GET(VTOTAL_MASK, tmp) + 1;
 
 	/* FIXME TGL+ DSI transcoders have this! */
 	if (!transcoder_is_dsi(cpu_transcoder)) {
-		tmp = intel_de_read(dev_priv,
-				    TRANS_VBLANK(dev_priv, cpu_transcoder));
+		tmp = intel_de_read(display,
+				    TRANS_VBLANK(display, cpu_transcoder));
 		adjusted_mode->crtc_vblank_start = REG_FIELD_GET(VBLANK_START_MASK, tmp) + 1;
 		adjusted_mode->crtc_vblank_end = REG_FIELD_GET(VBLANK_END_MASK, tmp) + 1;
 	}
-	tmp = intel_de_read(dev_priv, TRANS_VSYNC(dev_priv, cpu_transcoder));
+	tmp = intel_de_read(display, TRANS_VSYNC(display, cpu_transcoder));
 	adjusted_mode->crtc_vsync_start = REG_FIELD_GET(VSYNC_START_MASK, tmp) + 1;
 	adjusted_mode->crtc_vsync_end = REG_FIELD_GET(VSYNC_END_MASK, tmp) + 1;
 
@@ -2850,11 +2848,11 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
 		adjusted_mode->crtc_vblank_end += 1;
 	}
 
-	if (DISPLAY_VER(dev_priv) >= 13 && !transcoder_is_dsi(cpu_transcoder))
+	if (DISPLAY_VER(display) >= 13 && !transcoder_is_dsi(cpu_transcoder))
 		adjusted_mode->crtc_vblank_start =
 			adjusted_mode->crtc_vdisplay +
-			intel_de_read(dev_priv,
-				      TRANS_SET_CONTEXT_LATENCY(dev_priv, cpu_transcoder));
+			intel_de_read(display,
+				      TRANS_SET_CONTEXT_LATENCY(display, cpu_transcoder));
 }
 
 static void intel_joiner_adjust_pipe_src(struct intel_crtc_state *crtc_state)
@@ -2877,11 +2875,10 @@ static void intel_joiner_adjust_pipe_src(struct intel_crtc_state *crtc_state)
 static void intel_get_pipe_src_size(struct intel_crtc *crtc,
 				    struct intel_crtc_state *pipe_config)
 {
-	struct drm_device *dev = crtc->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_display *display = to_intel_display(crtc);
 	u32 tmp;
 
-	tmp = intel_de_read(dev_priv, PIPESRC(dev_priv, crtc->pipe));
+	tmp = intel_de_read(display, PIPESRC(display, crtc->pipe));
 
 	drm_rect_init(&pipe_config->pipe_src, 0, 0,
 		      REG_FIELD_GET(PIPESRC_WIDTH_MASK, tmp) + 1,
@@ -2892,8 +2889,7 @@ static void intel_get_pipe_src_size(struct intel_crtc *crtc,
 
 void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	u32 val = 0;
 
@@ -2902,15 +2898,15 @@ void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state)
 	 * - During modeset the pipe is still disabled and must remain so
 	 * - During fastset the pipe is already enabled and must remain so
 	 */
-	if (IS_I830(dev_priv) || !intel_crtc_needs_modeset(crtc_state))
+	if (display->platform.i830 || !intel_crtc_needs_modeset(crtc_state))
 		val |= TRANSCONF_ENABLE;
 
 	if (crtc_state->double_wide)
 		val |= TRANSCONF_DOUBLE_WIDE;
 
 	/* only g4x and later have fancy bpc/dither controls */
-	if (IS_G4X(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
-	    IS_CHERRYVIEW(dev_priv)) {
+	if (display->platform.g4x || display->platform.valleyview ||
+	    display->platform.cherryview) {
 		/* Bspec claims that we can't use dithering for 30bpp pipes. */
 		if (crtc_state->dither && crtc_state->pipe_bpp != 30)
 			val |= TRANSCONF_DITHER_EN |
@@ -2934,7 +2930,7 @@ void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state)
 	}
 
 	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE) {
-		if (DISPLAY_VER(dev_priv) < 4 ||
+		if (DISPLAY_VER(display) < 4 ||
 		    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_SDVO))
 			val |= TRANSCONF_INTERLACE_W_FIELD_INDICATION;
 		else
@@ -2943,8 +2939,8 @@ void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state)
 		val |= TRANSCONF_INTERLACE_PROGRESSIVE;
 	}
 
-	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
-	     crtc_state->limited_color_range)
+	if ((display->platform.valleyview || display->platform.cherryview) &&
+	    crtc_state->limited_color_range)
 		val |= TRANSCONF_COLOR_RANGE_SELECT;
 
 	val |= TRANSCONF_GAMMA_MODE(crtc_state->gamma_mode);
@@ -2954,17 +2950,17 @@ void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state)
 
 	val |= TRANSCONF_FRAME_START_DELAY(crtc_state->framestart_delay - 1);
 
-	intel_de_write(dev_priv, TRANSCONF(dev_priv, cpu_transcoder), val);
-	intel_de_posting_read(dev_priv, TRANSCONF(dev_priv, cpu_transcoder));
+	intel_de_write(display, TRANSCONF(display, cpu_transcoder), val);
+	intel_de_posting_read(display, TRANSCONF(display, cpu_transcoder));
 }
 
 static enum intel_output_format
 bdw_get_pipe_misc_output_format(struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	u32 tmp;
 
-	tmp = intel_de_read(dev_priv, PIPE_MISC(crtc->pipe));
+	tmp = intel_de_read(display, PIPE_MISC(crtc->pipe));
 
 	if (tmp & PIPE_MISC_YUV420_ENABLE) {
 		/*
@@ -2972,8 +2968,8 @@ bdw_get_pipe_misc_output_format(struct intel_crtc *crtc)
 		 * For xe3_lpd+ this is implied in YUV420 Enable bit.
 		 * Ensure the same for prior platforms in YUV420 Mode bit.
 		 */
-		if (DISPLAY_VER(dev_priv) < 30)
-			drm_WARN_ON(&dev_priv->drm,
+		if (DISPLAY_VER(display) < 30)
+			drm_WARN_ON(display->drm,
 				    (tmp & PIPE_MISC_YUV420_MODE_FULL_BLEND) == 0);
 
 		return INTEL_OUTPUT_FORMAT_YCBCR420;
@@ -2988,7 +2984,6 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 				 struct intel_crtc_state *pipe_config)
 {
 	struct intel_display *display = to_intel_display(crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum intel_display_power_domain power_domain;
 	intel_wakeref_t wakeref;
 	u32 tmp;
@@ -3006,13 +3001,13 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 
 	ret = false;
 
-	tmp = intel_de_read(dev_priv,
-			    TRANSCONF(dev_priv, pipe_config->cpu_transcoder));
+	tmp = intel_de_read(display,
+			    TRANSCONF(display, pipe_config->cpu_transcoder));
 	if (!(tmp & TRANSCONF_ENABLE))
 		goto out;
 
-	if (IS_G4X(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
-	    IS_CHERRYVIEW(dev_priv)) {
+	if (display->platform.g4x || display->platform.valleyview ||
+	    display->platform.cherryview) {
 		switch (tmp & TRANSCONF_BPC_MASK) {
 		case TRANSCONF_BPC_6:
 			pipe_config->pipe_bpp = 18;
@@ -3029,7 +3024,7 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 		}
 	}
 
-	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
+	if ((display->platform.valleyview || display->platform.cherryview) &&
 	    (tmp & TRANSCONF_COLOR_RANGE_SELECT))
 		pipe_config->limited_color_range = true;
 
@@ -3037,13 +3032,13 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 
 	pipe_config->framestart_delay = REG_FIELD_GET(TRANSCONF_FRAME_START_DELAY_MASK, tmp) + 1;
 
-	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
+	if ((display->platform.valleyview || display->platform.cherryview) &&
 	    (tmp & TRANSCONF_WGC_ENABLE))
 		pipe_config->wgc_enable = true;
 
 	intel_color_get_config(pipe_config);
 
-	if (HAS_DOUBLE_WIDE(dev_priv))
+	if (HAS_DOUBLE_WIDE(display))
 		pipe_config->double_wide = tmp & TRANSCONF_DOUBLE_WIDE;
 
 	intel_get_transcoder_timings(crtc, pipe_config);
@@ -3053,13 +3048,13 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 
 	i9xx_dpll_get_hw_state(crtc, &pipe_config->dpll_hw_state);
 
-	if (DISPLAY_VER(dev_priv) >= 4) {
+	if (DISPLAY_VER(display) >= 4) {
 		tmp = pipe_config->dpll_hw_state.i9xx.dpll_md;
 		pipe_config->pixel_multiplier =
 			((tmp & DPLL_MD_UDI_MULTIPLIER_MASK)
 			 >> DPLL_MD_UDI_MULTIPLIER_SHIFT) + 1;
-	} else if (IS_I945G(dev_priv) || IS_I945GM(dev_priv) ||
-		   IS_G33(dev_priv) || IS_PINEVIEW(dev_priv)) {
+	} else if (display->platform.i945g || display->platform.i945gm ||
+		   display->platform.g33 || display->platform.pineview) {
 		tmp = pipe_config->dpll_hw_state.i9xx.dpll;
 		pipe_config->pixel_multiplier =
 			((tmp & SDVO_MULTIPLIER_MASK)
@@ -3071,9 +3066,9 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 		pipe_config->pixel_multiplier = 1;
 	}
 
-	if (IS_CHERRYVIEW(dev_priv))
+	if (display->platform.cherryview)
 		chv_crtc_clock_get(pipe_config);
-	else if (IS_VALLEYVIEW(dev_priv))
+	else if (display->platform.valleyview)
 		vlv_crtc_clock_get(pipe_config);
 	else
 		i9xx_crtc_clock_get(pipe_config);
@@ -3096,8 +3091,7 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 
 void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	u32 val = 0;
 
@@ -3139,7 +3133,7 @@ void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state)
 	 * This would end up with an odd purple hue over
 	 * the entire display. Make sure we don't do it.
 	 */
-	drm_WARN_ON(&dev_priv->drm, crtc_state->limited_color_range &&
+	drm_WARN_ON(display->drm, crtc_state->limited_color_range &&
 		    crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB);
 
 	if (crtc_state->limited_color_range &&
@@ -3154,14 +3148,13 @@ void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state)
 	val |= TRANSCONF_FRAME_START_DELAY(crtc_state->framestart_delay - 1);
 	val |= TRANSCONF_MSA_TIMING_DELAY(crtc_state->msa_timing_delay);
 
-	intel_de_write(dev_priv, TRANSCONF(dev_priv, cpu_transcoder), val);
-	intel_de_posting_read(dev_priv, TRANSCONF(dev_priv, cpu_transcoder));
+	intel_de_write(display, TRANSCONF(display, cpu_transcoder), val);
+	intel_de_posting_read(display, TRANSCONF(display, cpu_transcoder));
 }
 
 static void hsw_set_transconf(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	u32 val = 0;
 
@@ -3172,7 +3165,7 @@ static void hsw_set_transconf(const struct intel_crtc_state *crtc_state)
 	if (!intel_crtc_needs_modeset(crtc_state))
 		val |= TRANSCONF_ENABLE;
 
-	if (IS_HASWELL(dev_priv) && crtc_state->dither)
+	if (display->platform.haswell && crtc_state->dither)
 		val |= TRANSCONF_DITHER_EN | TRANSCONF_DITHER_TYPE_SP;
 
 	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
@@ -3180,20 +3173,19 @@ static void hsw_set_transconf(const struct intel_crtc_state *crtc_state)
 	else
 		val |= TRANSCONF_INTERLACE_PF_PD_ILK;
 
-	if (IS_HASWELL(dev_priv) &&
+	if (display->platform.haswell &&
 	    crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB)
 		val |= TRANSCONF_OUTPUT_COLORSPACE_YUV_HSW;
 
-	intel_de_write(dev_priv, TRANSCONF(dev_priv, cpu_transcoder), val);
-	intel_de_posting_read(dev_priv, TRANSCONF(dev_priv, cpu_transcoder));
+	intel_de_write(display, TRANSCONF(display, cpu_transcoder), val);
+	intel_de_posting_read(display, TRANSCONF(display, cpu_transcoder));
 }
 
 static void bdw_set_pipe_misc(struct intel_dsb *dsb,
 			      const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct intel_display *display = to_intel_display(crtc->base.dev);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 val = 0;
 
 	switch (crtc_state->pipe_bpp) {
@@ -3208,7 +3200,7 @@ static void bdw_set_pipe_misc(struct intel_dsb *dsb,
 		break;
 	case 36:
 		/* Port output 12BPC defined for ADLP+ */
-		if (DISPLAY_VER(dev_priv) >= 13)
+		if (DISPLAY_VER(display) >= 13)
 			val |= PIPE_MISC_BPC_12_ADLP;
 		break;
 	default:
@@ -3227,14 +3219,14 @@ static void bdw_set_pipe_misc(struct intel_dsb *dsb,
 		val |= DISPLAY_VER(display) >= 30 ? PIPE_MISC_YUV420_ENABLE :
 			PIPE_MISC_YUV420_ENABLE | PIPE_MISC_YUV420_MODE_FULL_BLEND;
 
-	if (DISPLAY_VER(dev_priv) >= 11 && is_hdr_mode(crtc_state))
+	if (DISPLAY_VER(display) >= 11 && is_hdr_mode(crtc_state))
 		val |= PIPE_MISC_HDR_MODE_PRECISION;
 
-	if (DISPLAY_VER(dev_priv) >= 12)
+	if (DISPLAY_VER(display) >= 12)
 		val |= PIPE_MISC_PIXEL_ROUNDING_TRUNC;
 
 	/* allow PSR with sprite enabled */
-	if (IS_BROADWELL(dev_priv))
+	if (display->platform.broadwell)
 		val |= PIPE_MISC_PSR_MASK_SPRITE_ENABLE;
 
 	intel_de_write_dsb(display, dsb, PIPE_MISC(crtc->pipe), val);
@@ -3242,10 +3234,10 @@ static void bdw_set_pipe_misc(struct intel_dsb *dsb,
 
 int bdw_get_pipe_misc_bpp(struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	u32 tmp;
 
-	tmp = intel_de_read(dev_priv, PIPE_MISC(crtc->pipe));
+	tmp = intel_de_read(display, PIPE_MISC(crtc->pipe));
 
 	switch (tmp & PIPE_MISC_BPC_MASK) {
 	case PIPE_MISC_BPC_6:
@@ -3265,7 +3257,7 @@ int bdw_get_pipe_misc_bpp(struct intel_crtc *crtc)
 	 * MIPI DSI HW readout.
 	 */
 	case PIPE_MISC_BPC_12_ADLP:
-		if (DISPLAY_VER(dev_priv) >= 13)
+		if (DISPLAY_VER(display) >= 13)
 			return 36;
 		fallthrough;
 	default:
@@ -3336,8 +3328,6 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
 				struct intel_crtc_state *pipe_config)
 {
 	struct intel_display *display = to_intel_display(crtc);
-	struct drm_device *dev = crtc->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
 	enum intel_display_power_domain power_domain;
 	intel_wakeref_t wakeref;
 	u32 tmp;
@@ -3352,8 +3342,8 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
 	pipe_config->shared_dpll = NULL;
 
 	ret = false;
-	tmp = intel_de_read(dev_priv,
-			    TRANSCONF(dev_priv, pipe_config->cpu_transcoder));
+	tmp = intel_de_read(display,
+			    TRANSCONF(display, pipe_config->cpu_transcoder));
 	if (!(tmp & TRANSCONF_ENABLE))
 		goto out;
 
@@ -3414,24 +3404,23 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
 	return ret;
 }
 
-static u8 joiner_pipes(struct drm_i915_private *i915)
+static u8 joiner_pipes(struct intel_display *display)
 {
 	u8 pipes;
 
-	if (DISPLAY_VER(i915) >= 12)
+	if (DISPLAY_VER(display) >= 12)
 		pipes = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D);
-	else if (DISPLAY_VER(i915) >= 11)
+	else if (DISPLAY_VER(display) >= 11)
 		pipes = BIT(PIPE_B) | BIT(PIPE_C);
 	else
 		pipes = 0;
 
-	return pipes & DISPLAY_RUNTIME_INFO(i915)->pipe_mask;
+	return pipes & DISPLAY_RUNTIME_INFO(display)->pipe_mask;
 }
 
-static bool transcoder_ddi_func_is_enabled(struct drm_i915_private *dev_priv,
+static bool transcoder_ddi_func_is_enabled(struct intel_display *display,
 					   enum transcoder cpu_transcoder)
 {
-	struct intel_display *display = &dev_priv->display;
 	enum intel_display_power_domain power_domain;
 	intel_wakeref_t wakeref;
 	u32 tmp = 0;
@@ -3439,8 +3428,8 @@ static bool transcoder_ddi_func_is_enabled(struct drm_i915_private *dev_priv,
 	power_domain = POWER_DOMAIN_TRANSCODER(cpu_transcoder);
 
 	with_intel_display_power_if_enabled(display, power_domain, wakeref)
-		tmp = intel_de_read(dev_priv,
-				    TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder));
+		tmp = intel_de_read(display,
+				    TRANS_DDI_FUNC_CTL(display, cpu_transcoder));
 
 	return tmp & TRANS_DDI_FUNC_ENABLE;
 }
@@ -3448,7 +3437,6 @@ static bool transcoder_ddi_func_is_enabled(struct drm_i915_private *dev_priv,
 static void enabled_uncompressed_joiner_pipes(struct intel_display *display,
 					      u8 *primary_pipes, u8 *secondary_pipes)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_crtc *crtc;
 
 	*primary_pipes = 0;
@@ -3457,8 +3445,8 @@ static void enabled_uncompressed_joiner_pipes(struct intel_display *display,
 	if (!HAS_UNCOMPRESSED_JOINER(display))
 		return;
 
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc,
-					 joiner_pipes(i915)) {
+	for_each_intel_crtc_in_pipe_mask(display->drm, crtc,
+					 joiner_pipes(display)) {
 		enum intel_display_power_domain power_domain;
 		enum pipe pipe = crtc->pipe;
 		intel_wakeref_t wakeref;
@@ -3478,7 +3466,6 @@ static void enabled_uncompressed_joiner_pipes(struct intel_display *display,
 static void enabled_bigjoiner_pipes(struct intel_display *display,
 				    u8 *primary_pipes, u8 *secondary_pipes)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_crtc *crtc;
 
 	*primary_pipes = 0;
@@ -3487,8 +3474,8 @@ static void enabled_bigjoiner_pipes(struct intel_display *display,
 	if (!HAS_BIGJOINER(display))
 		return;
 
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc,
-					 joiner_pipes(i915)) {
+	for_each_intel_crtc_in_pipe_mask(display->drm, crtc,
+					 joiner_pipes(display)) {
 		enum intel_display_power_domain power_domain;
 		enum pipe pipe = crtc->pipe;
 		intel_wakeref_t wakeref;
@@ -3546,10 +3533,9 @@ static u8 fixup_ultrajoiner_secondary_pipes(u8 ultrajoiner_primary_pipes,
 	return ultrajoiner_secondary_pipes | ultrajoiner_primary_pipes << 3;
 }
 
-static void enabled_ultrajoiner_pipes(struct drm_i915_private *i915,
+static void enabled_ultrajoiner_pipes(struct intel_display *display,
 				      u8 *primary_pipes, u8 *secondary_pipes)
 {
-	struct intel_display *display = &i915->display;
 	struct intel_crtc *crtc;
 
 	*primary_pipes = 0;
@@ -3558,15 +3544,15 @@ static void enabled_ultrajoiner_pipes(struct drm_i915_private *i915,
 	if (!HAS_ULTRAJOINER(display))
 		return;
 
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc,
-					 joiner_pipes(i915)) {
+	for_each_intel_crtc_in_pipe_mask(display->drm, crtc,
+					 joiner_pipes(display)) {
 		enum intel_display_power_domain power_domain;
 		enum pipe pipe = crtc->pipe;
 		intel_wakeref_t wakeref;
 
 		power_domain = intel_dsc_power_domain(crtc, (enum transcoder)pipe);
 		with_intel_display_power_if_enabled(display, power_domain, wakeref) {
-			u32 tmp = intel_de_read(i915, ICL_PIPE_DSS_CTL1(pipe));
+			u32 tmp = intel_de_read(display, ICL_PIPE_DSS_CTL1(pipe));
 
 			if (!(tmp & ULTRA_JOINER_ENABLE))
 				continue;
@@ -3579,11 +3565,10 @@ static void enabled_ultrajoiner_pipes(struct drm_i915_private *i915,
 	}
 }
 
-static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
+static void enabled_joiner_pipes(struct intel_display *display,
 				 enum pipe pipe,
 				 u8 *primary_pipe, u8 *secondary_pipes)
 {
-	struct intel_display *display = to_intel_display(&dev_priv->drm);
 	u8 primary_ultrajoiner_pipes;
 	u8 primary_uncompressed_joiner_pipes, primary_bigjoiner_pipes;
 	u8 secondary_ultrajoiner_pipes;
@@ -3591,21 +3576,21 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 	u8 ultrajoiner_pipes;
 	u8 uncompressed_joiner_pipes, bigjoiner_pipes;
 
-	enabled_ultrajoiner_pipes(dev_priv, &primary_ultrajoiner_pipes,
+	enabled_ultrajoiner_pipes(display, &primary_ultrajoiner_pipes,
 				  &secondary_ultrajoiner_pipes);
 	/*
 	 * For some strange reason the last pipe in the set of four
 	 * shouldn't have ultrajoiner enable bit set in hardware.
 	 * Set the bit anyway to make life easier.
 	 */
-	drm_WARN_ON(&dev_priv->drm,
+	drm_WARN_ON(display->drm,
 		    expected_secondary_pipes(primary_ultrajoiner_pipes, 3) !=
 		    secondary_ultrajoiner_pipes);
 	secondary_ultrajoiner_pipes =
 		fixup_ultrajoiner_secondary_pipes(primary_ultrajoiner_pipes,
 						  secondary_ultrajoiner_pipes);
 
-	drm_WARN_ON(&dev_priv->drm, (primary_ultrajoiner_pipes & secondary_ultrajoiner_pipes) != 0);
+	drm_WARN_ON(display->drm, (primary_ultrajoiner_pipes & secondary_ultrajoiner_pipes) != 0);
 
 	enabled_uncompressed_joiner_pipes(display, &primary_uncompressed_joiner_pipes,
 					  &secondary_uncompressed_joiner_pipes);
@@ -3699,11 +3684,11 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 	}
 }
 
-static u8 hsw_panel_transcoders(struct drm_i915_private *i915)
+static u8 hsw_panel_transcoders(struct intel_display *display)
 {
 	u8 panel_transcoder_mask = BIT(TRANSCODER_EDP);
 
-	if (DISPLAY_VER(i915) >= 11)
+	if (DISPLAY_VER(display) >= 11)
 		panel_transcoder_mask |= BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1);
 
 	return panel_transcoder_mask;
@@ -3712,9 +3697,7 @@ static u8 hsw_panel_transcoders(struct drm_i915_private *i915)
 static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(crtc);
-	struct drm_device *dev = crtc->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
-	u8 panel_transcoder_mask = hsw_panel_transcoders(dev_priv);
+	u8 panel_transcoder_mask = hsw_panel_transcoders(display);
 	enum transcoder cpu_transcoder;
 	u8 primary_pipe, secondary_pipes;
 	u8 enabled_transcoders = 0;
@@ -3723,7 +3706,7 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
 	 * XXX: Do intel_display_power_get_if_enabled before reading this (for
 	 * consistency and less surprising code; it's in always on power).
 	 */
-	for_each_cpu_transcoder_masked(dev_priv, cpu_transcoder,
+	for_each_cpu_transcoder_masked(display, cpu_transcoder,
 				       panel_transcoder_mask) {
 		enum intel_display_power_domain power_domain;
 		intel_wakeref_t wakeref;
@@ -3732,15 +3715,15 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
 
 		power_domain = POWER_DOMAIN_TRANSCODER(cpu_transcoder);
 		with_intel_display_power_if_enabled(display, power_domain, wakeref)
-			tmp = intel_de_read(dev_priv,
-					    TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder));
+			tmp = intel_de_read(display,
+					    TRANS_DDI_FUNC_CTL(display, cpu_transcoder));
 
 		if (!(tmp & TRANS_DDI_FUNC_ENABLE))
 			continue;
 
 		switch (tmp & TRANS_DDI_EDP_INPUT_MASK) {
 		default:
-			drm_WARN(dev, 1,
+			drm_WARN(display->drm, 1,
 				 "unknown pipe linked to transcoder %s\n",
 				 transcoder_name(cpu_transcoder));
 			fallthrough;
@@ -3765,14 +3748,14 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
 
 	/* single pipe or joiner primary */
 	cpu_transcoder = (enum transcoder) crtc->pipe;
-	if (transcoder_ddi_func_is_enabled(dev_priv, cpu_transcoder))
+	if (transcoder_ddi_func_is_enabled(display, cpu_transcoder))
 		enabled_transcoders |= BIT(cpu_transcoder);
 
 	/* joiner secondary -> consider the primary pipe's transcoder as well */
-	enabled_joiner_pipes(dev_priv, crtc->pipe, &primary_pipe, &secondary_pipes);
+	enabled_joiner_pipes(display, crtc->pipe, &primary_pipe, &secondary_pipes);
 	if (secondary_pipes & BIT(crtc->pipe)) {
 		cpu_transcoder = (enum transcoder)ffs(primary_pipe) - 1;
-		if (transcoder_ddi_func_is_enabled(dev_priv, cpu_transcoder))
+		if (transcoder_ddi_func_is_enabled(display, cpu_transcoder))
 			enabled_transcoders |= BIT(cpu_transcoder);
 	}
 
@@ -3797,17 +3780,17 @@ static bool has_pipe_transcoders(u8 enabled_transcoders)
 				       BIT(TRANSCODER_DSI_1));
 }
 
-static void assert_enabled_transcoders(struct drm_i915_private *i915,
+static void assert_enabled_transcoders(struct intel_display *display,
 				       u8 enabled_transcoders)
 {
 	/* Only one type of transcoder please */
-	drm_WARN_ON(&i915->drm,
+	drm_WARN_ON(display->drm,
 		    has_edp_transcoders(enabled_transcoders) +
 		    has_dsi_transcoders(enabled_transcoders) +
 		    has_pipe_transcoders(enabled_transcoders) > 1);
 
 	/* Only DSI transcoders can be ganged */
-	drm_WARN_ON(&i915->drm,
+	drm_WARN_ON(display->drm,
 		    !has_dsi_transcoders(enabled_transcoders) &&
 		    !is_power_of_2(enabled_transcoders));
 }
@@ -3817,8 +3800,6 @@ static bool hsw_get_transcoder_state(struct intel_crtc *crtc,
 				     struct intel_display_power_domain_set *power_domain_set)
 {
 	struct intel_display *display = to_intel_display(crtc);
-	struct drm_device *dev = crtc->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
 	unsigned long enabled_transcoders;
 	u32 tmp;
 
@@ -3826,7 +3807,7 @@ static bool hsw_get_transcoder_state(struct intel_crtc *crtc,
 	if (!enabled_transcoders)
 		return false;
 
-	assert_enabled_transcoders(dev_priv, enabled_transcoders);
+	assert_enabled_transcoders(display, enabled_transcoders);
 
 	/*
 	 * With the exception of DSI we should only ever have
@@ -3839,16 +3820,16 @@ static bool hsw_get_transcoder_state(struct intel_crtc *crtc,
 						       POWER_DOMAIN_TRANSCODER(pipe_config->cpu_transcoder)))
 		return false;
 
-	if (hsw_panel_transcoders(dev_priv) & BIT(pipe_config->cpu_transcoder)) {
-		tmp = intel_de_read(dev_priv,
-				    TRANS_DDI_FUNC_CTL(dev_priv, pipe_config->cpu_transcoder));
+	if (hsw_panel_transcoders(display) & BIT(pipe_config->cpu_transcoder)) {
+		tmp = intel_de_read(display,
+				    TRANS_DDI_FUNC_CTL(display, pipe_config->cpu_transcoder));
 
 		if ((tmp & TRANS_DDI_EDP_INPUT_MASK) == TRANS_DDI_EDP_INPUT_A_ONOFF)
 			pipe_config->pch_pfit.force_thru = true;
 	}
 
-	tmp = intel_de_read(dev_priv,
-			    TRANSCONF(dev_priv, pipe_config->cpu_transcoder));
+	tmp = intel_de_read(display,
+			    TRANSCONF(display, pipe_config->cpu_transcoder));
 
 	return tmp & TRANSCONF_ENABLE;
 }
@@ -3901,12 +3882,12 @@ static bool bxt_get_dsi_transcoder_state(struct intel_crtc *crtc,
 
 static void intel_joiner_get_config(struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	u8 primary_pipe, secondary_pipes;
 	enum pipe pipe = crtc->pipe;
 
-	enabled_joiner_pipes(i915, pipe, &primary_pipe, &secondary_pipes);
+	enabled_joiner_pipes(display, pipe, &primary_pipe, &secondary_pipes);
 
 	if (((primary_pipe | secondary_pipes) & BIT(pipe)) == 0)
 		return;
@@ -3918,7 +3899,6 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 				struct intel_crtc_state *pipe_config)
 {
 	struct intel_display *display = to_intel_display(crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	bool active;
 	u32 tmp;
 
@@ -3930,9 +3910,9 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 
 	active = hsw_get_transcoder_state(crtc, pipe_config, &crtc->hw_readout_power_domains);
 
-	if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
+	if ((display->platform.geminilake || display->platform.broxton) &&
 	    bxt_get_dsi_transcoder_state(crtc, pipe_config, &crtc->hw_readout_power_domains)) {
-		drm_WARN_ON(&dev_priv->drm, active);
+		drm_WARN_ON(display->drm, active);
 		active = true;
 	}
 
@@ -3943,17 +3923,17 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 	intel_dsc_get_config(pipe_config);
 
 	if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
-	    DISPLAY_VER(dev_priv) >= 11)
+	    DISPLAY_VER(display) >= 11)
 		intel_get_transcoder_timings(crtc, pipe_config);
 
-	if (HAS_VRR(dev_priv) && !transcoder_is_dsi(pipe_config->cpu_transcoder))
+	if (HAS_VRR(display) && !transcoder_is_dsi(pipe_config->cpu_transcoder))
 		intel_vrr_get_config(pipe_config);
 
 	intel_get_pipe_src_size(crtc, pipe_config);
 
-	if (IS_HASWELL(dev_priv)) {
-		u32 tmp = intel_de_read(dev_priv,
-					TRANSCONF(dev_priv, pipe_config->cpu_transcoder));
+	if (display->platform.haswell) {
+		u32 tmp = intel_de_read(display,
+					TRANSCONF(display, pipe_config->cpu_transcoder));
 
 		if (tmp & TRANSCONF_OUTPUT_COLORSPACE_YUV_HSW)
 			pipe_config->output_format = INTEL_OUTPUT_FORMAT_YCBCR444;
@@ -3968,15 +3948,15 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 
 	intel_color_get_config(pipe_config);
 
-	tmp = intel_de_read(dev_priv, WM_LINETIME(crtc->pipe));
+	tmp = intel_de_read(display, WM_LINETIME(crtc->pipe));
 	pipe_config->linetime = REG_FIELD_GET(HSW_LINETIME_MASK, tmp);
-	if (IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
+	if (display->platform.broadwell || display->platform.haswell)
 		pipe_config->ips_linetime =
 			REG_FIELD_GET(HSW_IPS_LINETIME_MASK, tmp);
 
 	if (intel_display_power_get_in_set_if_enabled(display, &crtc->hw_readout_power_domains,
 						      POWER_DOMAIN_PIPE_PANEL_FITTER(crtc->pipe))) {
-		if (DISPLAY_VER(dev_priv) >= 9)
+		if (DISPLAY_VER(display) >= 9)
 			skl_scaler_get_config(pipe_config);
 		else
 			ilk_pfit_get_config(pipe_config);
@@ -3987,8 +3967,8 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 	if (pipe_config->cpu_transcoder != TRANSCODER_EDP &&
 	    !transcoder_is_dsi(pipe_config->cpu_transcoder)) {
 		pipe_config->pixel_multiplier =
-			intel_de_read(dev_priv,
-				      TRANS_MULT(dev_priv, pipe_config->cpu_transcoder)) + 1;
+			intel_de_read(display,
+				      TRANS_MULT(display, pipe_config->cpu_transcoder)) + 1;
 	} else {
 		pipe_config->pixel_multiplier = 1;
 	}
@@ -4010,10 +3990,10 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 
 bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
-	if (!i915->display.funcs.display->get_pipe_config(crtc, crtc_state))
+	if (!display->funcs.display->get_pipe_config(crtc, crtc_state))
 		return false;
 
 	crtc_state->hw.active = true;
@@ -4172,6 +4152,7 @@ static u16 hsw_ips_linetime_wm(const struct intel_crtc_state *crtc_state,
 
 static u16 skl_linetime_wm(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	const struct drm_display_mode *pipe_mode =
@@ -4185,7 +4166,7 @@ static u16 skl_linetime_wm(const struct intel_crtc_state *crtc_state)
 				   crtc_state->pixel_rate);
 
 	/* Display WA #1135: BXT:ALL GLK:ALL */
-	if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
+	if ((display->platform.geminilake || display->platform.broxton) &&
 	    skl_watermark_ipc_enabled(dev_priv))
 		linetime_wm /= 2;
 
@@ -4195,12 +4176,12 @@ static u16 skl_linetime_wm(const struct intel_crtc_state *crtc_state)
 static int hsw_compute_linetime_wm(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct intel_cdclk_state *cdclk_state;
 
-	if (DISPLAY_VER(dev_priv) >= 9)
+	if (DISPLAY_VER(display) >= 9)
 		crtc_state->linetime = skl_linetime_wm(crtc_state);
 	else
 		crtc_state->linetime = hsw_linetime_wm(crtc_state);
@@ -4222,12 +4203,11 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	int ret;
 
-	if (DISPLAY_VER(dev_priv) < 5 && !IS_G4X(dev_priv) &&
+	if (DISPLAY_VER(display) < 5 && !display->platform.g4x &&
 	    intel_crtc_needs_modeset(crtc_state) &&
 	    !crtc_state->hw.active)
 		crtc_state->update_wm_post = true;
@@ -4244,13 +4224,13 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 
 	ret = intel_wm_compute(state, crtc);
 	if (ret) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "[CRTC:%d:%s] watermarks are invalid\n",
 			    crtc->base.base.id, crtc->base.name);
 		return ret;
 	}
 
-	if (DISPLAY_VER(dev_priv) >= 9) {
+	if (DISPLAY_VER(display) >= 9) {
 		if (intel_crtc_needs_modeset(crtc_state) ||
 		    intel_crtc_needs_fastset(crtc_state)) {
 			ret = skl_update_scaler_crtc(crtc_state);
@@ -4269,8 +4249,8 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 			return ret;
 	}
 
-	if (DISPLAY_VER(dev_priv) >= 9 ||
-	    IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv)) {
+	if (DISPLAY_VER(display) >= 9 ||
+	    display->platform.broadwell || display->platform.haswell) {
 		ret = hsw_compute_linetime_wm(state, crtc);
 		if (ret)
 			return ret;
@@ -4288,8 +4268,8 @@ static int
 compute_sink_pipe_bpp(const struct drm_connector_state *conn_state,
 		      struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct drm_connector *connector = conn_state->connector;
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 	const struct drm_display_info *info = &connector->display_info;
 	int bpp;
 
@@ -4312,7 +4292,7 @@ compute_sink_pipe_bpp(const struct drm_connector_state *conn_state,
 	}
 
 	if (bpp < crtc_state->pipe_bpp) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[CONNECTOR:%d:%s] Limiting display bpp to %d "
 			    "(EDID bpp %d, max requested bpp %d, max platform bpp %d)\n",
 			    connector->base.id, connector->name,
@@ -4330,17 +4310,17 @@ static int
 compute_baseline_pipe_bpp(struct intel_atomic_state *state,
 			  struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct drm_connector *connector;
 	struct drm_connector_state *connector_state;
 	int bpp, i;
 
-	if ((IS_G4X(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
-	    IS_CHERRYVIEW(dev_priv)))
+	if (display->platform.g4x || display->platform.valleyview ||
+	    display->platform.cherryview)
 		bpp = 10*3;
-	else if (DISPLAY_VER(dev_priv) >= 5)
+	else if (DISPLAY_VER(display) >= 5)
 		bpp = 12*3;
 	else
 		bpp = 8*3;
@@ -4364,7 +4344,7 @@ compute_baseline_pipe_bpp(struct intel_atomic_state *state,
 
 static bool check_digital_port_conflicts(struct intel_atomic_state *state)
 {
-	struct drm_device *dev = state->base.dev;
+	struct intel_display *display = to_intel_display(state);
 	struct drm_connector *connector;
 	struct drm_connector_list_iter conn_iter;
 	unsigned int used_ports = 0;
@@ -4375,14 +4355,14 @@ static bool check_digital_port_conflicts(struct intel_atomic_state *state)
 	 * We're going to peek into connector->state,
 	 * hence connection_mutex must be held.
 	 */
-	drm_modeset_lock_assert_held(&dev->mode_config.connection_mutex);
+	drm_modeset_lock_assert_held(&display->drm->mode_config.connection_mutex);
 
 	/*
 	 * Walk the connector list instead of the encoder
 	 * list to detect the problem on ddi platforms
 	 * where there's just one encoder per digital port.
 	 */
-	drm_connector_list_iter_begin(dev, &conn_iter);
+	drm_connector_list_iter_begin(display->drm, &conn_iter);
 	drm_for_each_connector_iter(connector, &conn_iter) {
 		struct drm_connector_state *connector_state;
 		struct intel_encoder *encoder;
@@ -4398,11 +4378,11 @@ static bool check_digital_port_conflicts(struct intel_atomic_state *state)
 
 		encoder = to_intel_encoder(connector_state->best_encoder);
 
-		drm_WARN_ON(dev, !connector_state->crtc);
+		drm_WARN_ON(display->drm, !connector_state->crtc);
 
 		switch (encoder->type) {
 		case INTEL_OUTPUT_DDI:
-			if (drm_WARN_ON(dev, !HAS_DDI(to_i915(dev))))
+			if (drm_WARN_ON(display->drm, !HAS_DDI(display)))
 				break;
 			fallthrough;
 		case INTEL_OUTPUT_DP:
@@ -4550,9 +4530,9 @@ static int
 intel_crtc_prepare_cleared_state(struct intel_atomic_state *state,
 				 struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct intel_crtc_state *saved_state;
 
 	saved_state = intel_crtc_state_alloc(crtc);
@@ -4577,8 +4557,8 @@ intel_crtc_prepare_cleared_state(struct intel_atomic_state *state,
 	memcpy(saved_state->icl_port_dplls, crtc_state->icl_port_dplls,
 	       sizeof(saved_state->icl_port_dplls));
 	saved_state->crc_enabled = crtc_state->crc_enabled;
-	if (IS_G4X(dev_priv) ||
-	    IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
+	if (display->platform.g4x ||
+	    display->platform.valleyview || display->platform.cherryview)
 		saved_state->wm = crtc_state->wm;
 
 	memcpy(crtc_state, saved_state, sizeof(*crtc_state));
@@ -4594,7 +4574,7 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 			  struct intel_crtc *crtc,
 			  const struct intel_link_bw_limits *limits)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct drm_connector *connector;
@@ -4627,7 +4607,7 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 	crtc_state->max_link_bpp_x16 = limits->max_bpp_x16[crtc->pipe];
 
 	if (crtc_state->pipe_bpp > fxp_q4_to_int(crtc_state->max_link_bpp_x16)) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[CRTC:%d:%s] Link bpp limited to " FXP_Q4_FMT "\n",
 			    crtc->base.base.id, crtc->base.name,
 			    FXP_Q4_ARGS(crtc_state->max_link_bpp_x16));
@@ -4657,7 +4637,7 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 			continue;
 
 		if (!check_single_encoder_cloning(state, crtc, encoder)) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "[ENCODER:%d:%s] rejecting invalid cloning configuration\n",
 				    encoder->base.base.id, encoder->base.name);
 			return -EINVAL;
@@ -4699,7 +4679,7 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 		if (ret == -EDEADLK)
 			return ret;
 		if (ret < 0) {
-			drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] config failure: %d\n",
+			drm_dbg_kms(display->drm, "[ENCODER:%d:%s] config failure: %d\n",
 				    encoder->base.base.id, encoder->base.name, ret);
 			return ret;
 		}
@@ -4715,7 +4695,7 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 	if (ret == -EDEADLK)
 		return ret;
 	if (ret < 0) {
-		drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] config failure: %d\n",
+		drm_dbg_kms(display->drm, "[CRTC:%d:%s] config failure: %d\n",
 			    crtc->base.base.id, crtc->base.name, ret);
 		return ret;
 	}
@@ -4726,7 +4706,7 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 	 */
 	crtc_state->dither = (crtc_state->pipe_bpp == 6*3) &&
 		!crtc_state->dither_force_disable;
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "[CRTC:%d:%s] hw max bpp: %i, pipe bpp: %i, dithering: %i\n",
 		    crtc->base.base.id, crtc->base.name,
 		    base_bpp, crtc_state->pipe_bpp, crtc_state->dither);
@@ -4858,7 +4838,7 @@ pipe_config_infoframe_mismatch(struct drm_printer *p, bool fastset,
 			       const union hdmi_infoframe *a,
 			       const union hdmi_infoframe *b)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	const char *loglevel;
 
 	if (fastset) {
@@ -4873,9 +4853,9 @@ pipe_config_infoframe_mismatch(struct drm_printer *p, bool fastset,
 	pipe_config_mismatch(p, fastset, crtc, name, "infoframe");
 
 	drm_printf(p, "expected:\n");
-	hdmi_infoframe_log(loglevel, i915->drm.dev, a);
+	hdmi_infoframe_log(loglevel, display->drm->dev, a);
 	drm_printf(p, "found:\n");
-	hdmi_infoframe_log(loglevel, i915->drm.dev, b);
+	hdmi_infoframe_log(loglevel, display->drm->dev, b);
 }
 
 static void
@@ -4991,16 +4971,15 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 			  bool fastset)
 {
 	struct intel_display *display = to_intel_display(current_config);
-	struct drm_i915_private *dev_priv = to_i915(current_config->uapi.crtc->dev);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	struct drm_printer p;
 	u32 exclude_infoframes = 0;
 	bool ret = true;
 
 	if (fastset)
-		p = drm_dbg_printer(&dev_priv->drm, DRM_UT_KMS, NULL);
+		p = drm_dbg_printer(display->drm, DRM_UT_KMS, NULL);
 	else
-		p = drm_err_printer(&dev_priv->drm, NULL);
+		p = drm_err_printer(display->drm, NULL);
 
 #define PIPE_CONF_CHECK_X(name) do { \
 	if (current_config->name != pipe_config->name) { \
@@ -5267,8 +5246,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 	PIPE_CONF_CHECK_I(output_format);
 	PIPE_CONF_CHECK_BOOL(has_hdmi_sink);
-	if ((DISPLAY_VER(dev_priv) < 8 && !IS_HASWELL(dev_priv)) ||
-	    IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
+	if ((DISPLAY_VER(display) < 8 && !display->platform.haswell) ||
+	    display->platform.valleyview || display->platform.cherryview)
 		PIPE_CONF_CHECK_BOOL(limited_color_range);
 
 	PIPE_CONF_CHECK_BOOL(hdmi_scrambling);
@@ -5284,7 +5263,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 	PIPE_CONF_CHECK_X(gmch_pfit.control);
 	/* pfit ratios are autocomputed by the hw on gen4+ */
-	if (DISPLAY_VER(dev_priv) < 4)
+	if (DISPLAY_VER(display) < 4)
 		PIPE_CONF_CHECK_X(gmch_pfit.pgm_ratios);
 	PIPE_CONF_CHECK_X(gmch_pfit.lvds_border_bits);
 
@@ -5304,7 +5283,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_I(pixel_rate);
 
 		PIPE_CONF_CHECK_X(gamma_mode);
-		if (IS_CHERRYVIEW(dev_priv))
+		if (display->platform.cherryview)
 			PIPE_CONF_CHECK_X(cgm_mode);
 		else
 			PIPE_CONF_CHECK_X(csc_mode);
@@ -5324,21 +5303,21 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 	PIPE_CONF_CHECK_BOOL(double_wide);
 
-	if (dev_priv->display.dpll.mgr)
+	if (display->dpll.mgr)
 		PIPE_CONF_CHECK_P(shared_dpll);
 
 	/* FIXME convert everything over the dpll_mgr */
-	if (dev_priv->display.dpll.mgr || HAS_GMCH(dev_priv))
+	if (display->dpll.mgr || HAS_GMCH(display))
 		PIPE_CONF_CHECK_PLL(dpll_hw_state);
 
 	/* FIXME convert MTL+ platforms over to dpll_mgr */
-	if (DISPLAY_VER(dev_priv) >= 14)
+	if (DISPLAY_VER(display) >= 14)
 		PIPE_CONF_CHECK_PLL_CX0(dpll_hw_state.cx0pll);
 
 	PIPE_CONF_CHECK_X(dsi_pll.ctrl);
 	PIPE_CONF_CHECK_X(dsi_pll.div);
 
-	if (IS_G4X(dev_priv) || DISPLAY_VER(dev_priv) >= 5)
+	if (display->platform.g4x || DISPLAY_VER(display) >= 5)
 		PIPE_CONF_CHECK_I(pipe_bpp);
 
 	if (!fastset || !pipe_config->update_m_n) {
@@ -5454,11 +5433,11 @@ static int intel_modeset_pipe(struct intel_atomic_state *state,
 			      struct intel_crtc_state *crtc_state,
 			      const char *reason)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	int ret;
 
-	drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] Full modeset due to %s\n",
+	drm_dbg_kms(display->drm, "[CRTC:%d:%s] Full modeset due to %s\n",
 		    crtc->base.base.id, crtc->base.name, reason);
 
 	ret = drm_atomic_add_affected_connectors(&state->base,
@@ -5498,10 +5477,10 @@ static int intel_modeset_pipe(struct intel_atomic_state *state,
 int intel_modeset_pipes_in_mask_early(struct intel_atomic_state *state,
 				      const char *reason, u8 mask)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc *crtc;
 
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, mask) {
+	for_each_intel_crtc_in_pipe_mask(display->drm, crtc, mask) {
 		struct intel_crtc_state *crtc_state;
 		int ret;
 
@@ -5545,10 +5524,10 @@ intel_crtc_flag_modeset(struct intel_crtc_state *crtc_state)
 int intel_modeset_all_pipes_late(struct intel_atomic_state *state,
 				 const char *reason)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc *crtc;
 
-	for_each_intel_crtc(&dev_priv->drm, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		struct intel_crtc_state *crtc_state;
 		int ret;
 
@@ -5688,11 +5667,11 @@ u8 intel_calc_active_pipes(struct intel_atomic_state *state,
 
 static int intel_modeset_checks(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 
 	state->modeset = true;
 
-	if (IS_HASWELL(dev_priv))
+	if (display->platform.haswell)
 		return hsw_mode_set_planes_workaround(state);
 
 	return 0;
@@ -5709,15 +5688,15 @@ static bool lrr_params_changed(const struct drm_display_mode *old_adjusted_mode,
 static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_state,
 				     struct intel_crtc_state *new_crtc_state)
 {
+	struct intel_display *display = to_intel_display(new_crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
 	/* only allow LRR when the timings stay within the VRR range */
 	if (old_crtc_state->vrr.in_range != new_crtc_state->vrr.in_range)
 		new_crtc_state->update_lrr = false;
 
 	if (!intel_pipe_config_compare(old_crtc_state, new_crtc_state, true)) {
-		drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] fastset requirement not met, forcing full modeset\n",
+		drm_dbg_kms(display->drm, "[CRTC:%d:%s] fastset requirement not met, forcing full modeset\n",
 			    crtc->base.base.id, crtc->base.name);
 	} else {
 		if (allow_vblank_delay_fastset(old_crtc_state))
@@ -5741,17 +5720,17 @@ static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_sta
 
 static int intel_atomic_check_crtcs(struct intel_atomic_state *state)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state __maybe_unused *crtc_state;
 	struct intel_crtc *crtc;
 	int i;
 
 	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
-		struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 		int ret;
 
 		ret = intel_crtc_atomic_check(state, crtc);
 		if (ret) {
-			drm_dbg_atomic(&i915->drm,
+			drm_dbg_atomic(display->drm,
 				       "[CRTC:%d:%s] atomic driver check failed\n",
 				       crtc->base.base.id, crtc->base.name);
 			return ret;
@@ -5798,7 +5777,7 @@ static bool intel_pipes_need_modeset(struct intel_atomic_state *state,
 static int intel_atomic_check_joiner(struct intel_atomic_state *state,
 				     struct intel_crtc *primary_crtc)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *primary_crtc_state =
 		intel_atomic_get_new_crtc_state(state, primary_crtc);
 	struct intel_crtc *secondary_crtc;
@@ -5807,20 +5786,20 @@ static int intel_atomic_check_joiner(struct intel_atomic_state *state,
 		return 0;
 
 	/* sanity check */
-	if (drm_WARN_ON(&i915->drm,
+	if (drm_WARN_ON(display->drm,
 			primary_crtc->pipe != joiner_primary_pipe(primary_crtc_state)))
 		return -EINVAL;
 
-	if (primary_crtc_state->joiner_pipes & ~joiner_pipes(i915)) {
-		drm_dbg_kms(&i915->drm,
+	if (primary_crtc_state->joiner_pipes & ~joiner_pipes(display)) {
+		drm_dbg_kms(display->drm,
 			    "[CRTC:%d:%s] Cannot act as joiner primary "
 			    "(need 0x%x as pipes, only 0x%x possible)\n",
 			    primary_crtc->base.base.id, primary_crtc->base.name,
-			    primary_crtc_state->joiner_pipes, joiner_pipes(i915));
+			    primary_crtc_state->joiner_pipes, joiner_pipes(display));
 		return -EINVAL;
 	}
 
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, secondary_crtc,
+	for_each_intel_crtc_in_pipe_mask(display->drm, secondary_crtc,
 					 intel_crtc_joiner_secondary_pipes(primary_crtc_state)) {
 		struct intel_crtc_state *secondary_crtc_state;
 		int ret;
@@ -5831,7 +5810,7 @@ static int intel_atomic_check_joiner(struct intel_atomic_state *state,
 
 		/* primary being enabled, secondary was already configured? */
 		if (secondary_crtc_state->uapi.enable) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "[CRTC:%d:%s] secondary is enabled as normal CRTC, but "
 				    "[CRTC:%d:%s] claiming this CRTC for joiner.\n",
 				    secondary_crtc->base.base.id, secondary_crtc->base.name,
@@ -5850,7 +5829,7 @@ static int intel_atomic_check_joiner(struct intel_atomic_state *state,
 			    drm_crtc_index(&secondary_crtc->base)))
 			return -EINVAL;
 
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[CRTC:%d:%s] Used as secondary for joiner primary [CRTC:%d:%s]\n",
 			    secondary_crtc->base.base.id, secondary_crtc->base.name,
 			    primary_crtc->base.base.id, primary_crtc->base.name);
@@ -5869,12 +5848,12 @@ static int intel_atomic_check_joiner(struct intel_atomic_state *state,
 static void kill_joiner_secondaries(struct intel_atomic_state *state,
 				    struct intel_crtc *primary_crtc)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *primary_crtc_state =
 		intel_atomic_get_new_crtc_state(state, primary_crtc);
 	struct intel_crtc *secondary_crtc;
 
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, secondary_crtc,
+	for_each_intel_crtc_in_pipe_mask(display->drm, secondary_crtc,
 					 intel_crtc_joiner_secondary_pipes(primary_crtc_state)) {
 		struct intel_crtc_state *secondary_crtc_state =
 			intel_atomic_get_new_crtc_state(state, secondary_crtc);
@@ -5908,7 +5887,7 @@ static void kill_joiner_secondaries(struct intel_atomic_state *state,
 static int intel_async_flip_check_uapi(struct intel_atomic_state *state,
 				       struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct intel_plane_state *old_plane_state;
@@ -5920,14 +5899,14 @@ static int intel_async_flip_check_uapi(struct intel_atomic_state *state,
 		return 0;
 
 	if (!new_crtc_state->uapi.active) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[CRTC:%d:%s] not active\n",
 			    crtc->base.base.id, crtc->base.name);
 		return -EINVAL;
 	}
 
 	if (intel_crtc_needs_modeset(new_crtc_state)) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[CRTC:%d:%s] modeset required\n",
 			    crtc->base.base.id, crtc->base.name);
 		return -EINVAL;
@@ -5938,7 +5917,7 @@ static int intel_async_flip_check_uapi(struct intel_atomic_state *state,
 	 * Remove this check once the issues are fixed.
 	 */
 	if (new_crtc_state->joiner_pipes) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[CRTC:%d:%s] async flip disallowed with joiner\n",
 			    crtc->base.base.id, crtc->base.name);
 		return -EINVAL;
@@ -5957,14 +5936,14 @@ static int intel_async_flip_check_uapi(struct intel_atomic_state *state,
 		 * enabled in the atomic IOCTL path.
 		 */
 		if (!plane->async_flip) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "[PLANE:%d:%s] async flip not supported\n",
 				    plane->base.base.id, plane->base.name);
 			return -EINVAL;
 		}
 
 		if (!old_plane_state->uapi.fb || !new_plane_state->uapi.fb) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "[PLANE:%d:%s] no old or new framebuffer\n",
 				    plane->base.base.id, plane->base.name);
 			return -EINVAL;
@@ -5976,7 +5955,7 @@ static int intel_async_flip_check_uapi(struct intel_atomic_state *state,
 
 static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *old_crtc_state, *new_crtc_state;
 	const struct intel_plane_state *new_plane_state, *old_plane_state;
 	struct intel_plane *plane;
@@ -5989,21 +5968,21 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 		return 0;
 
 	if (!new_crtc_state->hw.active) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[CRTC:%d:%s] not active\n",
 			    crtc->base.base.id, crtc->base.name);
 		return -EINVAL;
 	}
 
 	if (intel_crtc_needs_modeset(new_crtc_state)) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[CRTC:%d:%s] modeset required\n",
 			    crtc->base.base.id, crtc->base.name);
 		return -EINVAL;
 	}
 
 	if (old_crtc_state->active_planes != new_crtc_state->active_planes) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[CRTC:%d:%s] Active planes cannot be in async flip\n",
 			    crtc->base.base.id, crtc->base.name);
 		return -EINVAL;
@@ -6019,7 +5998,7 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 		 * if we're really about to ask the hardware to perform
 		 * an async flip. We should never get this far otherwise.
 		 */
-		if (drm_WARN_ON(&i915->drm,
+		if (drm_WARN_ON(display->drm,
 				new_crtc_state->do_async_flip && !plane->async_flip))
 			return -EINVAL;
 
@@ -6035,7 +6014,7 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 			continue;
 
 		if (!intel_plane_can_async_flip(plane, new_plane_state->hw.fb->modifier)) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "[PLANE:%d:%s] Modifier 0x%llx does not support async flip\n",
 				    plane->base.base.id, plane->base.name,
 				    new_plane_state->hw.fb->modifier);
@@ -6044,7 +6023,7 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 
 		if (intel_format_info_is_yuv_semiplanar(new_plane_state->hw.fb->format,
 							new_plane_state->hw.fb->modifier)) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "[PLANE:%d:%s] Planar formats do not support async flips\n",
 				    plane->base.base.id, plane->base.name);
 			return -EINVAL;
@@ -6059,7 +6038,7 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 
 		if (old_plane_state->view.color_plane[0].mapping_stride !=
 		    new_plane_state->view.color_plane[0].mapping_stride) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "[PLANE:%d:%s] Stride cannot be changed in async flip\n",
 				    plane->base.base.id, plane->base.name);
 			return -EINVAL;
@@ -6067,7 +6046,7 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 
 		if (old_plane_state->hw.fb->modifier !=
 		    new_plane_state->hw.fb->modifier) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "[PLANE:%d:%s] Modifier cannot be changed in async flip\n",
 				    plane->base.base.id, plane->base.name);
 			return -EINVAL;
@@ -6075,7 +6054,7 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 
 		if (old_plane_state->hw.fb->format !=
 		    new_plane_state->hw.fb->format) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "[PLANE:%d:%s] Pixel format cannot be changed in async flip\n",
 				    plane->base.base.id, plane->base.name);
 			return -EINVAL;
@@ -6083,7 +6062,7 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 
 		if (old_plane_state->hw.rotation !=
 		    new_plane_state->hw.rotation) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "[PLANE:%d:%s] Rotation cannot be changed in async flip\n",
 				    plane->base.base.id, plane->base.name);
 			return -EINVAL;
@@ -6091,7 +6070,7 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 
 		if (skl_plane_aux_dist(old_plane_state, 0) !=
 		    skl_plane_aux_dist(new_plane_state, 0)) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "[PLANE:%d:%s] AUX_DIST cannot be changed in async flip\n",
 				    plane->base.base.id, plane->base.name);
 			return -EINVAL;
@@ -6099,14 +6078,14 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 
 		if (!drm_rect_equals(&old_plane_state->uapi.src, &new_plane_state->uapi.src) ||
 		    !drm_rect_equals(&old_plane_state->uapi.dst, &new_plane_state->uapi.dst)) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "[PLANE:%d:%s] Size/co-ordinates cannot be changed in async flip\n",
 				    plane->base.base.id, plane->base.name);
 			return -EINVAL;
 		}
 
 		if (old_plane_state->hw.alpha != new_plane_state->hw.alpha) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "[PLANES:%d:%s] Alpha value cannot be changed in async flip\n",
 				    plane->base.base.id, plane->base.name);
 			return -EINVAL;
@@ -6114,21 +6093,21 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 
 		if (old_plane_state->hw.pixel_blend_mode !=
 		    new_plane_state->hw.pixel_blend_mode) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "[PLANE:%d:%s] Pixel blend mode cannot be changed in async flip\n",
 				    plane->base.base.id, plane->base.name);
 			return -EINVAL;
 		}
 
 		if (old_plane_state->hw.color_encoding != new_plane_state->hw.color_encoding) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "[PLANE:%d:%s] Color encoding cannot be changed in async flip\n",
 				    plane->base.base.id, plane->base.name);
 			return -EINVAL;
 		}
 
 		if (old_plane_state->hw.color_range != new_plane_state->hw.color_range) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "[PLANE:%d:%s] Color range cannot be changed in async flip\n",
 				    plane->base.base.id, plane->base.name);
 			return -EINVAL;
@@ -6136,7 +6115,7 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 
 		/* plane decryption is allow to change only in synchronous flips */
 		if (old_plane_state->decrypt != new_plane_state->decrypt) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "[PLANE:%d:%s] Decryption cannot be changed in async flip\n",
 				    plane->base.base.id, plane->base.name);
 			return -EINVAL;
@@ -6148,7 +6127,7 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 
 static int intel_joiner_add_affected_crtcs(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_plane_state *plane_state;
 	struct intel_crtc_state *crtc_state;
 	struct intel_plane *plane;
@@ -6179,13 +6158,13 @@ static int intel_joiner_add_affected_crtcs(struct intel_atomic_state *state)
 			modeset_pipes |= crtc_state->joiner_pipes;
 	}
 
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, affected_pipes) {
+	for_each_intel_crtc_in_pipe_mask(display->drm, crtc, affected_pipes) {
 		crtc_state = intel_atomic_get_crtc_state(&state->base, crtc);
 		if (IS_ERR(crtc_state))
 			return PTR_ERR(crtc_state);
 	}
 
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, modeset_pipes) {
+	for_each_intel_crtc_in_pipe_mask(display->drm, crtc, modeset_pipes) {
 		int ret;
 
 		crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
@@ -6215,7 +6194,7 @@ static int intel_atomic_check_config(struct intel_atomic_state *state,
 				     struct intel_link_bw_limits *limits,
 				     enum pipe *failed_pipe)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *new_crtc_state;
 	struct intel_crtc *crtc;
 	int ret;
@@ -6240,7 +6219,7 @@ static int intel_atomic_check_config(struct intel_atomic_state *state,
 			continue;
 		}
 
-		if (drm_WARN_ON(&i915->drm, intel_crtc_is_joiner_secondary(new_crtc_state)))
+		if (drm_WARN_ON(display->drm, intel_crtc_is_joiner_secondary(new_crtc_state)))
 			continue;
 
 		ret = intel_crtc_prepare_cleared_state(state, crtc);
@@ -6259,7 +6238,7 @@ static int intel_atomic_check_config(struct intel_atomic_state *state,
 		if (!intel_crtc_needs_modeset(new_crtc_state))
 			continue;
 
-		if (drm_WARN_ON(&i915->drm, intel_crtc_is_joiner_secondary(new_crtc_state)))
+		if (drm_WARN_ON(display->drm, intel_crtc_is_joiner_secondary(new_crtc_state)))
 			continue;
 
 		if (!new_crtc_state->hw.enable)
@@ -6324,7 +6303,6 @@ int intel_atomic_check(struct drm_device *dev,
 		       struct drm_atomic_state *_state)
 {
 	struct intel_display *display = to_intel_display(dev);
-	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_atomic_state *state = to_intel_atomic_state(_state);
 	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
 	struct intel_crtc *crtc;
@@ -6372,7 +6350,7 @@ int intel_atomic_check(struct drm_device *dev,
 			continue;
 
 		if (intel_crtc_is_joiner_secondary(new_crtc_state)) {
-			drm_WARN_ON(&dev_priv->drm, new_crtc_state->uapi.enable);
+			drm_WARN_ON(display->drm, new_crtc_state->uapi.enable);
 			continue;
 		}
 
@@ -6443,7 +6421,7 @@ int intel_atomic_check(struct drm_device *dev,
 	}
 
 	if (any_ms && !check_digital_port_conflicts(state)) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "rejecting conflicting digital port configuration\n");
 		ret = -EINVAL;
 		goto fail;
@@ -6499,7 +6477,7 @@ int intel_atomic_check(struct drm_device *dev,
 			goto fail;
 
 		/* Either full modeset or fastset (or neither), never both */
-		drm_WARN_ON(&dev_priv->drm,
+		drm_WARN_ON(display->drm,
 			    intel_crtc_needs_modeset(new_crtc_state) &&
 			    intel_crtc_needs_fastset(new_crtc_state));
 
@@ -6559,6 +6537,7 @@ void intel_crtc_arm_fifo_underrun(struct intel_crtc *crtc,
 static void intel_pipe_fastset(const struct intel_crtc_state *old_crtc_state,
 			       const struct intel_crtc_state *new_crtc_state)
 {
+	struct intel_display *display = to_intel_display(new_crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
@@ -6573,7 +6552,7 @@ static void intel_pipe_fastset(const struct intel_crtc_state *old_crtc_state,
 	intel_set_pipe_src_size(new_crtc_state);
 
 	/* on skylake this is done by detaching scalers */
-	if (DISPLAY_VER(dev_priv) >= 9) {
+	if (DISPLAY_VER(display) >= 9) {
 		if (new_crtc_state->pch_pfit.enabled)
 			skl_pfit_enable(new_crtc_state);
 	} else if (HAS_PCH_SPLIT(dev_priv)) {
@@ -6591,8 +6570,8 @@ static void intel_pipe_fastset(const struct intel_crtc_state *old_crtc_state,
 	 * HSW/BDW only really need this here for fastboot, after
 	 * that the value should not change without a full modeset.
 	 */
-	if (DISPLAY_VER(dev_priv) >= 9 ||
-	    IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
+	if (DISPLAY_VER(display) >= 9 ||
+	    display->platform.broadwell || display->platform.haswell)
 		hsw_set_linetime_wm(new_crtc_state);
 
 	if (new_crtc_state->update_m_n)
@@ -6606,14 +6585,14 @@ static void intel_pipe_fastset(const struct intel_crtc_state *old_crtc_state,
 static void commit_pipe_pre_planes(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	bool modeset = intel_crtc_needs_modeset(new_crtc_state);
 
-	drm_WARN_ON(&dev_priv->drm, new_crtc_state->use_dsb);
+	drm_WARN_ON(display->drm, new_crtc_state->use_dsb);
 
 	/*
 	 * During modesets pipe configuration was programmed as the
@@ -6623,7 +6602,7 @@ static void commit_pipe_pre_planes(struct intel_atomic_state *state,
 		if (intel_crtc_needs_color_update(new_crtc_state))
 			intel_color_commit_arm(NULL, new_crtc_state);
 
-		if (DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
+		if (DISPLAY_VER(display) >= 9 || display->platform.broadwell)
 			bdw_set_pipe_misc(NULL, new_crtc_state);
 
 		if (intel_crtc_needs_fastset(new_crtc_state))
@@ -6638,18 +6617,18 @@ static void commit_pipe_pre_planes(struct intel_atomic_state *state,
 static void commit_pipe_post_planes(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	drm_WARN_ON(&dev_priv->drm, new_crtc_state->use_dsb);
+	drm_WARN_ON(display->drm, new_crtc_state->use_dsb);
 
 	/*
 	 * Disable the scaler(s) after the plane(s) so that we don't
 	 * get a catastrophic underrun even if the two operations
 	 * end up happening in two different frames.
 	 */
-	if (DISPLAY_VER(dev_priv) >= 9 &&
+	if (DISPLAY_VER(display) >= 9 &&
 	    !intel_crtc_needs_modeset(new_crtc_state))
 		skl_detach_scalers(NULL, new_crtc_state);
 
@@ -6660,7 +6639,7 @@ static void commit_pipe_post_planes(struct intel_atomic_state *state,
 static void intel_enable_crtc(struct intel_atomic_state *state,
 			      struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_crtc *pipe_crtc;
@@ -6668,7 +6647,7 @@ static void intel_enable_crtc(struct intel_atomic_state *state,
 	if (!intel_crtc_needs_modeset(new_crtc_state))
 		return;
 
-	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
+	for_each_intel_crtc_in_pipe_mask_reverse(display->drm, pipe_crtc,
 						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
@@ -6677,7 +6656,7 @@ static void intel_enable_crtc(struct intel_atomic_state *state,
 		intel_crtc_update_active_timings(pipe_crtc_state, false);
 	}
 
-	dev_priv->display.funcs.display->crtc_enable(state, crtc);
+	display->funcs.display->crtc_enable(state, crtc);
 
 	/* vblanks work again, re-enable pipe CRC. */
 	intel_crtc_enable_pipe_crc(crtc);
@@ -6687,7 +6666,6 @@ static void intel_pre_update_crtc(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_crtc_state *new_crtc_state =
@@ -6696,7 +6674,7 @@ static void intel_pre_update_crtc(struct intel_atomic_state *state,
 
 	if (old_crtc_state->inherited ||
 	    intel_crtc_needs_modeset(new_crtc_state)) {
-		if (HAS_DPT(i915))
+		if (HAS_DPT(display))
 			intel_dpt_configure(crtc);
 	}
 
@@ -6710,7 +6688,7 @@ static void intel_pre_update_crtc(struct intel_atomic_state *state,
 		if (intel_crtc_needs_fastset(new_crtc_state))
 			intel_encoders_update_pipe(state, crtc);
 
-		if (DISPLAY_VER(i915) >= 11 &&
+		if (DISPLAY_VER(display) >= 11 &&
 		    intel_crtc_needs_fastset(new_crtc_state))
 			icl_set_pipe_chicken(new_crtc_state);
 
@@ -6784,7 +6762,7 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
 					  struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_crtc *pipe_crtc;
@@ -6793,13 +6771,13 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
 	 * We need to disable pipe CRC before disabling the pipe,
 	 * or we race against vblank off.
 	 */
-	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
+	for_each_intel_crtc_in_pipe_mask(display->drm, pipe_crtc,
 					 intel_crtc_joined_pipe_mask(old_crtc_state))
 		intel_crtc_disable_pipe_crc(pipe_crtc);
 
-	dev_priv->display.funcs.display->crtc_disable(state, crtc);
+	display->funcs.display->crtc_disable(state, crtc);
 
-	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
+	for_each_intel_crtc_in_pipe_mask(display->drm, pipe_crtc,
 					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
 		const struct intel_crtc_state *new_pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
@@ -6814,7 +6792,7 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
 
 static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
 	struct intel_crtc *crtc;
 	u8 disable_pipes = 0;
@@ -6881,7 +6859,7 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 		disable_pipes &= ~intel_crtc_joined_pipe_mask(old_crtc_state);
 	}
 
-	drm_WARN_ON(&i915->drm, disable_pipes);
+	drm_WARN_ON(display->drm, disable_pipes);
 }
 
 static void intel_commit_modeset_enables(struct intel_atomic_state *state)
@@ -6908,7 +6886,7 @@ static void intel_commit_modeset_enables(struct intel_atomic_state *state)
 
 static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc *crtc;
 	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
 	struct skl_ddb_entry entries[I915_MAX_PIPES] = {};
@@ -7050,8 +7028,9 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 		if ((update_pipes & BIT(pipe)) == 0)
 			continue;
 
-		drm_WARN_ON(&dev_priv->drm, skl_ddb_allocation_overlaps(&new_crtc_state->wm.skl.ddb,
-									entries, I915_MAX_PIPES, pipe));
+		drm_WARN_ON(display->drm,
+			    skl_ddb_allocation_overlaps(&new_crtc_state->wm.skl.ddb,
+							entries, I915_MAX_PIPES, pipe));
 
 		entries[pipe] = new_crtc_state->wm.skl.ddb;
 		update_pipes &= ~BIT(pipe);
@@ -7059,8 +7038,8 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 		intel_update_crtc(state, crtc);
 	}
 
-	drm_WARN_ON(&dev_priv->drm, modeset_pipes);
-	drm_WARN_ON(&dev_priv->drm, update_pipes);
+	drm_WARN_ON(display->drm, modeset_pipes);
+	drm_WARN_ON(display->drm, update_pipes);
 }
 
 static void intel_atomic_commit_fence_wait(struct intel_atomic_state *intel_state)
@@ -7105,7 +7084,7 @@ static void intel_atomic_cleanup_work(struct work_struct *work)
 {
 	struct intel_atomic_state *state =
 		container_of(work, struct intel_atomic_state, cleanup_work);
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *old_crtc_state;
 	struct intel_crtc *crtc;
 	int i;
@@ -7113,14 +7092,14 @@ static void intel_atomic_cleanup_work(struct work_struct *work)
 	for_each_old_intel_crtc_in_state(state, crtc, old_crtc_state, i)
 		intel_atomic_dsb_cleanup(old_crtc_state);
 
-	drm_atomic_helper_cleanup_planes(&i915->drm, &state->base);
+	drm_atomic_helper_cleanup_planes(display->drm, &state->base);
 	drm_atomic_helper_commit_cleanup_done(&state->base);
 	drm_atomic_state_put(&state->base);
 }
 
 static void intel_atomic_prepare_plane_clear_colors(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_plane *plane;
 	struct intel_plane_state *plane_state;
 	int i;
@@ -7157,7 +7136,7 @@ static void intel_atomic_prepare_plane_clear_colors(struct intel_atomic_state *s
 					      &plane_state->ccval,
 					      sizeof(plane_state->ccval));
 		/* The above could only fail if the FB obj has an unexpected backing store type. */
-		drm_WARN_ON(&i915->drm, ret);
+		drm_WARN_ON(display->drm, ret);
 	}
 }
 
@@ -7258,8 +7237,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_device *dev = state->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
 	struct intel_crtc *crtc;
 	struct intel_power_domain_mask put_domains[I915_MAX_PIPES] = {};
@@ -7338,7 +7316,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	intel_pmdemand_pre_plane_update(state);
 
 	if (state->modeset) {
-		drm_atomic_helper_update_legacy_modeset_state(dev, &state->base);
+		drm_atomic_helper_update_legacy_modeset_state(display->drm, &state->base);
 
 		intel_set_cdclk_pre_plane_update(state);
 
@@ -7353,10 +7331,10 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 
 		/* Complete events for now disable pipes here. */
 		if (modeset && !new_crtc_state->hw.active && new_crtc_state->uapi.event) {
-			spin_lock_irq(&dev->event_lock);
+			spin_lock_irq(&display->drm->event_lock);
 			drm_crtc_send_vblank_event(&crtc->base,
 						   new_crtc_state->uapi.event);
-			spin_unlock_irq(&dev->event_lock);
+			spin_unlock_irq(&display->drm->event_lock);
 
 			new_crtc_state->uapi.event = NULL;
 		}
@@ -7372,7 +7350,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	}
 
 	/* Now enable the clocks, plane, pipe, and connectors that we set up. */
-	dev_priv->display.funcs.display->commit_modeset_enables(state);
+	display->funcs.display->commit_modeset_enables(state);
 
 	intel_program_dpkgc_latency(state);
 
@@ -7390,7 +7368,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	 * - switch over to the vblank wait helper in the core after that since
 	 *   we don't need out special handling any more.
 	 */
-	drm_atomic_helper_wait_for_flip_done(dev, &state->base);
+	drm_atomic_helper_wait_for_flip_done(display->drm, &state->base);
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		if (new_crtc_state->do_async_flip)
@@ -7419,7 +7397,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		 * chance of catching underruns with the intermediate watermarks
 		 * vs. the new plane configuration.
 		 */
-		if (DISPLAY_VER(dev_priv) == 2 && planes_enabling(old_crtc_state, new_crtc_state))
+		if (DISPLAY_VER(display) == 2 && planes_enabling(old_crtc_state, new_crtc_state))
 			intel_set_cpu_fifo_underrun_reporting(display, crtc->pipe, true);
 
 		intel_optimize_watermarks(state, crtc);
@@ -7485,7 +7463,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	 * down.
 	 */
 	INIT_WORK(&state->cleanup_work, intel_atomic_cleanup_work);
-	queue_work(dev_priv->display.wq.cleanup, &state->cleanup_work);
+	queue_work(display->wq.cleanup, &state->cleanup_work);
 }
 
 static void intel_atomic_commit_work(struct work_struct *work)
@@ -7544,6 +7522,7 @@ static int intel_atomic_swap_state(struct intel_atomic_state *state)
 int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
 			bool nonblock)
 {
+	struct intel_display *display = to_intel_display(dev);
 	struct intel_atomic_state *state = to_intel_atomic_state(_state);
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	int ret = 0;
@@ -7567,7 +7546,7 @@ int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
 	 * FIXME doing watermarks and fb cleanup from a vblank worker
 	 * (assuming we had any) would solve these problems.
 	 */
-	if (DISPLAY_VER(dev_priv) < 9 && state->base.legacy_cursor_update) {
+	if (DISPLAY_VER(display) < 9 && state->base.legacy_cursor_update) {
 		struct intel_crtc_state *new_crtc_state;
 		struct intel_crtc *crtc;
 		int i;
@@ -7580,7 +7559,7 @@ int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
 
 	ret = intel_atomic_prepare_commit(state);
 	if (ret) {
-		drm_dbg_atomic(&dev_priv->drm,
+		drm_dbg_atomic(display->drm,
 			       "Preparing state failed with %i\n", ret);
 		intel_runtime_pm_put(&dev_priv->runtime_pm, state->wakeref);
 		return ret;
@@ -7600,12 +7579,12 @@ int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
 	INIT_WORK(&state->base.commit_work, intel_atomic_commit_work);
 
 	if (nonblock && state->modeset) {
-		queue_work(dev_priv->display.wq.modeset, &state->base.commit_work);
+		queue_work(display->wq.modeset, &state->base.commit_work);
 	} else if (nonblock) {
-		queue_work(dev_priv->display.wq.flip, &state->base.commit_work);
+		queue_work(display->wq.flip, &state->base.commit_work);
 	} else {
 		if (state->modeset)
-			flush_workqueue(dev_priv->display.wq.modeset);
+			flush_workqueue(display->wq.modeset);
 		intel_atomic_commit_tail(state);
 	}
 
@@ -7614,11 +7593,11 @@ int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
 
 static u32 intel_encoder_possible_clones(struct intel_encoder *encoder)
 {
-	struct drm_device *dev = encoder->base.dev;
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_encoder *source_encoder;
 	u32 possible_clones = 0;
 
-	for_each_intel_encoder(dev, source_encoder) {
+	for_each_intel_encoder(display->drm, source_encoder) {
 		if (encoders_cloneable(encoder, source_encoder))
 			possible_clones |= drm_encoder_mask(&source_encoder->base);
 	}
@@ -7628,11 +7607,11 @@ static u32 intel_encoder_possible_clones(struct intel_encoder *encoder)
 
 static u32 intel_encoder_possible_crtcs(struct intel_encoder *encoder)
 {
-	struct drm_device *dev = encoder->base.dev;
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_crtc *crtc;
 	u32 possible_crtcs = 0;
 
-	for_each_intel_crtc_in_pipe_mask(dev, crtc, encoder->pipe_mask)
+	for_each_intel_crtc_in_pipe_mask(display->drm, crtc, encoder->pipe_mask)
 		possible_crtcs |= drm_crtc_mask(&crtc->base);
 
 	return possible_crtcs;
@@ -7852,9 +7831,8 @@ void intel_setup_outputs(struct intel_display *display)
 	drm_helper_move_panel_connectors_to_head(display->drm);
 }
 
-static int max_dotclock(struct drm_i915_private *i915)
+static int max_dotclock(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
 	int max_dotclock = display->cdclk.max_dotclk_freq;
 
 	if (HAS_ULTRAJOINER(display))
@@ -7868,7 +7846,7 @@ static int max_dotclock(struct drm_i915_private *i915)
 enum drm_mode_status intel_mode_valid(struct drm_device *dev,
 				      const struct drm_display_mode *mode)
 {
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_display *display = to_intel_display(dev);
 	int hdisplay_max, htotal_max;
 	int vdisplay_max, vtotal_max;
 
@@ -7905,22 +7883,22 @@ enum drm_mode_status intel_mode_valid(struct drm_device *dev,
 	 * Reject clearly excessive dotclocks early to
 	 * avoid having to worry about huge integers later.
 	 */
-	if (mode->clock > max_dotclock(dev_priv))
+	if (mode->clock > max_dotclock(display))
 		return MODE_CLOCK_HIGH;
 
 	/* Transcoder timing limits */
-	if (DISPLAY_VER(dev_priv) >= 11) {
+	if (DISPLAY_VER(display) >= 11) {
 		hdisplay_max = 16384;
 		vdisplay_max = 8192;
 		htotal_max = 16384;
 		vtotal_max = 8192;
-	} else if (DISPLAY_VER(dev_priv) >= 9 ||
-		   IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv)) {
+	} else if (DISPLAY_VER(display) >= 9 ||
+		   display->platform.broadwell || display->platform.haswell) {
 		hdisplay_max = 8192; /* FDI max 4096 handled elsewhere */
 		vdisplay_max = 4096;
 		htotal_max = 8192;
 		vtotal_max = 8192;
-	} else if (DISPLAY_VER(dev_priv) >= 3) {
+	} else if (DISPLAY_VER(display) >= 3) {
 		hdisplay_max = 4096;
 		vdisplay_max = 4096;
 		htotal_max = 8192;
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_pll.h b/drivers/gpu/drm/i915/display/vlv_dsi_pll.h
index a032cc2a2524..f975660fa609 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi_pll.h
+++ b/drivers/gpu/drm/i915/display/vlv_dsi_pll.h
@@ -23,7 +23,6 @@ u32 vlv_dsi_get_pclk(struct intel_encoder *encoder,
 		     struct intel_crtc_state *config);
 void vlv_dsi_reset_clocks(struct intel_encoder *encoder, enum port port);
 
-bool bxt_dsi_pll_is_enabled(struct drm_i915_private *dev_priv);
 int bxt_dsi_pll_compute(struct intel_encoder *encoder,
 			struct intel_crtc_state *config);
 void bxt_dsi_pll_enable(struct intel_encoder *encoder,
@@ -34,9 +33,14 @@ u32 bxt_dsi_get_pclk(struct intel_encoder *encoder,
 void bxt_dsi_reset_clocks(struct intel_encoder *encoder, enum port port);
 
 #ifdef I915
+bool bxt_dsi_pll_is_enabled(struct drm_i915_private *dev_priv);
 void assert_dsi_pll_enabled(struct intel_display *display);
 void assert_dsi_pll_disabled(struct intel_display *display);
 #else
+static inline bool bxt_dsi_pll_is_enabled(struct drm_i915_private *dev_priv)
+{
+	return false;
+}
 static inline void assert_dsi_pll_enabled(struct intel_display *display)
 {
 }
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8084debd28a2..c5064eebe063 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4165,8 +4165,8 @@ enum skl_power_gate {
 	_MMIO_PIPE(pipe, _PIPE_FLIPDONETMSTMP_A, _PIPE_FLIPDONETMSTMP_B)
 
 #define _VLV_PIPE_MSA_MISC_A			0x70048
-#define VLV_PIPE_MSA_MISC(pipe)		\
-			_MMIO_PIPE2(dev_priv, pipe, _VLV_PIPE_MSA_MISC_A)
+#define VLV_PIPE_MSA_MISC(__display, pipe)			\
+	_MMIO_PIPE2(__display, pipe, _VLV_PIPE_MSA_MISC_A)
 #define   VLV_MSA_MISC1_HW_ENABLE			REG_BIT(31)
 #define   VLV_MSA_MISC1_SW_S3D_MASK			REG_GENMASK(2, 0) /* MSA MISC1 3:1 */
 
-- 
2.39.5

