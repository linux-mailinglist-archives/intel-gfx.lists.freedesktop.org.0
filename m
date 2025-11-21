Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30727C78C63
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Nov 2025 12:25:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B781410E851;
	Fri, 21 Nov 2025 11:25:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fT2TSgjw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FD2010E851;
 Fri, 21 Nov 2025 11:25:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763724335; x=1795260335;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wsEpRhTSYpVJYzyIqAI2D4wJGfeLeduB6Fp8NKJH/Fs=;
 b=fT2TSgjwKg4qHLjxz62sBpbQR1qFni00JfSwVucziojNgmQLDOulIv1u
 dKK0HvBodHx/tCxjHDt3PjOkzJy9ATH6TllASPKDWRy1wnMZUZicCdg6f
 cwzO0KRtRxZ/gPSF/fD7y1jR6m6Vhzw2qHyORKrTqBlu/h0TMyM2u0PIj
 h9UDEFv7QskKOmZ0kGTZ75PFGkivZjPYuffiuR4jv9U/uStJTlPrDHB+e
 hRO80u9pso6XH8FSVsA3/IWBjfsPDqb7l96JbOtuNYB6ATkPyI0WLYdiT
 M7KYACbM61P+WVLCB9oxI5/rsbTrLs5H5IdzsVRsi2n/i5TyVRDtTxFQg w==;
X-CSE-ConnectionGUID: XY5MgEweTKepMXH40bP3Kw==
X-CSE-MsgGUID: 85qUg71JTyiD1NO7p5wXcA==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="65693597"
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="65693597"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 03:25:35 -0800
X-CSE-ConnectionGUID: v/pNJhO8T3GsWXCBn5oOvw==
X-CSE-MsgGUID: Go/Q455CS8iOOT9DNjfh6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="215031515"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.86])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 03:25:32 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH 2/2] drm/i915: use struct drm_device for clock gating funcs
Date: Fri, 21 Nov 2025 13:22:00 +0200
Message-ID: <20251121112200.3435099-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251121112200.3435099-1-jani.nikula@intel.com>
References: <20251121112200.3435099-1-jani.nikula@intel.com>
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

While we want to refactor intel_clock_gating.[ch] and likely move a lot
of display related code to display, start off with a little intermediate
change to use struct drm_device in the interface instead of struct
drm_i915_private, to allow us to drop another dependency on i915_drv.h
and struct drm_i915_private.

Cc: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c |  4 +---
 drivers/gpu/drm/i915/display/intel_display_reset.c |  5 ++---
 drivers/gpu/drm/i915/i915_driver.c                 |  4 ++--
 drivers/gpu/drm/i915/i915_gem.c                    |  4 ++--
 drivers/gpu/drm/i915/intel_clock_gating.c          | 10 +++++++---
 drivers/gpu/drm/i915/intel_clock_gating.h          |  6 +++---
 drivers/gpu/drm/i915/vlv_suspend.c                 |  2 +-
 7 files changed, 18 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 08db9bbbfcb1..346cf3cf2903 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1415,8 +1415,6 @@ static void hsw_enable_pc8(struct intel_display *display)
 
 static void hsw_disable_pc8(struct intel_display *display)
 {
-	struct drm_i915_private __maybe_unused *dev_priv = to_i915(display->drm);
-
 	drm_dbg_kms(display->drm, "Disabling package C8+\n");
 
 	hsw_restore_lcpll(display);
@@ -1424,7 +1422,7 @@ static void hsw_disable_pc8(struct intel_display *display)
 
 	/* Many display registers don't survive PC8+ */
 #ifdef I915 /* FIXME */
-	intel_clock_gating_init(dev_priv);
+	intel_clock_gating_init(display->drm);
 #endif
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
index 03e8c68d2913..d00ef5bdcbda 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reset.c
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
@@ -6,13 +6,13 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_print.h>
 
-#include "i915_drv.h"
 #include "intel_clock_gating.h"
 #include "intel_cx0_phy.h"
 #include "intel_display_core.h"
 #include "intel_display_driver.h"
 #include "intel_display_reset.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_hotplug.h"
 #include "intel_pps.h"
 
@@ -79,7 +79,6 @@ bool intel_display_reset_prepare(struct intel_display *display,
 
 void intel_display_reset_finish(struct intel_display *display, bool test_only)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct drm_modeset_acquire_ctx *ctx = &display->restore.reset_ctx;
 	struct drm_atomic_state *state;
 	int ret;
@@ -107,7 +106,7 @@ void intel_display_reset_finish(struct intel_display *display, bool test_only)
 		 */
 		intel_pps_unlock_regs_wa(display);
 		intel_display_driver_init_hw(display);
-		intel_clock_gating_init(i915);
+		intel_clock_gating_init(display->drm);
 		intel_cx0_pll_power_save_wa(display);
 		intel_hpd_init(display);
 
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 2e837865f829..db0dd25f734d 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -263,7 +263,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 
 	intel_irq_init(dev_priv);
 	intel_display_driver_early_probe(display);
-	intel_clock_gating_hooks_init(dev_priv);
+	intel_clock_gating_hooks_init(&dev_priv->drm);
 
 	intel_detect_preproduction_hw(dev_priv);
 
@@ -1276,7 +1276,7 @@ static int i915_drm_resume(struct drm_device *dev)
 
 	intel_display_driver_init_hw(display);
 
-	intel_clock_gating_init(dev_priv);
+	intel_clock_gating_init(&dev_priv->drm);
 
 	if (intel_display_device_present(display))
 		intel_display_driver_resume_access(display);
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 4c82c9544b93..b40d4d88de01 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1184,7 +1184,7 @@ int i915_gem_init(struct drm_i915_private *dev_priv)
 	 *
 	 * FIXME: break up the workarounds and apply them at the right time!
 	 */
-	intel_clock_gating_init(dev_priv);
+	intel_clock_gating_init(&dev_priv->drm);
 
 	for_each_gt(gt, dev_priv, i) {
 		ret = intel_gt_init(gt);
@@ -1235,7 +1235,7 @@ int i915_gem_init(struct drm_i915_private *dev_priv)
 		/* Minimal basic recovery for KMS */
 		ret = i915_ggtt_enable_hw(dev_priv);
 		i915_ggtt_resume(to_gt(dev_priv)->ggtt);
-		intel_clock_gating_init(dev_priv);
+		intel_clock_gating_init(&dev_priv->drm);
 	}
 
 	i915_gem_drain_freed_objects(dev_priv);
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index 175a240ac848..7336934bb934 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -709,8 +709,10 @@ static void i830_init_clock_gating(struct drm_i915_private *i915)
 			   _MASKED_BIT_ENABLE(MEM_DISPLAY_B_TRICKLE_FEED_DISABLE));
 }
 
