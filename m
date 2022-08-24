Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE3D59FB36
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 15:23:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C28CDB56C1;
	Wed, 24 Aug 2022 13:22:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 339788A240
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 13:18:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661347122; x=1692883122;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=p6ovfF3oN5dWV1DmrT6Fe8EDdpyLdp5e6Mnye05ndNs=;
 b=OaFW2TNM/Nb1CGe8wZF+yqGRdplEZ/opG8DYQVc9w2fMlKYjHXtwfds2
 kBKszjSJ1uJwfCe6XqoOl7UVmvJwWmC9d+Tp31/TuVj9O7rEmAul6BZ/7
 Kdd7XIGpZUWAv3DMKGHkOCfHXXx5lhEBi7U5QXWjnT3BKL/3TXGKXSuud
 SPVC/ZWApZr3R/xz0J7w90dwaylDHdwSySR+vvdUHzzqPsgsd6UfWuOC2
 upxFHSA8ItOcQ4+4GdeSd9DQUsLq2Z0vN+qtvMp3Z8+B26YWUaRXoZgNe
 erKNTpmZ2TzbR5/u07UETcPUXTnlZyvT+vfrShxqbk+dN+g0er27u0jc1 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="274350462"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="274350462"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 06:17:26 -0700
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="609754446"
Received: from zlim2-mobl.gar.corp.intel.com (HELO localhost) ([10.252.52.23])
 by orsmga002-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2022 06:17:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Aug 2022 16:15:43 +0300
Message-Id: <e019fb538536d36bab28feaafe049e0b1726f2d9.1661346845.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661346845.git.jani.nikula@intel.com>
References: <cover.1661346845.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 17/38] drm/i915: move overlay to
 display.overlay
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

Move display overlay related members under drm_i915_private display
sub-struct.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_core.h |  2 ++
 drivers/gpu/drm/i915/display/intel_overlay.c      | 12 ++++++------
 drivers/gpu/drm/i915/i915_drv.h                   |  4 ----
 drivers/gpu/drm/i915/i915_getparam.c              |  2 +-
 4 files changed, 9 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 96d085bf5229..b3996af994be 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -32,6 +32,7 @@ struct intel_fbdev;
 struct intel_fdi_funcs;
 struct intel_hotplug_funcs;
 struct intel_initial_plane_config;
+struct intel_overlay;
 
 struct intel_display_funcs {
 	/*
@@ -251,6 +252,7 @@ struct intel_display {
 	struct intel_dmc dmc;
 	struct intel_dpll dpll;
 	struct intel_hotplug hotplug;
+	struct intel_overlay *overlay;
 	struct intel_wm wm;
 };
 
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 79ed8bd04a07..6f26f7f91925 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -487,7 +487,7 @@ static int intel_overlay_release_old_vid(struct intel_overlay *overlay)
 
 void intel_overlay_reset(struct drm_i915_private *dev_priv)
 {
-	struct intel_overlay *overlay = dev_priv->overlay;
+	struct intel_overlay *overlay = dev_priv->display.overlay;
 
 	if (!overlay)
 		return;
@@ -1113,7 +1113,7 @@ int intel_overlay_put_image_ioctl(struct drm_device *dev, void *data,
 	struct drm_i915_gem_object *new_bo;
 	int ret;
 
-	overlay = dev_priv->overlay;
+	overlay = dev_priv->display.overlay;
 	if (!overlay) {
 		drm_dbg(&dev_priv->drm, "userspace bug: no overlay\n");
 		return -ENODEV;
@@ -1273,7 +1273,7 @@ int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
 	struct intel_overlay *overlay;
 	int ret;
 
-	overlay = dev_priv->overlay;
+	overlay = dev_priv->display.overlay;
 	if (!overlay) {
 		drm_dbg(&dev_priv->drm, "userspace bug: no overlay\n");
 		return -ENODEV;
@@ -1416,7 +1416,7 @@ void intel_overlay_setup(struct drm_i915_private *dev_priv)
 	update_polyphase_filter(overlay->regs);
 	update_reg_attrs(overlay, overlay->regs);
 
-	dev_priv->overlay = overlay;
+	dev_priv->display.overlay = overlay;
 	drm_info(&dev_priv->drm, "Initialized overlay support.\n");
 	return;
 
@@ -1428,7 +1428,7 @@ void intel_overlay_cleanup(struct drm_i915_private *dev_priv)
 {
 	struct intel_overlay *overlay;
 
-	overlay = fetch_and_zero(&dev_priv->overlay);
+	overlay = fetch_and_zero(&dev_priv->display.overlay);
 	if (!overlay)
 		return;
 
@@ -1457,7 +1457,7 @@ struct intel_overlay_error_state {
 struct intel_overlay_error_state *
 intel_overlay_capture_error_state(struct drm_i915_private *dev_priv)
 {
-	struct intel_overlay *overlay = dev_priv->overlay;
+	struct intel_overlay *overlay = dev_priv->display.overlay;
 	struct intel_overlay_error_state *error;
 
 	if (!overlay || !overlay->active)
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index f6c8c0f2f633..1baaf1711b99 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -83,7 +83,6 @@ struct intel_connector;
 struct intel_dp;
 struct intel_encoder;
 struct intel_limit;
-struct intel_overlay;
 struct intel_overlay_error_state;
 struct vlv_s0ix_state;
 
@@ -343,9 +342,6 @@ struct drm_i915_private {
 
 	bool preserve_bios_swizzle;
 
-	/* overlay */
-	struct intel_overlay *overlay;
-
 	/* backlight registers and fields in struct intel_panel */
 	struct mutex backlight_lock;
 
diff --git a/drivers/gpu/drm/i915/i915_getparam.c b/drivers/gpu/drm/i915/i915_getparam.c
index 6fd15b39570c..342c8ca6414e 100644
--- a/drivers/gpu/drm/i915/i915_getparam.c
+++ b/drivers/gpu/drm/i915/i915_getparam.c
@@ -36,7 +36,7 @@ int i915_getparam_ioctl(struct drm_device *dev, void *data,
 		value = to_gt(i915)->ggtt->num_fences;
 		break;
 	case I915_PARAM_HAS_OVERLAY:
-		value = !!i915->overlay;
+		value = !!i915->display.overlay;
 		break;
 	case I915_PARAM_HAS_BSD:
 		value = !!intel_engine_lookup_user(i915,
-- 
2.34.1

