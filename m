Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 861A2A05860
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 11:41:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C55110E850;
	Wed,  8 Jan 2025 10:41:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FVEBw2s+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C065410E1A6
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 10:41:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736332897; x=1767868897;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=at4zqgbRnKJhTj65enaniZdNtM+1qkFbB0H5lGL9u2A=;
 b=FVEBw2s+u1r5M+qc7uUvNHZ0iGClJze8RmvilU5Nr52AFw9+Xnx1fNQ7
 16+8+Lon2pR9JpuWUp099xkwANTg2M6wzhx70XUsjdUTyKQ242grSi9+o
 VO0LLz4xrUtqXWJF3ovkpJnsCE+eXq69nd5kSQWGnZ82u+pTI42vzvjXB
 hKapMTMDPyLdsEV3ma8fKC/bBuv4gIWhUSm3JuWNpIZTSM85F6Yn9y4Xt
 cLIV1vyWi+GQTzT4ownx4/QTvLSIui2fNMkpPF+LNAcciXE66kZIQ7/sl
 c6BL7KVCdl9nH3OPoynrdLT1DPzRqgAqE4PtmjfliMUwFeNTQ8xYyYzRq Q==;
X-CSE-ConnectionGUID: psTNxsdGSiOuNYV95KDHcw==
X-CSE-MsgGUID: Fbbj39NCQFKZBAA5nmLfWA==
X-IronPort-AV: E=McAfee;i="6700,10204,11308"; a="47218464"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="47218464"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 02:41:37 -0800
X-CSE-ConnectionGUID: HqNDTQ+fTFu3+/yUOewCVA==
X-CSE-MsgGUID: 2znhOkoIQ+K7TaE5weGgyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="102978963"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.152])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 02:41:35 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/6] drm/i915: move pending_fb_pin to struct intel_display
Date: Wed,  8 Jan 2025 12:41:17 +0200
Message-Id: <df61cd56f11628e7b806f0d862e5183002950d85.1736332802.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1736332802.git.jani.nikula@intel.com>
References: <cover.1736332802.git.jani.nikula@intel.com>
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

