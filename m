Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02595A5CB9F
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 18:06:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A08D10E60E;
	Tue, 11 Mar 2025 17:06:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LH6ipieA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D48410E609;
 Tue, 11 Mar 2025 17:06:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741712801; x=1773248801;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6tvvXFTRHdQWHY1xCyHef35SycXPmnYJYrUjNnn+xKo=;
 b=LH6ipieASHONVnEHpp+tQPyGQAJeVVityKvWS3Ho4nJVAlEUHvPyaIAg
 DTqGNSYyYk0mdXAWk4yMFWuXdMWRVDIn3nmrcIVhknewvM9PGPHBQ+6fW
 yQKXMEzr2otBd16cIY/XLG8ft5A6x6HetuNnpW/rO57evK+F677DYpWue
 0YKjuR0Jeb6ACOZ7LTxQ8jeAm2ea3s59WKRvldFdLOQ94ural4dgANp8g
 BZZV+OxtHF87RnyUWVQkeBcvVDzzahZxWreV76QH0Un5JlVB5/sxQL0x8
 ilvXyT8AzuA5mbpyNiXb9wApUne2QfmFYAqwJKDkc1BCgPkGNFiiw1m21 A==;
X-CSE-ConnectionGUID: 0eOjX8R7Q/eMXvMuNX+Low==
X-CSE-MsgGUID: R1mRvTtDT8mETylHMSHofg==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="45547752"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="45547752"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 10:06:41 -0700
X-CSE-ConnectionGUID: IYyW4alxSP2Ra6lNbY1yJA==
X-CSE-MsgGUID: voK50phGRiGX+1l1MavMWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="120889236"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 10:06:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RFC 4/7] drm/i915: scripted conversion to i915->display pointer
Date: Tue, 11 Mar 2025 19:06:11 +0200
Message-Id: <874325449436d59fa3a4816e7b9d0cc7d9d21b4d.1741712601.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1741712601.git.jani.nikula@intel.com>
References: <cover.1741712601.git.jani.nikula@intel.com>
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

This is to be squashed to the preceding patch, but posted separately as
this is completely scripted:

sed -i 's/&\([a-zA-Z0-9_>.-]*\)\(dev_priv\|i915\|xe\)->display\([^.]\)/\1\2->display\3/g' $(git ls-files -- drivers/gpu/drm/i915 drivers/gpu/drm/xe)

sed -i 's/\(dev_priv\|i915\|xe\)->display\./\1->display->/g' $(git ls-files -- drivers/gpu/drm/i915 drivers/gpu/drm/xe)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c        | 222 +++++++++---------
 drivers/gpu/drm/i915/display/intel_atomic.c   |   8 +-
 drivers/gpu/drm/i915/display/intel_bw.c       |  88 +++----
 .../gpu/drm/i915/display/intel_connector.c    |   8 +-
 .../drm/i915/display/intel_crtc_state_dump.c  |   2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  34 +--
 .../i915/display/intel_display_conversion.c   |   2 +-
 .../gpu/drm/i915/display/intel_display_irq.c  | 150 ++++++------
 drivers/gpu/drm/i915/display/intel_dpll.c     |  52 ++--
 drivers/gpu/drm/i915/display/intel_dpt.c      |   2 +-
 .../gpu/drm/i915/display/intel_dpt_common.c   |   4 +-
 drivers/gpu/drm/i915/display/intel_dsb.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_dsi.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c  |   2 +-
 drivers/gpu/drm/i915/display/intel_dvo.c      |   4 +-
 drivers/gpu/drm/i915/display/intel_fbdev.c    |   4 +-
 .../gpu/drm/i915/display/intel_frontbuffer.c  |  34 +--
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c |   2 +-
 drivers/gpu/drm/i915/display/intel_hotplug.c  | 128 +++++-----
 .../gpu/drm/i915/display/intel_hotplug_irq.c  |  98 ++++----
 drivers/gpu/drm/i915/display/intel_lvds.c     |  10 +-
 .../drm/i915/display/intel_modeset_setup.c    |  20 +-
 .../gpu/drm/i915/display/intel_pch_display.c  |   8 +-
 .../gpu/drm/i915/display/intel_pch_refclk.c   |  12 +-
 drivers/gpu/drm/i915/display/intel_tc.c       |  10 +-
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |   2 +-
 drivers/gpu/drm/i915/display/intel_wm.c       |  60 ++---
 drivers/gpu/drm/i915/display/skl_watermark.c  |  98 ++++----
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   6 +-
 .../i915/gem/i915_gem_object_frontbuffer.h    |   2 +-
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c  |   2 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |   4 +-
 drivers/gpu/drm/i915/gt/intel_reset.c         |   4 +-
 drivers/gpu/drm/i915/gvt/cmd_parser.c         |   6 +-
 drivers/gpu/drm/i915/gvt/display.c            |  10 +-
 drivers/gpu/drm/i915/gvt/fb_decoder.c         |   6 +-
 drivers/gpu/drm/i915/gvt/handlers.c           |  12 +-
 drivers/gpu/drm/i915/i915_driver.c            |  50 ++--
 drivers/gpu/drm/i915/i915_getparam.c          |   2 +-
 drivers/gpu/drm/i915/i915_gpu_error.c         |   2 +-
 drivers/gpu/drm/i915/i915_irq.c               |   4 +-
 drivers/gpu/drm/i915/intel_clock_gating.c     |   2 +-
 drivers/gpu/drm/xe/display/xe_display.c       |  44 ++--
 drivers/gpu/drm/xe/display/xe_fb_pin.c        |   4 +-
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      |   2 +-
 45 files changed, 615 insertions(+), 615 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 7c80e37c1c5f..529c090861c7 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -147,7 +147,7 @@ static void chv_set_memory_pm5(struct drm_i915_private *dev_priv, bool enable)
 
 static bool _intel_set_memory_cxsr(struct drm_i915_private *dev_priv, bool enable)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	bool was_enabled;
 	u32 val;
 
@@ -239,13 +239,13 @@ bool intel_set_memory_cxsr(struct drm_i915_private *dev_priv, bool enable)
 {
 	bool ret;
 
-	mutex_lock(&dev_priv->display.wm.wm_mutex);
+	mutex_lock(&dev_priv->display->wm.wm_mutex);
 	ret = _intel_set_memory_cxsr(dev_priv, enable);
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-		dev_priv->display.wm.vlv.cxsr = enable;
+		dev_priv->display->wm.vlv.cxsr = enable;
 	else if (IS_G4X(dev_priv))
-		dev_priv->display.wm.g4x.cxsr = enable;
-	mutex_unlock(&dev_priv->display.wm.wm_mutex);
+		dev_priv->display->wm.g4x.cxsr = enable;
+	mutex_unlock(&dev_priv->display->wm.wm_mutex);
 
 	return ret;
 }
@@ -797,7 +797,7 @@ static unsigned int g4x_tlb_miss_wa(int fifo_size, int width, int cpp)
 static void g4x_write_wm_values(struct drm_i915_private *dev_priv,
 				const struct g4x_wm_values *wm)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	enum pipe pipe;
 
 	for_each_pipe(dev_priv, pipe)
