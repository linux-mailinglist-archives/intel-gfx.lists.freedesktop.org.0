Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 274A7417144
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Sep 2021 13:49:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3ECC6EE1D;
	Fri, 24 Sep 2021 11:49:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC0856EE14
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Sep 2021 11:49:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10116"; a="287727224"
X-IronPort-AV: E=Sophos;i="5.85,319,1624345200"; d="scan'208";a="287727224"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2021 04:49:46 -0700
X-IronPort-AV: E=Sophos;i="5.85,319,1624345200"; d="scan'208";a="485362243"
Received: from avanhout-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.153])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2021 04:49:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Fri, 24 Sep 2021 14:47:39 +0300
Message-Id: <20210924114741.15940-22-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210924114741.15940-1-jani.nikula@intel.com>
References: <20210924114741.15940-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 22/24] drm/i915: constify display function vtable
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

Make nice clear tables instead of having things in two places.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Dave Airlie <airlied@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 81 ++++++++++++--------
 drivers/gpu/drm/i915/i915_drv.h              |  2 +-
 2 files changed, 52 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4f89ef430129..5619b26aa765 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3797,7 +3797,7 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 
 	drm_WARN_ON(&dev_priv->drm, IS_ERR(temp_crtc_state) || ret);
 
-	dev_priv->display.crtc_disable(to_intel_atomic_state(state), crtc);
+	dev_priv->display->crtc_disable(to_intel_atomic_state(state), crtc);
 
 	drm_atomic_state_put(state);
 
@@ -6006,7 +6006,7 @@ static bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
-	if (!i915->display.get_pipe_config(crtc, crtc_state))
+	if (!i915->display->get_pipe_config(crtc, crtc_state))
 		return false;
 
 	crtc_state->hw.active = true;
@@ -9814,7 +9814,7 @@ static void intel_enable_crtc(struct intel_atomic_state *state,
 
 	intel_crtc_update_active_timings(new_crtc_state);
 
-	dev_priv->display.crtc_enable(state, crtc);
+	dev_priv->display->crtc_enable(state, crtc);
 
 	if (new_crtc_state->bigjoiner_slave)
 		return;
@@ -9902,7 +9902,7 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
 	 */
 	intel_crtc_disable_pipe_crc(crtc);
 
-	dev_priv->display.crtc_disable(state, crtc);
+	dev_priv->display->crtc_disable(state, crtc);
 	crtc->active = false;
 	intel_fbc_disable(crtc);
 	intel_disable_shared_dpll(old_crtc_state);
@@ -10282,7 +10282,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	}
 
 	/* Now enable the clocks, plane, pipe, and connectors that we set up. */
