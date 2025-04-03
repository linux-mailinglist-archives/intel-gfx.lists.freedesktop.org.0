Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BD59A79FAF
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Apr 2025 11:12:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 512D910E951;
	Thu,  3 Apr 2025 09:12:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lszoy6P7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18C8010E951;
 Thu,  3 Apr 2025 09:12:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743671523; x=1775207523;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FoH4M7O+Cqhk/KsQnzytDsffcK9FqljTR+HsEKabE7o=;
 b=lszoy6P7ip5/Ohmo69oQcifwAIeaUw7c4pR5SWCCVbOrLbHnfjx5nwpk
 HeErrZy4fgEKC+1dgfTe01ars1jWVUHM+BspONifLj0i3nzOtiTr5Bg//
 3zJTAoLwbjEVgt4y+C1BrUWGe97Q6XvSwL2MQ4Ggpt5jB53hHhGwyofVV
 BLBtDUTPo/32e1//+5jecw5IjZkFMbDF5wZmNhwhbAQUP8TlL5hAu13Mc
 cGqHV9CemibIFKZkfuleN+8y0hFotUZUpmbFpN8kHVkzX3X/ioT/CHcgQ
 ghDrDm/zBk69H7/2fLZAmmZzK94pctLy87Zg6AQezu79JvoHGNwwkUNd8 w==;
X-CSE-ConnectionGUID: RaNx6AYhSM6nw3IkisI+WQ==
X-CSE-MsgGUID: /IjOpclBTwCgtakKFH+uEw==
X-IronPort-AV: E=McAfee;i="6700,10204,11392"; a="45206430"
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="45206430"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 02:11:59 -0700
X-CSE-ConnectionGUID: 6DGHMf3xSKKy43MiqZF55Q==
X-CSE-MsgGUID: qEYvhmmJQ7+wLmSduogXmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="127806475"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.158])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 02:11:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/7] drm/i915/wm: convert skl_watermark.h external interfaces
 to struct intel_display
Date: Thu,  3 Apr 2025 12:11:35 +0300
Message-Id: <0632ca0ac12368d47caf80fabdc522dadf93147f.1743671373.git.jani.nikula@intel.com>
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
pointer. Convert the skl_watermark.h interface to struct intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c       |  17 +--
 drivers/gpu/drm/i915/display/intel_cdclk.c    |   4 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   4 +-
 .../drm/i915/display/intel_display_driver.c   |   8 +-
 drivers/gpu/drm/i915/display/intel_dsb.c      |   4 +-
 drivers/gpu/drm/i915/display/intel_wm.c       |   5 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  | 110 ++++++++++--------
 drivers/gpu/drm/i915/display/skl_watermark.h  |  23 ++--
 drivers/gpu/drm/i915/i915_driver.c            |   2 +-
 drivers/gpu/drm/xe/display/xe_display.c       |   2 +-
 10 files changed, 89 insertions(+), 90 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index bb81efec08a0..b7339ff0ed3c 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -977,7 +977,6 @@ static int mtl_find_qgv_points(struct intel_display *display,
 			       unsigned int num_active_planes,
 			       struct intel_bw_state *new_bw_state)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	unsigned int best_rate = UINT_MAX;
 	unsigned int num_qgv_points = display->bw.max[0].num_qgv_points;
 	unsigned int qgv_peak_bw  = 0;
