Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E2856E1F8B
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 11:42:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D75F210ECA9;
	Fri, 14 Apr 2023 09:42:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3382610E16C
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Apr 2023 09:42:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681465358; x=1713001358;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8RtGGABrM1qHpvV1vBTgbht18/oRtaV84r/NaKkp/8s=;
 b=L2Y6NkfISsdP9yuoKDtfk9BS/ukJOAKbG0t1doqo/fCHhzh4oDFfwES+
 XdilK2dH+12BYhhptg3DEZ9lhvz0YIiTLAnTwrg+rrCRXizOrd2skiaJV
 Z90HMwrEP0wHTlYYw+F+3Q7A04VblYtQ7qVOwbkxHtrz9oQ7Z3OIuq10E
 DY86dfOqKafi4+8SuXGYiJxEtUE8K9H4hMxo86AdLmtIBNymZhSUCzfbH
 ydCN8e5qSti5p/sh3t0Fu2yVgYF9MdOtOcmbTjj+dPOD1MfvIt5MWhGvV
 mBQO/Wf2JUUPLfTbV1q2QgvqmvV8u64kkALwNbH8aez11wLlbiNllbjon g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="324054464"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="324054464"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 02:42:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="754397553"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="754397553"
Received: from bauinger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.117])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 02:42:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Apr 2023 12:41:59 +0300
Message-Id: <5e98e2fc5f0c09490e02d22250c8201342852288.1681465222.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1681465222.git.jani.nikula@intel.com>
References: <cover.1681465222.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 07/10] drm/i915/display: add
 intel_display_reset.[ch]
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

Split out the display reset functionality to a separate file to
declutter intel_display.c. Rename the functions accordingly. The minor
downside is having to expose __intel_display_resume().

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_display.c  | 123 +---------------
 drivers/gpu/drm/i915/display/intel_display.h  |   8 +-
 .../drm/i915/display/intel_display_reset.c    | 135 ++++++++++++++++++
 .../drm/i915/display/intel_display_reset.h    |  14 ++
 drivers/gpu/drm/i915/gt/intel_reset.c         |   6 +-
 6 files changed, 160 insertions(+), 127 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_reset.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_reset.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 91f0c214ef28..39e22cf85e55 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -241,6 +241,7 @@ i915-y += \
 	display/intel_display_power.o \
 	display/intel_display_power_map.o \
 	display/intel_display_power_well.o \
+	display/intel_display_reset.o \
 	display/intel_display_rps.o \
 	display/intel_dmc.o \
 	display/intel_dpio_phy.o \
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 59684febc345..c96339a2487c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -693,7 +693,7 @@ intel_plane_fence_y_offset(const struct intel_plane_state *plane_state)
 	return y;
 }
 
-static int
+int
 __intel_display_resume(struct drm_i915_private *i915,
 		       struct drm_atomic_state *state,
 		       struct drm_modeset_acquire_ctx *ctx)
@@ -733,127 +733,6 @@ __intel_display_resume(struct drm_i915_private *i915,
 	return ret;
 }
 
