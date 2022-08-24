Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5CF59FB08
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 15:17:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6B17B5082;
	Wed, 24 Aug 2022 13:17:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEC44B3A0D
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 13:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661346986; x=1692882986;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LwUGRL9JSntJVymabFeIxAusBXZFgHJtFMcwXB6X3Ac=;
 b=jrBg9HG2TCLfmwBCfFKKrmDpCHEqL7prx6CBIPtz01ZAGCett59jALsl
 znRLiq9QcDhRMZfYbTmlasnfd8fdcgAOcRwDMdqCjiyYiSe4fCZJzRO1C
 MzZJY5jk80pHlK2pOa+upFoxi4ZI12L7xhjjqk0ja/CnnwLa3BMcn3YxC
 Zs+iq0CudIxcupJoCGzaINPVNA9WazsXL6YCwBfFnCoc6jKqBeEMxrOYU
 ym2xye/g8NmpDaA0E1v1wdT8GRW1Y5W0C4Wj33n29Ydv19klu6iRWquw3
 nyP+w1Xpxaa29kHfgD1fudSj/mVxb77qZXWaCmisrNKE/ZEZ8FlaqkDKb g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="293962607"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="293962607"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 06:16:14 -0700
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="586427978"
Received: from zlim2-mobl.gar.corp.intel.com (HELO localhost) ([10.252.52.23])
 by orsmga006-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2022 06:16:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Aug 2022 16:15:27 +0300
Message-Id: <d44cae096b664f7015f8c797d6dfd4964226d4f8.1661346845.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661346845.git.jani.nikula@intel.com>
References: <cover.1661346845.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 01/38] drm/i915: add display sub-struct to
 drm_i915_private
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In another long-overdue cleanup, add a display sub-struct to
drm_i915_private, and start moving display related members there. Start
with display funcs that need a rename anyway to not collide with the new
display member.

Add a new header under display/ for defining struct intel_display.

Rename struct drm_i915_display_funcs to intel_display_funcs while at it.

v2:
- Fix multi-line comment style (Arun)
- Use display as the member name

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 28 ++++++-------
 .../gpu/drm/i915/display/intel_display_core.h | 40 +++++++++++++++++++
 .../drm/i915/display/intel_modeset_setup.c    |  2 +-
 .../drm/i915/display/intel_plane_initial.c    |  2 +-
 drivers/gpu/drm/i915/i915_drv.h               | 21 ++--------
 5 files changed, 59 insertions(+), 34 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_core.h

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6103b02c081f..1232880796f1 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4143,7 +4143,7 @@ bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
-	if (!i915->display->get_pipe_config(crtc, crtc_state))
+	if (!i915->display.funcs.display->get_pipe_config(crtc, crtc_state))
 		return false;
 
 	crtc_state->hw.active = true;
@@ -7118,7 +7118,7 @@ static void intel_enable_crtc(struct intel_atomic_state *state,
 
 	intel_crtc_update_active_timings(new_crtc_state);
 
-	dev_priv->display->crtc_enable(state, crtc);
+	dev_priv->display.funcs.display->crtc_enable(state, crtc);
 
 	if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
 		return;
@@ -7197,7 +7197,7 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
 	 */
 	intel_crtc_disable_pipe_crc(crtc);
 
-	dev_priv->display->crtc_disable(state, crtc);
+	dev_priv->display.funcs.display->crtc_disable(state, crtc);
 	crtc->active = false;
 	intel_fbc_disable(crtc);
 	intel_disable_shared_dpll(old_crtc_state);
@@ -7586,7 +7586,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	}
 
 	/* Now enable the clocks, plane, pipe, and connectors that we set up. */
-	dev_priv->display->commit_modeset_enables(state);
+	dev_priv->display.funcs.display->commit_modeset_enables(state);
 
 	intel_encoders_update_complete(state);
 
@@ -8317,7 +8317,7 @@ static const struct drm_mode_config_funcs intel_mode_funcs = {
 	.atomic_state_free = intel_atomic_state_free,
 };
 
