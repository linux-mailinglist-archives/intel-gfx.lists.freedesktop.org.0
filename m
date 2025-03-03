Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2603CA4BE65
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Mar 2025 12:27:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD8F510E3D2;
	Mon,  3 Mar 2025 11:27:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y+JEqych";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E008010E3CD;
 Mon,  3 Mar 2025 11:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741001242; x=1772537242;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2vd/G+Hr7y1VMS/DS+zLQOeOYXtKQ6u2OR9E5q1h8uY=;
 b=Y+JEqychnz6kk6HMJ5B2shlWE/H9Qr30Wk5X++WqKEddbVZgiSH05RbC
 f9v1oC3w7vlCKozw9HcUn7b+Q+6CowXE5xJke5k8JzSu0Ki32YsudRbSF
 hMalfFtcru2vjSOS3VDZ6nF55B+49RkonxucTpBllrMY5f2olrKhRZzPC
 TrwM3Lz4cuwapVtkIoRrtX5qVT/mnU5gUOcFc94vp8o4wQnr829YMU+8I
 T+Ihl4ZJKgFs0nWCEZRj1+20TOWzYvQCKa3/sLB2KNxn0wDmErZhJYMRt
 5xx/ENTDgItYFeUCrd+fQI/hrj1IIMW6vUfxdCwTn4unRIf7HM+WLU6+p w==;
X-CSE-ConnectionGUID: 5E3DlHSbRUW0+Dq98c6dDA==
X-CSE-MsgGUID: MPyUzffyS/KQfTPaxD5UhA==
X-IronPort-AV: E=McAfee;i="6700,10204,11361"; a="42125138"
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="42125138"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 03:27:21 -0800
X-CSE-ConnectionGUID: Pz25AGhLQ8abTDGm9Q/bVg==
X-CSE-MsgGUID: bE/A0LD9R3KV0rlPKboA0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="118010094"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 03:27:20 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	matthew.d.roper@intel.com
Subject: [PATCH v3 1/8] drm/i915/display: convert display reset to struct
 intel_display *
Date: Mon,  3 Mar 2025 13:27:03 +0200
Message-Id: <060c309189f1c084e012521822f4a0247f64528e.1741001054.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1741001054.git.jani.nikula@intel.com>
References: <cover.1741001054.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Going forward, struct intel_display will be the main display device
structure. Convert display reset to it as much as possible.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_reset.c    | 51 ++++++++++---------
 .../drm/i915/display/intel_display_reset.h    |  6 +--
 drivers/gpu/drm/i915/gt/intel_reset.c         |  7 ++-
 3 files changed, 35 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
index a690968885bf..c1e448e8a26e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reset.c
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
@@ -14,24 +14,27 @@
 #include "intel_hotplug.h"
 #include "intel_pps.h"
 
-static bool gpu_reset_clobbers_display(struct drm_i915_private *dev_priv)
+static bool gpu_reset_clobbers_display(struct intel_display *display)
 {
-	return (INTEL_INFO(dev_priv)->gpu_reset_clobbers_display &&
-		intel_has_gpu_reset(to_gt(dev_priv)));
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
+	return (INTEL_INFO(i915)->gpu_reset_clobbers_display &&
+		intel_has_gpu_reset(to_gt(i915)));
 }
 
-void intel_display_reset_prepare(struct drm_i915_private *dev_priv)
+void intel_display_reset_prepare(struct intel_display *display)
 {
-	struct drm_modeset_acquire_ctx *ctx = &dev_priv->display.restore.reset_ctx;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+	struct drm_modeset_acquire_ctx *ctx = &display->restore.reset_ctx;
 	struct drm_atomic_state *state;
 	int ret;
 
-	if (!HAS_DISPLAY(dev_priv))
+	if (!HAS_DISPLAY(display))
 		return;
 
 	/* reset doesn't touch the display */
-	if (!dev_priv->display.params.force_reset_modeset_test &&
-	    !gpu_reset_clobbers_display(dev_priv))
+	if (!display->params.force_reset_modeset_test &&
+	    !gpu_reset_clobbers_display(display))
 		return;
 
 	/* We have a modeset vs reset deadlock, defensively unbreak it. */
@@ -40,7 +43,7 @@ void intel_display_reset_prepare(struct drm_i915_private *dev_priv)
 	wake_up_bit(&to_gt(dev_priv)->reset.flags, I915_RESET_MODESET);
 
 	if (atomic_read(&dev_priv->gpu_error.pending_fb_pin)) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Modeset potentially stuck, unbreaking through wedging\n");
 		intel_gt_set_wedged(to_gt(dev_priv));
 	}
@@ -49,10 +52,10 @@ void intel_display_reset_prepare(struct drm_i915_private *dev_priv)
 	 * Need mode_config.mutex so that we don't
 	 * trample ongoing ->detect() and whatnot.
 	 */
