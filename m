Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC44041A8A1
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Sep 2021 08:07:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A91616E0AF;
	Tue, 28 Sep 2021 06:07:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40E8A6E0AF
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Sep 2021 06:07:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10120"; a="221420496"
X-IronPort-AV: E=Sophos;i="5.85,328,1624345200"; d="scan'208";a="221420496"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2021 23:07:32 -0700
X-IronPort-AV: E=Sophos;i="5.85,328,1624345200"; d="scan'208";a="561824501"
Received: from prusina-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.37.181])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2021 23:07:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Tue, 28 Sep 2021 09:07:08 +0300
Message-Id: <20210928060713.8879-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210928060713.8879-1-jani.nikula@intel.com>
References: <20210928060713.8879-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI AGAIN 3/8] drm/i915: make update_wm take a dev_priv.
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

From: Dave Airlie <airlied@redhat.com>

The crtc was never being used here.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Dave Airlie <airlied@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 10 +++++-----
 drivers/gpu/drm/i915/i915_drv.h              |  2 +-
 drivers/gpu/drm/i915/intel_pm.c              | 20 +++++++-------------
 drivers/gpu/drm/i915/intel_pm.h              |  2 +-
 4 files changed, 14 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f27c294beb92..566a7d2feb1a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2383,7 +2383,7 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 	intel_frontbuffer_flip(dev_priv, new_crtc_state->fb_bits);
 
 	if (new_crtc_state->update_wm_post && new_crtc_state->hw.active)
-		intel_update_watermarks(crtc);
+		intel_update_watermarks(dev_priv);
 
 	if (hsw_post_update_enable_ips(old_crtc_state, new_crtc_state))
 		hsw_enable_ips(new_crtc_state);
@@ -2540,7 +2540,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 		if (dev_priv->display.initial_watermarks)
 			dev_priv->display.initial_watermarks(state, crtc);
 		else if (new_crtc_state->update_wm_pre)
-			intel_update_watermarks(crtc);
+			intel_update_watermarks(dev_priv);
 	}
 
 	/*
@@ -3587,7 +3587,7 @@ static void i9xx_crtc_enable(struct intel_atomic_state *state,
 	if (dev_priv->display.initial_watermarks)
 		dev_priv->display.initial_watermarks(state, crtc);
 	else
-		intel_update_watermarks(crtc);
+		intel_update_watermarks(dev_priv);
 	intel_enable_transcoder(new_crtc_state);
 
 	intel_crtc_vblank_on(new_crtc_state);
@@ -3654,7 +3654,7 @@ static void i9xx_crtc_disable(struct intel_atomic_state *state,
 		intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false);
 
 	if (!dev_priv->display.initial_watermarks)
-		intel_update_watermarks(crtc);
+		intel_update_watermarks(dev_priv);
 
 	/* clock the pipe down to 640x480@60 to potentially save power */
 	if (IS_I830(dev_priv))
@@ -3730,7 +3730,7 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 		encoder->base.crtc = NULL;
 
 	intel_fbc_disable(crtc);
