Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C87DF54DE6E
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 11:49:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A6B0113DE2;
	Thu, 16 Jun 2022 09:49:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6275113DCB
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 09:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655372948; x=1686908948;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bsYTdAd1xa6HMeZpkM3HdArT925Uy18dVGc5Sr013Uk=;
 b=AR0BKv8Yea2dkt3SMs5f4EZ65mcqVAW4yuNr1nlQAVt1gVvLnhxn6zSZ
 XQ8Fj8GyYJlOmeyxoY8WeSjPJTs1vvI3wm0nZxSNYxdFPKJssQpT75nHx
 yfE78Vzv2CIlAmIqp5zSgbnR3R/h5d/oFiRgvXqkoVKNFpHLzOUCiuAZo
 3+aT4dI4pA1VtsyAVjhi+WWPp+OLopVctBM56NaqdYRqJ/WxUf5WqXFqe
 JxxP9XV7kVVfZ66DU8vcdqnIzpftFJ3vUuHzfca2NcI+faIjYu3HxKTFk
 C32H+9yISx1hNHknKLnw8YiwXDY3yPd9TKzJdm8gEf3cglW6KK1rZ4x64 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="259674890"
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="259674890"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 02:49:08 -0700
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="687749695"
Received: from malashi-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.57.133])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 02:49:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jun 2022 12:48:20 +0300
Message-Id: <1bb84c4fffde5025ddc411148d529381a587e1e1.1655372759.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1655372759.git.jani.nikula@intel.com>
References: <cover.1655372759.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 10/11] drm/i915/display: some struct
 drm_i915_private *i915 conversions
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

Prefer struct drm_i915_private *i915 over struct drm_device or dev_priv.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 60 ++++++++++----------
 1 file changed, 30 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a80dd408210a..710a51f14649 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -830,7 +830,7 @@ intel_plane_fence_y_offset(const struct intel_plane_state *plane_state)
 }
 
 static int
