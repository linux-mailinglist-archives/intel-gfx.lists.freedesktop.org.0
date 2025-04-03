Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD18A79FB3
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Apr 2025 11:12:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4811110E971;
	Thu,  3 Apr 2025 09:12:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UvWF4yap";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8932A10E956;
 Thu,  3 Apr 2025 09:12:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743671542; x=1775207542;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KU/ZL99mk8Fj79ZrSIdHlJbtLitcA39ogOrQna0uP+w=;
 b=UvWF4yapUlK8jS4TE6dmioRDVK9eDLzSSzs9y/Ar5BRcTNlWis2CeNoa
 cjM2tuDi1UfuiPT0yW4FbwpLfgLL+OUGJ8FCols4g4sFjK7mRJbhkzeKq
 NrsR18LGu839+O1uf3/UiBcko371EbxE/6H8VUW2Yz+dJRonigSICuslm
 qxCdfZEAlLWZDpHhQarLUE8SbTRYnigdfEO65CRsmUYO+NuGTnyArbalz
 PPxWKsmcz2oE+xZOPjywLBo/oxBz2iN8PwBw8Zxkob7on6dO7sk8BpPEC
 g5EwpVfX2a9B93rjILMWWFG2SLjsoalUQrKRCj+CrXGV7Abk2LNd1Ec19 Q==;
X-CSE-ConnectionGUID: fHtqEiiDQpKfPYwO5reiIA==
X-CSE-MsgGUID: WWdxzEdMSJ2QMqxdi2DNGA==
X-IronPort-AV: E=McAfee;i="6700,10204,11392"; a="45206616"
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="45206616"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 02:12:08 -0700
X-CSE-ConnectionGUID: RgmshhWeRt+wvjwNqBwuYw==
X-CSE-MsgGUID: yoUZqrj1TpqT8dkD2dtuSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="127806505"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.158])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 02:12:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 5/7] drm/i915/wm: convert intel_wm.h external interfaces to
 struct intel_display
Date: Thu,  3 Apr 2025 12:11:37 +0300
Message-Id: <4aee2823b870f6281025293aa55cb5cf5a761ca3.1743671373.git.jani.nikula@intel.com>
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
pointer. Convert the intel_wm.h interface to struct intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c        | 32 +++++++++++--------
 drivers/gpu/drm/i915/display/i9xx_wm.h        | 18 +++++------
 drivers/gpu/drm/i915/display/intel_display.c  |  8 ++---
 .../drm/i915/display/intel_display_driver.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_wm.c       |  4 +--
 5 files changed, 33 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index e6a1b9b10b01..7202ef503e58 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -200,7 +200,7 @@ static bool _intel_set_memory_cxsr(struct drm_i915_private *dev_priv, bool enabl
 
 /**
  * intel_set_memory_cxsr - Configure CxSR state
- * @dev_priv: i915 device
+ * @display: display device
  * @enable: Allow vs. disallow CxSR
  *
  * Allow or disallow the system to enter a special CxSR
@@ -235,8 +235,9 @@ static bool _intel_set_memory_cxsr(struct drm_i915_private *dev_priv, bool enabl
  * the hardware w.r.t. HPLL SR when writing to plane registers.
  * Disallowing just CxSR is sufficient.
  */
-bool intel_set_memory_cxsr(struct drm_i915_private *dev_priv, bool enable)
+bool intel_set_memory_cxsr(struct intel_display *display, bool enable)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	bool ret;
 
 	mutex_lock(&dev_priv->display.wm.wm_mutex);
@@ -652,7 +653,7 @@ static void pnv_update_wm(struct intel_display *display)
 	latency = pnv_get_cxsr_latency(dev_priv);
 	if (!latency) {
 		drm_dbg_kms(&dev_priv->drm, "Unknown FSB/MEM, disabling CxSR\n");
-		intel_set_memory_cxsr(dev_priv, false);
+		intel_set_memory_cxsr(display, false);
 		return;
 	}
 
@@ -702,9 +703,9 @@ static void pnv_update_wm(struct intel_display *display)
 		intel_uncore_write(&dev_priv->uncore, DSPFW3(dev_priv), reg);
 		drm_dbg_kms(&dev_priv->drm, "DSPFW3 register is %x\n", reg);
 
-		intel_set_memory_cxsr(dev_priv, true);
+		intel_set_memory_cxsr(display, true);
 	} else {
-		intel_set_memory_cxsr(dev_priv, false);
+		intel_set_memory_cxsr(display, false);
 	}
 }
 