-static const struct drm_i915_display_funcs skl_display_funcs = {
+static const struct intel_display_funcs skl_display_funcs = {
 	.get_pipe_config = hsw_get_pipe_config,
 	.crtc_enable = hsw_crtc_enable,
 	.crtc_disable = hsw_crtc_disable,
@@ -8325,7 +8325,7 @@ static const struct drm_i915_display_funcs skl_display_funcs = {
 	.get_initial_plane_config = skl_get_initial_plane_config,
 };
 
-static const struct drm_i915_display_funcs ddi_display_funcs = {
+static const struct intel_display_funcs ddi_display_funcs = {
 	.get_pipe_config = hsw_get_pipe_config,
 	.crtc_enable = hsw_crtc_enable,
 	.crtc_disable = hsw_crtc_disable,
@@ -8333,7 +8333,7 @@ static const struct drm_i915_display_funcs ddi_display_funcs = {
 	.get_initial_plane_config = i9xx_get_initial_plane_config,
 };
 
-static const struct drm_i915_display_funcs pch_split_display_funcs = {
+static const struct intel_display_funcs pch_split_display_funcs = {
 	.get_pipe_config = ilk_get_pipe_config,
 	.crtc_enable = ilk_crtc_enable,
 	.crtc_disable = ilk_crtc_disable,
@@ -8341,7 +8341,7 @@ static const struct drm_i915_display_funcs pch_split_display_funcs = {
 	.get_initial_plane_config = i9xx_get_initial_plane_config,
 };
 
-static const struct drm_i915_display_funcs vlv_display_funcs = {
+static const struct intel_display_funcs vlv_display_funcs = {
 	.get_pipe_config = i9xx_get_pipe_config,
 	.crtc_enable = valleyview_crtc_enable,
 	.crtc_disable = i9xx_crtc_disable,
@@ -8349,7 +8349,7 @@ static const struct drm_i915_display_funcs vlv_display_funcs = {
 	.get_initial_plane_config = i9xx_get_initial_plane_config,
 };
 
-static const struct drm_i915_display_funcs i9xx_display_funcs = {
+static const struct intel_display_funcs i9xx_display_funcs = {
 	.get_pipe_config = i9xx_get_pipe_config,
 	.crtc_enable = i9xx_crtc_enable,
 	.crtc_disable = i9xx_crtc_disable,
@@ -8372,16 +8372,16 @@ void intel_init_display_hooks(struct drm_i915_private *dev_priv)
 	intel_dpll_init_clock_hook(dev_priv);
 
 	if (DISPLAY_VER(dev_priv) >= 9) {
-		dev_priv->display = &skl_display_funcs;
+		dev_priv->display.funcs.display = &skl_display_funcs;
 	} else if (HAS_DDI(dev_priv)) {
-		dev_priv->display = &ddi_display_funcs;
+		dev_priv->display.funcs.display = &ddi_display_funcs;
 	} else if (HAS_PCH_SPLIT(dev_priv)) {
-		dev_priv->display = &pch_split_display_funcs;
+		dev_priv->display.funcs.display = &pch_split_display_funcs;
 	} else if (IS_CHERRYVIEW(dev_priv) ||
 		   IS_VALLEYVIEW(dev_priv)) {
-		dev_priv->display = &vlv_display_funcs;
+		dev_priv->display.funcs.display = &vlv_display_funcs;
 	} else {
-		dev_priv->display = &i9xx_display_funcs;
+		dev_priv->display.funcs.display = &i9xx_display_funcs;
 	}
 
 	intel_fdi_init_hook(dev_priv);
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
new file mode 100644
index 000000000000..c326d5381de7
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -0,0 +1,40 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __INTEL_DISPLAY_CORE_H__
+#define __INTEL_DISPLAY_CORE_H__
+
+#include <linux/types.h>
+
+struct intel_atomic_state;
+struct intel_crtc;
+struct intel_crtc_state;
+struct intel_initial_plane_config;
+
+struct intel_display_funcs {
+	/*
+	 * Returns the active state of the crtc, and if the crtc is active,
+	 * fills out the pipe-config with the hw state.
+	 */
+	bool (*get_pipe_config)(struct intel_crtc *,
+				struct intel_crtc_state *);
+	void (*get_initial_plane_config)(struct intel_crtc *,
+					 struct intel_initial_plane_config *);
+	void (*crtc_enable)(struct intel_atomic_state *state,
+			    struct intel_crtc *crtc);
+	void (*crtc_disable)(struct intel_atomic_state *state,
+			     struct intel_crtc *crtc);
+	void (*commit_modeset_enables)(struct intel_atomic_state *state);
+};
+
+struct intel_display {
+	/* Display functions */
+	struct {
+		/* Top level crtc-ish functions */
+		const struct intel_display_funcs *display;
+	} funcs;
+};
+
+#endif /* __INTEL_DISPLAY_CORE_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index f0e04d3904c6..4b30e8228a5e 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -70,7 +70,7 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 
 	drm_WARN_ON(&i915->drm, IS_ERR(temp_crtc_state) || ret);
 
-	i915->display->crtc_disable(to_intel_atomic_state(state), crtc);
+	i915->display.funcs.display->crtc_disable(to_intel_atomic_state(state), crtc);
 
 	drm_atomic_state_put(state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index d10f27d0b7b0..76be796df255 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -311,7 +311,7 @@ void intel_crtc_initial_plane_config(struct intel_crtc *crtc)
 	 * can even allow for smooth boot transitions if the BIOS
 	 * fb is large enough for the active pipe configuration.
 	 */
-	dev_priv->display->get_initial_plane_config(crtc, &plane_config);
+	dev_priv->display.funcs.display->get_initial_plane_config(crtc, &plane_config);
 
 	/*
 	 * If the fb is shared between multiple heads, we'll
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 69ce6db6a7c1..b627fc0339c7 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -39,6 +39,7 @@
 
 #include "display/intel_cdclk.h"
 #include "display/intel_display.h"
+#include "display/intel_display_core.h"
 #include "display/intel_display_power.h"
 #include "display/intel_dmc.h"
 #include "display/intel_dpll_mgr.h"
@@ -96,7 +97,6 @@ struct intel_fbdev;
 struct intel_fdi_funcs;
 struct intel_gmbus;
 struct intel_hotplug_funcs;
-struct intel_initial_plane_config;
 struct intel_limit;
 struct intel_overlay;
 struct intel_overlay_error_state;
@@ -177,20 +177,6 @@ struct drm_i915_wm_disp_funcs {
 	int (*compute_global_watermarks)(struct intel_atomic_state *state);
 };
 
-struct drm_i915_display_funcs {
-	/* Returns the active state of the crtc, and if the crtc is active,
-	 * fills out the pipe-config with the hw state. */
-	bool (*get_pipe_config)(struct intel_crtc *,
-				struct intel_crtc_state *);
-	void (*get_initial_plane_config)(struct intel_crtc *,
-					 struct intel_initial_plane_config *);
-	void (*crtc_enable)(struct intel_atomic_state *state,
-			    struct intel_crtc *crtc);
-	void (*crtc_disable)(struct intel_atomic_state *state,
-			     struct intel_crtc *crtc);
-	void (*commit_modeset_enables)(struct intel_atomic_state *state);
-};
-
 #define I915_COLOR_UNEVICTABLE (-1) /* a non-vma sharing the address space */
 
 #define QUIRK_LVDS_SSC_DISABLE (1<<1)
@@ -374,6 +360,8 @@ struct intel_audio_private {
 struct drm_i915_private {
 	struct drm_device drm;
 
+	struct intel_display display;
+
 	/* FIXME: Device release actions should all be moved to drmm_ */
 	bool do_release;
 
@@ -532,9 +520,6 @@ struct drm_i915_private {
 	/* display pll funcs */
 	const struct intel_dpll_funcs *dpll_funcs;
 
-	/* Display functions */
-	const struct drm_i915_display_funcs *display;
-
 	/* Display internal color functions */
 	const struct intel_color_funcs *color_funcs;
 
-- 
2.34.1