-__intel_display_resume(struct drm_device *dev,
+__intel_display_resume(struct drm_i915_private *i915,
 		       struct drm_atomic_state *state,
 		       struct drm_modeset_acquire_ctx *ctx)
 {
@@ -838,8 +838,8 @@ __intel_display_resume(struct drm_device *dev,
 	struct drm_crtc *crtc;
 	int i, ret;
 
-	intel_modeset_setup_hw_state(dev, ctx);
-	intel_vga_redisable(to_i915(dev));
+	intel_modeset_setup_hw_state(&i915->drm, ctx);
+	intel_vga_redisable(i915);
 
 	if (!state)
 		return 0;
@@ -859,12 +859,13 @@ __intel_display_resume(struct drm_device *dev,
 	}
 
 	/* ignore any reset values/BIOS leftovers in the WM registers */
-	if (!HAS_GMCH(to_i915(dev)))
+	if (!HAS_GMCH(i915))
 		to_intel_atomic_state(state)->skip_intermediate_wm = true;
 
 	ret = drm_atomic_helper_commit_duplicated_state(state, ctx);
 
-	drm_WARN_ON(dev, ret == -EDEADLK);
+	drm_WARN_ON(&i915->drm, ret == -EDEADLK);
+
 	return ret;
 }
 
@@ -937,56 +938,55 @@ void intel_display_prepare_reset(struct drm_i915_private *dev_priv)
 	state->acquire_ctx = ctx;
 }
 
-void intel_display_finish_reset(struct drm_i915_private *dev_priv)
+void intel_display_finish_reset(struct drm_i915_private *i915)
 {
-	struct drm_device *dev = &dev_priv->drm;
-	struct drm_modeset_acquire_ctx *ctx = &dev_priv->reset_ctx;
+	struct drm_modeset_acquire_ctx *ctx = &i915->reset_ctx;
 	struct drm_atomic_state *state;
 	int ret;
 
-	if (!HAS_DISPLAY(dev_priv))
+	if (!HAS_DISPLAY(i915))
 		return;
 
 	/* reset doesn't touch the display */
-	if (!test_bit(I915_RESET_MODESET, &to_gt(dev_priv)->reset.flags))
+	if (!test_bit(I915_RESET_MODESET, &to_gt(i915)->reset.flags))
 		return;
 
-	state = fetch_and_zero(&dev_priv->modeset_restore_state);
+	state = fetch_and_zero(&i915->modeset_restore_state);
 	if (!state)
 		goto unlock;
 
 	/* reset doesn't touch the display */
-	if (!gpu_reset_clobbers_display(dev_priv)) {
+	if (!gpu_reset_clobbers_display(i915)) {
 		/* for testing only restore the display */
-		ret = __intel_display_resume(dev, state, ctx);
+		ret = __intel_display_resume(i915, state, ctx);
 		if (ret)
-			drm_err(&dev_priv->drm,
+			drm_err(&i915->drm,
 				"Restoring old state failed with %i\n", ret);
 	} else {
 		/*
 		 * The display has been reset as well,
 		 * so need a full re-initialization.
 		 */
-		intel_pps_unlock_regs_wa(dev_priv);
-		intel_modeset_init_hw(dev_priv);
-		intel_init_clock_gating(dev_priv);
-		intel_hpd_init(dev_priv);
+		intel_pps_unlock_regs_wa(i915);
+		intel_modeset_init_hw(i915);
+		intel_init_clock_gating(i915);
+		intel_hpd_init(i915);
 
-		ret = __intel_display_resume(dev, state, ctx);
+		ret = __intel_display_resume(i915, state, ctx);
 		if (ret)
-			drm_err(&dev_priv->drm,
+			drm_err(&i915->drm,
 				"Restoring old state failed with %i\n", ret);
 
-		intel_hpd_poll_disable(dev_priv);
+		intel_hpd_poll_disable(i915);
 	}
 
 	drm_atomic_state_put(state);
 unlock:
 	drm_modeset_drop_locks(ctx);
 	drm_modeset_acquire_fini(ctx);
-	mutex_unlock(&dev->mode_config.mutex);
+	mutex_unlock(&i915->drm.mode_config.mutex);
 
-	clear_bit_unlock(I915_RESET_MODESET, &to_gt(dev_priv)->reset.flags);
+	clear_bit_unlock(I915_RESET_MODESET, &to_gt(i915)->reset.flags);
 }
 
 static void icl_set_pipe_chicken(const struct intel_crtc_state *crtc_state)
@@ -8921,15 +8921,15 @@ void i830_disable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 
 void intel_display_resume(struct drm_device *dev)
 {
-	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct drm_atomic_state *state = dev_priv->modeset_restore_state;
+	struct drm_i915_private *i915 = to_i915(dev);
+	struct drm_atomic_state *state = i915->modeset_restore_state;
 	struct drm_modeset_acquire_ctx ctx;
 	int ret;
 
-	if (!HAS_DISPLAY(dev_priv))
+	if (!HAS_DISPLAY(i915))
 		return;
 
-	dev_priv->modeset_restore_state = NULL;
+	i915->modeset_restore_state = NULL;
 	if (state)
 		state->acquire_ctx = &ctx;
 
@@ -8944,14 +8944,14 @@ void intel_display_resume(struct drm_device *dev)
 	}
 
 	if (!ret)
-		ret = __intel_display_resume(dev, state, &ctx);
+		ret = __intel_display_resume(i915, state, &ctx);
 
-	intel_enable_ipc(dev_priv);
+	intel_enable_ipc(i915);
 	drm_modeset_drop_locks(&ctx);
 	drm_modeset_acquire_fini(&ctx);
 
 	if (ret)
-		drm_err(&dev_priv->drm,
+		drm_err(&i915->drm,
 			"Restoring old state failed with %i\n", ret);
 	if (state)
 		drm_atomic_state_put(state);
-- 
2.30.2

