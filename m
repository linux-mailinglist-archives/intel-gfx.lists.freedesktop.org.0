Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EFEEC58FF0C
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 17:16:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E88AB3DCB;
	Thu, 11 Aug 2022 15:16:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D238BB3E0C
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 15:15:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660230939; x=1691766939;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xA7x3oy+uh5Cb9nCxSYbhXYJyoOOAD+uDpapRdXdjzY=;
 b=GsDIHC2F3Trj6MXEAjOgeq6cIlGHHPDO1Js82aAGmjVcumymtUhMChBG
 p6YP0ZHKvaCt5NvCyNMO93aI8+hpaPPfTT6rqEuVTwljjQmqSpWy856jI
 neRTMrN8eYMebcDQIkj47vgZLdbEjUe+IMNdenAvVDNGVGR7v4XAEtEcv
 LsUcGBZvzLy2b9BIzKw6L/UlH1vaneNZPrCNERDr5yPkXMCnVr3RT/sdD
 CzFnqRSVfbuf61P/I/XQAiWdUshU9bNPCRmceUeh5O2+URqUJREskE4qE
 e5lbFOWYfQItr/gRGG8Z8pM+7WMZYaKzP+P9LqocpvHTUkFzJbtaGNs2g A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="292167301"
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="292167301"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:09:24 -0700
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="747843985"
Received: from gdogaru-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.102])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:09:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Aug 2022 18:07:29 +0300
Message-Id: <016bcb32b5c6348ee1c4b5d2bed48214ded8f227.1660230121.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660230121.git.jani.nikula@intel.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 18/39] drm/i915: move overlay to display.overlay
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

Move display related members under drm_i915_private display sub-struct.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_core.h |  2 ++
 drivers/gpu/drm/i915/display/intel_overlay.c      | 12 ++++++------
 drivers/gpu/drm/i915/i915_drv.h                   |  4 ----
 drivers/gpu/drm/i915/i915_getparam.c              |  2 +-
 4 files changed, 9 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index cf31ad0c9593..a5cd3a3d440e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -33,6 +33,7 @@ struct intel_fbdev;
 struct intel_fdi_funcs;
 struct intel_hotplug_funcs;
 struct intel_initial_plane_config;
+struct intel_overlay;
 
 struct intel_display_funcs {
 	/* Returns the active state of the crtc, and if the crtc is active,
@@ -253,6 +254,7 @@ struct intel_display {
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
index ef67a5322c2d..3637ee4ca088 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -82,7 +82,6 @@ struct intel_connector;
 struct intel_dp;
 struct intel_encoder;
 struct intel_limit;
-struct intel_overlay;
 struct intel_overlay_error_state;
 struct vlv_s0ix_state;
 
@@ -342,9 +341,6 @@ struct drm_i915_private {
 
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

