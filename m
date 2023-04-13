Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 159856E0A85
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 11:48:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C1A010EAA6;
	Thu, 13 Apr 2023 09:48:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D86110EAAD
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 09:48:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681379289; x=1712915289;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mQWt8PRRPquW9fKi7dPmoQHlLr3QfBGWqCbPdw3tvd0=;
 b=bKfxrLApf76/zKLpYKqnO0RY8wW0g0YFi8E9dGUL/DKVJ6+bCByUY4Vx
 C2DXaB6x7H/yP5EeaCBh9KdwSSqXwp/QPCCVDvIzgVGRSa9++feTYI8jg
 3wBz1mwXZMqdAaV208yK7vqh3KdUXmmp1igPLr/UU9pLGIAOCIW8rAB0w
 B/KJF15rMrNUGKc7SGSd6HNaChqL+TKaDOkys7rKHQYLklj+cZdBKPjmB
 x6LdxyPUJ8sKiN8OAENoA1C1vD/YIeYrY4xQP6H/QPZVfjSVHQydqLehP
 tbc6gCe2krOhCd9sHFT4QgZMqzGCr9q/Yd6BheXgq9sPm0CFb51ch+aSu g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="328254782"
X-IronPort-AV: E=Sophos;i="5.98,341,1673942400"; d="scan'208";a="328254782"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 02:48:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="719778936"
X-IronPort-AV: E=Sophos;i="5.98,341,1673942400"; d="scan'208";a="719778936"
Received: from merkanx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.88])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 02:48:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Apr 2023 12:47:33 +0300
Message-Id: <3c8fb2232e8c863780e256b78253b28c7c972f2e.1681379167.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1681379167.git.jani.nikula@intel.com>
References: <cover.1681379167.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/10] drm/i915/display: add
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Split out the display reset functionality to a separate file to
declutter intel_display.c. Rename the functions accordingly. The minor
downside is having to expose __intel_display_resume().

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
index f425e5ed155b..e89e9473a744 100644
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
index f82987fbc94a..e5bf8ef8e06b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -468,8 +468,6 @@ intel_framebuffer_create(struct drm_i915_gem_object *obj,
 
 bool intel_fuzzy_clock_check(int clock1, int clock2);
 
-void intel_display_prepare_reset(struct drm_i915_private *dev_priv);
-void intel_display_finish_reset(struct drm_i915_private *dev_priv);
 void intel_zero_m_n(struct intel_link_m_n *m_n);
 void intel_set_m_n(struct drm_i915_private *i915,
 		   const struct intel_link_m_n *m_n,
@@ -545,6 +543,12 @@ int intel_atomic_check(struct drm_device *dev, struct drm_atomic_state *_state);
 
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

