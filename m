Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6396258FEEB
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 17:13:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11E18B3D3F;
	Thu, 11 Aug 2022 15:13:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 416D3B3D36
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 15:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660230773; x=1691766773;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=V8gZwOR3DP6+yJoI3gsr/LKltqojs/yhmPonJdXEOhA=;
 b=cYj/oQCkwSHMC4cHpAMp6MO6z9ApygvDGQ6IIvZyC5cxMa0TzF6meQr2
 sgFJX+oI6hy8N1voTeXqnzA2UWXS3LB35RaEw7WB46NlBF0Ef8tNOUlZ5
 +syvW4jYXJWDcqyyInu4dIzNkxVCXV9iGpHVCaRNcDDzv6Zug5DQydYmc
 Pt22NcGf9Nh0AjWNtZlVgjLdZLUJPOFTqr2zW79kBTt1aBQXOcETaBBji
 fw3TroqUsZcgN6PxZE3iTRizYoOorZjc91SFPB4k3u3BDE+wqFiz4eXLU
 h6B90ys2GLwrjlQpZtFAa1/bTOIQoetun9omqOW9cVKnMgTxREoDTws3j w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="355375895"
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="355375895"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:08:02 -0700
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="634257659"
Received: from gdogaru-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.102])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:08:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Aug 2022 18:07:12 +0300
Message-Id: <a5641ef131cf70d404b5344eb8c3cd1688fdaae6.1660230121.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660230121.git.jani.nikula@intel.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/39] drm/i915: add display sub-struct to
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In another long-overdue cleanup, add a display sub-struct to
drm_i915_private, and start moving display related members there. Start
with display funcs that need a rename anyway to not collide with the new
display member.

Add a new header under display/ for defining struct intel_display.

Rename struct drm_i915_display_funcs to intel_display_funcs while at it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 28 +++++++-------
 .../gpu/drm/i915/display/intel_display_core.h | 38 +++++++++++++++++++
 .../drm/i915/display/intel_modeset_setup.c    |  2 +-
 .../drm/i915/display/intel_plane_initial.c    |  2 +-
 drivers/gpu/drm/i915/i915_drv.h               | 21 ++--------
 5 files changed, 57 insertions(+), 34 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_core.h

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f143adefdf38..24ab1501beea 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4144,7 +4144,7 @@ bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
-	if (!i915->display->get_pipe_config(crtc, crtc_state))
+	if (!i915->display.funcs.crtc->get_pipe_config(crtc, crtc_state))
 		return false;
 
 	crtc_state->hw.active = true;
@@ -7119,7 +7119,7 @@ static void intel_enable_crtc(struct intel_atomic_state *state,
 
 	intel_crtc_update_active_timings(new_crtc_state);
 
-	dev_priv->display->crtc_enable(state, crtc);
+	dev_priv->display.funcs.crtc->crtc_enable(state, crtc);
 
 	if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
 		return;
@@ -7198,7 +7198,7 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
 	 */
 	intel_crtc_disable_pipe_crc(crtc);
 
-	dev_priv->display->crtc_disable(state, crtc);
+	dev_priv->display.funcs.crtc->crtc_disable(state, crtc);
 	crtc->active = false;
 	intel_fbc_disable(crtc);
 	intel_disable_shared_dpll(old_crtc_state);
@@ -7586,7 +7586,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	}
 
 	/* Now enable the clocks, plane, pipe, and connectors that we set up. */
-	dev_priv->display->commit_modeset_enables(state);
+	dev_priv->display.funcs.crtc->commit_modeset_enables(state);
 
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
+		dev_priv->display.funcs.crtc = &skl_display_funcs;
 	} else if (HAS_DDI(dev_priv)) {
-		dev_priv->display = &ddi_display_funcs;
+		dev_priv->display.funcs.crtc = &ddi_display_funcs;
 	} else if (HAS_PCH_SPLIT(dev_priv)) {
-		dev_priv->display = &pch_split_display_funcs;
+		dev_priv->display.funcs.crtc = &pch_split_display_funcs;
 	} else if (IS_CHERRYVIEW(dev_priv) ||
 		   IS_VALLEYVIEW(dev_priv)) {
-		dev_priv->display = &vlv_display_funcs;
+		dev_priv->display.funcs.crtc = &vlv_display_funcs;
 	} else {
-		dev_priv->display = &i9xx_display_funcs;
+		dev_priv->display.funcs.crtc = &i9xx_display_funcs;
 	}
 
 	intel_fdi_init_hook(dev_priv);
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
new file mode 100644
index 000000000000..aafe548875cc
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -0,0 +1,38 @@
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
+	/* Returns the active state of the crtc, and if the crtc is active,
+	 * fills out the pipe-config with the hw state. */
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
+		const struct intel_display_funcs *crtc;
+	} funcs;
+};
+
+#endif /* __INTEL_DISPLAY_CORE_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index f0e04d3904c6..e0d5c58c2037 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -70,7 +70,7 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 
 	drm_WARN_ON(&i915->drm, IS_ERR(temp_crtc_state) || ret);
 
-	i915->display->crtc_disable(to_intel_atomic_state(state), crtc);
+	i915->display.funcs.crtc->crtc_disable(to_intel_atomic_state(state), crtc);
 
 	drm_atomic_state_put(state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index d10f27d0b7b0..10e10ffdc13c 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -311,7 +311,7 @@ void intel_crtc_initial_plane_config(struct intel_crtc *crtc)
 	 * can even allow for smooth boot transitions if the BIOS
 	 * fb is large enough for the active pipe configuration.
 	 */
-	dev_priv->display->get_initial_plane_config(crtc, &plane_config);
+	dev_priv->display.funcs.crtc->get_initial_plane_config(crtc, &plane_config);
 
 	/*
 	 * If the fb is shared between multiple heads, we'll
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 086bbe8945d6..3df38531a54b 100644
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

