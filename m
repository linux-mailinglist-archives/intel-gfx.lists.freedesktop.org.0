Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5492CA80C92
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 15:39:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D842B10E6A1;
	Tue,  8 Apr 2025 13:39:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CXEZcqAS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3753910E6A2;
 Tue,  8 Apr 2025 13:39:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744119550; x=1775655550;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rfcnkKbWxJ8BtXhOTdpXudog3NGqf1g6YfNNnIgwFbg=;
 b=CXEZcqASnTJJy9sYr2Xld25POXJIN8gKZgn/H7VUTd0yZijKHbsXM9W+
 imEcTqlmRXbec1ZjRWc4yY9V+hCbZR3RXRb+1Fm2/6pinug/d9cpfj0FX
 AML4Y5v2fhtAZ1GlmGe92Ud2DWGRl/ILhfmrsrIHX8AEfVIkg6Idta55Z
 cZZywghD8t4JBVPAFwAapn8dG7ktOMlIFyXQnx0j6rf72rbmkF4u8jdyf
 LKpMWeaKLdGdziQu4A3fV8nEODpksXcOQPXlhRZj7AOVhGb9gppkkRQ1/
 KSgn/ZC2u/2sU18yKmZ2nsHqEcX0VKipVMpUxTRfaognzQDhDTM8heXs8 Q==;
X-CSE-ConnectionGUID: ye3tZ4cyTiu7ZV016tGFHw==
X-CSE-MsgGUID: 4OatfN1PQJ2CoXWRPNm0gQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45438412"
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="45438412"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 06:39:10 -0700
X-CSE-ConnectionGUID: v3IP+WTmQLSbEL8tetHOOw==
X-CSE-MsgGUID: hoqrviEURTiyRwa9OtKTgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="133483640"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.137])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 06:39:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 5/7] drm/i915/wm: convert i9xx_wm.h external interfaces to
 struct intel_display
Date: Tue,  8 Apr 2025 16:38:39 +0300
Message-Id: <3e30634d85c0e0aac9c95f9a2f928131ba400271.1744119460.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1744119460.git.jani.nikula@intel.com>
References: <cover.1744119460.git.jani.nikula@intel.com>
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
pointer. Convert the i9xx_wm.h interface to struct intel_display.

With this, we can make intel_wm.c independent of i915_drv.h.

v2: Also remove i915_drv.h, fix commit message

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c        | 32 +++++++++++--------
 drivers/gpu/drm/i915/display/i9xx_wm.h        | 18 +++++------
 drivers/gpu/drm/i915/display/intel_display.c  |  8 ++---
 .../drm/i915/display/intel_display_driver.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_wm.c       |  9 +++---
 5 files changed, 37 insertions(+), 32 deletions(-)

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
index 745eef470bad..db524d01e574 100644
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
@@ -1169,7 +1168,6 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 	const struct intel_crtc_state *new_crtc_state =
@@ -1223,7 +1221,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 	 * wait-for-vblank between disabling the plane and the pipe.
 	 */
 	if (HAS_GMCH(display) && old_crtc_state->hw.active &&
-	    new_crtc_state->disable_cxsr && intel_set_memory_cxsr(dev_priv, false))
+	    new_crtc_state->disable_cxsr && intel_set_memory_cxsr(display, false))
 		intel_crtc_wait_for_next_vblank(crtc);
 
 	/*
@@ -1234,7 +1232,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
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
index 43c69a672bb3..bba82e888db2 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.c
+++ b/drivers/gpu/drm/i915/display/intel_wm.c
@@ -5,8 +5,11 @@
 
 #include <linux/debugfs.h>
 
-#include "i915_drv.h"
+#include <drm/drm_file.h>
+#include <drm/drm_print.h>
+
 #include "i9xx_wm.h"
+#include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_wm.h"
 #include "skl_watermark.h"
@@ -169,12 +172,10 @@ void intel_print_wm_latency(struct intel_display *display,
 
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

