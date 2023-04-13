Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00FBA6E0A86
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 11:48:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 547D510EAAD;
	Thu, 13 Apr 2023 09:48:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38EC510EAAD
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 09:48:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681379293; x=1712915293;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0LPd08Rnpl0+I4SLQckG5PGSf3nHHfWKUy8eaw92sk8=;
 b=fVGh5gEYPmpoMsqFMJ79kZwPGIY4m0TK5DDKw2jFtA4PWqmI4vHgTqll
 sbZgjHRyPxsqux/k3QeuoPSBuholnc/XJTOfzCf4cqQSQ4Cnxiyfql6O3
 nWCoXLhd21LWhTIoa1koLlP3hDQtn0Z835aJhMiyjc0S2kQC2JYZl1kfE
 +M5oRdeQp0eb3GWEy8RdHIDFzsDGYfJU+GLlSncgZhlfGkiV1NICdJm3i
 VMwIBVKtL2DXlKLqKRi4eiuxGNQ/Lqjm6eoZHJJrGP4FBtmEguoj3mUkd
 yEXiStBQTYvE3xTSKrWaeVefCEFN/v85tl4Tyh8q9sZwR0VwEINnMaIaT Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="328254801"
X-IronPort-AV: E=Sophos;i="5.98,341,1673942400"; d="scan'208";a="328254801"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 02:48:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="719778969"
X-IronPort-AV: E=Sophos;i="5.98,341,1673942400"; d="scan'208";a="719778969"
Received: from merkanx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.88])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 02:48:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Apr 2023 12:47:34 +0300
Message-Id: <2004767dca36f9a7e81cb1b0e76b962164ce72dd.1681379167.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1681379167.git.jani.nikula@intel.com>
References: <cover.1681379167.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/10] drm/i915/display: move display
 suspend/resume to intel_display_driver.[ch]
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

High level display functionality only called from driver top level code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 102 ------------------
 drivers/gpu/drm/i915/display/intel_display.h  |   8 --
 .../drm/i915/display/intel_display_driver.c   | 101 +++++++++++++++++
 .../drm/i915/display/intel_display_driver.h   |  10 ++
 4 files changed, 111 insertions(+), 110 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e89e9473a744..9eb9898885bb 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -693,46 +693,6 @@ intel_plane_fence_y_offset(const struct intel_plane_state *plane_state)
 	return y;
 }
 