@@ -830,7 +830,7 @@ static void g4x_write_wm_values(struct drm_i915_private *dev_priv,
 static void vlv_write_wm_values(struct drm_i915_private *dev_priv,
 				const struct vlv_wm_values *wm)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	enum pipe pipe;
 
 	for_each_pipe(dev_priv, pipe) {
@@ -909,11 +909,11 @@ static void vlv_write_wm_values(struct drm_i915_private *dev_priv,
 static void g4x_setup_wm_latency(struct drm_i915_private *dev_priv)
 {
 	/* all latencies in usec */
-	dev_priv->display.wm.pri_latency[G4X_WM_LEVEL_NORMAL] = 5;
-	dev_priv->display.wm.pri_latency[G4X_WM_LEVEL_SR] = 12;
-	dev_priv->display.wm.pri_latency[G4X_WM_LEVEL_HPLL] = 35;
+	dev_priv->display->wm.pri_latency[G4X_WM_LEVEL_NORMAL] = 5;
+	dev_priv->display->wm.pri_latency[G4X_WM_LEVEL_SR] = 12;
+	dev_priv->display->wm.pri_latency[G4X_WM_LEVEL_HPLL] = 35;
 
-	dev_priv->display.wm.num_levels = G4X_WM_LEVEL_HPLL + 1;
+	dev_priv->display->wm.num_levels = G4X_WM_LEVEL_HPLL + 1;
 }
 
 static int g4x_plane_fifo_size(enum plane_id plane_id, int level)
@@ -966,7 +966,7 @@ static u16 g4x_compute_wm(const struct intel_crtc_state *crtc_state,
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	const struct drm_display_mode *pipe_mode =
 		&crtc_state->hw.pipe_mode;
-	unsigned int latency = dev_priv->display.wm.pri_latency[level] * 10;
+	unsigned int latency = dev_priv->display->wm.pri_latency[level] * 10;
 	unsigned int pixel_rate, htotal, cpp, width, wm;
 
 	if (latency == 0)
@@ -1020,7 +1020,7 @@ static bool g4x_raw_plane_wm_set(struct intel_crtc_state *crtc_state,
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	bool dirty = false;
 
-	for (; level < dev_priv->display.wm.num_levels; level++) {
+	for (; level < dev_priv->display->wm.num_levels; level++) {
 		struct g4x_pipe_wm *raw = &crtc_state->wm.g4x.raw[level];
 
 		dirty |= raw->plane[plane_id] != value;
@@ -1039,7 +1039,7 @@ static bool g4x_raw_fbc_wm_set(struct intel_crtc_state *crtc_state,
 	/* NORMAL level doesn't have an FBC watermark */
 	level = max(level, G4X_WM_LEVEL_SR);
 
-	for (; level < dev_priv->display.wm.num_levels; level++) {
+	for (; level < dev_priv->display->wm.num_levels; level++) {
 		struct g4x_pipe_wm *raw = &crtc_state->wm.g4x.raw[level];
 
 		dirty |= raw->fbc != value;
@@ -1069,7 +1069,7 @@ static bool g4x_raw_plane_wm_compute(struct intel_crtc_state *crtc_state,
 		goto out;
 	}
 
-	for (level = 0; level < dev_priv->display.wm.num_levels; level++) {
+	for (level = 0; level < dev_priv->display->wm.num_levels; level++) {
 		struct g4x_pipe_wm *raw = &crtc_state->wm.g4x.raw[level];
 		int wm, max_wm;
 
@@ -1139,7 +1139,7 @@ static bool g4x_raw_crtc_wm_is_valid(const struct intel_crtc_state *crtc_state,
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 
-	if (level >= dev_priv->display.wm.num_levels)
+	if (level >= dev_priv->display->wm.num_levels)
 		return false;
 
 	return g4x_raw_plane_wm_is_valid(crtc_state, PLANE_PRIMARY, level) &&
@@ -1422,7 +1422,7 @@ static void g4x_merge_wm(struct drm_i915_private *dev_priv,
 
 static void g4x_program_watermarks(struct drm_i915_private *dev_priv)
 {
-	struct g4x_wm_values *old_wm = &dev_priv->display.wm.g4x;
+	struct g4x_wm_values *old_wm = &dev_priv->display->wm.g4x;
 	struct g4x_wm_values new_wm = {};
 
 	g4x_merge_wm(dev_priv, &new_wm);
@@ -1448,10 +1448,10 @@ static void g4x_initial_watermarks(struct intel_atomic_state *state,
 	const struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	mutex_lock(&dev_priv->display.wm.wm_mutex);
+	mutex_lock(&dev_priv->display->wm.wm_mutex);
 	crtc->wm.active.g4x = crtc_state->wm.g4x.intermediate;
 	g4x_program_watermarks(dev_priv);
-	mutex_unlock(&dev_priv->display.wm.wm_mutex);
+	mutex_unlock(&dev_priv->display->wm.wm_mutex);
 }
 
 static void g4x_optimize_watermarks(struct intel_atomic_state *state,
@@ -1464,10 +1464,10 @@ static void g4x_optimize_watermarks(struct intel_atomic_state *state,
 	if (!crtc_state->wm.need_postvbl_update)
 		return;
 
-	mutex_lock(&dev_priv->display.wm.wm_mutex);
+	mutex_lock(&dev_priv->display->wm.wm_mutex);
 	crtc->wm.active.g4x = crtc_state->wm.g4x.optimal;
 	g4x_program_watermarks(dev_priv);
-	mutex_unlock(&dev_priv->display.wm.wm_mutex);
+	mutex_unlock(&dev_priv->display->wm.wm_mutex);
 }
 
 /* latency must be in 0.1us units. */
@@ -1489,15 +1489,15 @@ static unsigned int vlv_wm_method2(unsigned int pixel_rate,
 static void vlv_setup_wm_latency(struct drm_i915_private *dev_priv)
 {
 	/* all latencies in usec */
-	dev_priv->display.wm.pri_latency[VLV_WM_LEVEL_PM2] = 3;
+	dev_priv->display->wm.pri_latency[VLV_WM_LEVEL_PM2] = 3;
 
-	dev_priv->display.wm.num_levels = VLV_WM_LEVEL_PM2 + 1;
+	dev_priv->display->wm.num_levels = VLV_WM_LEVEL_PM2 + 1;
 
 	if (IS_CHERRYVIEW(dev_priv)) {
-		dev_priv->display.wm.pri_latency[VLV_WM_LEVEL_PM5] = 12;
-		dev_priv->display.wm.pri_latency[VLV_WM_LEVEL_DDR_DVFS] = 33;
+		dev_priv->display->wm.pri_latency[VLV_WM_LEVEL_PM5] = 12;
+		dev_priv->display->wm.pri_latency[VLV_WM_LEVEL_DDR_DVFS] = 33;
 
-		dev_priv->display.wm.num_levels = VLV_WM_LEVEL_DDR_DVFS + 1;
+		dev_priv->display->wm.num_levels = VLV_WM_LEVEL_DDR_DVFS + 1;
 	}
 }
 
@@ -1511,7 +1511,7 @@ static u16 vlv_compute_wm_level(const struct intel_crtc_state *crtc_state,
 		&crtc_state->hw.pipe_mode;
 	unsigned int pixel_rate, htotal, cpp, width, wm;
 
-	if (dev_priv->display.wm.pri_latency[level] == 0)
+	if (dev_priv->display->wm.pri_latency[level] == 0)
 		return USHRT_MAX;
 
 	if (!intel_wm_plane_visible(crtc_state, plane_state))
@@ -1532,7 +1532,7 @@ static u16 vlv_compute_wm_level(const struct intel_crtc_state *crtc_state,
 		wm = 63;
 	} else {
 		wm = vlv_wm_method2(pixel_rate, htotal, width, cpp,
-				    dev_priv->display.wm.pri_latency[level] * 10);
+				    dev_priv->display->wm.pri_latency[level] * 10);
 	}
 
 	return min_t(unsigned int, wm, USHRT_MAX);
@@ -1633,7 +1633,7 @@ static void vlv_invalidate_wms(struct intel_crtc *crtc,
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
-	for (; level < dev_priv->display.wm.num_levels; level++) {
+	for (; level < dev_priv->display->wm.num_levels; level++) {
 		enum plane_id plane_id;
 
 		for_each_plane_id_on_crtc(crtc, plane_id)
@@ -1662,7 +1662,7 @@ static bool vlv_raw_plane_wm_set(struct intel_crtc_state *crtc_state,
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	bool dirty = false;
 
-	for (; level < dev_priv->display.wm.num_levels; level++) {
+	for (; level < dev_priv->display->wm.num_levels; level++) {
 		struct g4x_pipe_wm *raw = &crtc_state->wm.vlv.raw[level];
 
 		dirty |= raw->plane[plane_id] != value;
@@ -1686,7 +1686,7 @@ static bool vlv_raw_plane_wm_compute(struct intel_crtc_state *crtc_state,
 		goto out;
 	}
 
-	for (level = 0; level < dev_priv->display.wm.num_levels; level++) {
+	for (level = 0; level < dev_priv->display->wm.num_levels; level++) {
 		struct g4x_pipe_wm *raw = &crtc_state->wm.vlv.raw[level];
 		int wm = vlv_compute_wm_level(crtc_state, plane_state, level);
 		int max_wm = plane_id == PLANE_CURSOR ? 63 : 511;
@@ -1745,7 +1745,7 @@ static int _vlv_compute_pipe_wm(struct intel_crtc_state *crtc_state)
 	int level;
 
 	/* initially allow all levels */
-	wm_state->num_levels = dev_priv->display.wm.num_levels;
+	wm_state->num_levels = dev_priv->display->wm.num_levels;
 	/*
 	 * Note that enabling cxsr with no primary/sprite planes
 	 * enabled can wedge the pipe. Hence we only allow cxsr
@@ -2024,7 +2024,7 @@ static void vlv_merge_wm(struct drm_i915_private *dev_priv,
 	struct intel_crtc *crtc;
 	int num_active_pipes = 0;
 
-	wm->level = dev_priv->display.wm.num_levels - 1;
+	wm->level = dev_priv->display->wm.num_levels - 1;
 	wm->cxsr = true;
 
 	for_each_intel_crtc(&dev_priv->drm, crtc) {
@@ -2063,7 +2063,7 @@ static void vlv_merge_wm(struct drm_i915_private *dev_priv,
 
 static void vlv_program_watermarks(struct drm_i915_private *dev_priv)
 {
-	struct vlv_wm_values *old_wm = &dev_priv->display.wm.vlv;
+	struct vlv_wm_values *old_wm = &dev_priv->display->wm.vlv;
 	struct vlv_wm_values new_wm = {};
 
 	vlv_merge_wm(dev_priv, &new_wm);
@@ -2101,10 +2101,10 @@ static void vlv_initial_watermarks(struct intel_atomic_state *state,
 	const struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	mutex_lock(&dev_priv->display.wm.wm_mutex);
+	mutex_lock(&dev_priv->display->wm.wm_mutex);
 	crtc->wm.active.vlv = crtc_state->wm.vlv.intermediate;
 	vlv_program_watermarks(dev_priv);
-	mutex_unlock(&dev_priv->display.wm.wm_mutex);
+	mutex_unlock(&dev_priv->display->wm.wm_mutex);
 }
 
 static void vlv_optimize_watermarks(struct intel_atomic_state *state,
@@ -2117,10 +2117,10 @@ static void vlv_optimize_watermarks(struct intel_atomic_state *state,
 	if (!crtc_state->wm.need_postvbl_update)
 		return;
 
-	mutex_lock(&dev_priv->display.wm.wm_mutex);
+	mutex_lock(&dev_priv->display->wm.wm_mutex);
 	crtc->wm.active.vlv = crtc_state->wm.vlv.optimal;
 	vlv_program_watermarks(dev_priv);
-	mutex_unlock(&dev_priv->display.wm.wm_mutex);
+	mutex_unlock(&dev_priv->display->wm.wm_mutex);
 }
 
 static void i965_update_wm(struct drm_i915_private *dev_priv)
@@ -2204,7 +2204,7 @@ static void i965_update_wm(struct drm_i915_private *dev_priv)
 static struct intel_crtc *intel_crtc_for_plane(struct drm_i915_private *i915,
 					       enum i9xx_plane_id i9xx_plane)
 {
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 	struct intel_plane *plane;
 
 	for_each_intel_plane(&i915->drm, plane) {
@@ -2709,9 +2709,9 @@ static void ilk_compute_wm_level(const struct drm_i915_private *dev_priv,
 				 const struct intel_plane_state *curstate,
 				 struct intel_wm_level *result)
 {
-	u16 pri_latency = dev_priv->display.wm.pri_latency[level];
-	u16 spr_latency = dev_priv->display.wm.spr_latency[level];
-	u16 cur_latency = dev_priv->display.wm.cur_latency[level];
+	u16 pri_latency = dev_priv->display->wm.pri_latency[level];
+	u16 spr_latency = dev_priv->display->wm.spr_latency[level];
+	u16 cur_latency = dev_priv->display->wm.cur_latency[level];
 
 	/* WM1+ latency values stored in 0.5us units */
 	if (level > 0) {
@@ -2739,7 +2739,7 @@ static void hsw_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 {
 	u64 sskpd;
 
-	i915->display.wm.num_levels = 5;
+	i915->display->wm.num_levels = 5;
 
 	sskpd = intel_uncore_read64(&i915->uncore, MCH_SSKPD);
 
@@ -2756,7 +2756,7 @@ static void snb_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 {
 	u32 sskpd;
 
-	i915->display.wm.num_levels = 4;
+	i915->display->wm.num_levels = 4;
 
 	sskpd = intel_uncore_read(&i915->uncore, MCH_SSKPD);
 
@@ -2770,7 +2770,7 @@ static void ilk_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 {
 	u32 mltr;
 
-	i915->display.wm.num_levels = 3;
+	i915->display->wm.num_levels = 3;
 
 	mltr = intel_uncore_read(&i915->uncore, MLTR_ILK);
 
@@ -2805,7 +2805,7 @@ static bool ilk_increase_wm_latency(struct drm_i915_private *dev_priv,
 		return false;
 
 	wm[0] = max(wm[0], min);
-	for (level = 1; level < dev_priv->display.wm.num_levels; level++)
+	for (level = 1; level < dev_priv->display->wm.num_levels; level++)
 		wm[level] = max_t(u16, wm[level], DIV_ROUND_UP(min, 5));
 
 	return true;
@@ -2819,18 +2819,18 @@ static void snb_wm_latency_quirk(struct drm_i915_private *dev_priv)
 	 * The BIOS provided WM memory latency values are often
 	 * inadequate for high resolution displays. Adjust them.
 	 */
-	changed = ilk_increase_wm_latency(dev_priv, dev_priv->display.wm.pri_latency, 12);
-	changed |= ilk_increase_wm_latency(dev_priv, dev_priv->display.wm.spr_latency, 12);
-	changed |= ilk_increase_wm_latency(dev_priv, dev_priv->display.wm.cur_latency, 12);
+	changed = ilk_increase_wm_latency(dev_priv, dev_priv->display->wm.pri_latency, 12);
+	changed |= ilk_increase_wm_latency(dev_priv, dev_priv->display->wm.spr_latency, 12);
+	changed |= ilk_increase_wm_latency(dev_priv, dev_priv->display->wm.cur_latency, 12);
 
 	if (!changed)
 		return;
 
 	drm_dbg_kms(&dev_priv->drm,
 		    "WM latency values increased to avoid potential underruns\n");
-	intel_print_wm_latency(dev_priv, "Primary", dev_priv->display.wm.pri_latency);
-	intel_print_wm_latency(dev_priv, "Sprite", dev_priv->display.wm.spr_latency);
-	intel_print_wm_latency(dev_priv, "Cursor", dev_priv->display.wm.cur_latency);
+	intel_print_wm_latency(dev_priv, "Primary", dev_priv->display->wm.pri_latency);
+	intel_print_wm_latency(dev_priv, "Sprite", dev_priv->display->wm.spr_latency);
+	intel_print_wm_latency(dev_priv, "Cursor", dev_priv->display->wm.cur_latency);
 }
 
 static void snb_wm_lp3_irq_quirk(struct drm_i915_private *dev_priv)
@@ -2846,42 +2846,42 @@ static void snb_wm_lp3_irq_quirk(struct drm_i915_private *dev_priv)
 	 * interrupts only. To play it safe we disable LP3
 	 * watermarks entirely.
 	 */
-	if (dev_priv->display.wm.pri_latency[3] == 0 &&
-	    dev_priv->display.wm.spr_latency[3] == 0 &&
-	    dev_priv->display.wm.cur_latency[3] == 0)
+	if (dev_priv->display->wm.pri_latency[3] == 0 &&
+	    dev_priv->display->wm.spr_latency[3] == 0 &&
+	    dev_priv->display->wm.cur_latency[3] == 0)
 		return;
 
-	dev_priv->display.wm.pri_latency[3] = 0;
-	dev_priv->display.wm.spr_latency[3] = 0;
-	dev_priv->display.wm.cur_latency[3] = 0;
+	dev_priv->display->wm.pri_latency[3] = 0;
+	dev_priv->display->wm.spr_latency[3] = 0;
+	dev_priv->display->wm.cur_latency[3] = 0;
 
 	drm_dbg_kms(&dev_priv->drm,
 		    "LP3 watermarks disabled due to potential for lost interrupts\n");
-	intel_print_wm_latency(dev_priv, "Primary", dev_priv->display.wm.pri_latency);
-	intel_print_wm_latency(dev_priv, "Sprite", dev_priv->display.wm.spr_latency);
-	intel_print_wm_latency(dev_priv, "Cursor", dev_priv->display.wm.cur_latency);
+	intel_print_wm_latency(dev_priv, "Primary", dev_priv->display->wm.pri_latency);
+	intel_print_wm_latency(dev_priv, "Sprite", dev_priv->display->wm.spr_latency);
+	intel_print_wm_latency(dev_priv, "Cursor", dev_priv->display->wm.cur_latency);
 }
 
 static void ilk_setup_wm_latency(struct drm_i915_private *dev_priv)
 {
 	if (IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
-		hsw_read_wm_latency(dev_priv, dev_priv->display.wm.pri_latency);
+		hsw_read_wm_latency(dev_priv, dev_priv->display->wm.pri_latency);
 	else if (DISPLAY_VER(dev_priv) >= 6)
-		snb_read_wm_latency(dev_priv, dev_priv->display.wm.pri_latency);
+		snb_read_wm_latency(dev_priv, dev_priv->display->wm.pri_latency);
 	else
-		ilk_read_wm_latency(dev_priv, dev_priv->display.wm.pri_latency);
+		ilk_read_wm_latency(dev_priv, dev_priv->display->wm.pri_latency);
 
-	memcpy(dev_priv->display.wm.spr_latency, dev_priv->display.wm.pri_latency,
-	       sizeof(dev_priv->display.wm.pri_latency));
-	memcpy(dev_priv->display.wm.cur_latency, dev_priv->display.wm.pri_latency,
-	       sizeof(dev_priv->display.wm.pri_latency));
+	memcpy(dev_priv->display->wm.spr_latency, dev_priv->display->wm.pri_latency,
+	       sizeof(dev_priv->display->wm.pri_latency));
+	memcpy(dev_priv->display->wm.cur_latency, dev_priv->display->wm.pri_latency,
+	       sizeof(dev_priv->display->wm.pri_latency));
 
-	intel_fixup_spr_wm_latency(dev_priv, dev_priv->display.wm.spr_latency);
-	intel_fixup_cur_wm_latency(dev_priv, dev_priv->display.wm.cur_latency);
+	intel_fixup_spr_wm_latency(dev_priv, dev_priv->display->wm.spr_latency);
+	intel_fixup_cur_wm_latency(dev_priv, dev_priv->display->wm.cur_latency);
 
-	intel_print_wm_latency(dev_priv, "Primary", dev_priv->display.wm.pri_latency);
-	intel_print_wm_latency(dev_priv, "Sprite", dev_priv->display.wm.spr_latency);
-	intel_print_wm_latency(dev_priv, "Cursor", dev_priv->display.wm.cur_latency);
+	intel_print_wm_latency(dev_priv, "Primary", dev_priv->display->wm.pri_latency);
+	intel_print_wm_latency(dev_priv, "Sprite", dev_priv->display->wm.spr_latency);
+	intel_print_wm_latency(dev_priv, "Cursor", dev_priv->display->wm.cur_latency);
 
 	if (DISPLAY_VER(dev_priv) == 6) {
 		snb_wm_latency_quirk(dev_priv);
@@ -2943,7 +2943,7 @@ static int ilk_compute_pipe_wm(struct intel_atomic_state *state,
 	pipe_wm->sprites_enabled = crtc_state->active_planes & BIT(PLANE_SPRITE0);
 	pipe_wm->sprites_scaled = crtc_state->scaled_planes & BIT(PLANE_SPRITE0);
 
-	usable_level = dev_priv->display.wm.num_levels - 1;
+	usable_level = dev_priv->display->wm.num_levels - 1;
 
 	/* ILK/SNB: LP2+ watermarks only w/o sprites */
 	if (DISPLAY_VER(dev_priv) < 7 && pipe_wm->sprites_enabled)
@@ -3015,7 +3015,7 @@ static int ilk_compute_intermediate_wm(struct intel_atomic_state *state,
 	intermediate->sprites_enabled |= active->sprites_enabled;
 	intermediate->sprites_scaled |= active->sprites_scaled;
 
-	for (level = 0; level < dev_priv->display.wm.num_levels; level++) {
+	for (level = 0; level < dev_priv->display->wm.num_levels; level++) {
 		struct intel_wm_level *intermediate_wm = &intermediate->wm[level];
 		const struct intel_wm_level *active_wm = &active->wm[level];
 
@@ -3106,7 +3106,7 @@ static void ilk_wm_merge(struct drm_i915_private *dev_priv,
 			 const struct ilk_wm_maximums *max,
 			 struct intel_pipe_wm *merged)
 {
-	int level, num_levels = dev_priv->display.wm.num_levels;
+	int level, num_levels = dev_priv->display->wm.num_levels;
 	int last_enabled_level = num_levels - 1;
 
 	/* ILK/SNB/IVB: LP1+ watermarks only w/ single pipe */
@@ -3142,7 +3142,7 @@ static void ilk_wm_merge(struct drm_i915_private *dev_priv,
 
 	/* ILK: LP2+ must be disabled when FBC WM is disabled but FBC enabled */
 	if (DISPLAY_VER(dev_priv) == 5 && HAS_FBC(dev_priv) &&
-	    dev_priv->display.params.enable_fbc && !merged->fbc_wm_enabled) {
+	    dev_priv->display->params.enable_fbc && !merged->fbc_wm_enabled) {
 		for (level = 2; level < num_levels; level++) {
 			struct intel_wm_level *wm = &merged->wm[level];
 
@@ -3164,7 +3164,7 @@ static unsigned int ilk_wm_lp_latency(struct drm_i915_private *dev_priv,
 	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
 		return 2 * level;
 	else
-		return dev_priv->display.wm.pri_latency[level];
+		return dev_priv->display->wm.pri_latency[level];
 }
 
 static void ilk_compute_wm_results(struct drm_i915_private *dev_priv,
@@ -3242,7 +3242,7 @@ ilk_find_best_result(struct drm_i915_private *dev_priv,
 {
 	int level, level1 = 0, level2 = 0;
 
-	for (level = 1; level < dev_priv->display.wm.num_levels; level++) {
+	for (level = 1; level < dev_priv->display->wm.num_levels; level++) {
 		if (r1->wm[level].enable)
 			level1 = level;
 		if (r2->wm[level].enable)
@@ -3317,7 +3317,7 @@ static unsigned int ilk_compute_wm_dirty(struct drm_i915_private *dev_priv,
 static bool _ilk_disable_lp_wm(struct drm_i915_private *dev_priv,
 			       unsigned int dirty)
 {
-	struct ilk_wm_values *previous = &dev_priv->display.wm.hw;
+	struct ilk_wm_values *previous = &dev_priv->display->wm.hw;
 	bool changed = false;
 
 	if (dirty & WM_DIRTY_LP(3) && previous->wm_lp[2] & WM_LP_ENABLE) {
@@ -3351,7 +3351,7 @@ static bool _ilk_disable_lp_wm(struct drm_i915_private *dev_priv,
 static void ilk_write_wm_values(struct drm_i915_private *dev_priv,
 				struct ilk_wm_values *results)
 {
-	struct ilk_wm_values *previous = &dev_priv->display.wm.hw;
+	struct ilk_wm_values *previous = &dev_priv->display->wm.hw;
 	unsigned int dirty;
 
 	dirty = ilk_compute_wm_dirty(dev_priv, previous, results);
@@ -3400,7 +3400,7 @@ static void ilk_write_wm_values(struct drm_i915_private *dev_priv,
 	if (dirty & WM_DIRTY_LP(3) && previous->wm_lp[2] != results->wm_lp[2])
 		intel_uncore_write(&dev_priv->uncore, WM3_LP_ILK, results->wm_lp[2]);
 
-	dev_priv->display.wm.hw = *results;
+	dev_priv->display->wm.hw = *results;
 }
 
 bool ilk_disable_cxsr(struct drm_i915_private *dev_priv)
@@ -3465,10 +3465,10 @@ static void ilk_initial_watermarks(struct intel_atomic_state *state,
 	const struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	mutex_lock(&dev_priv->display.wm.wm_mutex);
+	mutex_lock(&dev_priv->display->wm.wm_mutex);
 	crtc->wm.active.ilk = crtc_state->wm.ilk.intermediate;
 	ilk_program_watermarks(dev_priv);
-	mutex_unlock(&dev_priv->display.wm.wm_mutex);
+	mutex_unlock(&dev_priv->display->wm.wm_mutex);
 }
 
 static void ilk_optimize_watermarks(struct intel_atomic_state *state,
@@ -3481,17 +3481,17 @@ static void ilk_optimize_watermarks(struct intel_atomic_state *state,
 	if (!crtc_state->wm.need_postvbl_update)
 		return;
 
-	mutex_lock(&dev_priv->display.wm.wm_mutex);
+	mutex_lock(&dev_priv->display->wm.wm_mutex);
 	crtc->wm.active.ilk = crtc_state->wm.ilk.optimal;
 	ilk_program_watermarks(dev_priv);
-	mutex_unlock(&dev_priv->display.wm.wm_mutex);
+	mutex_unlock(&dev_priv->display->wm.wm_mutex);
 }
 
 static void ilk_pipe_wm_get_hw_state(struct intel_crtc *crtc)
 {
 	struct drm_device *dev = crtc->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct ilk_wm_values *hw = &dev_priv->display.wm.hw;
+	struct ilk_wm_values *hw = &dev_priv->display->wm.hw;
 	struct intel_crtc_state *crtc_state = to_intel_crtc_state(crtc->base.state);
 	struct intel_pipe_wm *active = &crtc_state->wm.ilk.optimal;
 	enum pipe pipe = crtc->pipe;
@@ -3523,7 +3523,7 @@ static void ilk_pipe_wm_get_hw_state(struct intel_crtc *crtc)
 		 * should be marked as enabled but zeroed,
 		 * which is what we'd compute them to.
 		 */
-		for (level = 0; level < dev_priv->display.wm.num_levels; level++)
+		for (level = 0; level < dev_priv->display->wm.num_levels; level++)
 			active->wm[level].enable = true;
 	}
 
@@ -3583,7 +3583,7 @@ void ilk_wm_sanitize(struct drm_i915_private *dev_priv)
 	int i;
 
 	/* Only supported on platforms that use atomic watermark design */
-	if (!dev_priv->display.funcs.wm->optimize_watermarks)
+	if (!dev_priv->display->funcs.wm->optimize_watermarks)
 		return;
 
 	if (drm_WARN_ON(&dev_priv->drm, DISPLAY_VER(dev_priv) >= 9))
@@ -3761,7 +3761,7 @@ static void vlv_read_wm_values(struct drm_i915_private *dev_priv,
 
 static void g4x_wm_get_hw_state(struct drm_i915_private *dev_priv)
 {
-	struct g4x_wm_values *wm = &dev_priv->display.wm.g4x;
+	struct g4x_wm_values *wm = &dev_priv->display->wm.g4x;
 	struct intel_crtc *crtc;
 
 	g4x_read_wm_values(dev_priv, wm);
@@ -3854,11 +3854,11 @@ static void g4x_wm_get_hw_state(struct drm_i915_private *dev_priv)
 
 static void g4x_wm_sanitize(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct intel_plane *plane;
 	struct intel_crtc *crtc;
 
-	mutex_lock(&dev_priv->display.wm.wm_mutex);
+	mutex_lock(&dev_priv->display->wm.wm_mutex);
 
 	for_each_intel_plane(&dev_priv->drm, plane) {
 		struct intel_crtc *crtc =
@@ -3873,7 +3873,7 @@ static void g4x_wm_sanitize(struct drm_i915_private *dev_priv)
 		if (plane_state->uapi.visible)
 			continue;
 
-		for (level = 0; level < dev_priv->display.wm.num_levels; level++) {
+		for (level = 0; level < dev_priv->display->wm.num_levels; level++) {
 			struct g4x_pipe_wm *raw =
 				&crtc_state->wm.g4x.raw[level];
 
@@ -3899,12 +3899,12 @@ static void g4x_wm_sanitize(struct drm_i915_private *dev_priv)
 
 	g4x_program_watermarks(dev_priv);
 
-	mutex_unlock(&dev_priv->display.wm.wm_mutex);
+	mutex_unlock(&dev_priv->display->wm.wm_mutex);
 }
 
 static void vlv_wm_get_hw_state(struct drm_i915_private *dev_priv)
 {
-	struct vlv_wm_values *wm = &dev_priv->display.wm.vlv;
+	struct vlv_wm_values *wm = &dev_priv->display->wm.vlv;
 	struct intel_crtc *crtc;
 	u32 val;
 
@@ -3938,7 +3938,7 @@ static void vlv_wm_get_hw_state(struct drm_i915_private *dev_priv)
 			drm_dbg_kms(&dev_priv->drm,
 				    "Punit not acking DDR DVFS request, "
 				    "assuming DDR DVFS is disabled\n");
-			dev_priv->display.wm.num_levels = VLV_WM_LEVEL_PM5 + 1;
+			dev_priv->display->wm.num_levels = VLV_WM_LEVEL_PM5 + 1;
 		} else {
 			val = vlv_punit_read(dev_priv, PUNIT_REG_DDR_SETUP2);
 			if ((val & FORCE_DDR_HIGH_FREQ) == 0)
@@ -4004,11 +4004,11 @@ static void vlv_wm_get_hw_state(struct drm_i915_private *dev_priv)
 
 static void vlv_wm_sanitize(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct intel_plane *plane;
 	struct intel_crtc *crtc;
 
-	mutex_lock(&dev_priv->display.wm.wm_mutex);
+	mutex_lock(&dev_priv->display->wm.wm_mutex);
 
 	for_each_intel_plane(&dev_priv->drm, plane) {
 		struct intel_crtc *crtc =
@@ -4023,7 +4023,7 @@ static void vlv_wm_sanitize(struct drm_i915_private *dev_priv)
 		if (plane_state->uapi.visible)
 			continue;
 
-		for (level = 0; level < dev_priv->display.wm.num_levels; level++) {
+		for (level = 0; level < dev_priv->display->wm.num_levels; level++) {
 			struct g4x_pipe_wm *raw =
 				&crtc_state->wm.vlv.raw[level];
 
@@ -4046,7 +4046,7 @@ static void vlv_wm_sanitize(struct drm_i915_private *dev_priv)
 
 	vlv_program_watermarks(dev_priv);
 
-	mutex_unlock(&dev_priv->display.wm.wm_mutex);
+	mutex_unlock(&dev_priv->display->wm.wm_mutex);
 }
 
 /*
@@ -4067,7 +4067,7 @@ static void ilk_init_lp_watermarks(struct drm_i915_private *dev_priv)
 
 static void ilk_wm_get_hw_state(struct drm_i915_private *dev_priv)
 {
-	struct ilk_wm_values *hw = &dev_priv->display.wm.hw;
+	struct ilk_wm_values *hw = &dev_priv->display->wm.hw;
 	struct intel_crtc *crtc;
 
 	ilk_init_lp_watermarks(dev_priv);
@@ -4150,34 +4150,34 @@ void i9xx_wm_init(struct drm_i915_private *dev_priv)
 	/* For FIFO watermark updates */
 	if (HAS_PCH_SPLIT(dev_priv)) {
 		ilk_setup_wm_latency(dev_priv);
-		dev_priv->display.funcs.wm = &ilk_wm_funcs;
+		dev_priv->display->funcs.wm = &ilk_wm_funcs;
 	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
 		vlv_setup_wm_latency(dev_priv);
-		dev_priv->display.funcs.wm = &vlv_wm_funcs;
+		dev_priv->display->funcs.wm = &vlv_wm_funcs;
 	} else if (IS_G4X(dev_priv)) {
 		g4x_setup_wm_latency(dev_priv);
-		dev_priv->display.funcs.wm = &g4x_wm_funcs;
+		dev_priv->display->funcs.wm = &g4x_wm_funcs;
 	} else if (IS_PINEVIEW(dev_priv)) {
 		if (!pnv_get_cxsr_latency(dev_priv)) {
 			drm_info(&dev_priv->drm, "Unknown FSB/MEM, disabling CxSR\n");
 			/* Disable CxSR and never update its watermark again */
 			intel_set_memory_cxsr(dev_priv, false);
-			dev_priv->display.funcs.wm = &nop_funcs;
+			dev_priv->display->funcs.wm = &nop_funcs;
 		} else {
-			dev_priv->display.funcs.wm = &pnv_wm_funcs;
+			dev_priv->display->funcs.wm = &pnv_wm_funcs;
 		}
 	} else if (DISPLAY_VER(dev_priv) == 4) {
-		dev_priv->display.funcs.wm = &i965_wm_funcs;
+		dev_priv->display->funcs.wm = &i965_wm_funcs;
 	} else if (DISPLAY_VER(dev_priv) == 3) {
-		dev_priv->display.funcs.wm = &i9xx_wm_funcs;
+		dev_priv->display->funcs.wm = &i9xx_wm_funcs;
 	} else if (DISPLAY_VER(dev_priv) == 2) {
 		if (INTEL_NUM_PIPES(dev_priv) == 1)
-			dev_priv->display.funcs.wm = &i845_wm_funcs;
+			dev_priv->display->funcs.wm = &i845_wm_funcs;
 		else
-			dev_priv->display.funcs.wm = &i9xx_wm_funcs;
+			dev_priv->display->funcs.wm = &i9xx_wm_funcs;
 	} else {
 		drm_err(&dev_priv->drm,
 			"unexpected fall-through in %s\n", __func__);
-		dev_priv->display.funcs.wm = &nop_funcs;
+		dev_priv->display->funcs.wm = &nop_funcs;
 	}
 }
diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index 03dc54c802d3..1d6383a13bc6 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -64,9 +64,9 @@ int intel_digital_connector_atomic_get_property(struct drm_connector *connector,
 	const struct intel_digital_connector_state *intel_conn_state =
 		to_intel_digital_connector_state(state);
 
-	if (property == dev_priv->display.properties.force_audio)
+	if (property == dev_priv->display->properties.force_audio)
 		*val = intel_conn_state->force_audio;
-	else if (property == dev_priv->display.properties.broadcast_rgb)
+	else if (property == dev_priv->display->properties.broadcast_rgb)
 		*val = intel_conn_state->broadcast_rgb;
 	else {
 		drm_dbg_atomic(&dev_priv->drm,
@@ -97,12 +97,12 @@ int intel_digital_connector_atomic_set_property(struct drm_connector *connector,
 	struct intel_digital_connector_state *intel_conn_state =
 		to_intel_digital_connector_state(state);
 
-	if (property == dev_priv->display.properties.force_audio) {
+	if (property == dev_priv->display->properties.force_audio) {
 		intel_conn_state->force_audio = val;
 		return 0;
 	}
 
-	if (property == dev_priv->display.properties.broadcast_rgb) {
+	if (property == dev_priv->display->properties.broadcast_rgb) {
 		intel_conn_state->broadcast_rgb = val;
 		return 0;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 048be2872247..0efe45051f08 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -124,8 +124,8 @@ static int adls_pcode_read_psf_gv_point_info(struct drm_i915_private *dev_priv,
 
 static u16 icl_qgv_points_mask(struct drm_i915_private *i915)
 {
-	unsigned int num_psf_gv_points = i915->display.bw.max[0].num_psf_gv_points;
-	unsigned int num_qgv_points = i915->display.bw.max[0].num_qgv_points;
+	unsigned int num_psf_gv_points = i915->display->bw.max[0].num_psf_gv_points;
+	unsigned int num_qgv_points = i915->display->bw.max[0].num_qgv_points;
 	u16 qgv_points = 0, psf_points = 0;
 
 	/*
@@ -170,7 +170,7 @@ int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
 		return ret;
 	}
 
-	dev_priv->display.sagv.status = is_sagv_enabled(dev_priv, points_mask) ?
+	dev_priv->display->sagv.status = is_sagv_enabled(dev_priv, points_mask) ?
 		I915_SAGV_ENABLED : I915_SAGV_DISABLED;
 
 	return 0;
@@ -406,7 +406,7 @@ static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 	int ipqdepth, ipqdepthpch = 16;
 	int dclk_max;
 	int maxdebw;
-	int num_groups = ARRAY_SIZE(dev_priv->display.bw.max);
+	int num_groups = ARRAY_SIZE(dev_priv->display->bw.max);
 	int i, ret;
 
 	ret = icl_get_qgv_points(dev_priv, &qi, is_y_tile);
@@ -422,7 +422,7 @@ static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 	qi.deinterleave = DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
 
 	for (i = 0; i < num_groups; i++) {
-		struct intel_bw_info *bi = &dev_priv->display.bw.max[i];
+		struct intel_bw_info *bi = &dev_priv->display->bw.max[i];
 		int clpchgroup;
 		int j;
 
@@ -460,9 +460,9 @@ static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 	 * as it will fail and pointless anyway.
 	 */
 	if (qi.num_points == 1)
-		dev_priv->display.sagv.status = I915_SAGV_NOT_CONTROLLED;
+		dev_priv->display->sagv.status = I915_SAGV_NOT_CONTROLLED;
 	else
-		dev_priv->display.sagv.status = I915_SAGV_ENABLED;
+		dev_priv->display->sagv.status = I915_SAGV_ENABLED;
 
 	return 0;
 }
@@ -477,7 +477,7 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 	int dclk_max;
 	int maxdebw, peakbw;
 	int clperchgroup;
-	int num_groups = ARRAY_SIZE(dev_priv->display.bw.max);
+	int num_groups = ARRAY_SIZE(dev_priv->display->bw.max);
 	int i, ret;
 
 	ret = icl_get_qgv_points(dev_priv, &qi, is_y_tile);
@@ -514,7 +514,7 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 	clperchgroup = 4 * DIV_ROUND_UP(8, num_channels) * qi.deinterleave;
 
 	for (i = 0; i < num_groups; i++) {
-		struct intel_bw_info *bi = &dev_priv->display.bw.max[i];
+		struct intel_bw_info *bi = &dev_priv->display->bw.max[i];
 		struct intel_bw_info *bi_next;
 		int clpchgroup;
 		int j;
@@ -522,7 +522,7 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 		clpchgroup = (sa->deburst * qi.deinterleave / num_channels) << i;
 
 		if (i < num_groups - 1) {
-			bi_next = &dev_priv->display.bw.max[i + 1];
+			bi_next = &dev_priv->display->bw.max[i + 1];
 
 			if (clpchgroup < clperchgroup)
 				bi_next->num_planes = (ipqdepth - clpchgroup) /
@@ -577,9 +577,9 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 	 * as it will fail and pointless anyway.
 	 */
 	if (qi.num_points == 1)
-		dev_priv->display.sagv.status = I915_SAGV_NOT_CONTROLLED;
+		dev_priv->display->sagv.status = I915_SAGV_NOT_CONTROLLED;
 	else
-		dev_priv->display.sagv.status = I915_SAGV_ENABLED;
+		dev_priv->display->sagv.status = I915_SAGV_ENABLED;
 
 	return 0;
 }
@@ -587,7 +587,7 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 static void dg2_get_bw_info(struct drm_i915_private *i915)
 {
 	unsigned int deratedbw = IS_DG2_G11(i915) ? 38000 : 50000;
-	int num_groups = ARRAY_SIZE(i915->display.bw.max);
+	int num_groups = ARRAY_SIZE(i915->display->bw.max);
 	int i;
 
 	/*
@@ -598,7 +598,7 @@ static void dg2_get_bw_info(struct drm_i915_private *i915)
 	 * whereas DG2-G11 platforms have 38 GB/s.
 	 */
 	for (i = 0; i < num_groups; i++) {
-		struct intel_bw_info *bi = &i915->display.bw.max[i];
+		struct intel_bw_info *bi = &i915->display->bw.max[i];
 
 		bi->num_planes = 1;
 		/* Need only one dummy QGV point per group */
@@ -606,7 +606,7 @@ static void dg2_get_bw_info(struct drm_i915_private *i915)
 		bi->deratedbw[0] = deratedbw;
 	}
 
-	i915->display.sagv.status = I915_SAGV_NOT_CONTROLLED;
+	i915->display->sagv.status = I915_SAGV_NOT_CONTROLLED;
 }
 
 static int xe2_hpd_get_bw_info(struct drm_i915_private *i915,
@@ -631,28 +631,28 @@ static int xe2_hpd_get_bw_info(struct drm_i915_private *i915,
 		const struct intel_qgv_point *point = &qi.points[i];
 		int bw = num_channels * (qi.channel_width / 8) * point->dclk;
 
-		i915->display.bw.max[0].deratedbw[i] =
+		i915->display->bw.max[0].deratedbw[i] =
 			min(maxdebw, (100 - sa->derating) * bw / 100);
-		i915->display.bw.max[0].peakbw[i] = bw;
+		i915->display->bw.max[0].peakbw[i] = bw;
 
 		drm_dbg_kms(&i915->drm, "QGV %d: deratedbw=%u peakbw: %u\n",
-			    i, i915->display.bw.max[0].deratedbw[i],
-			    i915->display.bw.max[0].peakbw[i]);
+			    i, i915->display->bw.max[0].deratedbw[i],
+			    i915->display->bw.max[0].peakbw[i]);
 	}
 
 	/* Bandwidth does not depend on # of planes; set all groups the same */
-	i915->display.bw.max[0].num_planes = 1;
-	i915->display.bw.max[0].num_qgv_points = qi.num_points;
-	for (i = 1; i < ARRAY_SIZE(i915->display.bw.max); i++)
-		memcpy(&i915->display.bw.max[i], &i915->display.bw.max[0],
-		       sizeof(i915->display.bw.max[0]));
+	i915->display->bw.max[0].num_planes = 1;
+	i915->display->bw.max[0].num_qgv_points = qi.num_points;
+	for (i = 1; i < ARRAY_SIZE(i915->display->bw.max); i++)
+		memcpy(&i915->display->bw.max[i], &i915->display->bw.max[0],
+		       sizeof(i915->display->bw.max[0]));
 
 	/*
 	 * Xe2_HPD should always have exactly two QGV points representing
 	 * battery and plugged-in operation.
 	 */
 	drm_WARN_ON(&i915->drm, qi.num_points != 2);
-	i915->display.sagv.status = I915_SAGV_ENABLED;
+	i915->display->sagv.status = I915_SAGV_ENABLED;
 
 	return 0;
 }
@@ -667,9 +667,9 @@ static unsigned int icl_max_bw_index(struct drm_i915_private *dev_priv,
 	 */
 	num_planes = max(1, num_planes);
 
-	for (i = 0; i < ARRAY_SIZE(dev_priv->display.bw.max); i++) {
+	for (i = 0; i < ARRAY_SIZE(dev_priv->display->bw.max); i++) {
 		const struct intel_bw_info *bi =
-			&dev_priv->display.bw.max[i];
+			&dev_priv->display->bw.max[i];
 
 		/*
 		 * Pcode will not expose all QGV points when
@@ -695,9 +695,9 @@ static unsigned int tgl_max_bw_index(struct drm_i915_private *dev_priv,
 	 */
 	num_planes = max(1, num_planes);
 
-	for (i = ARRAY_SIZE(dev_priv->display.bw.max) - 1; i >= 0; i--) {
+	for (i = ARRAY_SIZE(dev_priv->display->bw.max) - 1; i >= 0; i--) {
 		const struct intel_bw_info *bi =
-			&dev_priv->display.bw.max[i];
+			&dev_priv->display->bw.max[i];
 
 		/*
 		 * Pcode will not expose all QGV points when
@@ -717,7 +717,7 @@ static unsigned int adl_psf_bw(struct drm_i915_private *dev_priv,
 			       int psf_gv_point)
 {
 	const struct intel_bw_info *bi =
-			&dev_priv->display.bw.max[0];
+			&dev_priv->display->bw.max[0];
 
 	return bi->psf_bw[psf_gv_point];
 }
@@ -732,10 +732,10 @@ static unsigned int icl_qgv_bw(struct drm_i915_private *i915,
 	else
 		idx = icl_max_bw_index(i915, num_active_planes, qgv_point);
 
-	if (idx >= ARRAY_SIZE(i915->display.bw.max))
+	if (idx >= ARRAY_SIZE(i915->display->bw.max))
 		return 0;
 
-	return i915->display.bw.max[idx].deratedbw[qgv_point];
+	return i915->display->bw.max[idx].deratedbw[qgv_point];
 }
 
 void intel_bw_init_hw(struct drm_i915_private *dev_priv)
@@ -839,7 +839,7 @@ intel_atomic_get_old_bw_state(struct intel_atomic_state *state)
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_global_state *bw_state;
 
-	bw_state = intel_atomic_get_old_global_obj_state(state, &dev_priv->display.bw.obj);
+	bw_state = intel_atomic_get_old_global_obj_state(state, &dev_priv->display->bw.obj);
 
 	return to_intel_bw_state(bw_state);
 }
@@ -850,7 +850,7 @@ intel_atomic_get_new_bw_state(struct intel_atomic_state *state)
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_global_state *bw_state;
 
-	bw_state = intel_atomic_get_new_global_obj_state(state, &dev_priv->display.bw.obj);
+	bw_state = intel_atomic_get_new_global_obj_state(state, &dev_priv->display->bw.obj);
 
 	return to_intel_bw_state(bw_state);
 }
@@ -861,7 +861,7 @@ intel_atomic_get_bw_state(struct intel_atomic_state *state)
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_global_state *bw_state;
 
-	bw_state = intel_atomic_get_global_obj_state(state, &dev_priv->display.bw.obj);
+	bw_state = intel_atomic_get_global_obj_state(state, &dev_priv->display->bw.obj);
 	if (IS_ERR(bw_state))
 		return ERR_CAST(bw_state);
 
@@ -871,7 +871,7 @@ intel_atomic_get_bw_state(struct intel_atomic_state *state)
 static unsigned int icl_max_bw_qgv_point_mask(struct drm_i915_private *i915,
 					      int num_active_planes)
 {
-	unsigned int num_qgv_points = i915->display.bw.max[0].num_qgv_points;
+	unsigned int num_qgv_points = i915->display->bw.max[0].num_qgv_points;
 	unsigned int max_bw_point = 0;
 	unsigned int max_bw = 0;
 	int i;
@@ -907,7 +907,7 @@ static u16 icl_prepare_qgv_points_mask(struct drm_i915_private *i915,
 
 static unsigned int icl_max_bw_psf_gv_point_mask(struct drm_i915_private *i915)
 {
-	unsigned int num_psf_gv_points = i915->display.bw.max[0].num_psf_gv_points;
+	unsigned int num_psf_gv_points = i915->display->bw.max[0].num_psf_gv_points;
 	unsigned int max_bw_point_mask = 0;
 	unsigned int max_bw = 0;
 	int i;
@@ -948,7 +948,7 @@ static int mtl_find_qgv_points(struct drm_i915_private *i915,
 			       struct intel_bw_state *new_bw_state)
 {
 	unsigned int best_rate = UINT_MAX;
-	unsigned int num_qgv_points = i915->display.bw.max[0].num_qgv_points;
+	unsigned int num_qgv_points = i915->display->bw.max[0].num_qgv_points;
 	unsigned int qgv_peak_bw  = 0;
 	int i;
 	int ret;
@@ -977,17 +977,17 @@ static int mtl_find_qgv_points(struct drm_i915_private *i915,
 			tgl_max_bw_index(i915, num_active_planes, i);
 		unsigned int max_data_rate;
 
-		if (bw_index >= ARRAY_SIZE(i915->display.bw.max))
+		if (bw_index >= ARRAY_SIZE(i915->display->bw.max))
 			continue;
 
-		max_data_rate = i915->display.bw.max[bw_index].deratedbw[i];
+		max_data_rate = i915->display->bw.max[bw_index].deratedbw[i];
 
 		if (max_data_rate < data_rate)
 			continue;
 
 		if (max_data_rate - data_rate < best_rate) {
 			best_rate = max_data_rate - data_rate;
-			qgv_peak_bw = i915->display.bw.max[bw_index].peakbw[i];
+			qgv_peak_bw = i915->display->bw.max[bw_index].peakbw[i];
 		}
 
 		drm_dbg_kms(&i915->drm, "QGV point %d: max bw %d required %d qgv_peak_bw: %d\n",
@@ -1019,8 +1019,8 @@ static int icl_find_qgv_points(struct drm_i915_private *i915,
 			       const struct intel_bw_state *old_bw_state,
 			       struct intel_bw_state *new_bw_state)
 {
-	unsigned int num_psf_gv_points = i915->display.bw.max[0].num_psf_gv_points;
-	unsigned int num_qgv_points = i915->display.bw.max[0].num_qgv_points;
+	unsigned int num_psf_gv_points = i915->display->bw.max[0].num_psf_gv_points;
+	unsigned int num_qgv_points = i915->display->bw.max[0].num_qgv_points;
 	u16 psf_points = 0;
 	u16 qgv_points = 0;
 	int i;
@@ -1485,7 +1485,7 @@ static const struct intel_global_state_funcs intel_bw_funcs = {
 
 int intel_bw_init(struct drm_i915_private *i915)
 {
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 	struct intel_bw_state *state;
 
 	state = kzalloc(sizeof(*state), GFP_KERNEL);
diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/drm/i915/display/intel_connector.c
index e42357bd9e80..57aecb343c76 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.c
+++ b/drivers/gpu/drm/i915/display/intel_connector.c
@@ -268,7 +268,7 @@ intel_attach_force_audio_property(struct drm_connector *connector)
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct drm_property *prop;
 
-	prop = dev_priv->display.properties.force_audio;
+	prop = dev_priv->display->properties.force_audio;
 	if (prop == NULL) {
 		prop = drm_property_create_enum(dev, 0,
 					   "audio",
@@ -277,7 +277,7 @@ intel_attach_force_audio_property(struct drm_connector *connector)
 		if (prop == NULL)
 			return;
 
-		dev_priv->display.properties.force_audio = prop;
+		dev_priv->display->properties.force_audio = prop;
 	}
 	drm_object_attach_property(&connector->base, prop, 0);
 }
@@ -295,7 +295,7 @@ intel_attach_broadcast_rgb_property(struct drm_connector *connector)
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct drm_property *prop;
 
-	prop = dev_priv->display.properties.broadcast_rgb;
+	prop = dev_priv->display->properties.broadcast_rgb;
 	if (prop == NULL) {
 		prop = drm_property_create_enum(dev, DRM_MODE_PROP_ENUM,
 					   "Broadcast RGB",
@@ -304,7 +304,7 @@ intel_attach_broadcast_rgb_property(struct drm_connector *connector)
 		if (prop == NULL)
 			return;
 
-		dev_priv->display.properties.broadcast_rgb = prop;
+		dev_priv->display->properties.broadcast_rgb = prop;
 	}
 
 	drm_object_attach_property(&connector->base, prop, 0);
diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 599ddce96371..cbeab72536bd 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -354,7 +354,7 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 
 	drm_printf(&p, "pre csc lut: %s%d entries, post csc lut: %d entries\n",
 		   pipe_config->pre_csc_lut && pipe_config->pre_csc_lut ==
-		   i915->display.color.glk_linear_degamma_lut ? "(linear) " : "",
+		   i915->display->color.glk_linear_degamma_lut ? "(linear) " : "",
 		   pipe_config->pre_csc_lut ?
 		   drm_color_lut_size(pipe_config->pre_csc_lut) : 0,
 		   pipe_config->post_csc_lut ?
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index f38c998935b9..c68acd965a44 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1542,7 +1542,7 @@ hsw_set_signal_levels(struct intel_encoder *encoder,
 static void _icl_ddi_enable_clock(struct drm_i915_private *i915, i915_reg_t reg,
 				  u32 clk_sel_mask, u32 clk_sel, u32 clk_off)
 {
-	mutex_lock(&i915->display.dpll.lock);
+	mutex_lock(&i915->display->dpll.lock);
 
 	intel_de_rmw(i915, reg, clk_sel_mask, clk_sel);
 
@@ -1552,17 +1552,17 @@ static void _icl_ddi_enable_clock(struct drm_i915_private *i915, i915_reg_t reg,
 	 */
 	intel_de_rmw(i915, reg, clk_off, 0);
 
-	mutex_unlock(&i915->display.dpll.lock);
+	mutex_unlock(&i915->display->dpll.lock);
 }
 
 static void _icl_ddi_disable_clock(struct drm_i915_private *i915, i915_reg_t reg,
 				   u32 clk_off)
 {
-	mutex_lock(&i915->display.dpll.lock);
+	mutex_lock(&i915->display->dpll.lock);
 
 	intel_de_rmw(i915, reg, 0, clk_off);
 
-	mutex_unlock(&i915->display.dpll.lock);
+	mutex_unlock(&i915->display->dpll.lock);
 }
 
 static bool _icl_ddi_is_clock_enabled(struct drm_i915_private *i915, i915_reg_t reg,
@@ -1837,12 +1837,12 @@ static void icl_ddi_tc_enable_clock(struct intel_encoder *encoder,
 	intel_de_write(i915, DDI_CLK_SEL(port),
 		       icl_pll_to_ddi_clk_sel(encoder, crtc_state));
 
-	mutex_lock(&i915->display.dpll.lock);
+	mutex_lock(&i915->display->dpll.lock);
 
 	intel_de_rmw(i915, ICL_DPCLKA_CFGCR0,
 		     ICL_DPCLKA_CFGCR0_TC_CLK_OFF(tc_port), 0);
 
-	mutex_unlock(&i915->display.dpll.lock);
+	mutex_unlock(&i915->display->dpll.lock);
 }
 
 static void icl_ddi_tc_disable_clock(struct intel_encoder *encoder)
@@ -1851,12 +1851,12 @@ static void icl_ddi_tc_disable_clock(struct intel_encoder *encoder)
 	enum tc_port tc_port = intel_encoder_to_tc(encoder);
 	enum port port = encoder->port;
 
-	mutex_lock(&i915->display.dpll.lock);
+	mutex_lock(&i915->display->dpll.lock);
 
 	intel_de_rmw(i915, ICL_DPCLKA_CFGCR0,
 		     0, ICL_DPCLKA_CFGCR0_TC_CLK_OFF(tc_port));
 
-	mutex_unlock(&i915->display.dpll.lock);
+	mutex_unlock(&i915->display->dpll.lock);
 
 	intel_de_write(i915, DDI_CLK_SEL(port), DDI_CLK_SEL_NONE);
 }
@@ -1941,7 +1941,7 @@ static void skl_ddi_enable_clock(struct intel_encoder *encoder,
 	if (drm_WARN_ON(&i915->drm, !pll))
 		return;
 
-	mutex_lock(&i915->display.dpll.lock);
+	mutex_lock(&i915->display->dpll.lock);
 
 	intel_de_rmw(i915, DPLL_CTRL2,
 		     DPLL_CTRL2_DDI_CLK_OFF(port) |
@@ -1949,7 +1949,7 @@ static void skl_ddi_enable_clock(struct intel_encoder *encoder,
 		     DPLL_CTRL2_DDI_CLK_SEL(pll->info->id, port) |
 		     DPLL_CTRL2_DDI_SEL_OVERRIDE(port));
 
-	mutex_unlock(&i915->display.dpll.lock);
+	mutex_unlock(&i915->display->dpll.lock);
 }
 
 static void skl_ddi_disable_clock(struct intel_encoder *encoder)
@@ -1957,12 +1957,12 @@ static void skl_ddi_disable_clock(struct intel_encoder *encoder)
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum port port = encoder->port;
 
-	mutex_lock(&i915->display.dpll.lock);
+	mutex_lock(&i915->display->dpll.lock);
 
 	intel_de_rmw(i915, DPLL_CTRL2,
 		     0, DPLL_CTRL2_DDI_CLK_OFF(port));
 
-	mutex_unlock(&i915->display.dpll.lock);
+	mutex_unlock(&i915->display->dpll.lock);
 }
 
 static bool skl_ddi_is_clock_enabled(struct intel_encoder *encoder)
@@ -3854,7 +3854,7 @@ static void intel_ddi_set_idle_link_train(struct intel_dp *intel_dp,
 static bool intel_ddi_is_audio_enabled(struct drm_i915_private *dev_priv,
 				       enum transcoder cpu_transcoder)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 
 	if (cpu_transcoder == TRANSCODER_EDP)
 		return false;
@@ -4801,7 +4801,7 @@ intel_ddi_hotplug(struct intel_encoder *encoder,
 static bool lpt_digital_port_connected(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	u32 bit = dev_priv->display.hotplug.pch_hpd[encoder->hpd_pin];
+	u32 bit = dev_priv->display->hotplug.pch_hpd[encoder->hpd_pin];
 
 	return intel_de_read(dev_priv, SDEISR) & bit;
 }
@@ -4809,7 +4809,7 @@ static bool lpt_digital_port_connected(struct intel_encoder *encoder)
 static bool hsw_digital_port_connected(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	u32 bit = dev_priv->display.hotplug.hpd[encoder->hpd_pin];
+	u32 bit = dev_priv->display->hotplug.hpd[encoder->hpd_pin];
 
 	return intel_de_read(dev_priv, DEISR) & bit;
 }
@@ -4817,7 +4817,7 @@ static bool hsw_digital_port_connected(struct intel_encoder *encoder)
 static bool bdw_digital_port_connected(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	u32 bit = dev_priv->display.hotplug.hpd[encoder->hpd_pin];
+	u32 bit = dev_priv->display->hotplug.hpd[encoder->hpd_pin];
 
 	return intel_de_read(dev_priv, GEN8_DE_PORT_ISR) & bit;
 }
@@ -5140,7 +5140,7 @@ void intel_ddi_init(struct intel_display *display,
 	}
 
 	if (intel_phy_is_snps(display, phy) &&
-	    dev_priv->display.snps.phy_failed_calibration & BIT(phy)) {
+	    dev_priv->display->snps.phy_failed_calibration & BIT(phy)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "SNPS PHY %c failed to calibrate, proceeding anyway\n",
 			    phy_name(phy));
diff --git a/drivers/gpu/drm/i915/display/intel_display_conversion.c b/drivers/gpu/drm/i915/display/intel_display_conversion.c
index 0578b68404da..151d83fdbe37 100644
--- a/drivers/gpu/drm/i915/display/intel_display_conversion.c
+++ b/drivers/gpu/drm/i915/display/intel_display_conversion.c
@@ -5,7 +5,7 @@
 
 struct intel_display *__i915_to_display(struct drm_i915_private *i915)
 {
-	return &i915->display;
+	return i915->display;
 }
 
 struct intel_display *__drm_to_display(struct drm_device *drm)
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index aa23bb817805..d4b7e6f2a46d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -117,7 +117,7 @@ static void intel_pipe_fault_irq_handler(struct intel_display *display,
 static void
 intel_handle_vblank(struct drm_i915_private *dev_priv, enum pipe pipe)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
 
 	drm_crtc_handle_vblank(&crtc->base);
@@ -132,7 +132,7 @@ intel_handle_vblank(struct drm_i915_private *dev_priv, enum pipe pipe)
 void ilk_update_display_irq(struct drm_i915_private *dev_priv,
 			    u32 interrupt_mask, u32 enabled_irq_mask)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	u32 new_val;
 
 	lockdep_assert_held(&dev_priv->irq_lock);
@@ -169,7 +169,7 @@ void ilk_disable_display_irq(struct drm_i915_private *i915, u32 bits)
 void bdw_update_port_irq(struct drm_i915_private *dev_priv,
 			 u32 interrupt_mask, u32 enabled_irq_mask)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	u32 new_val;
 	u32 old_val;
 
@@ -203,7 +203,7 @@ static void bdw_update_pipe_irq(struct drm_i915_private *dev_priv,
 				enum pipe pipe, u32 interrupt_mask,
 				u32 enabled_irq_mask)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	u32 new_val;
 
 	lockdep_assert_held(&dev_priv->irq_lock);
@@ -213,12 +213,12 @@ static void bdw_update_pipe_irq(struct drm_i915_private *dev_priv,
 	if (drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv)))
 		return;
 
-	new_val = dev_priv->display.irq.de_irq_mask[pipe];
+	new_val = dev_priv->display->irq.de_irq_mask[pipe];
 	new_val &= ~interrupt_mask;
 	new_val |= (~enabled_irq_mask & interrupt_mask);
 
-	if (new_val != dev_priv->display.irq.de_irq_mask[pipe]) {
-		dev_priv->display.irq.de_irq_mask[pipe] = new_val;
+	if (new_val != dev_priv->display->irq.de_irq_mask[pipe]) {
+		dev_priv->display->irq.de_irq_mask[pipe] = new_val;
 		intel_de_write(display, GEN8_DE_PIPE_IMR(pipe), display->irq.de_irq_mask[pipe]);
 		intel_de_posting_read(display, GEN8_DE_PIPE_IMR(pipe));
 	}
@@ -246,7 +246,7 @@ void ibx_display_interrupt_update(struct drm_i915_private *dev_priv,
 				  u32 interrupt_mask,
 				  u32 enabled_irq_mask)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	u32 sdeimr = intel_de_read(display, SDEIMR);
 
 	sdeimr &= ~interrupt_mask;
@@ -321,7 +321,7 @@ u32 i915_pipestat_enable_mask(struct intel_display *display,
 void i915_enable_pipestat(struct drm_i915_private *dev_priv,
 			  enum pipe pipe, u32 status_mask)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	i915_reg_t reg = PIPESTAT(dev_priv, pipe);
 	u32 enable_mask;
 
@@ -332,10 +332,10 @@ void i915_enable_pipestat(struct drm_i915_private *dev_priv,
 	lockdep_assert_held(&dev_priv->irq_lock);
 	drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv));
 
-	if ((dev_priv->display.irq.pipestat_irq_mask[pipe] & status_mask) == status_mask)
+	if ((dev_priv->display->irq.pipestat_irq_mask[pipe] & status_mask) == status_mask)
 		return;
 
-	dev_priv->display.irq.pipestat_irq_mask[pipe] |= status_mask;
+	dev_priv->display->irq.pipestat_irq_mask[pipe] |= status_mask;
 	enable_mask = i915_pipestat_enable_mask(display, pipe);
 
 	intel_de_write(display, reg, enable_mask | status_mask);
@@ -345,7 +345,7 @@ void i915_enable_pipestat(struct drm_i915_private *dev_priv,
 void i915_disable_pipestat(struct drm_i915_private *dev_priv,
 			   enum pipe pipe, u32 status_mask)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	i915_reg_t reg = PIPESTAT(dev_priv, pipe);
 	u32 enable_mask;
 
@@ -356,10 +356,10 @@ void i915_disable_pipestat(struct drm_i915_private *dev_priv,
 	lockdep_assert_held(&dev_priv->irq_lock);
 	drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv));
 
-	if ((dev_priv->display.irq.pipestat_irq_mask[pipe] & status_mask) == 0)
+	if ((dev_priv->display->irq.pipestat_irq_mask[pipe] & status_mask) == 0)
 		return;
 
-	dev_priv->display.irq.pipestat_irq_mask[pipe] &= ~status_mask;
+	dev_priv->display->irq.pipestat_irq_mask[pipe] &= ~status_mask;
 	enable_mask = i915_pipestat_enable_mask(display, pipe);
 
 	intel_de_write(display, reg, enable_mask | status_mask);
@@ -385,7 +385,7 @@ static bool i915_has_legacy_blc_interrupt(struct intel_display *display)
  */
 void i915_enable_asle_pipestat(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 
 	if (!intel_opregion_asle_present(display))
 		return;
@@ -410,7 +410,7 @@ static void display_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 					 u32 crc2, u32 crc3,
 					 u32 crc4)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
 	struct intel_pipe_crc *pipe_crc = &crtc->pipe_crc;
 	u32 crcs[5] = { crc0, crc1, crc2, crc3, crc4 };
@@ -450,7 +450,7 @@ display_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 static void flip_done_handler(struct drm_i915_private *i915,
 			      enum pipe pipe)
 {
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
 
 	spin_lock(&i915->drm.event_lock);
@@ -467,7 +467,7 @@ static void flip_done_handler(struct drm_i915_private *i915,
 static void hsw_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 				     enum pipe pipe)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 
 	display_pipe_crc_irq_handler(dev_priv, pipe,
 				     intel_de_read(display, PIPE_CRC_RES_HSW(pipe)),
@@ -477,7 +477,7 @@ static void hsw_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 static void ivb_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 				     enum pipe pipe)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 
 	display_pipe_crc_irq_handler(dev_priv, pipe,
 				     intel_de_read(display, PIPE_CRC_RES_1_IVB(pipe)),
@@ -490,7 +490,7 @@ static void ivb_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 static void i9xx_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 				      enum pipe pipe)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	u32 res1, res2;
 
 	if (DISPLAY_VER(dev_priv) >= 3)
@@ -512,7 +512,7 @@ static void i9xx_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 
 static void i9xx_pipestat_irq_reset(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	enum pipe pipe;
 
 	for_each_pipe(dev_priv, pipe) {
@@ -520,20 +520,20 @@ static void i9xx_pipestat_irq_reset(struct drm_i915_private *dev_priv)
 			       PIPESTAT(dev_priv, pipe),
 			       PIPESTAT_INT_STATUS_MASK | PIPE_FIFO_UNDERRUN_STATUS);
 
-		dev_priv->display.irq.pipestat_irq_mask[pipe] = 0;
+		dev_priv->display->irq.pipestat_irq_mask[pipe] = 0;
 	}
 }
 
 void i9xx_pipestat_irq_ack(struct drm_i915_private *dev_priv,
 			   u32 iir, u32 pipe_stats[I915_MAX_PIPES])
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	enum pipe pipe;
 
 	spin_lock(&dev_priv->irq_lock);
 
 	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
-	    !dev_priv->display.irq.vlv_display_irqs_enabled) {
+	    !dev_priv->display->irq.vlv_display_irqs_enabled) {
 		spin_unlock(&dev_priv->irq_lock);
 		return;
 	}
@@ -566,7 +566,7 @@ void i9xx_pipestat_irq_ack(struct drm_i915_private *dev_priv,
 			break;
 		}
 		if (iir & iir_bit)
-			status_mask |= dev_priv->display.irq.pipestat_irq_mask[pipe];
+			status_mask |= dev_priv->display->irq.pipestat_irq_mask[pipe];
 
 		if (!status_mask)
 			continue;
@@ -595,7 +595,7 @@ void i9xx_pipestat_irq_ack(struct drm_i915_private *dev_priv,
 void i915_pipestat_irq_handler(struct drm_i915_private *dev_priv,
 			       u32 iir, u32 pipe_stats[I915_MAX_PIPES])
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	bool blc_event = false;
 	enum pipe pipe;
 
@@ -620,7 +620,7 @@ void i915_pipestat_irq_handler(struct drm_i915_private *dev_priv,
 void i965_pipestat_irq_handler(struct drm_i915_private *dev_priv,
 			       u32 iir, u32 pipe_stats[I915_MAX_PIPES])
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	bool blc_event = false;
 	enum pipe pipe;
 
@@ -648,7 +648,7 @@ void i965_pipestat_irq_handler(struct drm_i915_private *dev_priv,
 void valleyview_pipestat_irq_handler(struct drm_i915_private *dev_priv,
 				     u32 pipe_stats[I915_MAX_PIPES])
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	enum pipe pipe;
 
 	for_each_pipe(dev_priv, pipe) {
@@ -671,7 +671,7 @@ void valleyview_pipestat_irq_handler(struct drm_i915_private *dev_priv,
 
 static void ibx_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	enum pipe pipe;
 	u32 hotplug_trigger = pch_iir & SDE_HOTPLUG_MASK;
 
@@ -755,7 +755,7 @@ static const struct pipe_fault_handler ivb_pipe_fault_handlers[] = {
 
 static void ivb_err_int_handler(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	u32 err_int = intel_de_read(display, GEN7_ERR_INT);
 	enum pipe pipe;
 
@@ -792,7 +792,7 @@ static void ivb_err_int_handler(struct drm_i915_private *dev_priv)
 
 static void cpt_serr_int_handler(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	u32 serr_int = intel_de_read(display, SERR_INT);
 	enum pipe pipe;
 
@@ -808,7 +808,7 @@ static void cpt_serr_int_handler(struct drm_i915_private *dev_priv)
 
 static void cpt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	enum pipe pipe;
 	u32 hotplug_trigger = pch_iir & SDE_HOTPLUG_MASK_CPT;
 
@@ -896,7 +896,7 @@ static void ilk_gtt_fault_irq_handler(struct intel_display *display)
 
 void ilk_display_irq_handler(struct drm_i915_private *dev_priv, u32 de_iir)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	enum pipe pipe;
 	u32 hotplug_trigger = de_iir & DE_DP_A_HOTPLUG;
 
@@ -948,7 +948,7 @@ void ilk_display_irq_handler(struct drm_i915_private *dev_priv, u32 de_iir)
 
 void ivb_display_irq_handler(struct drm_i915_private *dev_priv, u32 de_iir)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	enum pipe pipe;
 	u32 hotplug_trigger = de_iir & DE_DP_A_HOTPLUG_IVB;
 
@@ -1042,7 +1042,7 @@ static u32 gen8_de_port_aux_mask(struct drm_i915_private *dev_priv)
 
 static u32 gen8_de_pipe_fault_mask(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 
 	if (DISPLAY_VER(display) >= 14)
 		return MTL_PIPEDMC_ATS_FAULT |
@@ -1197,13 +1197,13 @@ gen8_pipe_fault_handlers(struct intel_display *display)
 
 static void intel_pmdemand_irq_handler(struct drm_i915_private *dev_priv)
 {
-	wake_up_all(&dev_priv->display.pmdemand.waitqueue);
+	wake_up_all(&dev_priv->display->pmdemand.waitqueue);
 }
 
 static void
 gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	bool found = false;
 
 	if (HAS_DBUF_OVERLAP_DETECTION(display)) {
@@ -1268,7 +1268,7 @@ gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 static void gen11_dsi_te_interrupt_handler(struct drm_i915_private *dev_priv,
 					   u32 te_trigger)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	enum pipe pipe = INVALID_PIPE;
 	enum transcoder dsi_trans;
 	enum port port;
@@ -1332,7 +1332,7 @@ static u32 gen8_de_pipe_flip_done_mask(struct drm_i915_private *i915)
 
 static void gen8_read_and_ack_pch_irqs(struct drm_i915_private *i915, u32 *pch_iir, u32 *pica_iir)
 {
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 	u32 pica_ier = 0;
 
 	*pica_iir = 0;
@@ -1361,7 +1361,7 @@ static void gen8_read_and_ack_pch_irqs(struct drm_i915_private *i915, u32 *pch_i
 
 void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	u32 iir;
 	enum pipe pipe;
 
@@ -1464,13 +1464,13 @@ void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 
 		if (HAS_DSB(dev_priv)) {
 			if (iir & GEN12_DSB_INT(INTEL_DSB_0))
-				intel_dsb_irq_handler(&dev_priv->display, pipe, INTEL_DSB_0);
+				intel_dsb_irq_handler(dev_priv->display, pipe, INTEL_DSB_0);
 
 			if (iir & GEN12_DSB_INT(INTEL_DSB_1))
-				intel_dsb_irq_handler(&dev_priv->display, pipe, INTEL_DSB_1);
+				intel_dsb_irq_handler(dev_priv->display, pipe, INTEL_DSB_1);
 
 			if (iir & GEN12_DSB_INT(INTEL_DSB_2))
-				intel_dsb_irq_handler(&dev_priv->display, pipe, INTEL_DSB_2);
+				intel_dsb_irq_handler(dev_priv->display, pipe, INTEL_DSB_2);
 		}
 
 		if (iir & GEN8_PIPE_CDCLK_CRC_DONE)
@@ -1519,7 +1519,7 @@ void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 
 u32 gen11_gu_misc_irq_ack(struct drm_i915_private *i915, const u32 master_ctl)
 {
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 	u32 iir;
 
 	if (!(master_ctl & GEN11_GU_MISC_IRQ))
@@ -1534,7 +1534,7 @@ u32 gen11_gu_misc_irq_ack(struct drm_i915_private *i915, const u32 master_ctl)
 
 void gen11_gu_misc_irq_handler(struct drm_i915_private *i915, const u32 iir)
 {
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 
 	if (iir & GEN11_GU_MISC_GSE)
 		intel_opregion_asle_intr(display);
@@ -1542,7 +1542,7 @@ void gen11_gu_misc_irq_handler(struct drm_i915_private *i915, const u32 iir)
 
 void gen11_display_irq_handler(struct drm_i915_private *i915)
 {
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 	u32 disp_ctl;
 
 	disable_rpm_wakeref_asserts(&i915->runtime_pm);
@@ -1561,7 +1561,7 @@ void gen11_display_irq_handler(struct drm_i915_private *i915)
 
 static void i915gm_irq_cstate_wa_enable(struct drm_i915_private *i915)
 {
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 	lockdep_assert_held(&i915->drm.vblank_time_lock);
 
 	/*
@@ -1570,17 +1570,17 @@ static void i915gm_irq_cstate_wa_enable(struct drm_i915_private *i915)
 	 * the problem. There is a small power cost so we do this
 	 * only when vblank/CRC interrupts are actually enabled.
 	 */
-	if (i915->display.irq.vblank_enabled++ == 0)
+	if (i915->display->irq.vblank_enabled++ == 0)
 		intel_de_write(display, SCPD0,
 			       _MASKED_BIT_ENABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));
 }
 
 static void i915gm_irq_cstate_wa_disable(struct drm_i915_private *i915)
 {
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 	lockdep_assert_held(&i915->drm.vblank_time_lock);
 
-	if (--i915->display.irq.vblank_enabled == 0)
+	if (--i915->display->irq.vblank_enabled == 0)
 		intel_de_write(display, SCPD0,
 			       _MASKED_BIT_DISABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));
 }
@@ -1894,7 +1894,7 @@ void vlv_display_error_irq_handler(struct intel_display *display,
 
 static void _vlv_display_irq_reset(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 
 	if (IS_CHERRYVIEW(dev_priv))
 		intel_de_write(display, DPINVGTT, DPINVGTT_STATUS_MASK_CHV);
@@ -1915,13 +1915,13 @@ static void _vlv_display_irq_reset(struct drm_i915_private *dev_priv)
 
 void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
 {
-	if (dev_priv->display.irq.vlv_display_irqs_enabled)
+	if (dev_priv->display->irq.vlv_display_irqs_enabled)
 		_vlv_display_irq_reset(dev_priv);
 }
 
 void i9xx_display_irq_reset(struct drm_i915_private *i915)
 {
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 
 	if (I915_HAS_HOTPLUG(i915)) {
 		i915_hotplug_interrupt_update(i915, 0xffffffff, 0);
@@ -1939,12 +1939,12 @@ static u32 vlv_error_mask(void)
 
 void vlv_display_irq_postinstall(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	u32 pipestat_mask;
 	u32 enable_mask;
 	enum pipe pipe;
 
-	if (!dev_priv->display.irq.vlv_display_irqs_enabled)
+	if (!dev_priv->display->irq.vlv_display_irqs_enabled)
 		return;
 
 	if (IS_CHERRYVIEW(dev_priv))
@@ -1985,7 +1985,7 @@ void vlv_display_irq_postinstall(struct drm_i915_private *dev_priv)
 
 void gen8_display_irq_reset(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	enum pipe pipe;
 
 	if (!HAS_DISPLAY(dev_priv))
@@ -2005,7 +2005,7 @@ void gen8_display_irq_reset(struct drm_i915_private *dev_priv)
 
 void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	enum pipe pipe;
 	u32 trans_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_D);
@@ -2057,7 +2057,7 @@ void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
 void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
 				     u8 pipe_mask)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	u32 extra_ier = GEN8_PIPE_VBLANK | GEN8_PIPE_FIFO_UNDERRUN |
 		gen8_de_pipe_flip_done_mask(dev_priv);
 	enum pipe pipe;
@@ -2071,8 +2071,8 @@ void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
 
 	for_each_pipe_masked(dev_priv, pipe, pipe_mask)
 		intel_display_irq_regs_init(display, GEN8_DE_PIPE_IRQ_REGS(pipe),
-					    dev_priv->display.irq.de_irq_mask[pipe],
-					    ~dev_priv->display.irq.de_irq_mask[pipe] | extra_ier);
+					    dev_priv->display->irq.de_irq_mask[pipe],
+					    ~dev_priv->display->irq.de_irq_mask[pipe] | extra_ier);
 
 	spin_unlock_irq(&dev_priv->irq_lock);
 }
@@ -2080,7 +2080,7 @@ void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
 void gen8_irq_power_well_pre_disable(struct drm_i915_private *dev_priv,
 				     u8 pipe_mask)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	enum pipe pipe;
 
 	spin_lock_irq(&dev_priv->irq_lock);
@@ -2112,7 +2112,7 @@ void gen8_irq_power_well_pre_disable(struct drm_i915_private *dev_priv,
  */
 static void ibx_irq_postinstall(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	u32 mask;
 
 	if (HAS_PCH_NOP(dev_priv))
@@ -2132,10 +2132,10 @@ void valleyview_enable_display_irqs(struct drm_i915_private *dev_priv)
 {
 	lockdep_assert_held(&dev_priv->irq_lock);
 
-	if (dev_priv->display.irq.vlv_display_irqs_enabled)
+	if (dev_priv->display->irq.vlv_display_irqs_enabled)
 		return;
 
-	dev_priv->display.irq.vlv_display_irqs_enabled = true;
+	dev_priv->display->irq.vlv_display_irqs_enabled = true;
 
 	if (intel_irqs_enabled(dev_priv)) {
 		_vlv_display_irq_reset(dev_priv);
@@ -2147,10 +2147,10 @@ void valleyview_disable_display_irqs(struct drm_i915_private *dev_priv)
 {
 	lockdep_assert_held(&dev_priv->irq_lock);
 
-	if (!dev_priv->display.irq.vlv_display_irqs_enabled)
+	if (!dev_priv->display->irq.vlv_display_irqs_enabled)
 		return;
 
-	dev_priv->display.irq.vlv_display_irqs_enabled = false;
+	dev_priv->display->irq.vlv_display_irqs_enabled = false;
 
 	if (intel_irqs_enabled(dev_priv))
 		_vlv_display_irq_reset(dev_priv);
@@ -2158,7 +2158,7 @@ void valleyview_disable_display_irqs(struct drm_i915_private *dev_priv)
 
 void ilk_de_irq_postinstall(struct drm_i915_private *i915)
 {
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 	u32 display_mask, extra_mask;
 
 	if (DISPLAY_VER(i915) >= 7) {
@@ -2203,7 +2203,7 @@ static void icp_irq_postinstall(struct drm_i915_private *i915);
 
 void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 
 	u32 de_pipe_masked = gen8_de_pipe_fault_mask(dev_priv) |
 		GEN8_PIPE_CDCLK_CRC_DONE;
@@ -2277,12 +2277,12 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 	}
 
 	for_each_pipe(dev_priv, pipe) {
-		dev_priv->display.irq.de_irq_mask[pipe] = ~de_pipe_masked;
+		dev_priv->display->irq.de_irq_mask[pipe] = ~de_pipe_masked;
 
 		if (intel_display_power_is_enabled(display,
 						   POWER_DOMAIN_PIPE(pipe)))
 			intel_display_irq_regs_init(display, GEN8_DE_PIPE_IRQ_REGS(pipe),
-						    dev_priv->display.irq.de_irq_mask[pipe],
+						    dev_priv->display->irq.de_irq_mask[pipe],
 						    de_pipe_enables);
 	}
 
@@ -2303,7 +2303,7 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 
 static void mtp_irq_postinstall(struct drm_i915_private *i915)
 {
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 	u32 sde_mask = SDE_GMBUS_ICP | SDE_PICAINTERRUPT;
 	u32 de_hpd_mask = XELPDP_AUX_TC_MASK;
 	u32 de_hpd_enables = de_hpd_mask | XELPDP_DP_ALT_HOTPLUG_MASK |
@@ -2317,7 +2317,7 @@ static void mtp_irq_postinstall(struct drm_i915_private *i915)
 
 static void icp_irq_postinstall(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	u32 mask = SDE_GMBUS_ICP;
 
 	intel_display_irq_regs_init(display, SDE_IRQ_REGS, ~mask, 0xffffffff);
@@ -2325,7 +2325,7 @@ static void icp_irq_postinstall(struct drm_i915_private *dev_priv)
 
 void gen11_de_irq_postinstall(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 
 	if (!HAS_DISPLAY(dev_priv))
 		return;
@@ -2337,7 +2337,7 @@ void gen11_de_irq_postinstall(struct drm_i915_private *dev_priv)
 
 void dg1_de_irq_postinstall(struct drm_i915_private *i915)
 {
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 
 	if (!HAS_DISPLAY(i915))
 		return;
@@ -2352,6 +2352,6 @@ void intel_display_irq_init(struct drm_i915_private *i915)
 
 	intel_hotplug_irq_init(i915);
 
-	INIT_WORK(&i915->display.irq.vblank_dc_work,
+	INIT_WORK(&i915->display->irq.vblank_dc_work,
 		  intel_display_vblank_dc_work);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 08a30e5aafce..853cb289af58 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -377,7 +377,7 @@ static int i9xx_pll_refclk(const struct intel_crtc_state *crtc_state)
 	const struct i9xx_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.i9xx;
 
 	if ((hw_state->dpll & PLL_REF_INPUT_MASK) == PLLB_REF_INPUT_SPREADSPECTRUMIN)
-		return i915->display.vbt.lvds_ssc_freq;
+		return i915->display->vbt.lvds_ssc_freq;
 	else if (HAS_PCH_SPLIT(i915))
 		return 120000;
 	else if (DISPLAY_VER(i915) != 2)
@@ -397,7 +397,7 @@ void i9xx_dpll_get_hw_state(struct intel_crtc *crtc,
 
 		/* No way to read it out on pipes B and C */
 		if (IS_CHERRYVIEW(dev_priv) && crtc->pipe != PIPE_A)
-			tmp = dev_priv->display.state.chv_dpll_md[crtc->pipe];
+			tmp = dev_priv->display->state.chv_dpll_md[crtc->pipe];
 		else
 			tmp = intel_de_read(dev_priv,
 					    DPLL_MD(dev_priv, crtc->pipe));
@@ -1245,7 +1245,7 @@ static int ilk_fb_cb_factor(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS) &&
-	    ((intel_panel_use_ssc(display) && i915->display.vbt.lvds_ssc_freq == 100000) ||
+	    ((intel_panel_use_ssc(display) && i915->display->vbt.lvds_ssc_freq == 100000) ||
 	     (HAS_PCH_IBX(i915) && intel_is_dual_link_lvds(i915))))
 		return 25;
 
@@ -1377,8 +1377,8 @@ static int ilk_crtc_compute_clock(struct intel_atomic_state *state,
 		if (intel_panel_use_ssc(display)) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "using SSC reference clock of %d kHz\n",
-				    dev_priv->display.vbt.lvds_ssc_freq);
-			refclk = dev_priv->display.vbt.lvds_ssc_freq;
+				    dev_priv->display->vbt.lvds_ssc_freq);
+			refclk = dev_priv->display->vbt.lvds_ssc_freq;
 		}
 
 		if (intel_is_dual_link_lvds(dev_priv)) {
@@ -1547,7 +1547,7 @@ static int g4x_crtc_compute_clock(struct intel_atomic_state *state,
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
 		if (intel_panel_use_ssc(display)) {
-			refclk = dev_priv->display.vbt.lvds_ssc_freq;
+			refclk = dev_priv->display->vbt.lvds_ssc_freq;
 			drm_dbg_kms(&dev_priv->drm,
 				    "using SSC reference clock of %d kHz\n",
 				    refclk);
@@ -1597,7 +1597,7 @@ static int pnv_crtc_compute_clock(struct intel_atomic_state *state,
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
 		if (intel_panel_use_ssc(display)) {
-			refclk = dev_priv->display.vbt.lvds_ssc_freq;
+			refclk = dev_priv->display->vbt.lvds_ssc_freq;
 			drm_dbg_kms(&dev_priv->drm,
 				    "using SSC reference clock of %d kHz\n",
 				    refclk);
@@ -1636,7 +1636,7 @@ static int i9xx_crtc_compute_clock(struct intel_atomic_state *state,
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
 		if (intel_panel_use_ssc(display)) {
-			refclk = dev_priv->display.vbt.lvds_ssc_freq;
+			refclk = dev_priv->display->vbt.lvds_ssc_freq;
 			drm_dbg_kms(&dev_priv->drm,
 				    "using SSC reference clock of %d kHz\n",
 				    refclk);
@@ -1677,7 +1677,7 @@ static int i8xx_crtc_compute_clock(struct intel_atomic_state *state,
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
 		if (intel_panel_use_ssc(display)) {
-			refclk = dev_priv->display.vbt.lvds_ssc_freq;
+			refclk = dev_priv->display->vbt.lvds_ssc_freq;
 			drm_dbg_kms(&dev_priv->drm,
 				    "using SSC reference clock of %d kHz\n",
 				    refclk);
@@ -1764,7 +1764,7 @@ int intel_dpll_crtc_compute_clock(struct intel_atomic_state *state,
 	if (!crtc_state->hw.enable)
 		return 0;
 
-	ret = i915->display.funcs.dpll->crtc_compute_clock(state, crtc);
+	ret = i915->display->funcs.dpll->crtc_compute_clock(state, crtc);
 	if (ret) {
 		drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] Couldn't calculate DPLL settings\n",
 			    crtc->base.base.id, crtc->base.name);
@@ -1788,10 +1788,10 @@ int intel_dpll_crtc_get_shared_dpll(struct intel_atomic_state *state,
 	if (!crtc_state->hw.enable || crtc_state->shared_dpll)
 		return 0;
 
-	if (!i915->display.funcs.dpll->crtc_get_shared_dpll)
+	if (!i915->display->funcs.dpll->crtc_get_shared_dpll)
 		return 0;
 
-	ret = i915->display.funcs.dpll->crtc_get_shared_dpll(state, crtc);
+	ret = i915->display->funcs.dpll->crtc_get_shared_dpll(state, crtc);
 	if (ret) {
 		drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] Couldn't get a shared DPLL\n",
 			    crtc->base.base.id, crtc->base.name);
@@ -1805,25 +1805,25 @@ void
 intel_dpll_init_clock_hook(struct drm_i915_private *dev_priv)
 {
 	if (DISPLAY_VER(dev_priv) >= 14)
-		dev_priv->display.funcs.dpll = &mtl_dpll_funcs;
+		dev_priv->display->funcs.dpll = &mtl_dpll_funcs;
 	else if (IS_DG2(dev_priv))
-		dev_priv->display.funcs.dpll = &dg2_dpll_funcs;
+		dev_priv->display->funcs.dpll = &dg2_dpll_funcs;
 	else if (DISPLAY_VER(dev_priv) >= 9 || HAS_DDI(dev_priv))
-		dev_priv->display.funcs.dpll = &hsw_dpll_funcs;
+		dev_priv->display->funcs.dpll = &hsw_dpll_funcs;
 	else if (HAS_PCH_SPLIT(dev_priv))
-		dev_priv->display.funcs.dpll = &ilk_dpll_funcs;
+		dev_priv->display->funcs.dpll = &ilk_dpll_funcs;
 	else if (IS_CHERRYVIEW(dev_priv))
-		dev_priv->display.funcs.dpll = &chv_dpll_funcs;
+		dev_priv->display->funcs.dpll = &chv_dpll_funcs;
 	else if (IS_VALLEYVIEW(dev_priv))
-		dev_priv->display.funcs.dpll = &vlv_dpll_funcs;
+		dev_priv->display->funcs.dpll = &vlv_dpll_funcs;
 	else if (IS_G4X(dev_priv))
-		dev_priv->display.funcs.dpll = &g4x_dpll_funcs;
+		dev_priv->display->funcs.dpll = &g4x_dpll_funcs;
 	else if (IS_PINEVIEW(dev_priv))
-		dev_priv->display.funcs.dpll = &pnv_dpll_funcs;
+		dev_priv->display->funcs.dpll = &pnv_dpll_funcs;
 	else if (DISPLAY_VER(dev_priv) != 2)
-		dev_priv->display.funcs.dpll = &i9xx_dpll_funcs;
+		dev_priv->display->funcs.dpll = &i9xx_dpll_funcs;
 	else
-		dev_priv->display.funcs.dpll = &i8xx_dpll_funcs;
+		dev_priv->display->funcs.dpll = &i8xx_dpll_funcs;
 }
 
 static bool i9xx_has_pps(struct drm_i915_private *dev_priv)
@@ -2196,7 +2196,7 @@ void chv_enable_pll(const struct intel_crtc_state *crtc_state)
 		intel_de_write(dev_priv, DPLL_MD(dev_priv, PIPE_B),
 			       hw_state->dpll_md);
 		intel_de_write(dev_priv, CBR4_VLV, 0);
-		dev_priv->display.state.chv_dpll_md[pipe] = hw_state->dpll_md;
+		dev_priv->display->state.chv_dpll_md[pipe] = hw_state->dpll_md;
 
 		/*
 		 * DPLLB VGA mode also seems to cause problems.
@@ -2225,7 +2225,7 @@ void chv_enable_pll(const struct intel_crtc_state *crtc_state)
 int vlv_force_pll_on(struct drm_i915_private *dev_priv, enum pipe pipe,
 		     const struct dpll *dpll)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
 	struct intel_crtc_state *crtc_state;
 
@@ -2253,7 +2253,7 @@ int vlv_force_pll_on(struct drm_i915_private *dev_priv, enum pipe pipe,
 
 void vlv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	u32 val;
 
 	/* Make sure the pipe isn't still relying on us */
@@ -2270,7 +2270,7 @@ void vlv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
 
 void chv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	enum dpio_channel ch = vlv_pipe_to_channel(pipe);
 	enum dpio_phy phy = vlv_pipe_to_phy(pipe);
 	u32 val;
diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index 0d8ebe38226e..65b812e2fe97 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -125,7 +125,7 @@ struct i915_vma *intel_dpt_pin_to_ggtt(struct i915_address_space *vm,
 				       unsigned int alignment)
 {
 	struct drm_i915_private *i915 = vm->i915;
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 	struct i915_dpt *dpt = i915_vm_to_dpt(vm);
 	intel_wakeref_t wakeref;
 	struct i915_vma *vma;
diff --git a/drivers/gpu/drm/i915/display/intel_dpt_common.c b/drivers/gpu/drm/i915/display/intel_dpt_common.c
index d2dede0a5229..c59a882e9219 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt_common.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt_common.c
@@ -24,13 +24,13 @@ void intel_dpt_configure(struct intel_crtc *crtc)
 
 			intel_de_rmw(i915, PLANE_CHICKEN(pipe, plane_id),
 				     PLANE_CHICKEN_DISABLE_DPT,
-				     i915->display.params.enable_dpt ? 0 :
+				     i915->display->params.enable_dpt ? 0 :
 				     PLANE_CHICKEN_DISABLE_DPT);
 		}
 	} else if (DISPLAY_VER(i915) == 13) {
 		intel_de_rmw(i915, CHICKEN_MISC_2,
 			     CHICKEN_MISC_DISABLE_DPT,
-			     i915->display.params.enable_dpt ? 0 :
+			     i915->display->params.enable_dpt ? 0 :
 			     CHICKEN_MISC_DISABLE_DPT);
 	}
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 9fc4003d1579..b8261147661e 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -803,7 +803,7 @@ struct intel_dsb *intel_dsb_prepare(struct intel_atomic_state *state,
 	if (!HAS_DSB(i915))
 		return NULL;
 
-	if (!i915->display.params.enable_dsb)
+	if (!i915->display->params.enable_dsb)
 		return NULL;
 
 	dsb = kzalloc(sizeof(*dsb), GFP_KERNEL);
diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c b/drivers/gpu/drm/i915/display/intel_dsi.c
index 403151175a87..8da92b69b23c 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi.c
@@ -123,7 +123,7 @@ intel_dsi_get_panel_orientation(struct intel_connector *connector)
 	if (orientation != DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
 		return orientation;
 
-	orientation = dev_priv->display.vbt.orientation;
+	orientation = dev_priv->display->vbt.orientation;
 	if (orientation != DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
 		return orientation;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index 7b2ffd14ae6e..15738de5116d 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -323,7 +323,7 @@ enum {
 static void icl_native_gpio_set_value(struct drm_i915_private *dev_priv,
 				      int gpio, bool value)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	int index;
 
 	if (drm_WARN_ON(&dev_priv->drm, DISPLAY_VER(dev_priv) == 11 && gpio >= MIPI_RESET_2))
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index c16fb34b737d..2ee8c31ae356 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -418,7 +418,7 @@ static bool intel_dvo_init_dev(struct drm_i915_private *dev_priv,
 			       struct intel_dvo *intel_dvo,
 			       const struct intel_dvo_device *dvo)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct i2c_adapter *i2c;
 	u32 dpll[I915_MAX_PIPES];
 	enum pipe pipe;
@@ -491,7 +491,7 @@ static bool intel_dvo_probe(struct drm_i915_private *i915,
 
 void intel_dvo_init(struct drm_i915_private *i915)
 {
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 	struct intel_connector *connector;
 	struct intel_encoder *encoder;
 	struct intel_dvo *intel_dvo;
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index adc19d5607de..f03055236df0 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -67,7 +67,7 @@ static struct intel_fbdev *to_intel_fbdev(struct drm_fb_helper *fb_helper)
 {
 	struct drm_i915_private *i915 = to_i915(fb_helper->client.dev);
 
-	return i915->display.fbdev.fbdev;
+	return i915->display->fbdev.fbdev;
 }
 
 static struct intel_frontbuffer *to_frontbuffer(struct intel_fbdev *ifbdev)
@@ -492,7 +492,7 @@ void intel_fbdev_setup(struct drm_i915_private *i915)
 	if (!ifbdev)
 		return;
 
-	i915->display.fbdev.fbdev = ifbdev;
+	i915->display->fbdev.fbdev = ifbdev;
 	if (intel_fbdev_init_bios(dev, ifbdev))
 		preferred_bpp = intel_fbdev_color_mode(ifbdev->fb->base.format);
 	if (!preferred_bpp)
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index ba2f88ca6117..2d61555ef331 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -86,12 +86,12 @@ static void frontbuffer_flush(struct drm_i915_private *i915,
 			      unsigned int frontbuffer_bits,
 			      enum fb_op_origin origin)
 {
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 
 	/* Delay flushing when rings are still busy.*/
-	spin_lock(&i915->display.fb_tracking.lock);
-	frontbuffer_bits &= ~i915->display.fb_tracking.busy_bits;
-	spin_unlock(&i915->display.fb_tracking.lock);
+	spin_lock(&i915->display->fb_tracking.lock);
+	frontbuffer_bits &= ~i915->display->fb_tracking.busy_bits;
+	spin_unlock(&i915->display->fb_tracking.lock);
 
 	if (!frontbuffer_bits)
 		return;
@@ -120,11 +120,11 @@ static void frontbuffer_flush(struct drm_i915_private *i915,
 void intel_frontbuffer_flip_prepare(struct drm_i915_private *i915,
 				    unsigned frontbuffer_bits)
 {
-	spin_lock(&i915->display.fb_tracking.lock);
-	i915->display.fb_tracking.flip_bits |= frontbuffer_bits;
+	spin_lock(&i915->display->fb_tracking.lock);
+	i915->display->fb_tracking.flip_bits |= frontbuffer_bits;
 	/* Remove stale busy bits due to the old buffer. */
-	i915->display.fb_tracking.busy_bits &= ~frontbuffer_bits;
-	spin_unlock(&i915->display.fb_tracking.lock);
+	i915->display->fb_tracking.busy_bits &= ~frontbuffer_bits;
+	spin_unlock(&i915->display->fb_tracking.lock);
 }
 
 /**
@@ -140,11 +140,11 @@ void intel_frontbuffer_flip_prepare(struct drm_i915_private *i915,
 void intel_frontbuffer_flip_complete(struct drm_i915_private *i915,
 				     unsigned frontbuffer_bits)
 {
-	spin_lock(&i915->display.fb_tracking.lock);
+	spin_lock(&i915->display->fb_tracking.lock);
 	/* Mask any cancelled flips. */
-	frontbuffer_bits &= i915->display.fb_tracking.flip_bits;
-	i915->display.fb_tracking.flip_bits &= ~frontbuffer_bits;
-	spin_unlock(&i915->display.fb_tracking.lock);
+	frontbuffer_bits &= i915->display->fb_tracking.flip_bits;
+	i915->display->fb_tracking.flip_bits &= ~frontbuffer_bits;
+	spin_unlock(&i915->display->fb_tracking.lock);
 
 	if (frontbuffer_bits)
 		frontbuffer_flush(i915, frontbuffer_bits, ORIGIN_FLIP);
@@ -164,10 +164,10 @@ void intel_frontbuffer_flip_complete(struct drm_i915_private *i915,
 void intel_frontbuffer_flip(struct drm_i915_private *i915,
 			    unsigned frontbuffer_bits)
 {
-	spin_lock(&i915->display.fb_tracking.lock);
+	spin_lock(&i915->display->fb_tracking.lock);
 	/* Remove stale busy bits due to the old buffer. */
-	i915->display.fb_tracking.busy_bits &= ~frontbuffer_bits;
-	spin_unlock(&i915->display.fb_tracking.lock);
+	i915->display->fb_tracking.busy_bits &= ~frontbuffer_bits;
+	spin_unlock(&i915->display->fb_tracking.lock);
 
 	frontbuffer_flush(i915, frontbuffer_bits, ORIGIN_FLIP);
 }
@@ -300,9 +300,9 @@ intel_frontbuffer_get(struct drm_gem_object *obj)
 			 I915_ACTIVE_RETIRE_SLEEPS);
 	INIT_WORK(&front->flush_work, intel_frontbuffer_flush_work);
 
-	spin_lock(&i915->display.fb_tracking.lock);
+	spin_lock(&i915->display->fb_tracking.lock);
 	cur = intel_bo_set_frontbuffer(obj, front);
-	spin_unlock(&i915->display.fb_tracking.lock);
+	spin_unlock(&i915->display->fb_tracking.lock);
 	if (cur != front)
 		kfree(front);
 	return cur;
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
index 55965844d829..43dcfafb0fd6 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
@@ -235,7 +235,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
 
 	msg_size_in = msg_in_len + sizeof(*header_in);
 	msg_size_out = msg_out_len + sizeof(*header_out);
-	hdcp_message = i915->display.hdcp.hdcp_message;
+	hdcp_message = i915->display->hdcp.hdcp_message;
 	header_in = hdcp_message->hdcp_cmd_in;
 	header_out = hdcp_message->hdcp_cmd_out;
 	addr_in = i915_ggtt_offset(hdcp_message->vma);
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 0467a7cd5256..0d759a1a5eba 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -127,13 +127,13 @@ intel_connector_hpd_pin(struct intel_connector *connector)
  * responsible for further action.
  *
  * The number of IRQs that are allowed within @HPD_STORM_DETECT_PERIOD is
- * stored in @dev_priv->display.hotplug.hpd_storm_threshold which defaults to
+ * stored in @dev_priv->display->hotplug.hpd_storm_threshold which defaults to
  * @HPD_STORM_DEFAULT_THRESHOLD. Long IRQs count as +10 to this threshold, and
  * short IRQs count as +1. If this threshold is exceeded, it's considered an
  * IRQ storm and the IRQ state is set to @HPD_MARK_DISABLED.
  *
  * By default, most systems will only count long IRQs towards
- * &dev_priv->display.hotplug.hpd_storm_threshold. However, some older systems also
+ * &dev_priv->display->hotplug.hpd_storm_threshold. However, some older systems also
  * suffer from short IRQ storms and must also track these. Because short IRQ
  * storms are naturally caused by sideband interactions with DP MST devices,
  * short IRQ detection is only enabled for systems without DP MST support.
@@ -148,7 +148,7 @@ intel_connector_hpd_pin(struct intel_connector *connector)
 static bool intel_hpd_irq_storm_detect(struct drm_i915_private *dev_priv,
 				       enum hpd_pin pin, bool long_hpd)
 {
-	struct intel_hotplug *hpd = &dev_priv->display.hotplug;
+	struct intel_hotplug *hpd = &dev_priv->display->hotplug;
 	unsigned long start = hpd->stats[pin].last_jiffies;
 	unsigned long end = start + msecs_to_jiffies(HPD_STORM_DETECT_PERIOD);
 	const int increment = long_hpd ? 10 : 1;
@@ -156,7 +156,7 @@ static bool intel_hpd_irq_storm_detect(struct drm_i915_private *dev_priv,
 	bool storm = false;
 
 	if (!threshold ||
-	    (!long_hpd && !dev_priv->display.hotplug.hpd_short_storm_enabled))
+	    (!long_hpd && !dev_priv->display->hotplug.hpd_short_storm_enabled))
 		return false;
 
 	if (!time_in_range(jiffies, start, end)) {
@@ -184,7 +184,7 @@ static bool detection_work_enabled(struct drm_i915_private *i915)
 {
 	lockdep_assert_held(&i915->irq_lock);
 
-	return i915->display.hotplug.detection_work_enabled;
+	return i915->display->hotplug.detection_work_enabled;
 }
 
 static bool
@@ -238,7 +238,7 @@ intel_hpd_irq_storm_switch_to_polling(struct drm_i915_private *dev_priv)
 
 		pin = intel_connector_hpd_pin(connector);
 		if (pin == HPD_NONE ||
-		    dev_priv->display.hotplug.stats[pin].state != HPD_MARK_DISABLED)
+		    dev_priv->display->hotplug.stats[pin].state != HPD_MARK_DISABLED)
 			continue;
 
 		drm_info(&dev_priv->drm,
@@ -246,7 +246,7 @@ intel_hpd_irq_storm_switch_to_polling(struct drm_i915_private *dev_priv)
 			 "switching from hotplug detection to polling\n",
 			 connector->base.name);
 
-		dev_priv->display.hotplug.stats[pin].state = HPD_DISABLED;
+		dev_priv->display->hotplug.stats[pin].state = HPD_DISABLED;
 		connector->base.polled = DRM_CONNECTOR_POLL_CONNECT |
 			DRM_CONNECTOR_POLL_DISCONNECT;
 		hpd_disabled = true;
@@ -257,7 +257,7 @@ intel_hpd_irq_storm_switch_to_polling(struct drm_i915_private *dev_priv)
 	if (hpd_disabled) {
 		drm_kms_helper_poll_reschedule(&dev_priv->drm);
 		mod_delayed_detection_work(dev_priv,
-					   &dev_priv->display.hotplug.reenable_work,
+					   &dev_priv->display->hotplug.reenable_work,
 					   msecs_to_jiffies(HPD_STORM_REENABLE_DELAY));
 	}
 }
@@ -280,7 +280,7 @@ static void intel_hpd_irq_storm_reenable_work(struct work_struct *work)
 	for_each_intel_connector_iter(connector, &conn_iter) {
 		pin = intel_connector_hpd_pin(connector);
 		if (pin == HPD_NONE ||
-		    dev_priv->display.hotplug.stats[pin].state != HPD_DISABLED)
+		    dev_priv->display->hotplug.stats[pin].state != HPD_DISABLED)
 			continue;
 
 		if (connector->base.polled != connector->polled)
@@ -292,8 +292,8 @@ static void intel_hpd_irq_storm_reenable_work(struct work_struct *work)
 	drm_connector_list_iter_end(&conn_iter);
 
 	for_each_hpd_pin(pin) {
-		if (dev_priv->display.hotplug.stats[pin].state == HPD_DISABLED)
-			dev_priv->display.hotplug.stats[pin].state = HPD_ENABLED;
+		if (dev_priv->display->hotplug.stats[pin].state == HPD_DISABLED)
+			dev_priv->display->hotplug.stats[pin].state = HPD_ENABLED;
 	}
 
 	intel_hpd_irq_setup(dev_priv);
@@ -433,9 +433,9 @@ static void i915_digport_work_func(struct work_struct *work)
 
 	if (old_bits) {
 		spin_lock_irq(&dev_priv->irq_lock);
-		dev_priv->display.hotplug.event_bits |= old_bits;
+		dev_priv->display->hotplug.event_bits |= old_bits;
 		queue_delayed_detection_work(dev_priv,
-					     &dev_priv->display.hotplug.hotplug_work, 0);
+					     &dev_priv->display->hotplug.hotplug_work, 0);
 		spin_unlock_irq(&dev_priv->irq_lock);
 	}
 }
@@ -498,7 +498,7 @@ static void i915_hotplug_work_func(struct work_struct *work)
 	spin_unlock_irq(&dev_priv->irq_lock);
 
 	/* Skip calling encode hotplug handlers if ignore long HPD set*/
-	if (dev_priv->display.hotplug.ignore_long_hpd) {
+	if (dev_priv->display->hotplug.ignore_long_hpd) {
 		drm_dbg_kms(&dev_priv->drm, "Ignore HPD flag on - skip encoder hotplug handlers\n");
 		mutex_unlock(&dev_priv->drm.mode_config.mutex);
 		return;
@@ -560,10 +560,10 @@ static void i915_hotplug_work_func(struct work_struct *work)
 	retry &= ~changed;
 	if (retry) {
 		spin_lock_irq(&dev_priv->irq_lock);
-		dev_priv->display.hotplug.retry_bits |= retry;
+		dev_priv->display->hotplug.retry_bits |= retry;
 
 		mod_delayed_detection_work(dev_priv,
-					   &dev_priv->display.hotplug.hotplug_work,
+					   &dev_priv->display->hotplug.hotplug_work,
 					   msecs_to_jiffies(HPD_RETRY_DELAY));
 		spin_unlock_irq(&dev_priv->irq_lock);
 	}
@@ -630,10 +630,10 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
 
 		if (long_hpd) {
 			long_hpd_pulse_mask |= BIT(pin);
-			dev_priv->display.hotplug.long_hpd_pin_mask |= BIT(pin);
+			dev_priv->display->hotplug.long_hpd_pin_mask |= BIT(pin);
 		} else {
 			short_hpd_pulse_mask |= BIT(pin);
-			dev_priv->display.hotplug.short_hpd_pin_mask |= BIT(pin);
+			dev_priv->display->hotplug.short_hpd_pin_mask |= BIT(pin);
 		}
 	}
 
@@ -644,7 +644,7 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
 		if (!(BIT(pin) & pin_mask))
 			continue;
 
-		if (dev_priv->display.hotplug.stats[pin].state == HPD_DISABLED) {
+		if (dev_priv->display->hotplug.stats[pin].state == HPD_DISABLED) {
 			/*
 			 * On GMCH platforms the interrupt mask bits only
 			 * prevent irq generation, not the setting of the
@@ -657,7 +657,7 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
 			continue;
 		}
 
-		if (dev_priv->display.hotplug.stats[pin].state != HPD_ENABLED)
+		if (dev_priv->display->hotplug.stats[pin].state != HPD_ENABLED)
 			continue;
 
 		/*
@@ -668,7 +668,7 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
 		if (((short_hpd_pulse_mask | long_hpd_pulse_mask) & BIT(pin))) {
 			long_hpd = long_hpd_pulse_mask & BIT(pin);
 		} else {
-			dev_priv->display.hotplug.event_bits |= BIT(pin);
+			dev_priv->display->hotplug.event_bits |= BIT(pin);
 			long_hpd = true;
 
 			if (!hpd_pin_is_blocked(display, pin))
@@ -676,7 +676,7 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
 		}
 
 		if (intel_hpd_irq_storm_detect(dev_priv, pin, long_hpd)) {
-			dev_priv->display.hotplug.event_bits &= ~BIT(pin);
+			dev_priv->display->hotplug.event_bits &= ~BIT(pin);
 			storm_detected = true;
 			queue_hp = true;
 		}
@@ -696,10 +696,10 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
 	 * deadlock.
 	 */
 	if (queue_dig)
-		queue_work(dev_priv->display.hotplug.dp_wq, &dev_priv->display.hotplug.dig_port_work);
+		queue_work(dev_priv->display->hotplug.dp_wq, &dev_priv->display->hotplug.dig_port_work);
 	if (queue_hp)
 		queue_delayed_detection_work(dev_priv,
-					     &dev_priv->display.hotplug.hotplug_work, 0);
+					     &dev_priv->display->hotplug.hotplug_work, 0);
 
 	spin_unlock(&dev_priv->irq_lock);
 }
@@ -726,8 +726,8 @@ void intel_hpd_init(struct drm_i915_private *dev_priv)
 		return;
 
 	for_each_hpd_pin(i) {
-		dev_priv->display.hotplug.stats[i].count = 0;
-		dev_priv->display.hotplug.stats[i].state = HPD_ENABLED;
+		dev_priv->display->hotplug.stats[i].count = 0;
+		dev_priv->display->hotplug.stats[i].state = HPD_ENABLED;
 	}
 
 	/*
@@ -794,7 +794,7 @@ static void i915_hpd_poll_init_work(struct work_struct *work)
 
 	mutex_lock(&dev_priv->drm.mode_config.mutex);
 
-	enabled = READ_ONCE(dev_priv->display.hotplug.poll_enabled);
+	enabled = READ_ONCE(dev_priv->display->hotplug.poll_enabled);
 	/*
 	 * Prevent taking a power reference from this sequence of
 	 * i915_hpd_poll_init_work() -> drm_helper_hpd_irq_event() ->
@@ -805,8 +805,8 @@ static void i915_hpd_poll_init_work(struct work_struct *work)
 		wakeref = intel_display_power_get(display,
 						  POWER_DOMAIN_DISPLAY_CORE);
 		drm_WARN_ON(&dev_priv->drm,
-			    READ_ONCE(dev_priv->display.hotplug.poll_enabled));
-		cancel_work(&dev_priv->display.hotplug.poll_init_work);
+			    READ_ONCE(dev_priv->display->hotplug.poll_enabled));
+		cancel_work(&dev_priv->display->hotplug.poll_init_work);
 	}
 
 	spin_lock_irq(&dev_priv->irq_lock);
@@ -819,7 +819,7 @@ static void i915_hpd_poll_init_work(struct work_struct *work)
 		if (pin == HPD_NONE)
 			continue;
 
-		if (dev_priv->display.hotplug.stats[pin].state == HPD_DISABLED)
+		if (dev_priv->display->hotplug.stats[pin].state == HPD_DISABLED)
 			continue;
 
 		connector->base.polled = connector->polled;
@@ -868,13 +868,13 @@ static void i915_hpd_poll_init_work(struct work_struct *work)
  */
 void intel_hpd_poll_enable(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 
 	if (!HAS_DISPLAY(dev_priv) ||
 	    !intel_display_device_enabled(display))
 		return;
 
-	WRITE_ONCE(dev_priv->display.hotplug.poll_enabled, true);
+	WRITE_ONCE(dev_priv->display->hotplug.poll_enabled, true);
 
 	/*
 	 * We might already be holding dev->mode_config.mutex, so do this in a
@@ -884,7 +884,7 @@ void intel_hpd_poll_enable(struct drm_i915_private *dev_priv)
 	 */
 	spin_lock_irq(&dev_priv->irq_lock);
 	queue_detection_work(dev_priv,
-			     &dev_priv->display.hotplug.poll_init_work);
+			     &dev_priv->display->hotplug.poll_init_work);
 	spin_unlock_irq(&dev_priv->irq_lock);
 }
 
@@ -912,11 +912,11 @@ void intel_hpd_poll_disable(struct drm_i915_private *dev_priv)
 	if (!HAS_DISPLAY(dev_priv))
 		return;
 
-	WRITE_ONCE(dev_priv->display.hotplug.poll_enabled, false);
+	WRITE_ONCE(dev_priv->display->hotplug.poll_enabled, false);
 
 	spin_lock_irq(&dev_priv->irq_lock);
 	queue_detection_work(dev_priv,
-			     &dev_priv->display.hotplug.poll_init_work);
+			     &dev_priv->display->hotplug.poll_init_work);
 	spin_unlock_irq(&dev_priv->irq_lock);
 }
 
@@ -936,32 +936,32 @@ void intel_hpd_poll_fini(struct drm_i915_private *i915)
 
 void intel_hpd_init_early(struct drm_i915_private *i915)
 {
-	INIT_DELAYED_WORK(&i915->display.hotplug.hotplug_work,
+	INIT_DELAYED_WORK(&i915->display->hotplug.hotplug_work,
 			  i915_hotplug_work_func);
-	INIT_WORK(&i915->display.hotplug.dig_port_work, i915_digport_work_func);
-	INIT_WORK(&i915->display.hotplug.poll_init_work, i915_hpd_poll_init_work);
-	INIT_DELAYED_WORK(&i915->display.hotplug.reenable_work,
+	INIT_WORK(&i915->display->hotplug.dig_port_work, i915_digport_work_func);
+	INIT_WORK(&i915->display->hotplug.poll_init_work, i915_hpd_poll_init_work);
+	INIT_DELAYED_WORK(&i915->display->hotplug.reenable_work,
 			  intel_hpd_irq_storm_reenable_work);
 
-	i915->display.hotplug.hpd_storm_threshold = HPD_STORM_DEFAULT_THRESHOLD;
+	i915->display->hotplug.hpd_storm_threshold = HPD_STORM_DEFAULT_THRESHOLD;
 	/* If we have MST support, we want to avoid doing short HPD IRQ storm
 	 * detection, as short HPD storms will occur as a natural part of
 	 * sideband messaging with MST.
 	 * On older platforms however, IRQ storms can occur with both long and
 	 * short pulses, as seen on some G4x systems.
 	 */
-	i915->display.hotplug.hpd_short_storm_enabled = !HAS_DP_MST(i915);
+	i915->display->hotplug.hpd_short_storm_enabled = !HAS_DP_MST(i915);
 }
 
 static bool cancel_all_detection_work(struct drm_i915_private *i915)
 {
 	bool was_pending = false;
 
-	if (cancel_delayed_work_sync(&i915->display.hotplug.hotplug_work))
+	if (cancel_delayed_work_sync(&i915->display->hotplug.hotplug_work))
 		was_pending = true;
-	if (cancel_work_sync(&i915->display.hotplug.poll_init_work))
+	if (cancel_work_sync(&i915->display->hotplug.poll_init_work))
 		was_pending = true;
-	if (cancel_delayed_work_sync(&i915->display.hotplug.reenable_work))
+	if (cancel_delayed_work_sync(&i915->display->hotplug.reenable_work))
 		was_pending = true;
 
 	return was_pending;
@@ -978,14 +978,14 @@ void intel_hpd_cancel_work(struct drm_i915_private *dev_priv)
 
 	drm_WARN_ON(display->drm, get_blocked_hpd_pin_mask(display));
 
-	dev_priv->display.hotplug.long_hpd_pin_mask = 0;
-	dev_priv->display.hotplug.short_hpd_pin_mask = 0;
-	dev_priv->display.hotplug.event_bits = 0;
-	dev_priv->display.hotplug.retry_bits = 0;
+	dev_priv->display->hotplug.long_hpd_pin_mask = 0;
+	dev_priv->display->hotplug.short_hpd_pin_mask = 0;
+	dev_priv->display->hotplug.event_bits = 0;
+	dev_priv->display->hotplug.retry_bits = 0;
 
 	spin_unlock_irq(&dev_priv->irq_lock);
 
-	cancel_work_sync(&dev_priv->display.hotplug.dig_port_work);
+	cancel_work_sync(&dev_priv->display->hotplug.dig_port_work);
 
 	/*
 	 * All other work triggered by hotplug events should be canceled by
@@ -1010,7 +1010,7 @@ static void queue_work_for_missed_irqs(struct drm_i915_private *i915)
 		queue_hp_work = true;
 
 	for_each_hpd_pin(pin) {
-		switch (i915->display.hotplug.stats[pin].state) {
+		switch (i915->display->hotplug.stats[pin].state) {
 		case HPD_MARK_DISABLED:
 			queue_hp_work = true;
 			break;
@@ -1018,7 +1018,7 @@ static void queue_work_for_missed_irqs(struct drm_i915_private *i915)
 		case HPD_ENABLED:
 			break;
 		default:
-			MISSING_CASE(i915->display.hotplug.stats[pin].state);
+			MISSING_CASE(i915->display->hotplug.stats[pin].state);
 		}
 	}
 
@@ -1026,7 +1026,7 @@ static void queue_work_for_missed_irqs(struct drm_i915_private *i915)
 		queue_work(hotplug->dp_wq, &hotplug->dig_port_work);
 
 	if (queue_hp_work)
-		queue_delayed_detection_work(i915, &i915->display.hotplug.hotplug_work, 0);
+		queue_delayed_detection_work(i915, &i915->display->hotplug.hotplug_work, 0);
 }
 
 static bool block_hpd_pin(struct intel_display *display, enum hpd_pin pin)
@@ -1158,7 +1158,7 @@ void intel_hpd_clear_and_unblock(struct intel_encoder *encoder)
 void intel_hpd_enable_detection_work(struct drm_i915_private *i915)
 {
 	spin_lock_irq(&i915->irq_lock);
-	i915->display.hotplug.detection_work_enabled = true;
+	i915->display->hotplug.detection_work_enabled = true;
 	queue_work_for_missed_irqs(i915);
 	spin_unlock_irq(&i915->irq_lock);
 }
@@ -1166,7 +1166,7 @@ void intel_hpd_enable_detection_work(struct drm_i915_private *i915)
 void intel_hpd_disable_detection_work(struct drm_i915_private *i915)
 {
 	spin_lock_irq(&i915->irq_lock);
-	i915->display.hotplug.detection_work_enabled = false;
+	i915->display->hotplug.detection_work_enabled = false;
 	spin_unlock_irq(&i915->irq_lock);
 
 	cancel_all_detection_work(i915);
@@ -1178,7 +1178,7 @@ bool intel_hpd_schedule_detection(struct drm_i915_private *i915)
 	bool ret;
 
 	spin_lock_irqsave(&i915->irq_lock, flags);
-	ret = queue_delayed_detection_work(i915, &i915->display.hotplug.hotplug_work, 0);
+	ret = queue_delayed_detection_work(i915, &i915->display->hotplug.hotplug_work, 0);
 	spin_unlock_irqrestore(&i915->irq_lock, flags);
 
 	return ret;
@@ -1187,14 +1187,14 @@ bool intel_hpd_schedule_detection(struct drm_i915_private *i915)
 static int i915_hpd_storm_ctl_show(struct seq_file *m, void *data)
 {
 	struct drm_i915_private *dev_priv = m->private;
-	struct intel_hotplug *hotplug = &dev_priv->display.hotplug;
+	struct intel_hotplug *hotplug = &dev_priv->display->hotplug;
 
 	/* Synchronize with everything first in case there's been an HPD
 	 * storm, but we haven't finished handling it in the kernel yet
 	 */
 	intel_synchronize_irq(dev_priv);
-	flush_work(&dev_priv->display.hotplug.dig_port_work);
-	flush_delayed_work(&dev_priv->display.hotplug.hotplug_work);
+	flush_work(&dev_priv->display->hotplug.dig_port_work);
+	flush_delayed_work(&dev_priv->display->hotplug.hotplug_work);
 
 	seq_printf(m, "Threshold: %d\n", hotplug->hpd_storm_threshold);
 	seq_printf(m, "Detected: %s\n",
@@ -1209,7 +1209,7 @@ static ssize_t i915_hpd_storm_ctl_write(struct file *file,
 {
 	struct seq_file *m = file->private_data;
 	struct drm_i915_private *dev_priv = m->private;
-	struct intel_hotplug *hotplug = &dev_priv->display.hotplug;
+	struct intel_hotplug *hotplug = &dev_priv->display->hotplug;
 	unsigned int new_threshold;
 	int i;
 	char *newline;
@@ -1248,7 +1248,7 @@ static ssize_t i915_hpd_storm_ctl_write(struct file *file,
 	spin_unlock_irq(&dev_priv->irq_lock);
 
 	/* Re-enable hpd immediately if we were in an irq storm */
-	flush_delayed_work(&dev_priv->display.hotplug.reenable_work);
+	flush_delayed_work(&dev_priv->display->hotplug.reenable_work);
 
 	return len;
 }
@@ -1272,7 +1272,7 @@ static int i915_hpd_short_storm_ctl_show(struct seq_file *m, void *data)
 	struct drm_i915_private *dev_priv = m->private;
 
 	seq_printf(m, "Enabled: %s\n",
-		   str_yes_no(dev_priv->display.hotplug.hpd_short_storm_enabled));
+		   str_yes_no(dev_priv->display->hotplug.hpd_short_storm_enabled));
 
 	return 0;
 }
@@ -1290,7 +1290,7 @@ static ssize_t i915_hpd_short_storm_ctl_write(struct file *file,
 {
 	struct seq_file *m = file->private_data;
 	struct drm_i915_private *dev_priv = m->private;
-	struct intel_hotplug *hotplug = &dev_priv->display.hotplug;
+	struct intel_hotplug *hotplug = &dev_priv->display->hotplug;
 	char *newline;
 	char tmp[16];
 	int i;
@@ -1326,7 +1326,7 @@ static ssize_t i915_hpd_short_storm_ctl_write(struct file *file,
 	spin_unlock_irq(&dev_priv->irq_lock);
 
 	/* Re-enable hpd immediately if we were in an irq storm */
-	flush_delayed_work(&dev_priv->display.hotplug.reenable_work);
+	flush_delayed_work(&dev_priv->display->hotplug.reenable_work);
 
 	return len;
 }
@@ -1349,5 +1349,5 @@ void intel_hpd_debugfs_register(struct drm_i915_private *i915)
 	debugfs_create_file("i915_hpd_short_storm_ctl", 0644, minor->debugfs_root,
 			    i915, &i915_hpd_short_storm_ctl_fops);
 	debugfs_create_bool("i915_ignore_long_hpd", 0644, minor->debugfs_root,
-			    &i915->display.hotplug.ignore_long_hpd);
+			    &i915->display->hotplug.ignore_long_hpd);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
index 2137ac7b882a..76ba68425c1d 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
@@ -133,7 +133,7 @@ static const u32 hpd_mtp[HPD_NUM_PINS] = {
 
 static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
 {
-	struct intel_hotplug *hpd = &dev_priv->display.hotplug;
+	struct intel_hotplug *hpd = &dev_priv->display->hotplug;
 
 	if (HAS_GMCH(dev_priv)) {
 		if (IS_G4X(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
@@ -371,7 +371,7 @@ static u32 intel_hpd_enabled_irqs(struct drm_i915_private *dev_priv,
 	u32 enabled_irqs = 0;
 
 	for_each_intel_encoder(&dev_priv->drm, encoder)
-		if (dev_priv->display.hotplug.stats[encoder->hpd_pin].state == HPD_ENABLED)
+		if (dev_priv->display->hotplug.stats[encoder->hpd_pin].state == HPD_ENABLED)
 			enabled_irqs |= hpd[encoder->hpd_pin];
 
 	return enabled_irqs;
@@ -456,7 +456,7 @@ u32 i9xx_hpd_irq_ack(struct drm_i915_private *dev_priv)
 
 void i9xx_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 hotplug_status)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	u32 pin_mask = 0, long_mask = 0;
 	u32 hotplug_trigger;
 
@@ -469,7 +469,7 @@ void i9xx_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 hotplug_status)
 	if (hotplug_trigger) {
 		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 				   hotplug_trigger, hotplug_trigger,
-				   dev_priv->display.hotplug.hpd,
+				   dev_priv->display->hotplug.hpd,
 				   i9xx_port_hotplug_long_detect);
 
 		intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
@@ -506,7 +506,7 @@ void ibx_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 hotplug_trigger)
 
 	intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 			   hotplug_trigger, dig_hotplug_reg,
-			   dev_priv->display.hotplug.pch_hpd,
+			   dev_priv->display->hotplug.pch_hpd,
 			   pch_port_hotplug_long_detect);
 
 	intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
@@ -514,7 +514,7 @@ void ibx_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 hotplug_trigger)
 
 void xelpdp_pica_irq_handler(struct drm_i915_private *i915, u32 iir)
 {
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 	enum hpd_pin pin;
 	u32 hotplug_trigger = iir & (XELPDP_DP_ALT_HOTPLUG_MASK | XELPDP_TBT_HOTPLUG_MASK);
 	u32 trigger_aux = iir & XELPDP_AUX_TC_MASK;
@@ -526,7 +526,7 @@ void xelpdp_pica_irq_handler(struct drm_i915_private *i915, u32 iir)
 	for (pin = HPD_PORT_TC1; pin <= HPD_PORT_TC4; pin++) {
 		u32 val;
 
-		if (!(i915->display.hotplug.hpd[pin] & hotplug_trigger))
+		if (!(i915->display->hotplug.hpd[pin] & hotplug_trigger))
 			continue;
 
 		pin_mask |= BIT(pin);
@@ -556,7 +556,7 @@ void xelpdp_pica_irq_handler(struct drm_i915_private *i915, u32 iir)
 
 void icp_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	u32 ddi_hotplug_trigger = pch_iir & SDE_DDI_HOTPLUG_MASK_ICP;
 	u32 tc_hotplug_trigger = pch_iir & SDE_TC_HOTPLUG_MASK_ICP;
 	u32 pin_mask = 0, long_mask = 0;
@@ -571,7 +571,7 @@ void icp_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 
 		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 				   ddi_hotplug_trigger, dig_hotplug_reg,
-				   dev_priv->display.hotplug.pch_hpd,
+				   dev_priv->display->hotplug.pch_hpd,
 				   icp_ddi_port_hotplug_long_detect);
 	}
 
@@ -582,7 +582,7 @@ void icp_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 
 		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 				   tc_hotplug_trigger, dig_hotplug_reg,
-				   dev_priv->display.hotplug.pch_hpd,
+				   dev_priv->display->hotplug.pch_hpd,
 				   icp_tc_port_hotplug_long_detect);
 	}
 
@@ -595,7 +595,7 @@ void icp_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 
 void spt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	u32 hotplug_trigger = pch_iir & SDE_HOTPLUG_MASK_SPT &
 		~SDE_PORTE_HOTPLUG_SPT;
 	u32 hotplug2_trigger = pch_iir & SDE_PORTE_HOTPLUG_SPT;
@@ -608,7 +608,7 @@ void spt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 
 		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 				   hotplug_trigger, dig_hotplug_reg,
-				   dev_priv->display.hotplug.pch_hpd,
+				   dev_priv->display->hotplug.pch_hpd,
 				   spt_port_hotplug_long_detect);
 	}
 
@@ -619,7 +619,7 @@ void spt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 
 		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 				   hotplug2_trigger, dig_hotplug_reg,
-				   dev_priv->display.hotplug.pch_hpd,
+				   dev_priv->display->hotplug.pch_hpd,
 				   spt_port_hotplug2_long_detect);
 	}
 
@@ -638,7 +638,7 @@ void ilk_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 hotplug_trigger)
 
 	intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 			   hotplug_trigger, dig_hotplug_reg,
-			   dev_priv->display.hotplug.hpd,
+			   dev_priv->display->hotplug.hpd,
 			   ilk_port_hotplug_long_detect);
 
 	intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
@@ -652,7 +652,7 @@ void bxt_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 hotplug_trigger)
 
 	intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 			   hotplug_trigger, dig_hotplug_reg,
-			   dev_priv->display.hotplug.hpd,
+			   dev_priv->display->hotplug.hpd,
 			   bxt_port_hotplug_long_detect);
 
 	intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
@@ -671,7 +671,7 @@ void gen11_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 
 		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 				   trigger_tc, dig_hotplug_reg,
-				   dev_priv->display.hotplug.hpd,
+				   dev_priv->display->hotplug.hpd,
 				   gen11_port_hotplug_long_detect);
 	}
 
@@ -682,7 +682,7 @@ void gen11_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 
 		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
 				   trigger_tbt, dig_hotplug_reg,
-				   dev_priv->display.hotplug.hpd,
+				   dev_priv->display->hotplug.hpd,
 				   gen11_port_hotplug_long_detect);
 	}
 
@@ -760,8 +760,8 @@ static void ibx_hpd_irq_setup(struct drm_i915_private *dev_priv)
 {
 	u32 hotplug_irqs, enabled_irqs;
 
-	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
-	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
+	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display->hotplug.pch_hpd);
+	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display->hotplug.pch_hpd);
 
 	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
 
@@ -848,8 +848,8 @@ static void icp_hpd_irq_setup(struct drm_i915_private *dev_priv)
 {
 	u32 hotplug_irqs, enabled_irqs;
 
-	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
-	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
+	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display->hotplug.pch_hpd);
+	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display->hotplug.pch_hpd);
 
 	/*
 	 * We reduce the value to 250us to be able to detect SHPD when an external display
@@ -953,8 +953,8 @@ static void gen11_hpd_irq_setup(struct drm_i915_private *dev_priv)
 {
 	u32 hotplug_irqs, enabled_irqs;
 
-	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.hpd);
-	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.hpd);
+	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display->hotplug.hpd);
+	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display->hotplug.hpd);
 
 	intel_uncore_rmw(&dev_priv->uncore, GEN11_DE_HPD_IMR, hotplug_irqs,
 			 ~enabled_irqs & hotplug_irqs);
@@ -1060,8 +1060,8 @@ static void mtp_hpd_irq_setup(struct drm_i915_private *i915)
 {
 	u32 hotplug_irqs, enabled_irqs;
 
-	enabled_irqs = intel_hpd_enabled_irqs(i915, i915->display.hotplug.pch_hpd);
-	hotplug_irqs = intel_hpd_hotplug_irqs(i915, i915->display.hotplug.pch_hpd);
+	enabled_irqs = intel_hpd_enabled_irqs(i915, i915->display->hotplug.pch_hpd);
+	hotplug_irqs = intel_hpd_hotplug_irqs(i915, i915->display->hotplug.pch_hpd);
 
 	/*
 	 * Use 250us here to align with the DP1.4a(Table 3-4) spec as to what the
@@ -1080,8 +1080,8 @@ static void xe2lpd_sde_hpd_irq_setup(struct drm_i915_private *i915)
 {
 	u32 hotplug_irqs, enabled_irqs;
 
-	enabled_irqs = intel_hpd_enabled_irqs(i915, i915->display.hotplug.pch_hpd);
-	hotplug_irqs = intel_hpd_hotplug_irqs(i915, i915->display.hotplug.pch_hpd);
+	enabled_irqs = intel_hpd_enabled_irqs(i915, i915->display->hotplug.pch_hpd);
+	hotplug_irqs = intel_hpd_hotplug_irqs(i915, i915->display->hotplug.pch_hpd);
 
 	ibx_display_interrupt_update(i915, hotplug_irqs, enabled_irqs);
 
@@ -1139,8 +1139,8 @@ static void xelpdp_hpd_irq_setup(struct drm_i915_private *i915)
 {
 	u32 hotplug_irqs, enabled_irqs;
 
-	enabled_irqs = intel_hpd_enabled_irqs(i915, i915->display.hotplug.hpd);
-	hotplug_irqs = intel_hpd_hotplug_irqs(i915, i915->display.hotplug.hpd);
+	enabled_irqs = intel_hpd_enabled_irqs(i915, i915->display->hotplug.hpd);
+	hotplug_irqs = intel_hpd_hotplug_irqs(i915, i915->display->hotplug.hpd);
 
 	intel_de_rmw(i915, PICAINTERRUPT_IMR, hotplug_irqs,
 		     ~enabled_irqs & hotplug_irqs);
@@ -1235,8 +1235,8 @@ static void spt_hpd_irq_setup(struct drm_i915_private *dev_priv)
 	if (INTEL_PCH_TYPE(dev_priv) >= PCH_CNP)
 		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT, SHPD_FILTER_CNT_500_ADJ);
 
-	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
-	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
+	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display->hotplug.pch_hpd);
+	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display->hotplug.pch_hpd);
 
 	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
 
@@ -1292,8 +1292,8 @@ static void ilk_hpd_irq_setup(struct drm_i915_private *dev_priv)
 {
 	u32 hotplug_irqs, enabled_irqs;
 
-	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.hpd);
-	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.hpd);
+	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display->hotplug.hpd);
+	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display->hotplug.hpd);
 
 	if (DISPLAY_VER(dev_priv) >= 8)
 		bdw_update_port_irq(dev_priv, hotplug_irqs, enabled_irqs);
@@ -1364,8 +1364,8 @@ static void bxt_hpd_irq_setup(struct drm_i915_private *dev_priv)
 {
 	u32 hotplug_irqs, enabled_irqs;
 
-	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.hpd);
-	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.hpd);
+	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display->hotplug.hpd);
+	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display->hotplug.hpd);
 
 	bdw_update_port_irq(dev_priv, hotplug_irqs, enabled_irqs);
 
@@ -1451,18 +1451,18 @@ void intel_hpd_enable_detection(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 
-	if (i915->display.funcs.hotplug)
-		i915->display.funcs.hotplug->hpd_enable_detection(encoder);
+	if (i915->display->funcs.hotplug)
+		i915->display->funcs.hotplug->hpd_enable_detection(encoder);
 }
 
 void intel_hpd_irq_setup(struct drm_i915_private *i915)
 {
 	if ((IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) &&
-	    !i915->display.irq.vlv_display_irqs_enabled)
+	    !i915->display->irq.vlv_display_irqs_enabled)
 		return;
 
-	if (i915->display.funcs.hotplug)
-		i915->display.funcs.hotplug->hpd_irq_setup(i915);
+	if (i915->display->funcs.hotplug)
+		i915->display->funcs.hotplug->hpd_irq_setup(i915);
 }
 
 void intel_hotplug_irq_init(struct drm_i915_private *i915)
@@ -1473,23 +1473,23 @@ void intel_hotplug_irq_init(struct drm_i915_private *i915)
 
 	if (HAS_GMCH(i915)) {
 		if (I915_HAS_HOTPLUG(i915))
-			i915->display.funcs.hotplug = &i915_hpd_funcs;
+			i915->display->funcs.hotplug = &i915_hpd_funcs;
 	} else {
 		if (HAS_PCH_DG2(i915))
-			i915->display.funcs.hotplug = &icp_hpd_funcs;
+			i915->display->funcs.hotplug = &icp_hpd_funcs;
 		else if (HAS_PCH_DG1(i915))
-			i915->display.funcs.hotplug = &dg1_hpd_funcs;
+			i915->display->funcs.hotplug = &dg1_hpd_funcs;
 		else if (DISPLAY_VER(i915) >= 14)
-			i915->display.funcs.hotplug = &xelpdp_hpd_funcs;
+			i915->display->funcs.hotplug = &xelpdp_hpd_funcs;
 		else if (DISPLAY_VER(i915) >= 11)
-			i915->display.funcs.hotplug = &gen11_hpd_funcs;
+			i915->display->funcs.hotplug = &gen11_hpd_funcs;
 		else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
-			i915->display.funcs.hotplug = &bxt_hpd_funcs;
+			i915->display->funcs.hotplug = &bxt_hpd_funcs;
 		else if (INTEL_PCH_TYPE(i915) >= PCH_ICP)
-			i915->display.funcs.hotplug = &icp_hpd_funcs;
+			i915->display->funcs.hotplug = &icp_hpd_funcs;
 		else if (INTEL_PCH_TYPE(i915) >= PCH_SPT)
-			i915->display.funcs.hotplug = &spt_hpd_funcs;
+			i915->display->funcs.hotplug = &spt_hpd_funcs;
 		else
-			i915->display.funcs.hotplug = &ilk_hpd_funcs;
+			i915->display->funcs.hotplug = &ilk_hpd_funcs;
 	}
 }
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 19f52d1659fa..fb3a4afefd16 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -803,8 +803,8 @@ static bool compute_is_dual_link_lvds(struct intel_lvds_encoder *lvds_encoder)
 	unsigned int val;
 
 	/* use the module option value if specified */
-	if (i915->display.params.lvds_channel_mode > 0)
-		return i915->display.params.lvds_channel_mode == 2;
+	if (i915->display->params.lvds_channel_mode > 0)
+		return i915->display->params.lvds_channel_mode == 2;
 
 	/* single channel LVDS is limited to 112 MHz */
 	if (fixed_mode->clock > 112999)
@@ -844,7 +844,7 @@ static void intel_lvds_add_properties(struct drm_connector *connector)
  */
 void intel_lvds_init(struct drm_i915_private *i915)
 {
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 	struct intel_lvds_encoder *lvds_encoder;
 	struct intel_connector *connector;
 	const struct drm_edid *drm_edid;
@@ -855,12 +855,12 @@ void intel_lvds_init(struct drm_i915_private *i915)
 
 	/* Skip init on machines we know falsely report LVDS */
 	if (dmi_check_system(intel_no_lvds)) {
-		drm_WARN(&i915->drm, !i915->display.vbt.int_lvds_support,
+		drm_WARN(&i915->drm, !i915->display->vbt.int_lvds_support,
 			 "Useless DMI match. Internal LVDS support disabled by VBT\n");
 		return;
 	}
 
-	if (!i915->display.vbt.int_lvds_support) {
+	if (!i915->display->vbt.int_lvds_support) {
 		drm_dbg_kms(&i915->drm,
 			    "Internal LVDS support disabled by VBT\n");
 		return;
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 312b21b1ab59..48698a674adf 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -80,7 +80,7 @@ static void intel_crtc_disable_noatomic_begin(struct intel_crtc *crtc,
 		drm_WARN_ON(&i915->drm, IS_ERR(temp_crtc_state) || ret);
 	}
 
-	i915->display.funcs.display->crtc_disable(to_intel_atomic_state(state), crtc);
+	i915->display->funcs.display->crtc_disable(to_intel_atomic_state(state), crtc);
 
 	drm_atomic_state_put(state);
 
@@ -120,7 +120,7 @@ static void reset_encoder_connector_state(struct intel_encoder *encoder)
 	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_pmdemand_state *pmdemand_state =
-		to_intel_pmdemand_state(i915->display.pmdemand.obj.state);
+		to_intel_pmdemand_state(i915->display->pmdemand.obj.state);
 	struct intel_connector *connector;
 	struct drm_connector_list_iter conn_iter;
 
@@ -157,7 +157,7 @@ static void intel_crtc_disable_noatomic_complete(struct intel_crtc *crtc)
 	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_pmdemand_state *pmdemand_state =
-		to_intel_pmdemand_state(i915->display.pmdemand.obj.state);
+		to_intel_pmdemand_state(i915->display->pmdemand.obj.state);
 	struct intel_crtc_state *crtc_state =
 		to_intel_crtc_state(crtc->base.state);
 	enum pipe pipe = crtc->pipe;
@@ -369,7 +369,7 @@ static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_state *crtc_state
 static void
 intel_sanitize_plane_mapping(struct drm_i915_private *i915)
 {
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 	struct intel_crtc *crtc;
 
 	if (DISPLAY_VER(i915) >= 4)
@@ -581,7 +581,7 @@ static void intel_sanitize_encoder(struct intel_encoder *encoder)
 	struct intel_crtc_state *crtc_state = crtc ?
 		to_intel_crtc_state(crtc->base.state) : NULL;
 	struct intel_pmdemand_state *pmdemand_state =
-		to_intel_pmdemand_state(i915->display.pmdemand.obj.state);
+		to_intel_pmdemand_state(i915->display->pmdemand.obj.state);
 
 	/*
 	 * We need to check both for a crtc link (meaning that the encoder is
@@ -658,7 +658,7 @@ static void intel_sanitize_encoder(struct intel_encoder *encoder)
 /* FIXME read out full plane state for all planes */
 static void readout_plane_state(struct drm_i915_private *i915)
 {
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 	struct intel_plane *plane;
 	struct intel_crtc *crtc;
 
@@ -692,9 +692,9 @@ static void readout_plane_state(struct drm_i915_private *i915)
 
 static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 {
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 	struct intel_pmdemand_state *pmdemand_state =
-		to_intel_pmdemand_state(i915->display.pmdemand.obj.state);
+		to_intel_pmdemand_state(i915->display->pmdemand.obj.state);
 	enum pipe pipe;
 	struct intel_crtc *crtc;
 	struct intel_encoder *encoder;
@@ -934,7 +934,7 @@ static void intel_early_display_was(struct drm_i915_private *i915)
 void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
 				  struct drm_modeset_acquire_ctx *ctx)
 {
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 	struct intel_encoder *encoder;
 	struct intel_crtc *crtc;
 	intel_wakeref_t wakeref;
@@ -969,7 +969,7 @@ void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
 		}
 	}
 
-	intel_fbc_sanitize(&i915->display);
+	intel_fbc_sanitize(i915->display);
 
 	intel_sanitize_plane_mapping(i915);
 
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 99f6d6f53fa7..a732d2904147 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -41,7 +41,7 @@ static void assert_pch_dp_disabled(struct drm_i915_private *dev_priv,
 				   enum pipe pipe, enum port port,
 				   i915_reg_t dp_reg)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	enum pipe port_pipe;
 	bool state;
 
@@ -61,7 +61,7 @@ static void assert_pch_hdmi_disabled(struct drm_i915_private *dev_priv,
 				     enum pipe pipe, enum port port,
 				     i915_reg_t hdmi_reg)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	enum pipe port_pipe;
 	bool state;
 
@@ -80,7 +80,7 @@ static void assert_pch_hdmi_disabled(struct drm_i915_private *dev_priv,
 static void assert_pch_ports_disabled(struct drm_i915_private *dev_priv,
 				      enum pipe pipe)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	enum pipe port_pipe;
 
 	assert_pch_dp_disabled(dev_priv, pipe, PORT_B, PCH_DP_B);
@@ -106,7 +106,7 @@ static void assert_pch_ports_disabled(struct drm_i915_private *dev_priv,
 static void assert_pch_transcoder_disabled(struct drm_i915_private *dev_priv,
 					   enum pipe pipe)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	u32 val;
 	bool enabled;
 
diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
index 33467de3d115..e133453ac64e 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
@@ -462,24 +462,24 @@ static void lpt_init_pch_refclk(struct drm_i915_private *dev_priv)
 	 * clock hierarchy. That would also allow us to do
 	 * clock bending finally.
 	 */
-	dev_priv->display.dpll.pch_ssc_use = 0;
+	dev_priv->display->dpll.pch_ssc_use = 0;
 
 	if (spll_uses_pch_ssc(dev_priv)) {
 		drm_dbg_kms(&dev_priv->drm, "SPLL using PCH SSC\n");
-		dev_priv->display.dpll.pch_ssc_use |= BIT(DPLL_ID_SPLL);
+		dev_priv->display->dpll.pch_ssc_use |= BIT(DPLL_ID_SPLL);
 	}
 
 	if (wrpll_uses_pch_ssc(dev_priv, DPLL_ID_WRPLL1)) {
 		drm_dbg_kms(&dev_priv->drm, "WRPLL1 using PCH SSC\n");
-		dev_priv->display.dpll.pch_ssc_use |= BIT(DPLL_ID_WRPLL1);
+		dev_priv->display->dpll.pch_ssc_use |= BIT(DPLL_ID_WRPLL1);
 	}
 
 	if (wrpll_uses_pch_ssc(dev_priv, DPLL_ID_WRPLL2)) {
 		drm_dbg_kms(&dev_priv->drm, "WRPLL2 using PCH SSC\n");
-		dev_priv->display.dpll.pch_ssc_use |= BIT(DPLL_ID_WRPLL2);
+		dev_priv->display->dpll.pch_ssc_use |= BIT(DPLL_ID_WRPLL2);
 	}
 
-	if (dev_priv->display.dpll.pch_ssc_use)
+	if (dev_priv->display->dpll.pch_ssc_use)
 		return;
 
 	if (has_fdi) {
@@ -492,7 +492,7 @@ static void lpt_init_pch_refclk(struct drm_i915_private *dev_priv)
 
 static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct intel_encoder *encoder;
 	struct intel_shared_dpll *pll;
 	int i;
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index b8d14ed8a56e..96af21006787 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -492,7 +492,7 @@ static u32 icl_tc_phy_hpd_live_status(struct intel_tc_port *tc)
 	struct intel_display *display = to_intel_display(tc->dig_port);
 	struct drm_i915_private *i915 = tc_to_i915(tc);
 	struct intel_digital_port *dig_port = tc->dig_port;
-	u32 isr_bit = i915->display.hotplug.pch_hpd[dig_port->base.hpd_pin];
+	u32 isr_bit = i915->display->hotplug.pch_hpd[dig_port->base.hpd_pin];
 	intel_wakeref_t wakeref;
 	u32 fia_isr;
 	u32 pch_isr;
@@ -778,8 +778,8 @@ static u32 adlp_tc_phy_hpd_live_status(struct intel_tc_port *tc)
 	struct drm_i915_private *i915 = tc_to_i915(tc);
 	struct intel_digital_port *dig_port = tc->dig_port;
 	enum hpd_pin hpd_pin = dig_port->base.hpd_pin;
-	u32 cpu_isr_bits = i915->display.hotplug.hpd[hpd_pin];
-	u32 pch_isr_bit = i915->display.hotplug.pch_hpd[hpd_pin];
+	u32 cpu_isr_bits = i915->display->hotplug.hpd[hpd_pin];
+	u32 pch_isr_bit = i915->display->hotplug.pch_hpd[hpd_pin];
 	intel_wakeref_t wakeref;
 	u32 cpu_isr;
 	u32 pch_isr;
@@ -968,8 +968,8 @@ static u32 xelpdp_tc_phy_hpd_live_status(struct intel_tc_port *tc)
 	struct drm_i915_private *i915 = tc_to_i915(tc);
 	struct intel_digital_port *dig_port = tc->dig_port;
 	enum hpd_pin hpd_pin = dig_port->base.hpd_pin;
-	u32 pica_isr_bits = i915->display.hotplug.hpd[hpd_pin];
-	u32 pch_isr_bit = i915->display.hotplug.pch_hpd[hpd_pin];
+	u32 pica_isr_bits = i915->display->hotplug.hpd[hpd_pin];
+	u32 pch_isr_bit = i915->display->hotplug.pch_hpd[hpd_pin];
 	intel_wakeref_t wakeref;
 	u32 pica_isr;
 	u32 pch_isr;
diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index e9b809568cd4..2251c080d43a 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -446,7 +446,7 @@ enum vbt_gmbus_ddi {
  * basically any of the fields to ensure the correct interpretation for the BDB
  * version in question.
  *
- * When we copy the child device configs to dev_priv->display.vbt.child_dev, we
+ * When we copy the child device configs to dev_priv->display->vbt.child_dev, we
  * reserve space for the full structure below, and initialize the tail not
  * actually present in VBT to zeros. Accessing those fields is fine, as long as
  * the default zero is taken into account, again according to the BDB version.
diff --git a/drivers/gpu/drm/i915/display/intel_wm.c b/drivers/gpu/drm/i915/display/intel_wm.c
index f00f4cfc58e5..cd746f5281d3 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.c
+++ b/drivers/gpu/drm/i915/display/intel_wm.c
@@ -46,8 +46,8 @@
  */
 void intel_update_watermarks(struct drm_i915_private *i915)
 {
-	if (i915->display.funcs.wm->update_wm)
-		i915->display.funcs.wm->update_wm(i915);
+	if (i915->display->funcs.wm->update_wm)
+		i915->display->funcs.wm->update_wm(i915);
 }
 
 int intel_wm_compute(struct intel_atomic_state *state,
@@ -66,8 +66,8 @@ bool intel_initial_watermarks(struct intel_atomic_state *state,
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 
-	if (i915->display.funcs.wm->initial_watermarks) {
-		i915->display.funcs.wm->initial_watermarks(state, crtc);
+	if (i915->display->funcs.wm->initial_watermarks) {
+		i915->display->funcs.wm->initial_watermarks(state, crtc);
 		return true;
 	}
 
@@ -79,8 +79,8 @@ void intel_atomic_update_watermarks(struct intel_atomic_state *state,
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 
-	if (i915->display.funcs.wm->atomic_update_watermarks)
-		i915->display.funcs.wm->atomic_update_watermarks(state, crtc);
+	if (i915->display->funcs.wm->atomic_update_watermarks)
+		i915->display->funcs.wm->atomic_update_watermarks(state, crtc);
 }
 
 void intel_optimize_watermarks(struct intel_atomic_state *state,
@@ -88,30 +88,30 @@ void intel_optimize_watermarks(struct intel_atomic_state *state,
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 
-	if (i915->display.funcs.wm->optimize_watermarks)
-		i915->display.funcs.wm->optimize_watermarks(state, crtc);
+	if (i915->display->funcs.wm->optimize_watermarks)
+		i915->display->funcs.wm->optimize_watermarks(state, crtc);
 }
 
 int intel_compute_global_watermarks(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 
-	if (i915->display.funcs.wm->compute_global_watermarks)
-		return i915->display.funcs.wm->compute_global_watermarks(state);
+	if (i915->display->funcs.wm->compute_global_watermarks)
+		return i915->display->funcs.wm->compute_global_watermarks(state);
 
 	return 0;
 }
 
 void intel_wm_get_hw_state(struct drm_i915_private *i915)
 {
-	if (i915->display.funcs.wm->get_hw_state)
-		return i915->display.funcs.wm->get_hw_state(i915);
+	if (i915->display->funcs.wm->get_hw_state)
+		return i915->display->funcs.wm->get_hw_state(i915);
 }
 
 void intel_wm_sanitize(struct drm_i915_private *i915)
 {
-	if (i915->display.funcs.wm->sanitize)
-		return i915->display.funcs.wm->sanitize(i915);
+	if (i915->display->funcs.wm->sanitize)
+		return i915->display->funcs.wm->sanitize(i915);
 }
 
 bool intel_wm_plane_visible(const struct intel_crtc_state *crtc_state,
@@ -142,7 +142,7 @@ void intel_print_wm_latency(struct drm_i915_private *dev_priv,
 {
 	int level;
 
-	for (level = 0; level < dev_priv->display.wm.num_levels; level++) {
+	for (level = 0; level < dev_priv->display->wm.num_levels; level++) {
 		unsigned int latency = wm[level];
 
 		if (latency == 0) {
@@ -182,7 +182,7 @@ static void wm_latency_show(struct seq_file *m, const u16 wm[8])
 
 	drm_modeset_lock_all(&dev_priv->drm);
 
-	for (level = 0; level < dev_priv->display.wm.num_levels; level++) {
+	for (level = 0; level < dev_priv->display->wm.num_levels; level++) {
 		unsigned int latency = wm[level];
 
 		/*
@@ -210,9 +210,9 @@ static int pri_wm_latency_show(struct seq_file *m, void *data)
 	const u16 *latencies;
 
 	if (DISPLAY_VER(dev_priv) >= 9)
-		latencies = dev_priv->display.wm.skl_latency;
+		latencies = dev_priv->display->wm.skl_latency;
 	else
-		latencies = dev_priv->display.wm.pri_latency;
+		latencies = dev_priv->display->wm.pri_latency;
 
 	wm_latency_show(m, latencies);
 
@@ -225,9 +225,9 @@ static int spr_wm_latency_show(struct seq_file *m, void *data)
 	const u16 *latencies;
 
 	if (DISPLAY_VER(dev_priv) >= 9)
-		latencies = dev_priv->display.wm.skl_latency;
+		latencies = dev_priv->display->wm.skl_latency;
 	else
-		latencies = dev_priv->display.wm.spr_latency;
+		latencies = dev_priv->display->wm.spr_latency;
 
 	wm_latency_show(m, latencies);
 
@@ -240,9 +240,9 @@ static int cur_wm_latency_show(struct seq_file *m, void *data)
 	const u16 *latencies;
 
 	if (DISPLAY_VER(dev_priv) >= 9)
-		latencies = dev_priv->display.wm.skl_latency;
+		latencies = dev_priv->display->wm.skl_latency;
 	else
-		latencies = dev_priv->display.wm.cur_latency;
+		latencies = dev_priv->display->wm.cur_latency;
 
 	wm_latency_show(m, latencies);
 
@@ -300,12 +300,12 @@ static ssize_t wm_latency_write(struct file *file, const char __user *ubuf,
 	ret = sscanf(tmp, "%hu %hu %hu %hu %hu %hu %hu %hu",
 		     &new[0], &new[1], &new[2], &new[3],
 		     &new[4], &new[5], &new[6], &new[7]);
-	if (ret != dev_priv->display.wm.num_levels)
+	if (ret != dev_priv->display->wm.num_levels)
 		return -EINVAL;
 
 	drm_modeset_lock_all(&dev_priv->drm);
 
-	for (level = 0; level < dev_priv->display.wm.num_levels; level++)
+	for (level = 0; level < dev_priv->display->wm.num_levels; level++)
 		wm[level] = new[level];
 
 	drm_modeset_unlock_all(&dev_priv->drm);
@@ -321,9 +321,9 @@ static ssize_t pri_wm_latency_write(struct file *file, const char __user *ubuf,
 	u16 *latencies;
 
 	if (DISPLAY_VER(dev_priv) >= 9)
-		latencies = dev_priv->display.wm.skl_latency;
+		latencies = dev_priv->display->wm.skl_latency;
 	else
-		latencies = dev_priv->display.wm.pri_latency;
+		latencies = dev_priv->display->wm.pri_latency;
 
 	return wm_latency_write(file, ubuf, len, offp, latencies);
 }
@@ -336,9 +336,9 @@ static ssize_t spr_wm_latency_write(struct file *file, const char __user *ubuf,
 	u16 *latencies;
 
 	if (DISPLAY_VER(dev_priv) >= 9)
-		latencies = dev_priv->display.wm.skl_latency;
+		latencies = dev_priv->display->wm.skl_latency;
 	else
-		latencies = dev_priv->display.wm.spr_latency;
+		latencies = dev_priv->display->wm.spr_latency;
 
 	return wm_latency_write(file, ubuf, len, offp, latencies);
 }
@@ -351,9 +351,9 @@ static ssize_t cur_wm_latency_write(struct file *file, const char __user *ubuf,
 	u16 *latencies;
 
 	if (DISPLAY_VER(dev_priv) >= 9)
-		latencies = dev_priv->display.wm.skl_latency;
+		latencies = dev_priv->display->wm.skl_latency;
 	else
-		latencies = dev_priv->display.wm.cur_latency;
+		latencies = dev_priv->display->wm.cur_latency;
 
 	return wm_latency_write(file, ubuf, len, offp, latencies);
 }
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 2d0de1c63308..cf0574fa8b81 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -77,7 +77,7 @@ static bool skl_needs_memory_bw_wa(struct drm_i915_private *i915)
 bool
 intel_has_sagv(struct drm_i915_private *i915)
 {
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 
 	return HAS_SAGV(display) && display->sagv.status != I915_SAGV_NOT_CONTROLLED;
 }
@@ -85,7 +85,7 @@ intel_has_sagv(struct drm_i915_private *i915)
 static u32
 intel_sagv_block_time(struct drm_i915_private *i915)
 {
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 
 	if (DISPLAY_VER(display) >= 14) {
 		u32 val;
@@ -117,7 +117,7 @@ intel_sagv_block_time(struct drm_i915_private *i915)
 
 static void intel_sagv_init(struct drm_i915_private *i915)
 {
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 
 	if (!HAS_SAGV(display))
 		display->sagv.status = I915_SAGV_NOT_CONTROLLED;
@@ -164,7 +164,7 @@ static void skl_sagv_enable(struct drm_i915_private *i915)
 	if (!intel_has_sagv(i915))
 		return;
 
-	if (i915->display.sagv.status == I915_SAGV_ENABLED)
+	if (i915->display->sagv.status == I915_SAGV_ENABLED)
 		return;
 
 	drm_dbg_kms(&i915->drm, "Enabling SAGV\n");
@@ -179,14 +179,14 @@ static void skl_sagv_enable(struct drm_i915_private *i915)
 	 */
 	if (IS_SKYLAKE(i915) && ret == -ENXIO) {
 		drm_dbg(&i915->drm, "No SAGV found on system, ignoring\n");
-		i915->display.sagv.status = I915_SAGV_NOT_CONTROLLED;
+		i915->display->sagv.status = I915_SAGV_NOT_CONTROLLED;
 		return;
 	} else if (ret < 0) {
 		drm_err(&i915->drm, "Failed to enable SAGV\n");
 		return;
 	}
 
-	i915->display.sagv.status = I915_SAGV_ENABLED;
+	i915->display->sagv.status = I915_SAGV_ENABLED;
 }
 
 static void skl_sagv_disable(struct drm_i915_private *i915)
@@ -196,7 +196,7 @@ static void skl_sagv_disable(struct drm_i915_private *i915)
 	if (!intel_has_sagv(i915))
 		return;
 
-	if (i915->display.sagv.status == I915_SAGV_DISABLED)
+	if (i915->display->sagv.status == I915_SAGV_DISABLED)
 		return;
 
 	drm_dbg_kms(&i915->drm, "Disabling SAGV\n");
@@ -211,14 +211,14 @@ static void skl_sagv_disable(struct drm_i915_private *i915)
 	 */
 	if (IS_SKYLAKE(i915) && ret == -ENXIO) {
 		drm_dbg(&i915->drm, "No SAGV found on system, ignoring\n");
-		i915->display.sagv.status = I915_SAGV_NOT_CONTROLLED;
+		i915->display->sagv.status = I915_SAGV_NOT_CONTROLLED;
 		return;
 	} else if (ret < 0) {
 		drm_err(&i915->drm, "Failed to disable SAGV (%d)\n", ret);
 		return;
 	}
 
-	i915->display.sagv.status = I915_SAGV_DISABLED;
+	i915->display->sagv.status = I915_SAGV_DISABLED;
 }
 
 static void skl_sagv_pre_plane_update(struct intel_atomic_state *state)
@@ -377,7 +377,7 @@ static bool skl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
 			continue;
 
 		/* Find the highest enabled wm level for this plane */
-		for (level = i915->display.wm.num_levels - 1;
+		for (level = i915->display->wm.num_levels - 1;
 		     !wm->wm[level].enable; --level)
 		     { }
 
@@ -428,7 +428,7 @@ static bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
-	if (!i915->display.params.enable_sagv)
+	if (!i915->display->params.enable_sagv)
 		return false;
 
 	if (DISPLAY_VER(i915) >= 12)
@@ -737,7 +737,7 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 static unsigned int skl_wm_latency(struct drm_i915_private *i915, int level,
 				   const struct skl_wm_params *wp)
 {
-	unsigned int latency = i915->display.wm.skl_latency[level];
+	unsigned int latency = i915->display->wm.skl_latency[level];
 
 	if (latency == 0)
 		return 0;
@@ -774,7 +774,7 @@ skl_cursor_allocation(const struct intel_crtc_state *crtc_state,
 				    crtc_state->pixel_rate, &wp, 0, 0);
 	drm_WARN_ON(&i915->drm, ret);
 
-	for (level = 0; level < i915->display.wm.num_levels; level++) {
+	for (level = 0; level < i915->display->wm.num_levels; level++) {
 		unsigned int latency = skl_wm_latency(i915, level, &wp);
 
 		skl_compute_plane_wm(crtc_state, plane, level, latency, &wp, &wm, &wm);
@@ -804,7 +804,7 @@ skl_ddb_get_hw_plane_state(struct drm_i915_private *i915,
 			   struct skl_ddb_entry *ddb_y,
 			   u16 *min_ddb, u16 *interim_ddb)
 {
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 	u32 val;
 
 	/* Cursor doesn't support NV12/planar, so no extra calculation needed */
@@ -1585,7 +1585,7 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 	 * Find the highest watermark level for which we can satisfy the block
 	 * requirement of active planes.
 	 */
-	for (level = i915->display.wm.num_levels - 1; level >= 0; level--) {
+	for (level = i915->display->wm.num_levels - 1; level >= 0; level--) {
 		blocks = 0;
 		for_each_plane_id_on_crtc(crtc, plane_id) {
 			const struct skl_plane_wm *wm =
@@ -1669,7 +1669,7 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 	 * all levels as "enabled."  Go back now and disable the ones
 	 * that aren't actually possible.
 	 */
-	for (level++; level < i915->display.wm.num_levels; level++) {
+	for (level++; level < i915->display->wm.num_levels; level++) {
 		for_each_plane_id_on_crtc(crtc, plane_id) {
 			const struct skl_ddb_entry *ddb =
 				&crtc_state->wm.skl.plane_ddb[plane_id];
@@ -2064,8 +2064,8 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 	result->enable = true;
 	result->auto_min_alloc_wm_enable = xe3_auto_min_alloc_capable(plane, level);
 
-	if (DISPLAY_VER(i915) < 12 && i915->display.sagv.block_time_us)
-		result->can_sagv = latency >= i915->display.sagv.block_time_us;
+	if (DISPLAY_VER(i915) < 12 && i915->display->sagv.block_time_us)
+		result->can_sagv = latency >= i915->display->sagv.block_time_us;
 }
 
 static void
@@ -2078,7 +2078,7 @@ skl_compute_wm_levels(const struct intel_crtc_state *crtc_state,
 	struct skl_wm_level *result_prev = &levels[0];
 	int level;
 
-	for (level = 0; level < i915->display.wm.num_levels; level++) {
+	for (level = 0; level < i915->display->wm.num_levels; level++) {
 		struct skl_wm_level *result = &levels[level];
 		unsigned int latency = skl_wm_latency(i915, level, wm_params);
 
@@ -2099,8 +2099,8 @@ static void tgl_compute_sagv_wm(const struct intel_crtc_state *crtc_state,
 	struct skl_wm_level *levels = plane_wm->wm;
 	unsigned int latency = 0;
 
-	if (i915->display.sagv.block_time_us)
-		latency = i915->display.sagv.block_time_us +
+	if (i915->display->sagv.block_time_us)
+		latency = i915->display->sagv.block_time_us +
 			skl_wm_latency(i915, 0, wm_params);
 
 	skl_compute_plane_wm(crtc_state, plane, 0, latency,
@@ -2412,7 +2412,7 @@ static int skl_max_wm_level_for_vblank(struct intel_crtc_state *crtc_state,
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	int level;
 
-	for (level = i915->display.wm.num_levels - 1; level >= 0; level--) {
+	for (level = i915->display->wm.num_levels - 1; level >= 0; level--) {
 		int latency;
 
 		/* FIXME should we care about the latency w/a's? */
@@ -2450,9 +2450,9 @@ static int skl_wm_check_vblank(struct intel_crtc_state *crtc_state)
 	 * PSR needs to toggle LATENCY_REPORTING_REMOVED_PIPE_*
 	 * based on whether we're limited by the vblank duration.
 	 */
-	crtc_state->wm_level_disabled = level < i915->display.wm.num_levels - 1;
+	crtc_state->wm_level_disabled = level < i915->display->wm.num_levels - 1;
 
-	for (level++; level < i915->display.wm.num_levels; level++) {
+	for (level++; level < i915->display->wm.num_levels; level++) {
 		enum plane_id plane_id;
 
 		for_each_plane_id_on_crtc(crtc, plane_id) {
@@ -2469,9 +2469,9 @@ static int skl_wm_check_vblank(struct intel_crtc_state *crtc_state)
 	}
 
 	if (DISPLAY_VER(i915) >= 12 &&
-	    i915->display.sagv.block_time_us &&
+	    i915->display->sagv.block_time_us &&
 	    skl_is_vblank_too_short(crtc_state, wm0_lines,
-				    i915->display.sagv.block_time_us)) {
+				    i915->display->sagv.block_time_us)) {
 		enum plane_id plane_id;
 
 		for_each_plane_id_on_crtc(crtc, plane_id) {
@@ -2532,7 +2532,7 @@ static bool skl_plane_wm_equals(struct drm_i915_private *i915,
 				const struct skl_plane_wm *wm1,
 				const struct skl_plane_wm *wm2)
 {
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 	int level;
 
 	for (level = 0; level < display->wm.num_levels; level++) {
@@ -3148,9 +3148,9 @@ static void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
 
 static void skl_wm_get_hw_state(struct drm_i915_private *i915)
 {
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 	struct intel_dbuf_state *dbuf_state =
-		to_intel_dbuf_state(i915->display.dbuf.obj.state);
+		to_intel_dbuf_state(i915->display->dbuf.obj.state);
 	struct intel_crtc *crtc;
 
 	if (HAS_MBUS_JOINING(display))
@@ -3227,7 +3227,7 @@ static void skl_wm_get_hw_state(struct drm_i915_private *i915)
 
 bool skl_watermark_ipc_enabled(struct drm_i915_private *i915)
 {
-	return i915->display.wm.ipc_enabled;
+	return i915->display->wm.ipc_enabled;
 }
 
 void skl_watermark_ipc_update(struct drm_i915_private *i915)
@@ -3259,7 +3259,7 @@ void skl_watermark_ipc_init(struct drm_i915_private *i915)
 	if (!HAS_IPC(i915))
 		return;
 
-	i915->display.wm.ipc_enabled = skl_watermark_ipc_can_enable(i915);
+	i915->display->wm.ipc_enabled = skl_watermark_ipc_can_enable(i915);
 
 	skl_watermark_ipc_update(i915);
 }
@@ -3310,7 +3310,7 @@ adjust_wm_latency(struct drm_i915_private *i915,
 
 static void mtl_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 {
-	int num_levels = i915->display.wm.num_levels;
+	int num_levels = i915->display->wm.num_levels;
 	u32 val;
 
 	val = intel_de_read(i915, MTL_LATENCY_LP0_LP1);
@@ -3330,7 +3330,7 @@ static void mtl_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 
 static void skl_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 {
-	int num_levels = i915->display.wm.num_levels;
+	int num_levels = i915->display->wm.num_levels;
 	int read_latency = DISPLAY_VER(i915) >= 12 ? 3 : 2;
 	int mult = IS_DG2(i915) ? 2 : 1;
 	u32 val;
@@ -3367,7 +3367,7 @@ static void skl_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 
 static void skl_setup_wm_latency(struct drm_i915_private *i915)
 {
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 
 	if (HAS_HW_SAGV_WM(display))
 		display->wm.num_levels = 6;
@@ -3410,7 +3410,7 @@ intel_atomic_get_dbuf_state(struct intel_atomic_state *state)
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_global_state *dbuf_state;
 
-	dbuf_state = intel_atomic_get_global_obj_state(state, &i915->display.dbuf.obj);
+	dbuf_state = intel_atomic_get_global_obj_state(state, &i915->display->dbuf.obj);
 	if (IS_ERR(dbuf_state))
 		return ERR_CAST(dbuf_state);
 
@@ -3419,7 +3419,7 @@ intel_atomic_get_dbuf_state(struct intel_atomic_state *state)
 
 int intel_dbuf_init(struct drm_i915_private *i915)
 {
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 	struct intel_dbuf_state *dbuf_state;
 
 	dbuf_state = kzalloc(sizeof(*dbuf_state), GFP_KERNEL);
@@ -3544,7 +3544,7 @@ int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *state,
 void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915,
 					 int ratio, bool joined_mbus)
 {
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 	enum dbuf_slice slice;
 
 	if (!HAS_MBUS_JOINING(display))
@@ -3750,7 +3750,7 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
 
 static void skl_mbus_sanitize(struct drm_i915_private *i915)
 {
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 	struct intel_dbuf_state *dbuf_state =
 		to_intel_dbuf_state(display->dbuf.obj.state);
 
@@ -3775,7 +3775,7 @@ static void skl_mbus_sanitize(struct drm_i915_private *i915)
 static bool skl_dbuf_is_misconfigured(struct drm_i915_private *i915)
 {
 	const struct intel_dbuf_state *dbuf_state =
-		to_intel_dbuf_state(i915->display.dbuf.obj.state);
+		to_intel_dbuf_state(i915->display->dbuf.obj.state);
 	struct skl_ddb_entry entries[I915_MAX_PIPES] = {};
 	struct intel_crtc *crtc;
 
@@ -3923,10 +3923,10 @@ void intel_wm_state_verify(struct intel_atomic_state *state,
 	hw_enabled_slices = intel_enabled_dbuf_slices_mask(display);
 
 	if (DISPLAY_VER(i915) >= 11 &&
-	    hw_enabled_slices != i915->display.dbuf.enabled_slices)
+	    hw_enabled_slices != i915->display->dbuf.enabled_slices)
 		drm_err(&i915->drm,
 			"mismatch in DBUF Slices (expected 0x%x, got 0x%x)\n",
-			i915->display.dbuf.enabled_slices,
+			i915->display->dbuf.enabled_slices,
 			hw_enabled_slices);
 
 	for_each_intel_plane_on_crtc(&i915->drm, crtc, plane) {
@@ -3934,7 +3934,7 @@ void intel_wm_state_verify(struct intel_atomic_state *state,
 		const struct skl_wm_level *hw_wm_level, *sw_wm_level;
 
 		/* Watermarks */
-		for (level = 0; level < i915->display.wm.num_levels; level++) {
+		for (level = 0; level < i915->display->wm.num_levels; level++) {
 			hw_wm_level = &hw->wm.planes[plane->id].wm[level];
 			sw_wm_level = skl_plane_wm_level(sw_wm, plane->id, level);
 
@@ -4027,7 +4027,7 @@ void skl_wm_init(struct drm_i915_private *i915)
 
 	skl_setup_wm_latency(i915);
 
-	i915->display.funcs.wm = &skl_wm_funcs;
+	i915->display->funcs.wm = &skl_wm_funcs;
 }
 
 static int skl_watermark_ipc_status_show(struct seq_file *m, void *data)
@@ -4064,7 +4064,7 @@ static ssize_t skl_watermark_ipc_status_write(struct file *file,
 		if (!skl_watermark_ipc_enabled(i915) && enable)
 			drm_info(&i915->drm,
 				 "Enabling IPC: WM will be proper only after next commit\n");
-		i915->display.wm.ipc_enabled = enable;
+		i915->display->wm.ipc_enabled = enable;
 		skl_watermark_ipc_update(i915);
 	}
 
@@ -4092,9 +4092,9 @@ static int intel_sagv_status_show(struct seq_file *m, void *unused)
 
 	seq_printf(m, "SAGV available: %s\n", str_yes_no(intel_has_sagv(i915)));
 	seq_printf(m, "SAGV modparam: %s\n",
-		   str_enabled_disabled(i915->display.params.enable_sagv));
-	seq_printf(m, "SAGV status: %s\n", sagv_status[i915->display.sagv.status]);
-	seq_printf(m, "SAGV block time: %d usec\n", i915->display.sagv.block_time_us);
+		   str_enabled_disabled(i915->display->params.enable_sagv));
+	seq_printf(m, "SAGV status: %s\n", sagv_status[i915->display->sagv.status]);
+	seq_printf(m, "SAGV block time: %d usec\n", i915->display->sagv.block_time_us);
 
 	return 0;
 }
@@ -4103,7 +4103,7 @@ DEFINE_SHOW_ATTRIBUTE(intel_sagv_status);
 
 void skl_watermark_debugfs_register(struct drm_i915_private *i915)
 {
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 	struct drm_minor *minor = display->drm->primary;
 
 	if (HAS_IPC(display))
@@ -4119,7 +4119,7 @@ unsigned int skl_watermark_max_latency(struct drm_i915_private *i915, int initia
 {
 	int level;
 
-	for (level = i915->display.wm.num_levels - 1; level >= initial_wm_level; level--) {
+	for (level = i915->display->wm.num_levels - 1; level >= initial_wm_level; level--) {
 		unsigned int latency = skl_wm_latency(i915, level, NULL);
 
 		if (latency)
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index af717df83197..2af37adb6d38 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -1905,7 +1905,7 @@ static const struct dmi_system_id vlv_dsi_dmi_quirk_table[] = {
 
 void vlv_dsi_init(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct intel_dsi *intel_dsi;
 	struct intel_encoder *encoder;
 	struct intel_connector *connector;
@@ -1921,9 +1921,9 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 		return;
 
 	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
-		dev_priv->display.dsi.mmio_base = BXT_MIPI_BASE;
+		dev_priv->display->dsi.mmio_base = BXT_MIPI_BASE;
 	else
-		dev_priv->display.dsi.mmio_base = VLV_MIPI_BASE;
+		dev_priv->display->dsi.mmio_base = VLV_MIPI_BASE;
 
 	intel_dsi = kzalloc(sizeof(*intel_dsi), GFP_KERNEL);
 	if (!intel_dsi)
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h b/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
index 9fbf14867a2a..b6dc3d1b9bb1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
@@ -77,7 +77,7 @@ i915_gem_object_get_frontbuffer(const struct drm_i915_gem_object *obj)
  * Set object's frontbuffer pointer. If frontbuffer is already set for the
  * object keep it and return it's pointer to the caller. Please note that RCU
  * mechanism is used to handle e.g. ongoing removal of frontbuffer pointer. This
- * function is protected by i915->display.fb_tracking.lock
+ * function is protected by i915->display->fb_tracking.lock
  *
  * Return: pointer to frontbuffer which was set.
  */
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
index 0c723e7c71a2..889e61843ff3 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
@@ -328,7 +328,7 @@ static bool fence_is_active(const struct i915_fence_reg *fence)
 
 static struct i915_fence_reg *fence_find(struct i915_ggtt *ggtt)
 {
-	struct intel_display *display = &ggtt->vm.i915->display;
+	struct intel_display *display = ggtt->vm.i915->display;
 	struct i915_fence_reg *active = NULL;
 	struct i915_fence_reg *fence, *fn;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index 3182f19b9837..3b77b4bb88e3 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -70,7 +70,7 @@ static int __gt_unpark(struct intel_wakeref *wf)
 {
 	struct intel_gt *gt = container_of(wf, typeof(*gt), wakeref);
 	struct drm_i915_private *i915 = gt->i915;
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 
 	GT_TRACE(gt, "\n");
 
@@ -104,7 +104,7 @@ static int __gt_park(struct intel_wakeref *wf)
 	struct intel_gt *gt = container_of(wf, typeof(*gt), wakeref);
 	intel_wakeref_t wakeref = fetch_and_zero(&gt->awake);
 	struct drm_i915_private *i915 = gt->i915;
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 
 	GT_TRACE(gt, "\n");
 
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index dbdcfe130ad4..971fbff1211c 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -1205,7 +1205,7 @@ void intel_gt_reset(struct intel_gt *gt,
 		    intel_engine_mask_t stalled_mask,
 		    const char *reason)
 {
-	struct intel_display *display = &gt->i915->display;
+	struct intel_display *display = gt->i915->display;
 	intel_engine_mask_t awake;
 	int ret;
 
@@ -1423,7 +1423,7 @@ static void intel_gt_reset_global(struct intel_gt *gt,
 	/* Use a watchdog to ensure that our reset completes */
 	intel_wedge_on_timeout(&w, gt, 60 * HZ) {
 		struct drm_i915_private *i915 = gt->i915;
-		struct intel_display *display = &i915->display;
+		struct intel_display *display = i915->display;
 		bool need_display_reset;
 		bool reset_display;
 
diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
index f25ee2953baf..2b5094e8de5e 100644
--- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
+++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
@@ -1286,7 +1286,7 @@ static int gen8_decode_mi_display_flip(struct parser_exec_state *s,
 		struct mi_display_flip_command_info *info)
 {
 	struct drm_i915_private *dev_priv = s->engine->i915;
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct plane_code_mapping gen8_plane_code[] = {
 		[0] = {PIPE_A, PLANE_A, PRIMARY_A_FLIP_DONE},
 		[1] = {PIPE_B, PLANE_A, PRIMARY_B_FLIP_DONE},
@@ -1333,7 +1333,7 @@ static int skl_decode_mi_display_flip(struct parser_exec_state *s,
 		struct mi_display_flip_command_info *info)
 {
 	struct drm_i915_private *dev_priv = s->engine->i915;
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct intel_vgpu *vgpu = s->vgpu;
 	u32 dword0 = cmd_val(s, 0);
 	u32 dword1 = cmd_val(s, 1);
@@ -1421,7 +1421,7 @@ static int gen8_update_plane_mmio_from_mi_display_flip(
 		struct mi_display_flip_command_info *info)
 {
 	struct drm_i915_private *dev_priv = s->engine->i915;
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct intel_vgpu *vgpu = s->vgpu;
 
 	set_mask_bits(&vgpu_vreg_t(vgpu, info->surf_reg), GENMASK(31, 12),
diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
index c98dfcc3d0de..cb6d598fa0de 100644
--- a/drivers/gpu/drm/i915/gvt/display.c
+++ b/drivers/gpu/drm/i915/gvt/display.c
@@ -69,7 +69,7 @@ static int get_edp_pipe(struct intel_vgpu *vgpu)
 static int edp_pipe_is_enabled(struct intel_vgpu *vgpu)
 {
 	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 
 	if (!(vgpu_vreg_t(vgpu, TRANSCONF(display, TRANSCODER_EDP)) & TRANSCONF_ENABLE))
 		return 0;
@@ -82,7 +82,7 @@ static int edp_pipe_is_enabled(struct intel_vgpu *vgpu)
 int pipe_is_enabled(struct intel_vgpu *vgpu, int pipe)
 {
 	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 
 	if (drm_WARN_ON(&dev_priv->drm,
 			pipe < PIPE_A || pipe >= I915_MAX_PIPES))
@@ -183,7 +183,7 @@ static u8 dpcd_fix_data[DPCD_HEADER_SIZE] = {
 static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 {
 	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	int pipe;
 
 	if (IS_BROXTON(dev_priv)) {
@@ -635,7 +635,7 @@ void vgpu_update_vblank_emulation(struct intel_vgpu *vgpu, bool turnon)
 static void emulate_vblank_on_pipe(struct intel_vgpu *vgpu, int pipe)
 {
 	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct intel_vgpu_irq *irq = &vgpu->irq;
 	int vblank_event[] = {
 		[PIPE_A] = PIPE_A_VBLANK,
@@ -665,7 +665,7 @@ static void emulate_vblank_on_pipe(struct intel_vgpu *vgpu, int pipe)
 void intel_vgpu_emulate_vblank(struct intel_vgpu *vgpu)
 {
 	struct drm_i915_private *i915 = vgpu->gvt->gt->i915;
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 	int pipe;
 
 	mutex_lock(&vgpu->vgpu_lock);
diff --git a/drivers/gpu/drm/i915/gvt/fb_decoder.c b/drivers/gpu/drm/i915/gvt/fb_decoder.c
index f9f7ef131371..4cfe8d7f368d 100644
--- a/drivers/gpu/drm/i915/gvt/fb_decoder.c
+++ b/drivers/gpu/drm/i915/gvt/fb_decoder.c
@@ -154,7 +154,7 @@ static u32 intel_vgpu_get_stride(struct intel_vgpu *vgpu, int pipe,
 	u32 tiled, int stride_mask, int bpp)
 {
 	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 
 	u32 stride_reg = vgpu_vreg_t(vgpu, DSPSTRIDE(display, pipe)) & stride_mask;
 	u32 stride = stride_reg;
@@ -211,7 +211,7 @@ int intel_vgpu_decode_primary_plane(struct intel_vgpu *vgpu,
 	struct intel_vgpu_primary_plane_format *plane)
 {
 	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	u32 val, fmt;
 	int pipe;
 
@@ -342,7 +342,7 @@ int intel_vgpu_decode_cursor_plane(struct intel_vgpu *vgpu,
 	struct intel_vgpu_cursor_plane_format *plane)
 {
 	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	u32 val, mode, index;
 	u32 alpha_plane, alpha_force;
 	int pipe;
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 4efee6797873..68b464458343 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -513,7 +513,7 @@ static u32 bdw_vgpu_get_dp_bitrate(struct intel_vgpu *vgpu, enum port port)
 
 		switch (wrpll_ctl & WRPLL_REF_MASK) {
 		case WRPLL_REF_PCH_SSC:
-			refclk = vgpu->gvt->gt->i915->display.dpll.ref_clks.ssc;
+			refclk = vgpu->gvt->gt->i915->display->dpll.ref_clks.ssc;
 			break;
 		case WRPLL_REF_LCPLL:
 			refclk = 2700000;
@@ -544,7 +544,7 @@ static u32 bdw_vgpu_get_dp_bitrate(struct intel_vgpu *vgpu, enum port port)
 static u32 bxt_vgpu_get_dp_bitrate(struct intel_vgpu *vgpu, enum port port)
 {
 	u32 dp_br = 0;
-	int refclk = vgpu->gvt->gt->i915->display.dpll.ref_clks.nssc;
+	int refclk = vgpu->gvt->gt->i915->display->dpll.ref_clks.nssc;
 	enum dpio_phy phy = DPIO_PHY0;
 	enum dpio_channel ch = DPIO_CH0;
 	struct dpll clock = {};
@@ -656,7 +656,7 @@ static u32 skl_vgpu_get_dp_bitrate(struct intel_vgpu *vgpu, enum port port)
 static void vgpu_update_refresh_rate(struct intel_vgpu *vgpu)
 {
 	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	enum port port;
 	u32 dp_br, link_m, link_n, htotal, vtotal;
 
@@ -1020,7 +1020,7 @@ static int pri_surf_mmio_write(struct intel_vgpu *vgpu, unsigned int offset,
 		void *p_data, unsigned int bytes)
 {
 	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	u32 pipe = DSPSURF_TO_PIPE(display, offset);
 	int event = SKL_FLIP_EVENT(pipe, PLANE_PRIMARY);
 
@@ -1062,7 +1062,7 @@ static int reg50080_mmio_write(struct intel_vgpu *vgpu,
 			       unsigned int bytes)
 {
 	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	enum pipe pipe = REG_50080_TO_PIPE(offset);
 	enum plane_id plane = REG_50080_TO_PLANE(offset);
 	int event = SKL_FLIP_EVENT(pipe, plane);
@@ -2196,7 +2196,7 @@ static int csfe_chicken1_mmio_write(struct intel_vgpu *vgpu,
 static int init_generic_mmio_info(struct intel_gvt *gvt)
 {
 	struct drm_i915_private *dev_priv = gvt->gt->i915;
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	int ret;
 
 	MMIO_RING_DFH(RING_IMR, D_ALL, 0, NULL,
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index fcddb18dfd82..5e190085041f 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -134,8 +134,8 @@ static int i915_workqueues_init(struct drm_i915_private *dev_priv)
 	if (dev_priv->wq == NULL)
 		goto out_err;
 
-	dev_priv->display.hotplug.dp_wq = alloc_ordered_workqueue("i915-dp", 0);
-	if (dev_priv->display.hotplug.dp_wq == NULL)
+	dev_priv->display->hotplug.dp_wq = alloc_ordered_workqueue("i915-dp", 0);
+	if (dev_priv->display->hotplug.dp_wq == NULL)
 		goto out_free_wq;
 
 	/*
@@ -151,7 +151,7 @@ static int i915_workqueues_init(struct drm_i915_private *dev_priv)
 	return 0;
 
 out_free_dp_wq:
-	destroy_workqueue(dev_priv->display.hotplug.dp_wq);
+	destroy_workqueue(dev_priv->display->hotplug.dp_wq);
 out_free_wq:
 	destroy_workqueue(dev_priv->wq);
 out_err:
@@ -163,7 +163,7 @@ static int i915_workqueues_init(struct drm_i915_private *dev_priv)
 static void i915_workqueues_cleanup(struct drm_i915_private *dev_priv)
 {
 	destroy_workqueue(dev_priv->unordered_wq);
-	destroy_workqueue(dev_priv->display.hotplug.dp_wq);
+	destroy_workqueue(dev_priv->display->hotplug.dp_wq);
 	destroy_workqueue(dev_priv->wq);
 }
 
@@ -223,7 +223,7 @@ static void sanitize_gpu(struct drm_i915_private *i915)
  */
 static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	int ret = 0;
 
 	if (i915_inject_probe_failure(dev_priv))
@@ -290,7 +290,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
  */
 static void i915_driver_late_release(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 
 	intel_irq_fini(dev_priv);
 	intel_power_domains_cleanup(display);
@@ -318,7 +318,7 @@ static void i915_driver_late_release(struct drm_i915_private *dev_priv)
  */
 static int i915_driver_mmio_probe(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct intel_gt *gt;
 	int ret, i;
 
@@ -465,7 +465,7 @@ static int i915_pcode_init(struct drm_i915_private *i915)
  */
 static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	int ret;
 
@@ -604,7 +604,7 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
  */
 static void i915_driver_hw_remove(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 
 	i915_perf_fini(dev_priv);
@@ -624,7 +624,7 @@ static void i915_driver_hw_remove(struct drm_i915_private *dev_priv)
  */
 static void i915_driver_register(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct intel_gt *gt;
 	unsigned int i;
 
@@ -668,7 +668,7 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
  */
 static void i915_driver_unregister(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct intel_gt *gt;
 	unsigned int i;
 
@@ -791,7 +791,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		return PTR_ERR(i915);
 	}
 
-	display = &i915->display;
+	display = i915->display;
 
 	ret = i915_driver_early_probe(i915);
 	if (ret < 0)
@@ -880,7 +880,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 void i915_driver_remove(struct drm_i915_private *i915)
 {
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 	intel_wakeref_t wakeref;
 
 	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
@@ -913,7 +913,7 @@ void i915_driver_remove(struct drm_i915_private *i915)
 static void i915_driver_release(struct drm_device *dev)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
 	intel_wakeref_t wakeref;
 
@@ -967,7 +967,7 @@ static void i915_driver_postclose(struct drm_device *dev, struct drm_file *file)
 
 void i915_driver_shutdown(struct drm_i915_private *i915)
 {
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 
 	disable_rpm_wakeref_asserts(&i915->runtime_pm);
 	intel_runtime_pm_disable(&i915->runtime_pm);
@@ -989,10 +989,10 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
 	if (HAS_DISPLAY(i915))
 		intel_display_driver_suspend_access(display);
 
-	intel_encoder_suspend_all(&i915->display);
-	intel_encoder_shutdown_all(&i915->display);
+	intel_encoder_suspend_all(i915->display);
+	intel_encoder_shutdown_all(i915->display);
 
-	intel_dmc_suspend(&i915->display);
+	intel_dmc_suspend(i915->display);
 
 	i915_gem_suspend(i915);
 
@@ -1047,7 +1047,7 @@ static int i915_drm_prepare(struct drm_device *dev)
 static int i915_drm_suspend(struct drm_device *dev)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	pci_power_t opregion_target_state;
 
@@ -1072,7 +1072,7 @@ static int i915_drm_suspend(struct drm_device *dev)
 	if (HAS_DISPLAY(dev_priv))
 		intel_display_driver_suspend_access(display);
 
-	intel_encoder_suspend_all(&dev_priv->display);
+	intel_encoder_suspend_all(dev_priv->display);
 
 	/* Must be called before GGTT is suspended. */
 	intel_dpt_suspend(display);
@@ -1097,7 +1097,7 @@ static int i915_drm_suspend(struct drm_device *dev)
 static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
 	struct intel_gt *gt;
@@ -1169,7 +1169,7 @@ int i915_driver_suspend_switcheroo(struct drm_i915_private *i915,
 static int i915_drm_resume(struct drm_device *dev)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct intel_gt *gt;
 	int ret, i;
 
@@ -1256,7 +1256,7 @@ static int i915_drm_resume(struct drm_device *dev)
 static int i915_drm_resume_early(struct drm_device *dev)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	struct intel_gt *gt;
 	int ret, i;
@@ -1488,7 +1488,7 @@ static int i915_pm_restore(struct device *kdev)
 static int intel_runtime_suspend(struct device *kdev)
 {
 	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	struct pci_dev *root_pdev;
@@ -1587,7 +1587,7 @@ static int intel_runtime_suspend(struct device *kdev)
 static int intel_runtime_resume(struct device *kdev)
 {
 	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	struct pci_dev *root_pdev;
diff --git a/drivers/gpu/drm/i915/i915_getparam.c b/drivers/gpu/drm/i915/i915_getparam.c
index be8149e46281..6fcda6d7b5b7 100644
--- a/drivers/gpu/drm/i915/i915_getparam.c
+++ b/drivers/gpu/drm/i915/i915_getparam.c
@@ -16,7 +16,7 @@ int i915_getparam_ioctl(struct drm_device *dev, void *data,
 			struct drm_file *file_priv)
 {
 	struct drm_i915_private *i915 = to_i915(dev);
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 	struct pci_dev *pdev = to_pci_dev(dev->dev);
 	const struct sseu_dev_info *sseu = &to_gt(i915)->info.sseu;
 	drm_i915_getparam_t *param = data;
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 819ab933bb10..f1f0750ee89a 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -2094,7 +2094,7 @@ static struct i915_gpu_coredump *
 __i915_gpu_coredump(struct intel_gt *gt, intel_engine_mask_t engine_mask, u32 dump_flags)
 {
 	struct drm_i915_private *i915 = gt->i915;
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = i915->display;
 	struct i915_gpu_coredump *error;
 
 	/* Check if GPU capture has been disabled */
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 37ca4a35daf2..ef9528aa96c4 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -230,7 +230,7 @@ static void ivb_parity_work(struct work_struct *work)
 static irqreturn_t valleyview_irq_handler(int irq, void *arg)
 {
 	struct drm_i915_private *dev_priv = arg;
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	irqreturn_t ret = IRQ_NONE;
 
 	if (!intel_irqs_enabled(dev_priv))
@@ -324,7 +324,7 @@ static irqreturn_t valleyview_irq_handler(int irq, void *arg)
 static irqreturn_t cherryview_irq_handler(int irq, void *arg)
 {
 	struct drm_i915_private *dev_priv = arg;
-	struct intel_display *display = &dev_priv->display;
+	struct intel_display *display = dev_priv->display;
 	irqreturn_t ret = IRQ_NONE;
 
 	if (!intel_irqs_enabled(dev_priv))
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index 387b26400169..1f7de988361e 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -220,7 +220,7 @@ static void cpt_init_clock_gating(struct drm_i915_private *i915)
 		val = intel_uncore_read(&i915->uncore, TRANS_CHICKEN2(pipe));
 		val |= TRANS_CHICKEN2_TIMING_OVERRIDE;
 		val &= ~TRANS_CHICKEN2_FDI_POLARITY_REVERSED;
-		if (i915->display.vbt.fdi_rx_polarity_inverted)
+		if (i915->display->vbt.fdi_rx_polarity_inverted)
 			val |= TRANS_CHICKEN2_FDI_POLARITY_REVERSED;
 		val &= ~TRANS_CHICKEN2_DISABLE_DEEP_COLOR_COUNTER;
 		val &= ~TRANS_CHICKEN2_DISABLE_DEEP_COLOR_MODESWITCH;
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 5e9c8aee5ef4..7c2f85ce7d2d 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -38,7 +38,7 @@
 
 static bool has_display(struct xe_device *xe)
 {
-	return HAS_DISPLAY(&xe->display);
+	return HAS_DISPLAY(xe->display);
 }
 
 /**
@@ -85,7 +85,7 @@ static void display_destroy(struct drm_device *dev, void *dummy)
 {
 	struct xe_device *xe = to_xe_device(dev);
 
-	destroy_workqueue(xe->display.hotplug.dp_wq);
+	destroy_workqueue(xe->display->hotplug.dp_wq);
 }
 
 /**
@@ -95,7 +95,7 @@ static void display_destroy(struct drm_device *dev, void *dummy)
  * Initialize all fields used by the display part.
  *
  * TODO: once everything can be inside a single struct, make the struct opaque
- * to the rest of xe and return it to be xe->display.
+ * to the rest of xe and return it to be xe->display->
  *
  * Returns: 0 on success
  */
@@ -104,9 +104,9 @@ int xe_display_create(struct xe_device *xe)
 	/* Transitional. To be allocated dynamically. */
 	xe->display = &xe->__display;
 
-	spin_lock_init(&xe->display.fb_tracking.lock);
+	spin_lock_init(&xe->display->fb_tracking.lock);
 
-	xe->display.hotplug.dp_wq = alloc_ordered_workqueue("xe-dp", 0);
+	xe->display->hotplug.dp_wq = alloc_ordered_workqueue("xe-dp", 0);
 
 	return drmm_add_action_or_reset(&xe->drm, display_destroy, NULL);
 }
@@ -114,7 +114,7 @@ int xe_display_create(struct xe_device *xe)
 static void xe_display_fini_early(void *arg)
 {
 	struct xe_device *xe = arg;
-	struct intel_display *display = &xe->display;
+	struct intel_display *display = xe->display;
 
 	if (!xe->info.probe_display)
 		return;
@@ -127,7 +127,7 @@ static void xe_display_fini_early(void *arg)
 
 int xe_display_init_early(struct xe_device *xe)
 {
-	struct intel_display *display = &xe->display;
+	struct intel_display *display = xe->display;
 	int err;
 
 	if (!xe->info.probe_display)
@@ -174,7 +174,7 @@ int xe_display_init_early(struct xe_device *xe)
 static void xe_display_fini(void *arg)
 {
 	struct xe_device *xe = arg;
-	struct intel_display *display = &xe->display;
+	struct intel_display *display = xe->display;
 
 	intel_hpd_poll_fini(xe);
 	intel_hdcp_component_fini(display);
@@ -184,7 +184,7 @@ static void xe_display_fini(void *arg)
 
 int xe_display_init(struct xe_device *xe)
 {
-	struct intel_display *display = &xe->display;
+	struct intel_display *display = xe->display;
 	int err;
 
 	if (!xe->info.probe_display)
@@ -199,7 +199,7 @@ int xe_display_init(struct xe_device *xe)
 
 void xe_display_register(struct xe_device *xe)
 {
-	struct intel_display *display = &xe->display;
+	struct intel_display *display = xe->display;
 
 	if (!xe->info.probe_display)
 		return;
@@ -210,7 +210,7 @@ void xe_display_register(struct xe_device *xe)
 
 void xe_display_unregister(struct xe_device *xe)
 {
-	struct intel_display *display = &xe->display;
+	struct intel_display *display = xe->display;
 
 	if (!xe->info.probe_display)
 		return;
@@ -232,7 +232,7 @@ void xe_display_irq_handler(struct xe_device *xe, u32 master_ctl)
 
 void xe_display_irq_enable(struct xe_device *xe, u32 gu_misc_iir)
 {
-	struct intel_display *display = &xe->display;
+	struct intel_display *display = xe->display;
 
 	if (!xe->info.probe_display)
 		return;
@@ -290,7 +290,7 @@ static void xe_display_flush_cleanup_work(struct xe_device *xe)
 
 static void xe_display_enable_d3cold(struct xe_device *xe)
 {
-	struct intel_display *display = &xe->display;
+	struct intel_display *display = xe->display;
 
 	if (!xe->info.probe_display)
 		return;
@@ -313,7 +313,7 @@ static void xe_display_enable_d3cold(struct xe_device *xe)
 
 static void xe_display_disable_d3cold(struct xe_device *xe)
 {
-	struct intel_display *display = &xe->display;
+	struct intel_display *display = xe->display;
 
 	if (!xe->info.probe_display)
 		return;
@@ -337,7 +337,7 @@ static void xe_display_disable_d3cold(struct xe_device *xe)
 
 void xe_display_pm_suspend(struct xe_device *xe)
 {
-	struct intel_display *display = &xe->display;
+	struct intel_display *display = xe->display;
 	bool s2idle = suspend_to_idle();
 
 	if (!xe->info.probe_display)
@@ -362,7 +362,7 @@ void xe_display_pm_suspend(struct xe_device *xe)
 
 	if (has_display(xe)) {
 		intel_display_driver_suspend_access(display);
-		intel_encoder_suspend_all(&xe->display);
+		intel_encoder_suspend_all(xe->display);
 	}
 
 	intel_opregion_suspend(display, s2idle ? PCI_D1 : PCI_D3cold);
@@ -372,7 +372,7 @@ void xe_display_pm_suspend(struct xe_device *xe)
 
 void xe_display_pm_shutdown(struct xe_device *xe)
 {
-	struct intel_display *display = &xe->display;
+	struct intel_display *display = xe->display;
 
 	if (!xe->info.probe_display)
 		return;
@@ -416,7 +416,7 @@ void xe_display_pm_runtime_suspend(struct xe_device *xe)
 
 void xe_display_pm_suspend_late(struct xe_device *xe)
 {
-	struct intel_display *display = &xe->display;
+	struct intel_display *display = xe->display;
 	bool s2idle = suspend_to_idle();
 
 	if (!xe->info.probe_display)
@@ -427,7 +427,7 @@ void xe_display_pm_suspend_late(struct xe_device *xe)
 
 void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
 {
-	struct intel_display *display = &xe->display;
+	struct intel_display *display = xe->display;
 
 	if (!xe->info.probe_display)
 		return;
@@ -445,7 +445,7 @@ void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
 
 void xe_display_pm_shutdown_late(struct xe_device *xe)
 {
-	struct intel_display *display = &xe->display;
+	struct intel_display *display = xe->display;
 
 	if (!xe->info.probe_display)
 		return;
@@ -460,7 +460,7 @@ void xe_display_pm_shutdown_late(struct xe_device *xe)
 
 void xe_display_pm_resume_early(struct xe_device *xe)
 {
-	struct intel_display *display = &xe->display;
+	struct intel_display *display = xe->display;
 
 	if (!xe->info.probe_display)
 		return;
@@ -470,7 +470,7 @@ void xe_display_pm_resume_early(struct xe_device *xe)
 
 void xe_display_pm_resume(struct xe_device *xe)
 {
-	struct intel_display *display = &xe->display;
+	struct intel_display *display = xe->display;
 
 	if (!xe->info.probe_display)
 		return;
diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index d918ae1c8061..9d734a18cd36 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -399,8 +399,8 @@ static bool reuse_vma(struct intel_plane_state *new_plane_state,
 		goto found;
 	}
 
-	if (fb == intel_fbdev_framebuffer(xe->display.fbdev.fbdev)) {
-		vma = intel_fbdev_vma_pointer(xe->display.fbdev.fbdev);
+	if (fb == intel_fbdev_framebuffer(xe->display->fbdev.fbdev)) {
+		vma = intel_fbdev_vma_pointer(xe->display->fbdev.fbdev);
 		if (vma)
 			goto found;
 	}
diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
index 7c02323e9531..e47b8d1c95ab 100644
--- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
+++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
@@ -223,7 +223,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct xe_device *xe, u8 *msg_in,
 
 	msg_size_in = msg_in_len + HDCP_GSC_HEADER_SIZE;
 	msg_size_out = msg_out_len + HDCP_GSC_HEADER_SIZE;
-	hdcp_message = xe->display.hdcp.hdcp_message;
+	hdcp_message = xe->display->hdcp.hdcp_message;
 	addr_out_off = PAGE_SIZE;
 
 	host_session_id = xe_gsc_create_host_session_id();
-- 
2.39.5

