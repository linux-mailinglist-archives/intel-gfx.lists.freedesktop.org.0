Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0CAA79FAD
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Apr 2025 11:12:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1626010E96E;
	Thu,  3 Apr 2025 09:11:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XvKhUS3S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3302710E951;
 Thu,  3 Apr 2025 09:11:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743671510; x=1775207510;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=n6sosC0zWCacZ8WXaypGwRDQsc41NP1qC5tKd21U2nE=;
 b=XvKhUS3SuPC7kRbHBSlz9IO9XVjSY95OWkN67CH4ckgn6bNF7b25c+RO
 Ypp+2V5n0CpNDYH+1ntHE1i77pr3n6NQ2SDC+G12yohvqO14t3ElgA8cM
 ISFqkgP52ZBrpQsIj6t/LtR924LYyJxul+vZeEBG8MLG/1FVgBKNBxPhw
 /8m6yEo9gY6hwI0D+8IGY/TRIRLxf1XQ2w5RzGWyy7slvW4MycSenS2GH
 4HsQnBHO/8dX8DaWvDYlCQDSG3QcHPEISzrP2Bw6jOAClWLEDB6vyDJk8
 A1byf8ab980zdktc0IKZgDRfPVS1xZEGqBzM2yLiu2ETIp3MI7DOtHmJb g==;
X-CSE-ConnectionGUID: SY7ofS+UTiSMtchM/ZWwfQ==
X-CSE-MsgGUID: ttnKyd46SDOdZ83hcpJ6dw==
X-IronPort-AV: E=McAfee;i="6700,10204,11392"; a="44960752"
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="44960752"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 02:11:50 -0700
X-CSE-ConnectionGUID: nRa2fSz6T3u6KqTYhoPotA==
X-CSE-MsgGUID: ckPG+zS2QwOX1KoCCUS2nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="127447973"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.158])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 02:11:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/7] drm/i915/wm: convert intel_wm.h external interfaces to
 struct intel_display
Date: Thu,  3 Apr 2025 12:11:33 +0300
Message-Id: <cd9d268aff83eae85a40a6591182f11a8bda7087.1743671373.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1743671373.git.jani.nikula@intel.com>
References: <cover.1743671373.git.jani.nikula@intel.com>
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
pointer. Convert the intel_wm.h interface as well as the hooks in struct
intel_wm_funcs to struct intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c        | 51 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_display.c  | 10 ++--
 .../gpu/drm/i915/display/intel_display_core.h |  6 +--
 .../drm/i915/display/intel_display_debugfs.c  |  3 +-
 .../drm/i915/display/intel_display_driver.c   |  2 +-
 .../drm/i915/display/intel_modeset_setup.c    | 11 ++--
 drivers/gpu/drm/i915/display/intel_wm.c       | 41 ++++++++-------
 drivers/gpu/drm/i915/display/intel_wm.h       | 14 ++---
 drivers/gpu/drm/i915/display/skl_watermark.c  | 10 ++--
 9 files changed, 80 insertions(+), 68 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 7c80e37c1c5f..e6a1b9b10b01 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -641,8 +641,9 @@ static struct intel_crtc *single_enabled_crtc(struct drm_i915_private *dev_priv)
 	return enabled;
 }
 