-void intel_clock_gating_init(struct drm_i915_private *i915)
+void intel_clock_gating_init(struct drm_device *drm)
 {
+	struct drm_i915_private *i915 = to_i915(drm);
+
 	i915->clock_gating_funcs->init_clock_gating(i915);
 }
 
@@ -749,15 +751,17 @@ CG_FUNCS(nop);
 
 /**
  * intel_clock_gating_hooks_init - setup the clock gating hooks
- * @i915: device private
+ * @drm: drm device
  *
  * Setup the hooks that configure which clocks of a given platform can be
  * gated and also apply various GT and display specific workarounds for these
  * platforms. Note that some GT specific workarounds are applied separately
  * when GPU contexts or batchbuffers start their execution.
  */
-void intel_clock_gating_hooks_init(struct drm_i915_private *i915)
+void intel_clock_gating_hooks_init(struct drm_device *drm)
 {
+	struct drm_i915_private *i915 = to_i915(drm);
+
 	if (IS_DG2(i915))
 		i915->clock_gating_funcs = &dg2_clock_gating_funcs;
 	else if (IS_COFFEELAKE(i915) || IS_COMETLAKE(i915))
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.h b/drivers/gpu/drm/i915/intel_clock_gating.h
index 5b4e4c55b2c2..3a4b443d9b8b 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.h
+++ b/drivers/gpu/drm/i915/intel_clock_gating.h
@@ -6,9 +6,9 @@
 #ifndef __INTEL_CLOCK_GATING_H__
 #define __INTEL_CLOCK_GATING_H__
 
-struct drm_i915_private;
+struct drm_device;
 
-void intel_clock_gating_init(struct drm_i915_private *i915);
-void intel_clock_gating_hooks_init(struct drm_i915_private *i915);
+void intel_clock_gating_init(struct drm_device *drm);
+void intel_clock_gating_hooks_init(struct drm_device *drm);
 
 #endif /* __INTEL_CLOCK_GATING_H__ */
diff --git a/drivers/gpu/drm/i915/vlv_suspend.c b/drivers/gpu/drm/i915/vlv_suspend.c
index 221e4c0b2c58..bace7b38329b 100644
--- a/drivers/gpu/drm/i915/vlv_suspend.c
+++ b/drivers/gpu/drm/i915/vlv_suspend.c
@@ -453,7 +453,7 @@ int vlv_resume_prepare(struct drm_i915_private *dev_priv, bool rpm_resume)
 	vlv_check_no_gt_access(dev_priv);
 
 	if (rpm_resume)
-		intel_clock_gating_init(dev_priv);
+		intel_clock_gating_init(&dev_priv->drm);
 
 	return ret;
 }
-- 
2.47.3