pending_fb_pin is more about display than GPU reset. Move it to struct
intel_display. The restore sub-struct already contains reset related
members, so move it there.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_core.h  |  2 ++
 drivers/gpu/drm/i915/display/intel_display_reset.c |  2 +-
 drivers/gpu/drm/i915/display/intel_dpt.c           |  5 +++--
 drivers/gpu/drm/i915/display/intel_fb_pin.c        | 10 ++++++----
 drivers/gpu/drm/i915/display/intel_overlay.c       |  5 ++---
 drivers/gpu/drm/i915/i915_gpu_error.h              |  2 --
 6 files changed, 14 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 554870d2494b..1970d4c15090 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -512,6 +512,8 @@ struct intel_display {
 		/* restore state for suspend/resume and display reset */
 		struct drm_atomic_state *modeset_state;
 		struct drm_modeset_acquire_ctx reset_ctx;
+		/* modeset stuck tracking for reset */
+		atomic_t pending_fb_pin;
 		u32 saveDSPARB;
 		u32 saveSWF0[16];
 		u32 saveSWF1[16];
diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
index 3da70bdbd9f6..1e6421d51c51 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reset.c
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
@@ -41,7 +41,7 @@ void intel_display_reset_prepare(struct intel_display *display)
 	smp_mb__after_atomic();
 	wake_up_bit(&to_gt(dev_priv)->reset.flags, I915_RESET_MODESET);
 
-	if (atomic_read(&dev_priv->gpu_error.pending_fb_pin)) {
+	if (atomic_read(&display->restore.pending_fb_pin)) {
 		drm_dbg_kms(display->drm,
 			    "Modeset potentially stuck, unbreaking through wedging\n");
 		intel_gt_set_wedged(to_gt(dev_priv));
diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index 8b1f0e92a11c..8254e8a2b82c 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -125,6 +125,7 @@ struct i915_vma *intel_dpt_pin_to_ggtt(struct i915_address_space *vm,
 				       unsigned int alignment)
 {
 	struct drm_i915_private *i915 = vm->i915;
+	struct intel_display *display = &i915->display;
 	struct i915_dpt *dpt = i915_vm_to_dpt(vm);
 	intel_wakeref_t wakeref;
 	struct i915_vma *vma;
@@ -137,7 +138,7 @@ struct i915_vma *intel_dpt_pin_to_ggtt(struct i915_address_space *vm,
 		pin_flags |= PIN_MAPPABLE;
 
 	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
-	atomic_inc(&i915->gpu_error.pending_fb_pin);
+	atomic_inc(&display->restore.pending_fb_pin);
 
 	for_i915_gem_ww(&ww, err, true) {
 		err = i915_gem_object_lock(dpt->obj, &ww);
@@ -167,7 +168,7 @@ struct i915_vma *intel_dpt_pin_to_ggtt(struct i915_address_space *vm,
 
 	dpt->obj->mm.dirty = true;
 
-	atomic_dec(&i915->gpu_error.pending_fb_pin);
+	atomic_dec(&display->restore.pending_fb_pin);
 	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
 
 	return err ? ERR_PTR(err) : vma;
diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index d3a86f9c6bc8..ff5efd4544e3 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -25,6 +25,7 @@ intel_fb_pin_to_dpt(const struct drm_framebuffer *fb,
 		    struct i915_address_space *vm)
 {
 	struct drm_device *dev = fb->dev;
+	struct intel_display *display = to_intel_display(dev);
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct drm_gem_object *_obj = intel_fb_bo(fb);
 	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
@@ -42,7 +43,7 @@ intel_fb_pin_to_dpt(const struct drm_framebuffer *fb,
 	if (WARN_ON(!i915_gem_object_is_framebuffer(obj)))
 		return ERR_PTR(-EINVAL);
 
-	atomic_inc(&dev_priv->gpu_error.pending_fb_pin);
+	atomic_inc(&display->restore.pending_fb_pin);
 
 	for_i915_gem_ww(&ww, ret, true) {
 		ret = i915_gem_object_lock(obj, &ww);
@@ -97,7 +98,7 @@ intel_fb_pin_to_dpt(const struct drm_framebuffer *fb,
 
 	i915_vma_get(vma);
 err:
-	atomic_dec(&dev_priv->gpu_error.pending_fb_pin);
+	atomic_dec(&display->restore.pending_fb_pin);
 
 	return vma;
 }
@@ -111,6 +112,7 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
 		     unsigned long *out_flags)
 {
 	struct drm_device *dev = fb->dev;
+	struct intel_display *display = to_intel_display(dev);
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct drm_gem_object *_obj = intel_fb_bo(fb);
 	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
@@ -143,7 +145,7 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
 	 */
 	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
 
-	atomic_inc(&dev_priv->gpu_error.pending_fb_pin);
+	atomic_inc(&display->restore.pending_fb_pin);
 
 	/*
 	 * Valleyview is definitely limited to scanning out the first
@@ -219,7 +221,7 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
 	if (ret)
 		vma = ERR_PTR(ret);
 
-	atomic_dec(&dev_priv->gpu_error.pending_fb_pin);
+	atomic_dec(&display->restore.pending_fb_pin);
 	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
 	return vma;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index ca30fff61876..60ae5e3bc454 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -793,7 +793,6 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
 				      struct drm_intel_overlay_put_image *params)
 {
 	struct intel_display *display = overlay->display;
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct overlay_registers __iomem *regs = overlay->regs;
 	u32 swidth, swidthsw, sheight, ostride;
 	enum pipe pipe = overlay->crtc->pipe;
@@ -808,7 +807,7 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
 	if (ret != 0)
 		return ret;
 
-	atomic_inc(&dev_priv->gpu_error.pending_fb_pin);
+	atomic_inc(&display->restore.pending_fb_pin);
 
 	vma = intel_overlay_pin_fb(new_bo);
 	if (IS_ERR(vma)) {
@@ -896,7 +895,7 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
 out_unpin:
 	i915_vma_unpin(vma);
 out_pin_section:
-	atomic_dec(&dev_priv->gpu_error.pending_fb_pin);
+	atomic_dec(&display->restore.pending_fb_pin);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
index 78a8928562a9..749e1c55613e 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -224,8 +224,6 @@ struct i915_gpu_error {
 	/* Protected by the above dev->gpu_error.lock. */
 	struct i915_gpu_coredump *first_error;
 
-	atomic_t pending_fb_pin;
-
 	/** Number of times the device has been reset (global) */
 	atomic_t reset_count;
 
-- 
2.39.5