-static bool gpu_reset_clobbers_display(struct drm_i915_private *dev_priv)
-{
-	return (INTEL_INFO(dev_priv)->gpu_reset_clobbers_display &&
-		intel_has_gpu_reset(to_gt(dev_priv)));
-}
-
-void intel_display_prepare_reset(struct drm_i915_private *dev_priv)
-{
-	struct drm_modeset_acquire_ctx *ctx = &dev_priv->display.restore.reset_ctx;
-	struct drm_atomic_state *state;
-	int ret;
-
-	if (!HAS_DISPLAY(dev_priv))
-		return;
-
-	/* reset doesn't touch the display */
-	if (!dev_priv->params.force_reset_modeset_test &&
-	    !gpu_reset_clobbers_display(dev_priv))
-		return;
-
-	/* We have a modeset vs reset deadlock, defensively unbreak it. */
-	set_bit(I915_RESET_MODESET, &to_gt(dev_priv)->reset.flags);
-	smp_mb__after_atomic();
-	wake_up_bit(&to_gt(dev_priv)->reset.flags, I915_RESET_MODESET);
-
-	if (atomic_read(&dev_priv->gpu_error.pending_fb_pin)) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "Modeset potentially stuck, unbreaking through wedging\n");
-		intel_gt_set_wedged(to_gt(dev_priv));
-	}
-
-	/*
-	 * Need mode_config.mutex so that we don't
-	 * trample ongoing ->detect() and whatnot.
-	 */
-	mutex_lock(&dev_priv->drm.mode_config.mutex);
-	drm_modeset_acquire_init(ctx, 0);
-	while (1) {
-		ret = drm_modeset_lock_all_ctx(&dev_priv->drm, ctx);
-		if (ret != -EDEADLK)
-			break;
-
-		drm_modeset_backoff(ctx);
-	}
-	/*
-	 * Disabling the crtcs gracefully seems nicer. Also the
-	 * g33 docs say we should at least disable all the planes.
-	 */
-	state = drm_atomic_helper_duplicate_state(&dev_priv->drm, ctx);
-	if (IS_ERR(state)) {
-		ret = PTR_ERR(state);
-		drm_err(&dev_priv->drm, "Duplicating state failed with %i\n",
-			ret);
-		return;
-	}
-
-	ret = drm_atomic_helper_disable_all(&dev_priv->drm, ctx);
-	if (ret) {
-		drm_err(&dev_priv->drm, "Suspending crtc's failed with %i\n",
-			ret);
-		drm_atomic_state_put(state);
-		return;
-	}
-
-	dev_priv->display.restore.modeset_state = state;
-	state->acquire_ctx = ctx;
-}
-
-void intel_display_finish_reset(struct drm_i915_private *i915)
-{
-	struct drm_modeset_acquire_ctx *ctx = &i915->display.restore.reset_ctx;
-	struct drm_atomic_state *state;
-	int ret;
-
-	if (!HAS_DISPLAY(i915))
-		return;
-
-	/* reset doesn't touch the display */
-	if (!test_bit(I915_RESET_MODESET, &to_gt(i915)->reset.flags))
-		return;
-
-	state = fetch_and_zero(&i915->display.restore.modeset_state);
-	if (!state)
-		goto unlock;
-
-	/* reset doesn't touch the display */
-	if (!gpu_reset_clobbers_display(i915)) {
-		/* for testing only restore the display */
-		ret = drm_atomic_helper_commit_duplicated_state(state, ctx);
-		if (ret) {
-			drm_WARN_ON(&i915->drm, ret == -EDEADLK);
-			drm_err(&i915->drm,
-				"Restoring old state failed with %i\n", ret);
-		}
-	} else {
-		/*
-		 * The display has been reset as well,
-		 * so need a full re-initialization.
-		 */
-		intel_pps_unlock_regs_wa(i915);
-		intel_display_driver_init_hw(i915);
-		intel_clock_gating_init(i915);
-		intel_hpd_init(i915);
-
-		ret = __intel_display_resume(i915, state, ctx);
-		if (ret)
-			drm_err(&i915->drm,
-				"Restoring old state failed with %i\n", ret);
-
-		intel_hpd_poll_disable(i915);
-	}
-
-	drm_atomic_state_put(state);
-unlock:
-	drm_modeset_drop_locks(ctx);
-	drm_modeset_acquire_fini(ctx);
-	mutex_unlock(&i915->drm.mode_config.mutex);
-
-	clear_bit_unlock(I915_RESET_MODESET, &to_gt(i915)->reset.flags);
-}
-
 static void icl_set_pipe_chicken(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 01c27a4757a5..346f6342e8ed 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -468,8 +468,6 @@ intel_framebuffer_create(struct drm_i915_gem_object *obj,
 
 bool intel_fuzzy_clock_check(int clock1, int clock2);
 
-void intel_display_prepare_reset(struct drm_i915_private *dev_priv);
-void intel_display_finish_reset(struct drm_i915_private *dev_priv);
 void intel_zero_m_n(struct intel_link_m_n *m_n);
 void intel_set_m_n(struct drm_i915_private *i915,
 		   const struct intel_link_m_n *m_n,
@@ -543,6 +541,12 @@ int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
 
 void intel_hpd_poll_fini(struct drm_i915_private *i915);
 
+/* interface for intel_display_reset.c */
+int
+__intel_display_resume(struct drm_i915_private *i915,
+		       struct drm_atomic_state *state,
+		       struct drm_modeset_acquire_ctx *ctx);
+
 /* modesetting asserts */
 void assert_transcoder(struct drm_i915_private *dev_priv,
 		       enum transcoder cpu_transcoder, bool state);
diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
new file mode 100644
index 000000000000..166aa0cab1fc
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
@@ -0,0 +1,135 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#include <drm/drm_atomic_helper.h>
+
+#include "i915_drv.h"
+#include "intel_clock_gating.h"
+#include "intel_display_driver.h"
+#include "intel_display_reset.h"
+#include "intel_display_types.h"
+#include "intel_hotplug.h"
+#include "intel_pps.h"
+
+static bool gpu_reset_clobbers_display(struct drm_i915_private *dev_priv)
+{
+	return (INTEL_INFO(dev_priv)->gpu_reset_clobbers_display &&
+		intel_has_gpu_reset(to_gt(dev_priv)));
+}
+
+void intel_display_reset_prepare(struct drm_i915_private *dev_priv)
+{
+	struct drm_modeset_acquire_ctx *ctx = &dev_priv->display.restore.reset_ctx;
+	struct drm_atomic_state *state;
+	int ret;
+
+	if (!HAS_DISPLAY(dev_priv))
+		return;
+
+	/* reset doesn't touch the display */
+	if (!dev_priv->params.force_reset_modeset_test &&
+	    !gpu_reset_clobbers_display(dev_priv))
+		return;
+
+	/* We have a modeset vs reset deadlock, defensively unbreak it. */
+	set_bit(I915_RESET_MODESET, &to_gt(dev_priv)->reset.flags);
+	smp_mb__after_atomic();
+	wake_up_bit(&to_gt(dev_priv)->reset.flags, I915_RESET_MODESET);
+
+	if (atomic_read(&dev_priv->gpu_error.pending_fb_pin)) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "Modeset potentially stuck, unbreaking through wedging\n");
+		intel_gt_set_wedged(to_gt(dev_priv));
+	}
+
+	/*
+	 * Need mode_config.mutex so that we don't
+	 * trample ongoing ->detect() and whatnot.
+	 */
+	mutex_lock(&dev_priv->drm.mode_config.mutex);
+	drm_modeset_acquire_init(ctx, 0);
+	while (1) {
+		ret = drm_modeset_lock_all_ctx(&dev_priv->drm, ctx);
+		if (ret != -EDEADLK)
+			break;
+
+		drm_modeset_backoff(ctx);
+	}
+	/*
+	 * Disabling the crtcs gracefully seems nicer. Also the
+	 * g33 docs say we should at least disable all the planes.
+	 */
+	state = drm_atomic_helper_duplicate_state(&dev_priv->drm, ctx);
+	if (IS_ERR(state)) {
+		ret = PTR_ERR(state);
+		drm_err(&dev_priv->drm, "Duplicating state failed with %i\n",
+			ret);
+		return;
+	}
+
+	ret = drm_atomic_helper_disable_all(&dev_priv->drm, ctx);
+	if (ret) {
+		drm_err(&dev_priv->drm, "Suspending crtc's failed with %i\n",
+			ret);
+		drm_atomic_state_put(state);
+		return;
+	}
+
+	dev_priv->display.restore.modeset_state = state;
+	state->acquire_ctx = ctx;
+}
+
+void intel_display_reset_finish(struct drm_i915_private *i915)
+{
+	struct drm_modeset_acquire_ctx *ctx = &i915->display.restore.reset_ctx;
+	struct drm_atomic_state *state;
+	int ret;
+
+	if (!HAS_DISPLAY(i915))
+		return;
+
+	/* reset doesn't touch the display */
+	if (!test_bit(I915_RESET_MODESET, &to_gt(i915)->reset.flags))
+		return;
+
+	state = fetch_and_zero(&i915->display.restore.modeset_state);
+	if (!state)
+		goto unlock;
+
+	/* reset doesn't touch the display */
+	if (!gpu_reset_clobbers_display(i915)) {
+		/* for testing only restore the display */
+		ret = drm_atomic_helper_commit_duplicated_state(state, ctx);
+		if (ret) {
+			drm_WARN_ON(&i915->drm, ret == -EDEADLK);
+			drm_err(&i915->drm,
+				"Restoring old state failed with %i\n", ret);
+		}
+	} else {
+		/*
+		 * The display has been reset as well,
+		 * so need a full re-initialization.
+		 */
+		intel_pps_unlock_regs_wa(i915);
+		intel_display_driver_init_hw(i915);
+		intel_clock_gating_init(i915);
+		intel_hpd_init(i915);
+
+		ret = __intel_display_resume(i915, state, ctx);
+		if (ret)
+			drm_err(&i915->drm,
+				"Restoring old state failed with %i\n", ret);
+
+		intel_hpd_poll_disable(i915);
+	}
+
+	drm_atomic_state_put(state);
+unlock:
+	drm_modeset_drop_locks(ctx);
+	drm_modeset_acquire_fini(ctx);
+	mutex_unlock(&i915->drm.mode_config.mutex);
+
+	clear_bit_unlock(I915_RESET_MODESET, &to_gt(i915)->reset.flags);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.h b/drivers/gpu/drm/i915/display/intel_display_reset.h
new file mode 100644
index 000000000000..f06d0d35b86b
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#ifndef __INTEL_RESET_H__
+#define __INTEL_RESET_H__
+
+struct drm_i915_private;
+
+void intel_display_reset_prepare(struct drm_i915_private *i915);
+void intel_display_reset_finish(struct drm_i915_private *i915);
+
+#endif /* __INTEL_RESET_H__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 797ea8340467..6194212e8650 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -7,7 +7,7 @@
 #include <linux/stop_machine.h>
 #include <linux/string_helpers.h>
 
-#include "display/intel_display.h"
+#include "display/intel_display_reset.h"
 #include "display/intel_overlay.h"
 
 #include "gem/i915_gem_context.h"
@@ -1370,11 +1370,11 @@ static void intel_gt_reset_global(struct intel_gt *gt,
 
 	/* Use a watchdog to ensure that our reset completes */
 	intel_wedge_on_timeout(&w, gt, 60 * HZ) {
-		intel_display_prepare_reset(gt->i915);
+		intel_display_reset_prepare(gt->i915);
 
 		intel_gt_reset(gt, engine_mask, reason);
 
-		intel_display_finish_reset(gt->i915);
+		intel_display_reset_finish(gt->i915);
 	}
 
 	if (!test_bit(I915_WEDGED, &gt->reset.flags))
-- 
2.39.2