-int
-__intel_display_resume(struct drm_i915_private *i915,
-		       struct drm_atomic_state *state,
-		       struct drm_modeset_acquire_ctx *ctx)
-{
-	struct drm_crtc_state *crtc_state;
-	struct drm_crtc *crtc;
-	int ret, i;
-
-	intel_modeset_setup_hw_state(i915, ctx);
-	intel_vga_redisable(i915);
-
-	if (!state)
-		return 0;
-
-	/*
-	 * We've duplicated the state, pointers to the old state are invalid.
-	 *
-	 * Don't attempt to use the old state until we commit the duplicated state.
-	 */
-	for_each_new_crtc_in_state(state, crtc, crtc_state, i) {
-		/*
-		 * Force recalculation even if we restore
-		 * current state. With fast modeset this may not result
-		 * in a modeset when the state is compatible.
-		 */
-		crtc_state->mode_changed = true;
-	}
-
-	/* ignore any reset values/BIOS leftovers in the WM registers */
-	if (!HAS_GMCH(i915))
-		to_intel_atomic_state(state)->skip_intermediate_wm = true;
-
-	ret = drm_atomic_helper_commit_duplicated_state(state, ctx);
-
-	drm_WARN_ON(&i915->drm, ret == -EDEADLK);
-
-	return ret;
-}
-
 static void icl_set_pipe_chicken(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -2104,30 +2064,6 @@ static void i9xx_crtc_disable(struct intel_atomic_state *state,
 		i830_enable_pipe(dev_priv, pipe);
 }
 
-
-/*
- * turn all crtc's off, but do not adjust state
- * This has to be paired with a call to intel_modeset_setup_hw_state.
- */
-int intel_display_suspend(struct drm_device *dev)
-{
-	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct drm_atomic_state *state;
-	int ret;
-
-	if (!HAS_DISPLAY(dev_priv))
-		return 0;
-
-	state = drm_atomic_helper_suspend(dev);
-	ret = PTR_ERR_OR_ZERO(state);
-	if (ret)
-		drm_err(&dev_priv->drm, "Suspending crtc's failed with %i\n",
-			ret);
-	else
-		dev_priv->display.restore.modeset_state = state;
-	return ret;
-}
-
 void intel_encoder_destroy(struct drm_encoder *encoder)
 {
 	struct intel_encoder *intel_encoder = to_intel_encoder(encoder);
@@ -8280,44 +8216,6 @@ void i830_disable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 	intel_de_posting_read(dev_priv, DPLL(pipe));
 }
 
-void intel_display_resume(struct drm_device *dev)
-{
-	struct drm_i915_private *i915 = to_i915(dev);
-	struct drm_atomic_state *state = i915->display.restore.modeset_state;
-	struct drm_modeset_acquire_ctx ctx;
-	int ret;
-
-	if (!HAS_DISPLAY(i915))
-		return;
-
-	i915->display.restore.modeset_state = NULL;
-	if (state)
-		state->acquire_ctx = &ctx;
-
-	drm_modeset_acquire_init(&ctx, 0);
-
-	while (1) {
-		ret = drm_modeset_lock_all_ctx(dev, &ctx);
-		if (ret != -EDEADLK)
-			break;
-
-		drm_modeset_backoff(&ctx);
-	}
-
-	if (!ret)
-		ret = __intel_display_resume(i915, state, &ctx);
-
-	skl_watermark_ipc_update(i915);
-	drm_modeset_drop_locks(&ctx);
-	drm_modeset_acquire_fini(&ctx);
-
-	if (ret)
-		drm_err(&i915->drm,
-			"Restoring old state failed with %i\n", ret);
-	if (state)
-		drm_atomic_state_put(state);
-}
-
 void intel_hpd_poll_fini(struct drm_i915_private *i915)
 {
 	struct intel_connector *connector;
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index e5bf8ef8e06b..c7b1e220e84d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -438,7 +438,6 @@ void intel_add_fb_offsets(int *x, int *y,
 unsigned int intel_rotation_info_size(const struct intel_rotation_info *rot_info);
 unsigned int intel_remapped_info_size(const struct intel_remapped_info *rem_info);
 bool intel_has_pending_fb_unpin(struct drm_i915_private *dev_priv);
-int intel_display_suspend(struct drm_device *dev);
 void intel_encoder_destroy(struct drm_encoder *encoder);
 struct drm_display_mode *
 intel_encoder_current_mode(struct intel_encoder *encoder);
@@ -520,7 +519,6 @@ void intel_plane_fixup_bitmasks(struct intel_crtc_state *crtc_state);
 void intel_update_watermarks(struct drm_i915_private *i915);
 
 /* modesetting */
-void intel_display_resume(struct drm_device *dev);
 int intel_modeset_all_pipes(struct intel_atomic_state *state,
 			    const char *reason);
 void intel_modeset_get_crtc_power_domains(struct intel_crtc_state *crtc_state,
@@ -543,12 +541,6 @@ int intel_atomic_check(struct drm_device *dev, struct drm_atomic_state *_state);
 
 void intel_hpd_poll_fini(struct drm_i915_private *i915);
 
-/* interface for intel_display_reset.c */
-int
-__intel_display_resume(struct drm_i915_private *i915,
-		       struct drm_atomic_state *state,
-		       struct drm_modeset_acquire_ctx *ctx);
-
 /* modesetting asserts */
 void assert_transcoder(struct drm_i915_private *dev_priv,
 		       enum transcoder cpu_transcoder, bool state);
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 45e425100385..eb03b0a87d5a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -466,3 +466,104 @@ void intel_display_driver_unregister(struct drm_i915_private *i915)
 	acpi_video_unregister();
 	intel_opregion_unregister(i915);
 }
+
+/*
+ * turn all crtc's off, but do not adjust state
+ * This has to be paired with a call to intel_modeset_setup_hw_state.
+ */
+int intel_display_suspend(struct drm_device *dev)
+{
+	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_atomic_state *state;
+	int ret;
+
+	if (!HAS_DISPLAY(dev_priv))
+		return 0;
+
+	state = drm_atomic_helper_suspend(dev);
+	ret = PTR_ERR_OR_ZERO(state);
+	if (ret)
+		drm_err(&dev_priv->drm, "Suspending crtc's failed with %i\n",
+			ret);
+	else
+		dev_priv->display.restore.modeset_state = state;
+	return ret;
+}
+
+int
+__intel_display_resume(struct drm_i915_private *i915,
+		       struct drm_atomic_state *state,
+		       struct drm_modeset_acquire_ctx *ctx)
+{
+	struct drm_crtc_state *crtc_state;
+	struct drm_crtc *crtc;
+	int ret, i;
+
+	intel_modeset_setup_hw_state(i915, ctx);
+	intel_vga_redisable(i915);
+
+	if (!state)
+		return 0;
+
+	/*
+	 * We've duplicated the state, pointers to the old state are invalid.
+	 *
+	 * Don't attempt to use the old state until we commit the duplicated state.
+	 */
+	for_each_new_crtc_in_state(state, crtc, crtc_state, i) {
+		/*
+		 * Force recalculation even if we restore
+		 * current state. With fast modeset this may not result
+		 * in a modeset when the state is compatible.
+		 */
+		crtc_state->mode_changed = true;
+	}
+
+	/* ignore any reset values/BIOS leftovers in the WM registers */
+	if (!HAS_GMCH(i915))
+		to_intel_atomic_state(state)->skip_intermediate_wm = true;
+
+	ret = drm_atomic_helper_commit_duplicated_state(state, ctx);
+
+	drm_WARN_ON(&i915->drm, ret == -EDEADLK);
+
+	return ret;
+}
+
+void intel_display_resume(struct drm_device *dev)
+{
+	struct drm_i915_private *i915 = to_i915(dev);
+	struct drm_atomic_state *state = i915->display.restore.modeset_state;
+	struct drm_modeset_acquire_ctx ctx;
+	int ret;
+
+	if (!HAS_DISPLAY(i915))
+		return;
+
+	i915->display.restore.modeset_state = NULL;
+	if (state)
+		state->acquire_ctx = &ctx;
+
+	drm_modeset_acquire_init(&ctx, 0);
+
+	while (1) {
+		ret = drm_modeset_lock_all_ctx(dev, &ctx);
+		if (ret != -EDEADLK)
+			break;
+
+		drm_modeset_backoff(&ctx);
+	}
+
+	if (!ret)
+		ret = __intel_display_resume(i915, state, &ctx);
+
+	skl_watermark_ipc_update(i915);
+	drm_modeset_drop_locks(&ctx);
+	drm_modeset_acquire_fini(&ctx);
+
+	if (ret)
+		drm_err(&i915->drm,
+			"Restoring old state failed with %i\n", ret);
+	if (state)
+		drm_atomic_state_put(state);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/drivers/gpu/drm/i915/display/intel_display_driver.h
index aab498617b90..7b5ff4309dec 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.h
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
@@ -8,7 +8,10 @@
 
 #include <linux/types.h>
 
+struct drm_atomic_state;
+struct drm_device;
 struct drm_i915_private;
+struct drm_modeset_acquire_ctx;
 struct pci_dev;
 
 bool intel_display_driver_probe_defer(struct pci_dev *pdev);
@@ -21,6 +24,13 @@ void intel_display_driver_remove(struct drm_i915_private *i915);
 void intel_display_driver_remove_noirq(struct drm_i915_private *i915);
 void intel_display_driver_remove_nogem(struct drm_i915_private *i915);
 void intel_display_driver_unregister(struct drm_i915_private *i915);
+int intel_display_suspend(struct drm_device *dev);
+void intel_display_resume(struct drm_device *dev);
+
+/* interface for intel_display_reset.c */
+int __intel_display_resume(struct drm_i915_private *i915,
+			   struct drm_atomic_state *state,
+			   struct drm_modeset_acquire_ctx *ctx);
 
 #endif /* __INTEL_DISPLAY_DRIVER_H__ */
 
-- 
2.39.2