-	mutex_lock(&dev_priv->drm.mode_config.mutex);
+	mutex_lock(&display->drm->mode_config.mutex);
 	drm_modeset_acquire_init(ctx, 0);
 	while (1) {
-		ret = drm_modeset_lock_all_ctx(&dev_priv->drm, ctx);
+		ret = drm_modeset_lock_all_ctx(display->drm, ctx);
 		if (ret != -EDEADLK)
 			break;
 
@@ -62,34 +65,34 @@ void intel_display_reset_prepare(struct drm_i915_private *dev_priv)
 	 * Disabling the crtcs gracefully seems nicer. Also the
 	 * g33 docs say we should at least disable all the planes.
 	 */
-	state = drm_atomic_helper_duplicate_state(&dev_priv->drm, ctx);
+	state = drm_atomic_helper_duplicate_state(display->drm, ctx);
 	if (IS_ERR(state)) {
 		ret = PTR_ERR(state);
-		drm_err(&dev_priv->drm, "Duplicating state failed with %i\n",
+		drm_err(display->drm, "Duplicating state failed with %i\n",
 			ret);
 		return;
 	}
 
-	ret = drm_atomic_helper_disable_all(&dev_priv->drm, ctx);
+	ret = drm_atomic_helper_disable_all(display->drm, ctx);
 	if (ret) {
-		drm_err(&dev_priv->drm, "Suspending crtc's failed with %i\n",
+		drm_err(display->drm, "Suspending crtc's failed with %i\n",
 			ret);
 		drm_atomic_state_put(state);
 		return;
 	}
 
-	dev_priv->display.restore.modeset_state = state;
+	display->restore.modeset_state = state;
 	state->acquire_ctx = ctx;
 }
 
-void intel_display_reset_finish(struct drm_i915_private *i915)
+void intel_display_reset_finish(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct drm_modeset_acquire_ctx *ctx = &display->restore.reset_ctx;
 	struct drm_atomic_state *state;
 	int ret;
 
-	if (!HAS_DISPLAY(i915))
+	if (!HAS_DISPLAY(display))
 		return;
 
 	/* reset doesn't touch the display */
@@ -101,12 +104,12 @@ void intel_display_reset_finish(struct drm_i915_private *i915)
 		goto unlock;
 
 	/* reset doesn't touch the display */
-	if (!gpu_reset_clobbers_display(i915)) {
+	if (!gpu_reset_clobbers_display(display)) {
 		/* for testing only restore the display */
 		ret = drm_atomic_helper_commit_duplicated_state(state, ctx);
 		if (ret) {
-			drm_WARN_ON(&i915->drm, ret == -EDEADLK);
-			drm_err(&i915->drm,
+			drm_WARN_ON(display->drm, ret == -EDEADLK);
+			drm_err(display->drm,
 				"Restoring old state failed with %i\n", ret);
 		}
 	} else {
@@ -122,7 +125,7 @@ void intel_display_reset_finish(struct drm_i915_private *i915)
 
 		ret = __intel_display_driver_resume(display, state, ctx);
 		if (ret)
-			drm_err(&i915->drm,
+			drm_err(display->drm,
 				"Restoring old state failed with %i\n", ret);
 
 		intel_hpd_poll_disable(i915);
@@ -132,7 +135,7 @@ void intel_display_reset_finish(struct drm_i915_private *i915)
 unlock:
 	drm_modeset_drop_locks(ctx);
 	drm_modeset_acquire_fini(ctx);
-	mutex_unlock(&i915->drm.mode_config.mutex);
+	mutex_unlock(&display->drm->mode_config.mutex);
 
 	clear_bit_unlock(I915_RESET_MODESET, &to_gt(i915)->reset.flags);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.h b/drivers/gpu/drm/i915/display/intel_display_reset.h
index f06d0d35b86b..9a1fe99bfcd4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reset.h
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.h
@@ -6,9 +6,9 @@
 #ifndef __INTEL_RESET_H__
 #define __INTEL_RESET_H__
 
-struct drm_i915_private;
+struct intel_display;
 
-void intel_display_reset_prepare(struct drm_i915_private *i915);
-void intel_display_reset_finish(struct drm_i915_private *i915);
+void intel_display_reset_prepare(struct intel_display *display);
+void intel_display_reset_finish(struct intel_display *display);
 
 #endif /* __INTEL_RESET_H__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 3db3bec645fc..d937135063ee 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -1410,11 +1410,14 @@ static void intel_gt_reset_global(struct intel_gt *gt,
 
 	/* Use a watchdog to ensure that our reset completes */
 	intel_wedge_on_timeout(&w, gt, 60 * HZ) {
-		intel_display_reset_prepare(gt->i915);
+		struct drm_i915_private *i915 = gt->i915;
+		struct intel_display *display = &i915->display;
+
+		intel_display_reset_prepare(display);
 
 		intel_gt_reset(gt, engine_mask, reason);
 
-		intel_display_reset_finish(gt->i915);
+		intel_display_reset_finish(display);
 	}
 
 	if (!test_bit(I915_WEDGED, &gt->reset.flags))
-- 
2.39.5