-static void pnv_update_wm(struct drm_i915_private *dev_priv)
+static void pnv_update_wm(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_crtc *crtc;
 	const struct cxsr_latency *latency;
 	u32 reg;
@@ -2123,8 +2124,9 @@ static void vlv_optimize_watermarks(struct intel_atomic_state *state,
 	mutex_unlock(&dev_priv->display.wm.wm_mutex);
 }
 
-static void i965_update_wm(struct drm_i915_private *dev_priv)
+static void i965_update_wm(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_crtc *crtc;
 	int srwm = 1;
 	int cursor_sr = 16;
@@ -2216,8 +2218,9 @@ static struct intel_crtc *intel_crtc_for_plane(struct drm_i915_private *i915,
 	return NULL;
 }
 
-static void i9xx_update_wm(struct drm_i915_private *dev_priv)
+static void i9xx_update_wm(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	const struct intel_watermark_params *wm_info;
 	u32 fwater_lo;
 	u32 fwater_hi;
@@ -2359,8 +2362,9 @@ static void i9xx_update_wm(struct drm_i915_private *dev_priv)
 		intel_set_memory_cxsr(dev_priv, true);
 }
 
-static void i845_update_wm(struct drm_i915_private *dev_priv)
+static void i845_update_wm(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_crtc *crtc;
 	u32 fwater_lo;
 	int planea_wm;
@@ -2813,6 +2817,7 @@ static bool ilk_increase_wm_latency(struct drm_i915_private *dev_priv,
 
 static void snb_wm_latency_quirk(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	bool changed;
 
 	/*
@@ -2828,13 +2833,14 @@ static void snb_wm_latency_quirk(struct drm_i915_private *dev_priv)
 
 	drm_dbg_kms(&dev_priv->drm,
 		    "WM latency values increased to avoid potential underruns\n");
-	intel_print_wm_latency(dev_priv, "Primary", dev_priv->display.wm.pri_latency);
-	intel_print_wm_latency(dev_priv, "Sprite", dev_priv->display.wm.spr_latency);
-	intel_print_wm_latency(dev_priv, "Cursor", dev_priv->display.wm.cur_latency);
+	intel_print_wm_latency(display, "Primary", dev_priv->display.wm.pri_latency);
+	intel_print_wm_latency(display, "Sprite", dev_priv->display.wm.spr_latency);
+	intel_print_wm_latency(display, "Cursor", dev_priv->display.wm.cur_latency);
 }
 
 static void snb_wm_lp3_irq_quirk(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	/*
 	 * On some SNB machines (Thinkpad X220 Tablet at least)
 	 * LP3 usage can cause vblank interrupts to be lost.
@@ -2857,13 +2863,15 @@ static void snb_wm_lp3_irq_quirk(struct drm_i915_private *dev_priv)
 
 	drm_dbg_kms(&dev_priv->drm,
 		    "LP3 watermarks disabled due to potential for lost interrupts\n");
-	intel_print_wm_latency(dev_priv, "Primary", dev_priv->display.wm.pri_latency);
-	intel_print_wm_latency(dev_priv, "Sprite", dev_priv->display.wm.spr_latency);
-	intel_print_wm_latency(dev_priv, "Cursor", dev_priv->display.wm.cur_latency);
+	intel_print_wm_latency(display, "Primary", dev_priv->display.wm.pri_latency);
+	intel_print_wm_latency(display, "Sprite", dev_priv->display.wm.spr_latency);
+	intel_print_wm_latency(display, "Cursor", dev_priv->display.wm.cur_latency);
 }
 
 static void ilk_setup_wm_latency(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
+
 	if (IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
 		hsw_read_wm_latency(dev_priv, dev_priv->display.wm.pri_latency);
 	else if (DISPLAY_VER(dev_priv) >= 6)
@@ -2879,9 +2887,9 @@ static void ilk_setup_wm_latency(struct drm_i915_private *dev_priv)
 	intel_fixup_spr_wm_latency(dev_priv, dev_priv->display.wm.spr_latency);
 	intel_fixup_cur_wm_latency(dev_priv, dev_priv->display.wm.cur_latency);
 
-	intel_print_wm_latency(dev_priv, "Primary", dev_priv->display.wm.pri_latency);
-	intel_print_wm_latency(dev_priv, "Sprite", dev_priv->display.wm.spr_latency);
-	intel_print_wm_latency(dev_priv, "Cursor", dev_priv->display.wm.cur_latency);
+	intel_print_wm_latency(display, "Primary", dev_priv->display.wm.pri_latency);
+	intel_print_wm_latency(display, "Sprite", dev_priv->display.wm.spr_latency);
+	intel_print_wm_latency(display, "Cursor", dev_priv->display.wm.cur_latency);
 
 	if (DISPLAY_VER(dev_priv) == 6) {
 		snb_wm_latency_quirk(dev_priv);
@@ -3759,8 +3767,9 @@ static void vlv_read_wm_values(struct drm_i915_private *dev_priv,
 #undef _FW_WM
 #undef _FW_WM_VLV
 
-static void g4x_wm_get_hw_state(struct drm_i915_private *dev_priv)
+static void g4x_wm_get_hw_state(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct g4x_wm_values *wm = &dev_priv->display.wm.g4x;
 	struct intel_crtc *crtc;
 
@@ -3852,9 +3861,9 @@ static void g4x_wm_get_hw_state(struct drm_i915_private *dev_priv)
 		    str_yes_no(wm->fbc_en));
 }
 
-static void g4x_wm_sanitize(struct drm_i915_private *dev_priv)
+static void g4x_wm_sanitize(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_plane *plane;
 	struct intel_crtc *crtc;
 
@@ -3902,8 +3911,9 @@ static void g4x_wm_sanitize(struct drm_i915_private *dev_priv)
 	mutex_unlock(&dev_priv->display.wm.wm_mutex);
 }
 
-static void vlv_wm_get_hw_state(struct drm_i915_private *dev_priv)
+static void vlv_wm_get_hw_state(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct vlv_wm_values *wm = &dev_priv->display.wm.vlv;
 	struct intel_crtc *crtc;
 	u32 val;
@@ -4002,9 +4012,9 @@ static void vlv_wm_get_hw_state(struct drm_i915_private *dev_priv)
 		    wm->sr.plane, wm->sr.cursor, wm->level, wm->cxsr);
 }
 
-static void vlv_wm_sanitize(struct drm_i915_private *dev_priv)
+static void vlv_wm_sanitize(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_plane *plane;
 	struct intel_crtc *crtc;
 
@@ -4065,8 +4075,9 @@ static void ilk_init_lp_watermarks(struct drm_i915_private *dev_priv)
 	 */
 }
 
-static void ilk_wm_get_hw_state(struct drm_i915_private *dev_priv)
+static void ilk_wm_get_hw_state(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct ilk_wm_values *hw = &dev_priv->display.wm.hw;
 	struct intel_crtc *crtc;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c540e2cae1f0..f5c4ee966ba9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1052,7 +1052,7 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 	intel_frontbuffer_flip(dev_priv, new_crtc_state->fb_bits);
 
 	if (new_crtc_state->update_wm_post && new_crtc_state->hw.active)
-		intel_update_watermarks(dev_priv);
+		intel_update_watermarks(display);
 
 	intel_fbc_post_update(state, crtc);
 
@@ -1256,7 +1256,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 		 */
 		if (!intel_initial_watermarks(state, crtc))
 			if (new_crtc_state->update_wm_pre)
-				intel_update_watermarks(dev_priv);
+				intel_update_watermarks(display);
 	}
 
 	/*
@@ -2070,7 +2070,6 @@ static void i9xx_crtc_enable(struct intel_atomic_state *state,
 	struct intel_display *display = to_intel_display(crtc);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
 	if (drm_WARN_ON(display->drm, crtc->active))
@@ -2094,7 +2093,7 @@ static void i9xx_crtc_enable(struct intel_atomic_state *state,
 	intel_color_modeset(new_crtc_state);
 
 	if (!intel_initial_watermarks(state, crtc))
-		intel_update_watermarks(dev_priv);
+		intel_update_watermarks(display);
 	intel_enable_transcoder(new_crtc_state);
 
 	intel_crtc_vblank_on(new_crtc_state);
@@ -2110,7 +2109,6 @@ static void i9xx_crtc_disable(struct intel_atomic_state *state,
 			      struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 	enum pipe pipe = crtc->pipe;
@@ -2147,7 +2145,7 @@ static void i9xx_crtc_disable(struct intel_atomic_state *state,
 		intel_set_cpu_fifo_underrun_reporting(display, pipe, false);
 
 	if (!display->funcs.wm->initial_watermarks)
-		intel_update_watermarks(dev_priv);
+		intel_update_watermarks(display);
 
 	/* clock the pipe down to 640x480@60 to potentially save power */
 	if (display->platform.i830)
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 3673275f9061..eb6d6f2d0f75 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -80,7 +80,7 @@ struct intel_display_funcs {
 /* functions used for watermark calcs for display. */
 struct intel_wm_funcs {
 	/* update_wm is for legacy wm management */
-	void (*update_wm)(struct drm_i915_private *dev_priv);
+	void (*update_wm)(struct intel_display *display);
 	int (*compute_watermarks)(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc);
 	void (*initial_watermarks)(struct intel_atomic_state *state,
@@ -90,8 +90,8 @@ struct intel_wm_funcs {
 	void (*optimize_watermarks)(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc);
 	int (*compute_global_watermarks)(struct intel_atomic_state *state);
-	void (*get_hw_state)(struct drm_i915_private *i915);
-	void (*sanitize)(struct drm_i915_private *i915);
+	void (*get_hw_state)(struct intel_display *display);
+	void (*sanitize)(struct intel_display *display);
 };
 
 struct intel_audio_state {
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 4c784bb7e14b..8f1f95637e09 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -826,7 +826,6 @@ static const struct drm_info_list intel_display_debugfs_list[] = {
 
 void intel_display_debugfs_register(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct drm_minor *minor = display->drm->primary;
 
 	debugfs_create_file("i915_fifo_underrun_reset", 0644, minor->debugfs_root,
@@ -844,7 +843,7 @@ void intel_display_debugfs_register(struct intel_display *display)
 	intel_hpd_debugfs_register(display);
 	intel_opregion_debugfs_register(display);
 	intel_psr_debugfs_register(display);
-	intel_wm_debugfs_register(i915);
+	intel_wm_debugfs_register(display);
 	intel_display_debugfs_params(display);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 4edadebad13b..44cf34517a62 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -422,7 +422,7 @@ int intel_display_driver_probe_nogem(struct intel_display *display)
 	if (!HAS_DISPLAY(display))
 		return 0;
 
-	intel_wm_init(i915);
+	intel_wm_init(display);
 
 	intel_panel_sanitize_ssc(display);
 
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 3cc915739677..2821fb35c30f 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -155,9 +155,8 @@ static void reset_crtc_encoder_state(struct intel_crtc *crtc)
 static void intel_crtc_disable_noatomic_complete(struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_pmdemand_state *pmdemand_state =
-		to_intel_pmdemand_state(i915->display.pmdemand.obj.state);
+		to_intel_pmdemand_state(display->pmdemand.obj.state);
 	struct intel_crtc_state *crtc_state =
 		to_intel_crtc_state(crtc->base.state);
 	enum pipe pipe = crtc->pipe;
@@ -169,7 +168,7 @@ static void intel_crtc_disable_noatomic_complete(struct intel_crtc *crtc)
 	reset_crtc_encoder_state(crtc);
 
 	intel_fbc_disable(crtc);
-	intel_update_watermarks(i915);
+	intel_update_watermarks(display);
 
 	intel_display_power_put_all_in_set(display, &crtc->enabled_power_domains);
 
@@ -874,7 +873,7 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 
 	/* TODO move here (or even earlier?) on all platforms */
 	if (DISPLAY_VER(display) >= 9)
-		intel_wm_get_hw_state(i915);
+		intel_wm_get_hw_state(display);
 
 	intel_bw_update_hw_state(display);
 	intel_cdclk_update_hw_state(display);
@@ -988,8 +987,8 @@ void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
 
 	/* TODO move earlier on all platforms */
 	if (DISPLAY_VER(display) < 9)
-		intel_wm_get_hw_state(i915);
-	intel_wm_sanitize(i915);
+		intel_wm_get_hw_state(display);
+	intel_wm_sanitize(display);
 
 	for_each_intel_crtc(&i915->drm, crtc) {
 		struct intel_crtc_state *crtc_state =
diff --git a/drivers/gpu/drm/i915/display/intel_wm.c b/drivers/gpu/drm/i915/display/intel_wm.c
index f00f4cfc58e5..c6aff3ba8e3d 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.c
+++ b/drivers/gpu/drm/i915/display/intel_wm.c
@@ -13,7 +13,7 @@
 
 /**
  * intel_update_watermarks - update FIFO watermark values based on current modes
- * @i915: i915 device
+ * @display: display device
  *
  * Calculate watermark values for the various WM regs based on current mode
  * and plane configuration.
@@ -44,10 +44,10 @@
  * We don't use the sprite, so we can ignore that.  And on Crestline we have
  * to set the non-SR watermarks to 8.
  */
-void intel_update_watermarks(struct drm_i915_private *i915)
+void intel_update_watermarks(struct intel_display *display)
 {
-	if (i915->display.funcs.wm->update_wm)
-		i915->display.funcs.wm->update_wm(i915);
+	if (display->funcs.wm->update_wm)
+		display->funcs.wm->update_wm(display);
 }
 
 int intel_wm_compute(struct intel_atomic_state *state,
@@ -102,16 +102,16 @@ int intel_compute_global_watermarks(struct intel_atomic_state *state)
 	return 0;
 }
 
-void intel_wm_get_hw_state(struct drm_i915_private *i915)
+void intel_wm_get_hw_state(struct intel_display *display)
 {
-	if (i915->display.funcs.wm->get_hw_state)
-		return i915->display.funcs.wm->get_hw_state(i915);
+	if (display->funcs.wm->get_hw_state)
+		return display->funcs.wm->get_hw_state(display);
 }
 
-void intel_wm_sanitize(struct drm_i915_private *i915)
+void intel_wm_sanitize(struct intel_display *display)
 {
-	if (i915->display.funcs.wm->sanitize)
-		return i915->display.funcs.wm->sanitize(i915);
+	if (display->funcs.wm->sanitize)
+		return display->funcs.wm->sanitize(display);
 }
 
 bool intel_wm_plane_visible(const struct intel_crtc_state *crtc_state,
@@ -137,16 +137,16 @@ bool intel_wm_plane_visible(const struct intel_crtc_state *crtc_state,
 		return plane_state->uapi.visible;
 }
 
-void intel_print_wm_latency(struct drm_i915_private *dev_priv,
+void intel_print_wm_latency(struct intel_display *display,
 			    const char *name, const u16 wm[])
 {
 	int level;
 
-	for (level = 0; level < dev_priv->display.wm.num_levels; level++) {
+	for (level = 0; level < display->wm.num_levels; level++) {
 		unsigned int latency = wm[level];
 
 		if (latency == 0) {
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "%s WM%d latency not provided\n",
 				    name, level);
 			continue;
@@ -156,20 +156,22 @@ void intel_print_wm_latency(struct drm_i915_private *dev_priv,
 		 * - latencies are in us on gen9.
 		 * - before then, WM1+ latency values are in 0.5us units
 		 */
-		if (DISPLAY_VER(dev_priv) >= 9)
+		if (DISPLAY_VER(display) >= 9)
 			latency *= 10;
 		else if (level > 0)
 			latency *= 5;
 
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "%s WM%d latency %u (%u.%u usec)\n", name, level,
 			    wm[level], latency / 10, latency % 10);
 	}
 }
 
-void intel_wm_init(struct drm_i915_private *i915)
+void intel_wm_init(struct intel_display *display)
 {
-	if (DISPLAY_VER(i915) >= 9)
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
+	if (DISPLAY_VER(display) >= 9)
 		skl_wm_init(i915);
 	else
 		i9xx_wm_init(i915);
@@ -385,9 +387,10 @@ static const struct file_operations i915_cur_wm_latency_fops = {
 	.write = cur_wm_latency_write
 };
 
-void intel_wm_debugfs_register(struct drm_i915_private *i915)
+void intel_wm_debugfs_register(struct intel_display *display)
 {
-	struct drm_minor *minor = i915->drm.primary;
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct drm_minor *minor = display->drm->primary;
 
 	debugfs_create_file("i915_pri_wm_latency", 0644, minor->debugfs_root,
 			    i915, &i915_pri_wm_latency_fops);
diff --git a/drivers/gpu/drm/i915/display/intel_wm.h b/drivers/gpu/drm/i915/display/intel_wm.h
index 7d3a447054b3..9ad4e9eae5ca 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.h
+++ b/drivers/gpu/drm/i915/display/intel_wm.h
@@ -8,13 +8,13 @@
 
 #include <linux/types.h>
 
-struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
+struct intel_display;
 struct intel_plane_state;
 
-void intel_update_watermarks(struct drm_i915_private *i915);
+void intel_update_watermarks(struct intel_display *display);
 int intel_wm_compute(struct intel_atomic_state *state,
 		     struct intel_crtc *crtc);
 bool intel_initial_watermarks(struct intel_atomic_state *state,
@@ -24,13 +24,13 @@ void intel_atomic_update_watermarks(struct intel_atomic_state *state,
 void intel_optimize_watermarks(struct intel_atomic_state *state,
 			       struct intel_crtc *crtc);
 int intel_compute_global_watermarks(struct intel_atomic_state *state);
-void intel_wm_get_hw_state(struct drm_i915_private *i915);
-void intel_wm_sanitize(struct drm_i915_private *i915);
+void intel_wm_get_hw_state(struct intel_display *display);
+void intel_wm_sanitize(struct intel_display *display);
 bool intel_wm_plane_visible(const struct intel_crtc_state *crtc_state,
 			    const struct intel_plane_state *plane_state);
-void intel_print_wm_latency(struct drm_i915_private *i915,
+void intel_print_wm_latency(struct intel_display *display,
 			    const char *name, const u16 wm[]);
-void intel_wm_init(struct drm_i915_private *i915);
-void intel_wm_debugfs_register(struct drm_i915_private *i915);
+void intel_wm_init(struct intel_display *display);
+void intel_wm_debugfs_register(struct intel_display *display);
 
 #endif /* __INTEL_WM_H__ */
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index a6af5e4ba4d4..459be8743124 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3152,9 +3152,9 @@ static void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
 	}
 }
 
-static void skl_wm_get_hw_state(struct drm_i915_private *i915)
+static void skl_wm_get_hw_state(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_dbuf_state *dbuf_state =
 		to_intel_dbuf_state(i915->display.dbuf.obj.state);
 	struct intel_crtc *crtc;
@@ -3385,7 +3385,7 @@ static void skl_setup_wm_latency(struct drm_i915_private *i915)
 	else
 		skl_read_wm_latency(i915, display->wm.skl_latency);
 
-	intel_print_wm_latency(i915, "Gen9 Plane", display->wm.skl_latency);
+	intel_print_wm_latency(display, "Gen9 Plane", display->wm.skl_latency);
 }
 
 static struct intel_global_state *intel_dbuf_duplicate_state(struct intel_global_obj *obj)
@@ -3846,8 +3846,10 @@ static void skl_dbuf_sanitize(struct drm_i915_private *i915)
 	}
 }
 
-static void skl_wm_sanitize(struct drm_i915_private *i915)
+static void skl_wm_sanitize(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
 	skl_mbus_sanitize(i915);
 	skl_dbuf_sanitize(i915);
 }
-- 
2.39.5