@@ -993,7 +992,7 @@ static int mtl_find_qgv_points(struct intel_display *display,
 	 * for qgv peak bw in PM Demand request. So assign UINT_MAX if SAGV is
 	 * not enabled. PM Demand code will clamp the value for the register
 	 */
-	if (!intel_can_enable_sagv(i915, new_bw_state)) {
+	if (!intel_can_enable_sagv(display, new_bw_state)) {
 		new_bw_state->qgv_point_peakbw = U16_MAX;
 		drm_dbg_kms(display->drm, "No SAGV, use UINT_MAX as peak bw.");
 		return 0;
@@ -1050,7 +1049,6 @@ static int icl_find_qgv_points(struct intel_display *display,
 			       const struct intel_bw_state *old_bw_state,
 			       struct intel_bw_state *new_bw_state)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	unsigned int num_psf_gv_points = display->bw.max[0].num_psf_gv_points;
 	unsigned int num_qgv_points = display->bw.max[0].num_qgv_points;
 	u16 psf_points = 0;
@@ -1107,7 +1105,7 @@ static int icl_find_qgv_points(struct intel_display *display,
 	 * we can't enable SAGV due to the increased memory latency it may
 	 * cause.
 	 */
-	if (!intel_can_enable_sagv(i915, new_bw_state)) {
+	if (!intel_can_enable_sagv(display, new_bw_state)) {
 		qgv_points = icl_max_bw_qgv_point_mask(display, num_active_planes);
 		drm_dbg_kms(display->drm, "No SAGV, using single QGV point mask 0x%x\n",
 			    qgv_points);
@@ -1184,9 +1182,8 @@ static void skl_plane_calc_dbuf_bw(struct intel_bw_state *bw_state,
 				   unsigned int data_rate)
 {
 	struct intel_display *display = to_intel_display(crtc);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_dbuf_bw *crtc_bw = &bw_state->dbuf_bw[crtc->pipe];
-	unsigned int dbuf_mask = skl_ddb_dbuf_slice_mask(i915, ddb);
+	unsigned int dbuf_mask = skl_ddb_dbuf_slice_mask(display, ddb);
 	enum dbuf_slice slice;
 
 	/*
@@ -1399,7 +1396,6 @@ static int intel_bw_check_data_rate(struct intel_atomic_state *state, bool *chan
 int intel_bw_atomic_check(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	bool changed = false;
 	struct intel_bw_state *new_bw_state;
 	const struct intel_bw_state *old_bw_state;
@@ -1417,8 +1413,8 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 	new_bw_state = intel_atomic_get_new_bw_state(state);
 
 	if (new_bw_state &&
-	    (intel_can_enable_sagv(i915, old_bw_state) !=
-	     intel_can_enable_sagv(i915, new_bw_state) ||
+	    (intel_can_enable_sagv(display, old_bw_state) !=
+	     intel_can_enable_sagv(display, new_bw_state) ||
 	     new_bw_state->force_check_qgv))
 		changed = true;
 
@@ -1519,7 +1515,6 @@ static const struct intel_global_state_funcs intel_bw_funcs = {
 
 int intel_bw_init(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_bw_state *state;
 
 	state = kzalloc(sizeof(*state), GFP_KERNEL);
@@ -1533,7 +1528,7 @@ int intel_bw_init(struct intel_display *display)
 	 * Limit this only if we have SAGV. And for Display version 14 onwards
 	 * sagv is handled though pmdemand requests
 	 */
-	if (intel_has_sagv(i915) && IS_DISPLAY_VER(display, 11, 13))
+	if (intel_has_sagv(display) && IS_DISPLAY_VER(display, 11, 13))
 		icl_force_disable_sagv(display, state);
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 984fd9f98c9f..4ddee788ab9d 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1972,9 +1972,7 @@ int intel_mdclk_cdclk_ratio(struct intel_display *display,
 static void xe2lpd_mdclk_cdclk_ratio_program(struct intel_display *display,
 					     const struct intel_cdclk_config *cdclk_config)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
-	intel_dbuf_mdclk_cdclk_ratio_update(i915,
+	intel_dbuf_mdclk_cdclk_ratio_update(display,
 					    intel_mdclk_cdclk_ratio(display, cdclk_config),
 					    cdclk_config->joined_mbus);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f5c4ee966ba9..a6cd4a6d6c08 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4160,8 +4160,6 @@ static u16 hsw_ips_linetime_wm(const struct intel_crtc_state *crtc_state,
 static u16 skl_linetime_wm(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	const struct drm_display_mode *pipe_mode =
 		&crtc_state->hw.pipe_mode;
 	int linetime_wm;
@@ -4174,7 +4172,7 @@ static u16 skl_linetime_wm(const struct intel_crtc_state *crtc_state)
 
 	/* Display WA #1135: BXT:ALL GLK:ALL */
 	if ((display->platform.geminilake || display->platform.broxton) &&
-	    skl_watermark_ipc_enabled(dev_priv))
+	    skl_watermark_ipc_enabled(display))
 		linetime_wm /= 2;
 
 	return min(linetime_wm, 0x1ff);
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 44cf34517a62..f6d5d51dda0f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -252,7 +252,7 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
 	if (ret)
 		goto cleanup_vga_client_pw_domain_dmc;
 
-	ret = intel_dbuf_init(i915);
+	ret = intel_dbuf_init(display);
 	if (ret)
 		goto cleanup_vga_client_pw_domain_dmc;
 
@@ -491,7 +491,6 @@ int intel_display_driver_probe_nogem(struct intel_display *display)
 /* part #3: call after gem init */
 int intel_display_driver_probe(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	int ret;
 
 	if (!HAS_DISPLAY(display))
@@ -519,7 +518,7 @@ int intel_display_driver_probe(struct intel_display *display)
 	/* Only enable hotplug handling once the fbdev is fully set up. */
 	intel_hpd_init(display);
 
-	skl_watermark_ipc_init(i915);
+	skl_watermark_ipc_init(display);
 
 	return 0;
 }
@@ -726,7 +725,6 @@ __intel_display_driver_resume(struct intel_display *display,
 
 void intel_display_driver_resume(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct drm_atomic_state *state = display->restore.modeset_state;
 	struct drm_modeset_acquire_ctx ctx;
 	int ret;
@@ -754,7 +752,7 @@ void intel_display_driver_resume(struct intel_display *display)
 	if (!ret)
 		ret = __intel_display_driver_resume(display, state, &ctx);
 
-	skl_watermark_ipc_update(i915);
+	skl_watermark_ipc_update(display);
 	drm_modeset_drop_locks(&ctx);
 	drm_modeset_acquire_fini(&ctx);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 0ddcdedf5453..72fe390c5af2 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -143,10 +143,10 @@ static int dsb_vtotal(struct intel_atomic_state *state,
 static int dsb_dewake_scanline_start(struct intel_atomic_state *state,
 				     struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *crtc_state =
 		intel_pre_commit_crtc_state(state, crtc);
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
-	unsigned int latency = skl_watermark_max_latency(i915, 0);
+	unsigned int latency = skl_watermark_max_latency(display, 0);
 
 	return intel_mode_vdisplay(&crtc_state->hw.adjusted_mode) -
 		intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode, latency);
diff --git a/drivers/gpu/drm/i915/display/intel_wm.c b/drivers/gpu/drm/i915/display/intel_wm.c
index 9899e4c3ae96..43c69a672bb3 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.c
+++ b/drivers/gpu/drm/i915/display/intel_wm.c
@@ -172,7 +172,7 @@ void intel_wm_init(struct intel_display *display)
 	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	if (DISPLAY_VER(display) >= 9)
-		skl_wm_init(i915);
+		skl_wm_init(display);
 	else
 		i9xx_wm_init(i915);
 }
@@ -389,7 +389,6 @@ static const struct file_operations i915_cur_wm_latency_fops = {
 
 void intel_wm_debugfs_register(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct drm_minor *minor = display->drm->primary;
 
 	debugfs_create_file("i915_pri_wm_latency", 0644, minor->debugfs_root,
@@ -401,5 +400,5 @@ void intel_wm_debugfs_register(struct intel_display *display)
 	debugfs_create_file("i915_cur_wm_latency", 0644, minor->debugfs_root,
 			    display, &i915_cur_wm_latency_fops);
 
-	skl_watermark_debugfs_register(i915);
+	skl_watermark_debugfs_register(display);
 }
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 459be8743124..758d59965d33 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -76,10 +76,8 @@ static bool skl_needs_memory_bw_wa(struct drm_i915_private *i915)
 }
 
 bool
-intel_has_sagv(struct drm_i915_private *i915)
+intel_has_sagv(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
-
 	return HAS_SAGV(display) && display->sagv.status != I915_SAGV_NOT_CONTROLLED;
 }
 
@@ -135,7 +133,7 @@ static void intel_sagv_init(struct drm_i915_private *i915)
 	display->sagv.block_time_us = intel_sagv_block_time(i915);
 
 	drm_dbg_kms(display->drm, "SAGV supported: %s, original SAGV block time: %u us\n",
-		    str_yes_no(intel_has_sagv(i915)), display->sagv.block_time_us);
+		    str_yes_no(intel_has_sagv(display)), display->sagv.block_time_us);
 
 	/* avoid overflow when adding with wm0 latency/etc. */
 	if (drm_WARN(display->drm, display->sagv.block_time_us > U16_MAX,
@@ -143,7 +141,7 @@ static void intel_sagv_init(struct drm_i915_private *i915)
 		     display->sagv.block_time_us))
 		display->sagv.block_time_us = 0;
 
-	if (!intel_has_sagv(i915))
+	if (!intel_has_sagv(display))
 		display->sagv.block_time_us = 0;
 }
 
@@ -160,9 +158,10 @@ static void intel_sagv_init(struct drm_i915_private *i915)
  */
 static void skl_sagv_enable(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	int ret;
 
-	if (!intel_has_sagv(i915))
+	if (!intel_has_sagv(display))
 		return;
 
 	if (i915->display.sagv.status == I915_SAGV_ENABLED)
@@ -192,9 +191,10 @@ static void skl_sagv_enable(struct drm_i915_private *i915)
 
 static void skl_sagv_disable(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	int ret;
 
-	if (!intel_has_sagv(i915))
+	if (!intel_has_sagv(display))
 		return;
 
 	if (i915->display.sagv.status == I915_SAGV_DISABLED)
@@ -224,6 +224,7 @@ static void skl_sagv_disable(struct drm_i915_private *i915)
 
 static void skl_sagv_pre_plane_update(struct intel_atomic_state *state)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	const struct intel_bw_state *new_bw_state =
 		intel_atomic_get_new_bw_state(state);
@@ -231,12 +232,13 @@ static void skl_sagv_pre_plane_update(struct intel_atomic_state *state)
 	if (!new_bw_state)
 		return;
 
-	if (!intel_can_enable_sagv(i915, new_bw_state))
+	if (!intel_can_enable_sagv(display, new_bw_state))
 		skl_sagv_disable(i915);
 }
 
 static void skl_sagv_post_plane_update(struct intel_atomic_state *state)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	const struct intel_bw_state *new_bw_state =
 		intel_atomic_get_new_bw_state(state);
@@ -244,7 +246,7 @@ static void skl_sagv_post_plane_update(struct intel_atomic_state *state)
 	if (!new_bw_state)
 		return;
 
-	if (intel_can_enable_sagv(i915, new_bw_state))
+	if (intel_can_enable_sagv(display, new_bw_state))
 		skl_sagv_enable(i915);
 }
 
@@ -316,6 +318,7 @@ static void icl_sagv_post_plane_update(struct intel_atomic_state *state)
 
 void intel_sagv_pre_plane_update(struct intel_atomic_state *state)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 
 	/*
@@ -325,7 +328,7 @@ void intel_sagv_pre_plane_update(struct intel_atomic_state *state)
 	 * disabled in a BIOS, we are not even allowed to send a PCode request,
 	 * as it will throw an error. So have to check it here.
 	 */
-	if (!intel_has_sagv(i915))
+	if (!intel_has_sagv(display))
 		return;
 
 	if (DISPLAY_VER(i915) >= 11)
@@ -336,6 +339,7 @@ void intel_sagv_pre_plane_update(struct intel_atomic_state *state)
 
 void intel_sagv_post_plane_update(struct intel_atomic_state *state)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 
 	/*
@@ -345,7 +349,7 @@ void intel_sagv_post_plane_update(struct intel_atomic_state *state)
 	 * disabled in a BIOS, we are not even allowed to send a PCode request,
 	 * as it will throw an error. So have to check it here.
 	 */
-	if (!intel_has_sagv(i915))
+	if (!intel_has_sagv(display))
 		return;
 
 	if (DISPLAY_VER(i915) >= 11)
@@ -356,12 +360,13 @@ void intel_sagv_post_plane_update(struct intel_atomic_state *state)
 
 static bool skl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	enum plane_id plane_id;
 	int max_level = INT_MAX;
 
-	if (!intel_has_sagv(i915))
+	if (!intel_has_sagv(display))
 		return false;
 
 	if (!crtc_state->hw.active)
@@ -440,10 +445,10 @@ static bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state
 		return skl_crtc_can_enable_sagv(crtc_state);
 }
 
-bool intel_can_enable_sagv(struct drm_i915_private *i915,
+bool intel_can_enable_sagv(struct intel_display *display,
 			   const struct intel_bw_state *bw_state)
 {
-	if (DISPLAY_VER(i915) < 11 &&
+	if (DISPLAY_VER(display) < 11 &&
 	    bw_state->active_pipes && !is_power_of_2(bw_state->active_pipes))
 		return false;
 
@@ -510,8 +515,8 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 			return ret;
 	}
 
-	if (intel_can_enable_sagv(i915, new_bw_state) !=
-	    intel_can_enable_sagv(i915, old_bw_state)) {
+	if (intel_can_enable_sagv(display, new_bw_state) !=
+	    intel_can_enable_sagv(display, old_bw_state)) {
 		ret = intel_atomic_serialize_global_state(&new_bw_state->base);
 		if (ret)
 			return ret;
@@ -572,9 +577,10 @@ static unsigned int mbus_ddb_offset(struct drm_i915_private *i915, u8 slice_mask
 	return ddb.start;
 }
 
-u32 skl_ddb_dbuf_slice_mask(struct drm_i915_private *i915,
+u32 skl_ddb_dbuf_slice_mask(struct intel_display *display,
 			    const struct skl_ddb_entry *entry)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	int slice_size = intel_dbuf_slice_size(i915);
 	enum dbuf_slice start_slice, end_slice;
 	u8 slice_mask = 0;
@@ -740,6 +746,7 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 static unsigned int skl_wm_latency(struct drm_i915_private *i915, int level,
 				   const struct skl_wm_params *wp)
 {
+	struct intel_display *display = &i915->display;
 	unsigned int latency = i915->display.wm.skl_latency[level];
 
 	if (latency == 0)
@@ -750,7 +757,7 @@ static unsigned int skl_wm_latency(struct drm_i915_private *i915, int level,
 	 * Display WA #1141: kbl,cfl
 	 */
 	if ((IS_KABYLAKE(i915) || IS_COFFEELAKE(i915) || IS_COMETLAKE(i915)) &&
-	    skl_watermark_ipc_enabled(i915))
+	    skl_watermark_ipc_enabled(display))
 		latency += 4;
 
 	if (skl_needs_memory_bw_wa(i915) && wp && wp->x_tiled)
@@ -2116,11 +2123,12 @@ static void skl_compute_transition_wm(struct drm_i915_private *i915,
 				      const struct skl_wm_level *wm0,
 				      const struct skl_wm_params *wp)
 {
+	struct intel_display *display = &i915->display;
 	u16 trans_min, trans_amount, trans_y_tile_min;
 	u16 wm0_blocks, trans_offset, blocks;
 
 	/* Transition WM don't make any sense if ipc is disabled */
-	if (!skl_watermark_ipc_enabled(i915))
+	if (!skl_watermark_ipc_enabled(display))
 		return;
 
 	/*
@@ -3005,7 +3013,6 @@ void
 intel_program_dpkgc_latency(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_crtc *crtc;
 	struct intel_crtc_state *new_crtc_state;
 	u32 latency = LNL_PKG_C_LATENCY_MASK;
@@ -3031,7 +3038,7 @@ intel_program_dpkgc_latency(struct intel_atomic_state *state)
 		added_wake_time = DSB_EXE_TIME +
 			display->sagv.block_time_us;
 
-		latency = skl_watermark_max_latency(i915, 1);
+		latency = skl_watermark_max_latency(display, 1);
 
 		/* Wa_22020432604 */
 		if ((DISPLAY_VER(display) == 20 || DISPLAY_VER(display) == 30) && !latency) {
@@ -3218,7 +3225,7 @@ static void skl_wm_get_hw_state(struct intel_display *display)
 
 		/* The slices actually used by the planes on the pipe */
 		dbuf_state->slices[pipe] =
-			skl_ddb_dbuf_slice_mask(i915, &crtc_state->wm.skl.ddb);
+			skl_ddb_dbuf_slice_mask(display, &crtc_state->wm.skl.ddb);
 
 		drm_dbg_kms(display->drm,
 			    "[CRTC:%d:%s] dbuf slices 0x%x, ddb (%d - %d), active pipes 0x%x, mbus joined: %s\n",
@@ -3231,18 +3238,18 @@ static void skl_wm_get_hw_state(struct intel_display *display)
 	dbuf_state->enabled_slices = display->dbuf.enabled_slices;
 }
 
-bool skl_watermark_ipc_enabled(struct drm_i915_private *i915)
+bool skl_watermark_ipc_enabled(struct intel_display *display)
 {
-	return i915->display.wm.ipc_enabled;
+	return display->wm.ipc_enabled;
 }
 
-void skl_watermark_ipc_update(struct drm_i915_private *i915)
+void skl_watermark_ipc_update(struct intel_display *display)
 {
-	if (!HAS_IPC(i915))
+	if (!HAS_IPC(display))
 		return;
 
-	intel_de_rmw(i915, DISP_ARB_CTL2, DISP_IPC_ENABLE,
-		     skl_watermark_ipc_enabled(i915) ? DISP_IPC_ENABLE : 0);
+	intel_de_rmw(display, DISP_ARB_CTL2, DISP_IPC_ENABLE,
+		     skl_watermark_ipc_enabled(display) ? DISP_IPC_ENABLE : 0);
 }
 
 static bool skl_watermark_ipc_can_enable(struct drm_i915_private *i915)
@@ -3260,14 +3267,16 @@ static bool skl_watermark_ipc_can_enable(struct drm_i915_private *i915)
 	return true;
 }
 
-void skl_watermark_ipc_init(struct drm_i915_private *i915)
+void skl_watermark_ipc_init(struct intel_display *display)
 {
-	if (!HAS_IPC(i915))
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
+	if (!HAS_IPC(display))
 		return;
 
-	i915->display.wm.ipc_enabled = skl_watermark_ipc_can_enable(i915);
+	display->wm.ipc_enabled = skl_watermark_ipc_can_enable(i915);
 
-	skl_watermark_ipc_update(i915);
+	skl_watermark_ipc_update(display);
 }
 
 static void
@@ -3423,9 +3432,8 @@ intel_atomic_get_dbuf_state(struct intel_atomic_state *state)
 	return to_intel_dbuf_state(dbuf_state);
 }
 
-int intel_dbuf_init(struct drm_i915_private *i915)
+int intel_dbuf_init(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
 	struct intel_dbuf_state *dbuf_state;
 
 	dbuf_state = kzalloc(sizeof(*dbuf_state), GFP_KERNEL);
@@ -3547,10 +3555,9 @@ int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *state,
 	return intel_atomic_lock_global_state(&dbuf_state->base);
 }
 
-void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915,
+void intel_dbuf_mdclk_cdclk_ratio_update(struct intel_display *display,
 					 int ratio, bool joined_mbus)
 {
-	struct intel_display *display = &i915->display;
 	enum dbuf_slice slice;
 
 	if (!HAS_MBUS_JOINING(display))
@@ -3574,7 +3581,7 @@ void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915,
 
 static void intel_dbuf_mdclk_min_tracker_update(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_dbuf_state *old_dbuf_state =
 		intel_atomic_get_old_dbuf_state(state);
 	const struct intel_dbuf_state *new_dbuf_state =
@@ -3589,7 +3596,7 @@ static void intel_dbuf_mdclk_min_tracker_update(struct intel_atomic_state *state
 		mdclk_cdclk_ratio = new_dbuf_state->mdclk_cdclk_ratio;
 	}
 
-	intel_dbuf_mdclk_cdclk_ratio_update(i915, mdclk_cdclk_ratio,
+	intel_dbuf_mdclk_cdclk_ratio_update(display, mdclk_cdclk_ratio,
 					    new_dbuf_state->joined_mbus);
 }
 
@@ -3771,7 +3778,7 @@ static void skl_mbus_sanitize(struct drm_i915_private *i915)
 		    dbuf_state->active_pipes);
 
 	dbuf_state->joined_mbus = false;
-	intel_dbuf_mdclk_cdclk_ratio_update(i915,
+	intel_dbuf_mdclk_cdclk_ratio_update(display,
 					    dbuf_state->mdclk_cdclk_ratio,
 					    dbuf_state->joined_mbus);
 	pipe_mbus_dbox_ctl_update(i915, dbuf_state);
@@ -4029,21 +4036,24 @@ static const struct intel_wm_funcs skl_wm_funcs = {
 	.sanitize = skl_wm_sanitize,
 };
 
-void skl_wm_init(struct drm_i915_private *i915)
+void skl_wm_init(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
 	intel_sagv_init(i915);
 
 	skl_setup_wm_latency(i915);
 
-	i915->display.funcs.wm = &skl_wm_funcs;
+	display->funcs.wm = &skl_wm_funcs;
 }
 
 static int skl_watermark_ipc_status_show(struct seq_file *m, void *data)
 {
 	struct drm_i915_private *i915 = m->private;
+	struct intel_display *display = &i915->display;
 
 	seq_printf(m, "Isochronous Priority Control: %s\n",
-		   str_yes_no(skl_watermark_ipc_enabled(i915)));
+		   str_yes_no(skl_watermark_ipc_enabled(display)));
 	return 0;
 }
 
@@ -4069,11 +4079,11 @@ static ssize_t skl_watermark_ipc_status_write(struct file *file,
 		return ret;
 
 	with_intel_display_rpm(display) {
-		if (!skl_watermark_ipc_enabled(i915) && enable)
+		if (!skl_watermark_ipc_enabled(display) && enable)
 			drm_info(display->drm,
 				 "Enabling IPC: WM will be proper only after next commit\n");
 		display->wm.ipc_enabled = enable;
-		skl_watermark_ipc_update(i915);
+		skl_watermark_ipc_update(display);
 	}
 
 	return len;
@@ -4091,6 +4101,7 @@ static const struct file_operations skl_watermark_ipc_status_fops = {
 static int intel_sagv_status_show(struct seq_file *m, void *unused)
 {
 	struct drm_i915_private *i915 = m->private;
+	struct intel_display *display = &i915->display;
 	static const char * const sagv_status[] = {
 		[I915_SAGV_UNKNOWN] = "unknown",
 		[I915_SAGV_DISABLED] = "disabled",
@@ -4098,7 +4109,7 @@ static int intel_sagv_status_show(struct seq_file *m, void *unused)
 		[I915_SAGV_NOT_CONTROLLED] = "not controlled",
 	};
 
-	seq_printf(m, "SAGV available: %s\n", str_yes_no(intel_has_sagv(i915)));
+	seq_printf(m, "SAGV available: %s\n", str_yes_no(intel_has_sagv(display)));
 	seq_printf(m, "SAGV modparam: %s\n",
 		   str_enabled_disabled(i915->display.params.enable_sagv));
 	seq_printf(m, "SAGV status: %s\n", sagv_status[i915->display.sagv.status]);
@@ -4109,9 +4120,9 @@ static int intel_sagv_status_show(struct seq_file *m, void *unused)
 
 DEFINE_SHOW_ATTRIBUTE(intel_sagv_status);
 
-void skl_watermark_debugfs_register(struct drm_i915_private *i915)
+void skl_watermark_debugfs_register(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct drm_minor *minor = display->drm->primary;
 
 	if (HAS_IPC(display))
@@ -4123,11 +4134,12 @@ void skl_watermark_debugfs_register(struct drm_i915_private *i915)
 				    &intel_sagv_status_fops);
 }
 
-unsigned int skl_watermark_max_latency(struct drm_i915_private *i915, int initial_wm_level)
+unsigned int skl_watermark_max_latency(struct intel_display *display, int initial_wm_level)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	int level;
 
-	for (level = i915->display.wm.num_levels - 1; level >= initial_wm_level; level--) {
+	for (level = display->wm.num_levels - 1; level >= initial_wm_level; level--) {
 		unsigned int latency = skl_wm_latency(i915, level, NULL);
 
 		if (latency)
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
index d9cff6c54310..41672fe1ec5e 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
@@ -12,7 +12,6 @@
 #include "intel_global_state.h"
 #include "intel_wm_types.h"
 
-struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_bw_state;
 struct intel_crtc;
@@ -27,11 +26,11 @@ u8 intel_enabled_dbuf_slices_mask(struct intel_display *display);
 
 void intel_sagv_pre_plane_update(struct intel_atomic_state *state);
 void intel_sagv_post_plane_update(struct intel_atomic_state *state);
-bool intel_can_enable_sagv(struct drm_i915_private *i915,
+bool intel_can_enable_sagv(struct intel_display *display,
 			   const struct intel_bw_state *bw_state);
-bool intel_has_sagv(struct drm_i915_private *i915);
+bool intel_has_sagv(struct intel_display *display);
 
-u32 skl_ddb_dbuf_slice_mask(struct drm_i915_private *i915,
+u32 skl_ddb_dbuf_slice_mask(struct intel_display *display,
 			    const struct skl_ddb_entry *entry);
 
 bool skl_ddb_allocation_overlaps(const struct skl_ddb_entry *ddb,
@@ -45,14 +44,14 @@ void skl_wm_crtc_disable_noatomic(struct intel_crtc *crtc);
 void skl_wm_plane_disable_noatomic(struct intel_crtc *crtc,
 				   struct intel_plane *plane);
 
-void skl_watermark_ipc_init(struct drm_i915_private *i915);
-void skl_watermark_ipc_update(struct drm_i915_private *i915);
-bool skl_watermark_ipc_enabled(struct drm_i915_private *i915);
-void skl_watermark_debugfs_register(struct drm_i915_private *i915);
+void skl_watermark_ipc_init(struct intel_display *display);
+void skl_watermark_ipc_update(struct intel_display *display);
+bool skl_watermark_ipc_enabled(struct intel_display *display);
+void skl_watermark_debugfs_register(struct intel_display *display);
 
-unsigned int skl_watermark_max_latency(struct drm_i915_private *i915,
+unsigned int skl_watermark_max_latency(struct intel_display *display,
 				       int initial_wm_level);
-void skl_wm_init(struct drm_i915_private *i915);
+void skl_wm_init(struct intel_display *display);
 
 const struct skl_wm_level *skl_plane_wm_level(const struct skl_pipe_wm *pipe_wm,
 					      enum plane_id plane_id,
@@ -86,13 +85,13 @@ intel_atomic_get_dbuf_state(struct intel_atomic_state *state);
 #define intel_atomic_get_new_dbuf_state(state) \
 	to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state, &to_intel_display(state)->dbuf.obj))
 
-int intel_dbuf_init(struct drm_i915_private *i915);
+int intel_dbuf_init(struct intel_display *display);
 int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *state,
 					   int ratio);
 
 void intel_dbuf_pre_plane_update(struct intel_atomic_state *state);
 void intel_dbuf_post_plane_update(struct intel_atomic_state *state);
-void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915,
+void intel_dbuf_mdclk_cdclk_ratio_update(struct intel_display *display,
 					 int ratio, bool joined_mbus);
 void intel_dbuf_mbus_pre_ddb_update(struct intel_atomic_state *state);
 void intel_dbuf_mbus_post_ddb_update(struct intel_atomic_state *state);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index d78de7f620dd..f5262b8ad237 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1647,7 +1647,7 @@ static int intel_runtime_resume(struct device *kdev)
 		intel_hpd_poll_disable(display);
 	}
 
-	skl_watermark_ipc_update(dev_priv);
+	skl_watermark_ipc_update(display);
 
 	enable_rpm_wakeref_asserts(rpm);
 
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 23937ed3b33d..20c3bcd953b7 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -522,7 +522,7 @@ void xe_display_pm_runtime_resume(struct xe_device *xe)
 
 	intel_hpd_init(display);
 	intel_hpd_poll_disable(display);
-	skl_watermark_ipc_update(xe);
+	skl_watermark_ipc_update(display);
 }
 
 
-- 
2.39.5