@@ -2177,7 +2178,7 @@ static void i965_update_wm(struct intel_display *display)
 	} else {
 		cxsr_enabled = false;
 		/* Turn off self refresh if both pipes are enabled */
-		intel_set_memory_cxsr(dev_priv, false);
+		intel_set_memory_cxsr(display, false);
 	}
 
 	drm_dbg_kms(&dev_priv->drm,
@@ -2198,7 +2199,7 @@ static void i965_update_wm(struct intel_display *display)
 			   FW_WM(cursor_sr, CURSOR_SR));
 
 	if (cxsr_enabled)
-		intel_set_memory_cxsr(dev_priv, true);
+		intel_set_memory_cxsr(display, true);
 }
 
 #undef FW_WM
@@ -2307,7 +2308,7 @@ static void i9xx_update_wm(struct intel_display *display)
 	cwm = 2;
 
 	/* Play safe and disable self-refresh before adjusting watermarks. */
-	intel_set_memory_cxsr(dev_priv, false);
+	intel_set_memory_cxsr(display, false);
 
 	/* Calc sr entries for one plane configs */
 	if (HAS_FW_BLC(dev_priv) && crtc) {
@@ -2359,7 +2360,7 @@ static void i9xx_update_wm(struct intel_display *display)
 	intel_uncore_write(&dev_priv->uncore, FW_BLC2, fwater_hi);
 
 	if (crtc)
-		intel_set_memory_cxsr(dev_priv, true);
+		intel_set_memory_cxsr(display, true);
 }
 
 static void i845_update_wm(struct intel_display *display)
@@ -3411,8 +3412,10 @@ static void ilk_write_wm_values(struct drm_i915_private *dev_priv,
 	dev_priv->display.wm.hw = *results;
 }
 
-bool ilk_disable_cxsr(struct drm_i915_private *dev_priv)
+bool ilk_disable_cxsr(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
 	return _ilk_disable_lp_wm(dev_priv, WM_DIRTY_LP_ALL);
 }
 
@@ -3580,8 +3583,9 @@ static int ilk_sanitize_watermarks_add_affected(struct drm_atomic_state *state)
  * through the atomic check code to calculate new watermark values in the
  * state object.
  */
