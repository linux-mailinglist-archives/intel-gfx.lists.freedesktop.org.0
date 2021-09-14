Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DAC740B6D5
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Sep 2021 20:25:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76B8D6E53E;
	Tue, 14 Sep 2021 18:25:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 472CA6E53E
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Sep 2021 18:25:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10107"; a="222150003"
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="222150003"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 11:25:47 -0700
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="470310181"
Received: from lveltman-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.216.6])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 11:25:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, Dave Airlie <airlied@gmail.com>,
 Dave Airlie <airlied@redhat.com>
Date: Tue, 14 Sep 2021 21:25:01 +0300
Message-Id: <dd7eb8e2195a5a5e060e74bf3c9f848dceff4be6.1631643729.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1631643729.git.jani.nikula@intel.com>
References: <cover.1631643729.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/24] drm/i915: make update_wm take a dev_priv.
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
index a7ca38613f89..109e213d8f75 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2374,7 +2374,7 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 	intel_frontbuffer_flip(dev_priv, new_crtc_state->fb_bits);
 
 	if (new_crtc_state->update_wm_post && new_crtc_state->hw.active)
-		intel_update_watermarks(crtc);
+		intel_update_watermarks(dev_priv);
 
 	if (hsw_post_update_enable_ips(old_crtc_state, new_crtc_state))
 		hsw_enable_ips(new_crtc_state);
@@ -2531,7 +2531,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 		if (dev_priv->display.initial_watermarks)
 			dev_priv->display.initial_watermarks(state, crtc);
 		else if (new_crtc_state->update_wm_pre)
-			intel_update_watermarks(crtc);
+			intel_update_watermarks(dev_priv);
 	}
 
 	/*
@@ -3578,7 +3578,7 @@ static void i9xx_crtc_enable(struct intel_atomic_state *state,
 	if (dev_priv->display.initial_watermarks)
 		dev_priv->display.initial_watermarks(state, crtc);
 	else
-		intel_update_watermarks(crtc);
+		intel_update_watermarks(dev_priv);
 	intel_enable_pipe(new_crtc_state);
 
 	intel_crtc_vblank_on(new_crtc_state);
@@ -3645,7 +3645,7 @@ static void i9xx_crtc_disable(struct intel_atomic_state *state,
 		intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false);
 
 	if (!dev_priv->display.initial_watermarks)
-		intel_update_watermarks(crtc);
+		intel_update_watermarks(dev_priv);
 
 	/* clock the pipe down to 640x480@60 to potentially save power */
 	if (IS_I830(dev_priv))
@@ -3721,7 +3721,7 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 		encoder->base.crtc = NULL;
 
 	intel_fbc_disable(crtc);
-	intel_update_watermarks(crtc);
+	intel_update_watermarks(dev_priv);
 	intel_disable_shared_dpll(crtc_state);
 
 	intel_display_power_put_all_in_set(dev_priv, &crtc->enabled_power_domains);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index b24c0d1dbd31..18e7a6a2d4a4 100644
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
index d9993eb3730d..be6520756aae 100644
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
@@ -2253,9 +2252,8 @@ static void vlv_optimize_watermarks(struct intel_atomic_state *state,
 	mutex_unlock(&dev_priv->wm.wm_mutex);
 }
 
-static void i965_update_wm(struct intel_crtc *unused_crtc)
+static void i965_update_wm(struct drm_i915_private *dev_priv)
 {
-	struct drm_i915_private *dev_priv = to_i915(unused_crtc->base.dev);
 	struct intel_crtc *crtc;
 	int srwm = 1;
 	int cursor_sr = 16;
@@ -2329,9 +2327,8 @@ static void i965_update_wm(struct intel_crtc *unused_crtc)
 
 #undef FW_WM
 
-static void i9xx_update_wm(struct intel_crtc *unused_crtc)
+static void i9xx_update_wm(struct drm_i915_private *dev_priv)
 {
-	struct drm_i915_private *dev_priv = to_i915(unused_crtc->base.dev);
 	const struct intel_watermark_params *wm_info;
 	u32 fwater_lo;
 	u32 fwater_hi;
@@ -2481,9 +2478,8 @@ static void i9xx_update_wm(struct intel_crtc *unused_crtc)
 		intel_set_memory_cxsr(dev_priv, true);
 }
 
-static void i845_update_wm(struct intel_crtc *unused_crtc)
+static void i845_update_wm(struct drm_i915_private *dev_priv)
 {
-	struct drm_i915_private *dev_priv = to_i915(unused_crtc->base.dev);
 	struct intel_crtc *crtc;
 	const struct drm_display_mode *pipe_mode;
 	u32 fwater_lo;
@@ -7138,7 +7134,7 @@ void ilk_wm_get_hw_state(struct drm_i915_private *dev_priv)
 
 /**
  * intel_update_watermarks - update FIFO watermark values based on current modes
- * @crtc: the #intel_crtc on which to compute the WM
+ * @dev_priv: i915 device
  *
  * Calculate watermark values for the various WM regs based on current mode
  * and plane configuration.
@@ -7169,12 +7165,10 @@ void ilk_wm_get_hw_state(struct drm_i915_private *dev_priv)
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