-	dev_priv->display.commit_modeset_enables(state);
+	dev_priv->display->commit_modeset_enables(state);
 
 	if (state->modeset) {
 		intel_encoders_update_complete(state);
@@ -11286,6 +11286,46 @@ static const struct drm_mode_config_funcs intel_mode_funcs = {
 	.atomic_state_free = intel_atomic_state_free,
 };
 
+static const struct drm_i915_display_funcs skl_display_funcs = {
+	.get_pipe_config = hsw_get_pipe_config,
+	.crtc_enable = hsw_crtc_enable,
+	.crtc_disable = hsw_crtc_disable,
+	.commit_modeset_enables = skl_commit_modeset_enables,
+	.get_initial_plane_config = skl_get_initial_plane_config,
+};
+
+static const struct drm_i915_display_funcs ddi_display_funcs = {
+	.get_pipe_config = hsw_get_pipe_config,
+	.crtc_enable = hsw_crtc_enable,
+	.crtc_disable = hsw_crtc_disable,
+	.commit_modeset_enables = intel_commit_modeset_enables,
+	.get_initial_plane_config = i9xx_get_initial_plane_config,
+};
+
+static const struct drm_i915_display_funcs pch_split_display_funcs = {
+	.get_pipe_config = ilk_get_pipe_config,
+	.crtc_enable = ilk_crtc_enable,
+	.crtc_disable = ilk_crtc_disable,
+	.commit_modeset_enables = intel_commit_modeset_enables,
+	.get_initial_plane_config = i9xx_get_initial_plane_config,
+};
+
+static const struct drm_i915_display_funcs vlv_display_funcs = {
+	.get_pipe_config = i9xx_get_pipe_config,
+	.crtc_enable = valleyview_crtc_enable,
+	.crtc_disable = i9xx_crtc_disable,
+	.commit_modeset_enables = intel_commit_modeset_enables,
+	.get_initial_plane_config = i9xx_get_initial_plane_config,
+};
+
+static const struct drm_i915_display_funcs i9xx_display_funcs = {
+	.get_pipe_config = i9xx_get_pipe_config,
+	.crtc_enable = i9xx_crtc_enable,
+	.crtc_disable = i9xx_crtc_disable,
+	.commit_modeset_enables = intel_commit_modeset_enables,
+	.get_initial_plane_config = i9xx_get_initial_plane_config,
+};
+
 /**
  * intel_init_display_hooks - initialize the display modesetting hooks
  * @dev_priv: device private
@@ -11301,38 +11341,19 @@ void intel_init_display_hooks(struct drm_i915_private *dev_priv)
 	intel_dpll_init_clock_hook(dev_priv);
 
 	if (DISPLAY_VER(dev_priv) >= 9) {
-		dev_priv->display.get_pipe_config = hsw_get_pipe_config;
-		dev_priv->display.crtc_enable = hsw_crtc_enable;
-		dev_priv->display.crtc_disable = hsw_crtc_disable;
+		dev_priv->display = &skl_display_funcs;
 	} else if (HAS_DDI(dev_priv)) {
-		dev_priv->display.get_pipe_config = hsw_get_pipe_config;
-		dev_priv->display.crtc_enable = hsw_crtc_enable;
-		dev_priv->display.crtc_disable = hsw_crtc_disable;
+		dev_priv->display = &ddi_display_funcs;
 	} else if (HAS_PCH_SPLIT(dev_priv)) {
-		dev_priv->display.get_pipe_config = ilk_get_pipe_config;
-		dev_priv->display.crtc_enable = ilk_crtc_enable;
-		dev_priv->display.crtc_disable = ilk_crtc_disable;
+		dev_priv->display = &pch_split_display_funcs;
 	} else if (IS_CHERRYVIEW(dev_priv) ||
 		   IS_VALLEYVIEW(dev_priv)) {
-		dev_priv->display.get_pipe_config = i9xx_get_pipe_config;
-		dev_priv->display.crtc_enable = valleyview_crtc_enable;
-		dev_priv->display.crtc_disable = i9xx_crtc_disable;
+		dev_priv->display = &vlv_display_funcs;
 	} else {
-		dev_priv->display.get_pipe_config = i9xx_get_pipe_config;
-		dev_priv->display.crtc_enable = i9xx_crtc_enable;
-		dev_priv->display.crtc_disable = i9xx_crtc_disable;
+		dev_priv->display = &i9xx_display_funcs;
 	}
 
 	intel_fdi_init_hook(dev_priv);
-
-	if (DISPLAY_VER(dev_priv) >= 9) {
-		dev_priv->display.commit_modeset_enables = skl_commit_modeset_enables;
-		dev_priv->display.get_initial_plane_config = skl_get_initial_plane_config;
-	} else {
-		dev_priv->display.commit_modeset_enables = intel_commit_modeset_enables;
-		dev_priv->display.get_initial_plane_config = i9xx_get_initial_plane_config;
-	}
-
 }
 
 void intel_modeset_init_hw(struct drm_i915_private *i915)
@@ -11760,7 +11781,7 @@ int intel_modeset_init_nogem(struct drm_i915_private *i915)
 		 * can even allow for smooth boot transitions if the BIOS
 		 * fb is large enough for the active pipe configuration.
 		 */
-		i915->display.get_initial_plane_config(crtc, &plane_config);
+		i915->display->get_initial_plane_config(crtc, &plane_config);
 
 		/*
 		 * If the fb is shared between multiple heads, we'll
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 71b72db434b0..6a6d08219526 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -990,7 +990,7 @@ struct drm_i915_private {
 	const struct intel_dpll_funcs *dpll_funcs;
 
 	/* Display functions */
-	struct drm_i915_display_funcs display;
+	const struct drm_i915_display_funcs *display;
 
 	/* Display internal color functions */
 	const struct intel_color_funcs *color_funcs;
-- 
2.30.2