-void ilk_wm_sanitize(struct drm_i915_private *dev_priv)
+void ilk_wm_sanitize(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct drm_atomic_state *state;
 	struct intel_atomic_state *intel_state;
 	struct intel_crtc *crtc;
@@ -4156,8 +4160,10 @@ static const struct intel_wm_funcs i845_wm_funcs = {
 static const struct intel_wm_funcs nop_funcs = {
 };
 
-void i9xx_wm_init(struct drm_i915_private *dev_priv)
+void i9xx_wm_init(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
 	/* For FIFO watermark updates */
 	if (HAS_PCH_SPLIT(dev_priv)) {
 		ilk_setup_wm_latency(dev_priv);
@@ -4172,7 +4178,7 @@ void i9xx_wm_init(struct drm_i915_private *dev_priv)
 		if (!pnv_get_cxsr_latency(dev_priv)) {
 			drm_info(&dev_priv->drm, "Unknown FSB/MEM, disabling CxSR\n");
 			/* Disable CxSR and never update its watermark again */
-			intel_set_memory_cxsr(dev_priv, false);
+			intel_set_memory_cxsr(display, false);
 			dev_priv->display.funcs.wm = &nop_funcs;
 		} else {
 			dev_priv->display.funcs.wm = &pnv_wm_funcs;
diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.h b/drivers/gpu/drm/i915/display/i9xx_wm.h
index 06ac37c6c94b..7bb363b2a756 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.h
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.h
@@ -8,28 +8,28 @@
 
 #include <linux/types.h>
 
-struct drm_i915_private;
 struct intel_crtc_state;
+struct intel_display;
 struct intel_plane_state;
 
 #ifdef I915
-bool ilk_disable_cxsr(struct drm_i915_private *i915);
-void ilk_wm_sanitize(struct drm_i915_private *i915);
-bool intel_set_memory_cxsr(struct drm_i915_private *i915, bool enable);
-void i9xx_wm_init(struct drm_i915_private *i915);
+bool ilk_disable_cxsr(struct intel_display *display);
+void ilk_wm_sanitize(struct intel_display *display);
+bool intel_set_memory_cxsr(struct intel_display *display, bool enable);
+void i9xx_wm_init(struct intel_display *display);
 #else
-static inline bool ilk_disable_cxsr(struct drm_i915_private *i915)
+static inline bool ilk_disable_cxsr(struct intel_display *display)
 {
 	return false;
 }
-static inline void ilk_wm_sanitize(struct drm_i915_private *i915)
+static inline void ilk_wm_sanitize(struct intel_display *display)
 {
 }
-static inline bool intel_set_memory_cxsr(struct drm_i915_private *i915, bool enable)
+static inline bool intel_set_memory_cxsr(struct intel_display *display, bool enable)
 {
 	return false;
 }
-static inline void i9xx_wm_init(struct drm_i915_private *i915)
+static inline void i9xx_wm_init(struct intel_display *display)
 {
 }
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a6cd4a6d6c08..564b34110ddd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -664,7 +664,6 @@ void intel_plane_disable_noatomic(struct intel_crtc *crtc,
 				  struct intel_plane *plane)
 {
 	struct intel_display *display = to_intel_display(crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct intel_crtc_state *crtc_state =
 		to_intel_crtc_state(crtc->base.state);
 	struct intel_plane_state *plane_state =
@@ -697,7 +696,7 @@ void intel_plane_disable_noatomic(struct intel_crtc *crtc,
 	 * wait-for-vblank between disabling the plane and the pipe.
 	 */
 	if (HAS_GMCH(display) &&
-	    intel_set_memory_cxsr(dev_priv, false))
+	    intel_set_memory_cxsr(display, false))
 		intel_plane_initial_vblank_wait(crtc);
 
 	/*
@@ -1167,7 +1166,6 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 	const struct intel_crtc_state *new_crtc_state =
@@ -1221,7 +1219,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 	 * wait-for-vblank between disabling the plane and the pipe.
 	 */
 	if (HAS_GMCH(display) && old_crtc_state->hw.active &&
-	    new_crtc_state->disable_cxsr && intel_set_memory_cxsr(dev_priv, false))
+	    new_crtc_state->disable_cxsr && intel_set_memory_cxsr(display, false))
 		intel_crtc_wait_for_next_vblank(crtc);
 
 	/*
@@ -1232,7 +1230,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 	 * WaCxSRDisabledForSpriteScaling:ivb
 	 */
 	if (!HAS_GMCH(display) && old_crtc_state->hw.active &&
-	    new_crtc_state->disable_cxsr && ilk_disable_cxsr(dev_priv))
+	    new_crtc_state->disable_cxsr && ilk_disable_cxsr(display))
 		intel_crtc_wait_for_next_vblank(crtc);
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index f6d5d51dda0f..efee8925987e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -476,7 +476,7 @@ int intel_display_driver_probe_nogem(struct intel_display *display)
 	 * since the watermark calculation done here will use pstate->fb.
 	 */
 	if (!HAS_GMCH(display))
-		ilk_wm_sanitize(i915);
+		ilk_wm_sanitize(display);
 
 	return 0;
 
diff --git a/drivers/gpu/drm/i915/display/intel_wm.c b/drivers/gpu/drm/i915/display/intel_wm.c
index 43c69a672bb3..ed78c5ffffb7 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.c
+++ b/drivers/gpu/drm/i915/display/intel_wm.c
@@ -169,12 +169,10 @@ void intel_print_wm_latency(struct intel_display *display,
 
 void intel_wm_init(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
 	if (DISPLAY_VER(display) >= 9)
 		skl_wm_init(display);
 	else
-		i9xx_wm_init(i915);
+		i9xx_wm_init(display);
 }
 
 static void wm_latency_show(struct seq_file *m, const u16 wm[8])
-- 
2.39.5

