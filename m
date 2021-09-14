Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C54BE40B6EE
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Sep 2021 20:27:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 082A56E532;
	Tue, 14 Sep 2021 18:27:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3978689E47
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Sep 2021 18:27:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10107"; a="221763336"
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="221763336"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 11:27:42 -0700
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="544230873"
Received: from lveltman-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.216.6])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 11:27:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, Dave Airlie <airlied@gmail.com>,
 Dave Airlie <airlied@redhat.com>
Date: Tue, 14 Sep 2021 21:25:20 +0300
Message-Id: <117ae634730292a1283ac4eec2c9e7c32f3a6be7.1631643729.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1631643729.git.jani.nikula@intel.com>
References: <cover.1631643729.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 22/24] drm/i915: constify display function vtable
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
index 36810c5181b3..dcdb7db313e4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3789,7 +3789,7 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 
 	drm_WARN_ON(&dev_priv->drm, IS_ERR(temp_crtc_state) || ret);
 
-	dev_priv->display.crtc_disable(to_intel_atomic_state(state), crtc);
+	dev_priv->display->crtc_disable(to_intel_atomic_state(state), crtc);
 
 	drm_atomic_state_put(state);
 
@@ -5994,7 +5994,7 @@ static bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
-	if (!i915->display.get_pipe_config(crtc, crtc_state))
+	if (!i915->display->get_pipe_config(crtc, crtc_state))
 		return false;
 
 	crtc_state->hw.active = true;
@@ -9802,7 +9802,7 @@ static void intel_enable_crtc(struct intel_atomic_state *state,
 
 	intel_crtc_update_active_timings(new_crtc_state);
 
-	dev_priv->display.crtc_enable(state, crtc);
+	dev_priv->display->crtc_enable(state, crtc);
 
 	if (new_crtc_state->bigjoiner_slave)
 		return;
@@ -9890,7 +9890,7 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
 	 */
 	intel_crtc_disable_pipe_crc(crtc);
 
-	dev_priv->display.crtc_disable(state, crtc);
+	dev_priv->display->crtc_disable(state, crtc);
 	crtc->active = false;
 	intel_fbc_disable(crtc);
 	intel_disable_shared_dpll(old_crtc_state);
@@ -10269,7 +10269,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	}
 
 	/* Now enable the clocks, plane, pipe, and connectors that we set up. */
-	dev_priv->display.commit_modeset_enables(state);
+	dev_priv->display->commit_modeset_enables(state);
 
 	if (state->modeset) {
 		intel_encoders_update_complete(state);
@@ -11272,6 +11272,46 @@ static const struct drm_mode_config_funcs intel_mode_funcs = {
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
@@ -11287,38 +11327,19 @@ void intel_init_display_hooks(struct drm_i915_private *dev_priv)
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
@@ -11746,7 +11767,7 @@ int intel_modeset_init_nogem(struct drm_i915_private *i915)
 		 * can even allow for smooth boot transitions if the BIOS
 		 * fb is large enough for the active pipe configuration.
 		 */
-		i915->display.get_initial_plane_config(crtc, &plane_config);
+		i915->display->get_initial_plane_config(crtc, &plane_config);
 
 		/*
 		 * If the fb is shared between multiple heads, we'll
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 870ec3f046ab..2d0800b9b671 100644
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