-	intel_update_watermarks(crtc);
+	intel_update_watermarks(dev_priv);
 	intel_disable_shared_dpll(crtc_state);
 
 	intel_display_power_put_all_in_set(dev_priv, &crtc->enabled_power_domains);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index db0aa5bb4d18..90e2f44e2deb 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -341,7 +341,7 @@ struct drm_i915_display_funcs {
 	void (*optimize_watermarks)(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc);
 	int (*compute_global_watermarks)(struct intel_atomic_state *state);
-	void (*update_wm)(struct intel_crtc *crtc);
+	void (*update_wm)(struct drm_i915_private *dev_priv);
 	int (*modeset_calc_cdclk)(struct intel_cdclk_state *state);
 	u8 (*calc_voltage_level)(int cdclk);
 	/* Returns the active state of the crtc, and if the crtc is active,
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 0e0309733c79..226f456cde3a 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -881,9 +881,8 @@ static struct intel_crtc *single_enabled_crtc(struct drm_i915_private *dev_priv)
 	return enabled;
 }
 
-static void pnv_update_wm(struct intel_crtc *unused_crtc)
+static void pnv_update_wm(struct drm_i915_private *dev_priv)
 {
-	struct drm_i915_private *dev_priv = to_i915(unused_crtc->base.dev);
 	struct intel_crtc *crtc;
 	const struct cxsr_latency *latency;
 	u32 reg;
@@ -2248,9 +2247,8 @@ static void vlv_optimize_watermarks(struct intel_atomic_state *state,
 	mutex_unlock(&dev_priv->wm.wm_mutex);
 }
 
-static void i965_update_wm(struct intel_crtc *unused_crtc)
+static void i965_update_wm(struct drm_i915_private *dev_priv)
 {
-	struct drm_i915_private *dev_priv = to_i915(unused_crtc->base.dev);
 	struct intel_crtc *crtc;
 	int srwm = 1;
 	int cursor_sr = 16;
@@ -2324,9 +2322,8 @@ static void i965_update_wm(struct intel_crtc *unused_crtc)
 
 #undef FW_WM
 
-static void i9xx_update_wm(struct intel_crtc *unused_crtc)
+static void i9xx_update_wm(struct drm_i915_private *dev_priv)
 {
-	struct drm_i915_private *dev_priv = to_i915(unused_crtc->base.dev);
 	const struct intel_watermark_params *wm_info;
 	u32 fwater_lo;
 	u32 fwater_hi;
@@ -2476,9 +2473,8 @@ static void i9xx_update_wm(struct intel_crtc *unused_crtc)
 		intel_set_memory_cxsr(dev_priv, true);
 }
 
-static void i845_update_wm(struct intel_crtc *unused_crtc)
+static void i845_update_wm(struct drm_i915_private *dev_priv)
 {
-	struct drm_i915_private *dev_priv = to_i915(unused_crtc->base.dev);
 	struct intel_crtc *crtc;
 	const struct drm_display_mode *pipe_mode;
 	u32 fwater_lo;
@@ -7136,7 +7132,7 @@ void ilk_wm_get_hw_state(struct drm_i915_private *dev_priv)
 
 /**
  * intel_update_watermarks - update FIFO watermark values based on current modes
- * @crtc: the #intel_crtc on which to compute the WM
+ * @dev_priv: i915 device
  *
  * Calculate watermark values for the various WM regs based on current mode
  * and plane configuration.
@@ -7167,12 +7163,10 @@ void ilk_wm_get_hw_state(struct drm_i915_private *dev_priv)
  * We don't use the sprite, so we can ignore that.  And on Crestline we have
  * to set the non-SR watermarks to 8.
  */
-void intel_update_watermarks(struct intel_crtc *crtc)
+void intel_update_watermarks(struct drm_i915_private *dev_priv)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-
 	if (dev_priv->display.update_wm)
-		dev_priv->display.update_wm(crtc);
+		dev_priv->display.update_wm(dev_priv);
 }
 
 void intel_enable_ipc(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel_pm.h
index 941b3ae555c8..99bce0b4f5fb 100644
--- a/drivers/gpu/drm/i915/intel_pm.h
+++ b/drivers/gpu/drm/i915/intel_pm.h
@@ -29,7 +29,7 @@ struct skl_wm_level;
 void intel_init_clock_gating(struct drm_i915_private *dev_priv);
 void intel_suspend_hw(struct drm_i915_private *dev_priv);
 int ilk_wm_max_level(const struct drm_i915_private *dev_priv);
-void intel_update_watermarks(struct intel_crtc *crtc);
+void intel_update_watermarks(struct drm_i915_private *dev_priv);
 void intel_init_pm(struct drm_i915_private *dev_priv);
 void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv);
 void intel_pm_setup(struct drm_i915_private *dev_priv);
-- 
2.30.2

