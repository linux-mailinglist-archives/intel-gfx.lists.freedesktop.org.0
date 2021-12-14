Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F23474C07
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Dec 2021 20:34:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5542710E178;
	Tue, 14 Dec 2021 19:34:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FC6A10E171;
 Tue, 14 Dec 2021 19:34:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="239018781"
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="239018781"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2021 11:34:28 -0800
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="682196680"
Received: from njayagop-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.251.212.16])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2021 11:34:24 -0800
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Intel GFX <intel-gfx@lists.freedesktop.org>,
 DRI Devel <dri-devel@lists.freedesktop.org>
Date: Tue, 14 Dec 2021 21:33:33 +0200
Message-Id: <20211214193346.21231-4-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211214193346.21231-1-andi.shyti@linux.intel.com>
References: <20211214193346.21231-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 03/16] drm/i915/display: Use to_gt() helper
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
Cc: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Michał Winiarski <michal.winiarski@intel.com>

Use to_gt() helper consistently throughout the codebase.
Pure mechanical s/i915->gt/to_gt(i915). No functional changes.

Signed-off-by: Michał Winiarski <michal.winiarski@intel.com>
Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c  |  4 ++--
 drivers/gpu/drm/i915/display/intel_display.c   | 18 +++++++++---------
 drivers/gpu/drm/i915/display/intel_dpt.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_overlay.c   |  2 +-
 .../gpu/drm/i915/display/skl_universal_plane.c |  2 +-
 5 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 89005628cc3a..c2c512cd8ec0 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -819,7 +819,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
 	 * maximum clocks following a vblank miss (see do_rps_boost()).
 	 */
 	if (!state->rps_interactive) {
-		intel_rps_mark_interactive(&dev_priv->gt.rps, true);
+		intel_rps_mark_interactive(&to_gt(dev_priv)->rps, true);
 		state->rps_interactive = true;
 	}
 
@@ -853,7 +853,7 @@ intel_cleanup_plane_fb(struct drm_plane *plane,
 		return;
 
 	if (state->rps_interactive) {
-		intel_rps_mark_interactive(&dev_priv->gt.rps, false);
+		intel_rps_mark_interactive(&to_gt(dev_priv)->rps, false);
 		state->rps_interactive = false;
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6fbad5c6cc71..bf7ce684dd8e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -843,7 +843,7 @@ __intel_display_resume(struct drm_device *dev,
 static bool gpu_reset_clobbers_display(struct drm_i915_private *dev_priv)
 {
 	return (INTEL_INFO(dev_priv)->gpu_reset_clobbers_display &&
-		intel_has_gpu_reset(&dev_priv->gt));
+		intel_has_gpu_reset(to_gt(dev_priv)));
 }
 
 void intel_display_prepare_reset(struct drm_i915_private *dev_priv)
@@ -862,14 +862,14 @@ void intel_display_prepare_reset(struct drm_i915_private *dev_priv)
 		return;
 
 	/* We have a modeset vs reset deadlock, defensively unbreak it. */
-	set_bit(I915_RESET_MODESET, &dev_priv->gt.reset.flags);
+	set_bit(I915_RESET_MODESET, &to_gt(dev_priv)->reset.flags);
 	smp_mb__after_atomic();
-	wake_up_bit(&dev_priv->gt.reset.flags, I915_RESET_MODESET);
+	wake_up_bit(&to_gt(dev_priv)->reset.flags, I915_RESET_MODESET);
 
 	if (atomic_read(&dev_priv->gpu_error.pending_fb_pin)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Modeset potentially stuck, unbreaking through wedging\n");
-		intel_gt_set_wedged(&dev_priv->gt);
+		intel_gt_set_wedged(to_gt(dev_priv));
 	}
 
 	/*
@@ -920,7 +920,7 @@ void intel_display_finish_reset(struct drm_i915_private *dev_priv)
 		return;
 
 	/* reset doesn't touch the display */
-	if (!test_bit(I915_RESET_MODESET, &dev_priv->gt.reset.flags))
+	if (!test_bit(I915_RESET_MODESET, &to_gt(dev_priv)->reset.flags))
 		return;
 
 	state = fetch_and_zero(&dev_priv->modeset_restore_state);
@@ -958,7 +958,7 @@ void intel_display_finish_reset(struct drm_i915_private *dev_priv)
 	drm_modeset_acquire_fini(ctx);
 	mutex_unlock(&dev->mode_config.mutex);
 
-	clear_bit_unlock(I915_RESET_MODESET, &dev_priv->gt.reset.flags);
+	clear_bit_unlock(I915_RESET_MODESET, &to_gt(dev_priv)->reset.flags);
 }
 
 static void icl_set_pipe_chicken(const struct intel_crtc_state *crtc_state)
@@ -8513,19 +8513,19 @@ static void intel_atomic_commit_fence_wait(struct intel_atomic_state *intel_stat
 	for (;;) {
 		prepare_to_wait(&intel_state->commit_ready.wait,
 				&wait_fence, TASK_UNINTERRUPTIBLE);
-		prepare_to_wait(bit_waitqueue(&dev_priv->gt.reset.flags,
+		prepare_to_wait(bit_waitqueue(&to_gt(dev_priv)->reset.flags,
 					      I915_RESET_MODESET),
 				&wait_reset, TASK_UNINTERRUPTIBLE);
 
 
 		if (i915_sw_fence_done(&intel_state->commit_ready) ||
-		    test_bit(I915_RESET_MODESET, &dev_priv->gt.reset.flags))
+		    test_bit(I915_RESET_MODESET, &to_gt(dev_priv)->reset.flags))
 			break;
 
 		schedule();
 	}
 	finish_wait(&intel_state->commit_ready.wait, &wait_fence);
-	finish_wait(bit_waitqueue(&dev_priv->gt.reset.flags,
+	finish_wait(bit_waitqueue(&to_gt(dev_priv)->reset.flags,
 				  I915_RESET_MODESET),
 		    &wait_reset);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index 963ca7155b06..ce760402a89a 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -264,7 +264,7 @@ intel_dpt_create(struct intel_framebuffer *fb)
 
 	vm = &dpt->vm;
 
-	vm->gt = &i915->gt;
+	vm->gt = to_gt(i915);
 	vm->i915 = i915;
 	vm->dma = i915->drm.dev;
 	vm->total = (size / sizeof(gen8_pte_t)) * I915_GTT_PAGE_SIZE;
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 7e3f5c6ca484..1a376e9a1ff3 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -1382,7 +1382,7 @@ void intel_overlay_setup(struct drm_i915_private *dev_priv)
 	if (!HAS_OVERLAY(dev_priv))
 		return;
 
-	engine = dev_priv->gt.engine[RCS0];
+	engine = to_gt(dev_priv)->engine[RCS0];
 	if (!engine || !engine->kernel_context)
 		return;
 
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index d5359cf3d270..93a385396512 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1737,7 +1737,7 @@ static bool bo_has_valid_encryption(struct drm_i915_gem_object *obj)
 {
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 
-	return intel_pxp_key_check(&i915->gt.pxp, obj, false) == 0;
+	return intel_pxp_key_check(&to_gt(i915)->pxp, obj, false) == 0;
 }
 
 static bool pxp_is_borked(struct drm_i915_gem_object *obj)
-- 
2.34.1

