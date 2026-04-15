Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oJemJmr932ntbAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:04:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 179B9407E1E
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:04:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69C4710E74F;
	Wed, 15 Apr 2026 21:04:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TUYTw6H7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7655710E74F;
 Wed, 15 Apr 2026 21:04:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776287074; x=1807823074;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UETHRV4v/1rCxjQF6PVN89s588+fwjdO4bKMdv4H0BE=;
 b=TUYTw6H7jL72aCT9CPmSnm3qPvf1QLP2bycBTI1JdmYN2/+mRu/1160m
 rOXGTYyNBurB646yM1oZKwLEcohuT1rGV6Frf2bdjWhrh8q1d9W33JBKu
 B0AzjfZ91bIIV1LW3uQTXfD2y28yrtt+VPy1Y0deZ8CdRbabC4oYG8TVR
 Ep0gSBdLrJ2RfbXQIgd9aIgI5I8avQiHG4INBQh0N67SJDUALBsgQaR8f
 SMpnxwFV99JShJEtEYN4l9MCf0JaiURX+DX9psINerbHGqbnBfrqogJw9
 hFZ3W+3x7j95r+p9JRWSbuIgI7Qf/Wwafen8sKa+6K7UB0xWXVqko9Rop A==;
X-CSE-ConnectionGUID: 1ypIsvSlTiuLxkbC4rHDTg==
X-CSE-MsgGUID: dFyr8RBsS56aHW7o/4z0uw==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="99926293"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="99926293"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 14:04:33 -0700
X-CSE-ConnectionGUID: CPixjIquTSq/RBgD4x8PmA==
X-CSE-MsgGUID: gz14AQlDSQiMDvJTZhx7og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="234561892"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.108])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 14:04:33 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3 4/7] drm/i915/reset: Move pending_fb_pin handling to i915
Date: Thu, 16 Apr 2026 00:04:08 +0300
Message-ID: <20260415210411.24750-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260415210411.24750-1-ville.syrjala@linux.intel.com>
References: <20260415210411.24750-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 179B9407E1E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Only i915 uses the pending_fb_pin counter to potentially whack
the GPU harder if the display gets nuked during a GPU reset.
Move the atomic counter into the i915 specific bits of code, so
that we don't need to worry about on the display side.

For some reason the overlay code kept the pending_fb_pin counter
elevated for longer than just for the pin, but from now on it'll
just cover the actual pinning part.

Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  1 -
 .../drm/i915/display/intel_display_reset.c    |  9 +--------
 .../drm/i915/display/intel_display_reset.h    |  5 +----
 drivers/gpu/drm/i915/display/intel_overlay.c  | 10 ++--------
 drivers/gpu/drm/i915/gt/intel_reset.c         | 19 ++++++++++---------
 drivers/gpu/drm/i915/i915_dpt.c               |  5 ++---
 drivers/gpu/drm/i915/i915_drv.h               |  2 ++
 drivers/gpu/drm/i915/i915_fb_pin.c            |  9 ++++-----
 drivers/gpu/drm/i915/i915_overlay.c           |  6 ++++++
 9 files changed, 28 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index d9baca2d5aaf..38296a38372c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -564,7 +564,6 @@ struct intel_display {
 		struct drm_atomic_state *modeset_state;
 		struct drm_modeset_acquire_ctx reset_ctx;
 		/* modeset stuck tracking for reset */
-		atomic_t pending_fb_pin;
 		u32 saveDSPARB;
 		u32 saveSWF0[16];
 		u32 saveSWF1[16];
diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
index fc661c623cb8..be4af74f0275 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reset.c
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
@@ -27,19 +27,12 @@ bool intel_display_reset_test(struct intel_display *display)
 		display->params.force_reset_modeset_test;
 }
 
-void intel_display_reset_prepare(struct intel_display *display,
-				 modeset_stuck_fn modeset_stuck, void *context)
+void intel_display_reset_prepare(struct intel_display *display)
 {
 	struct drm_modeset_acquire_ctx *ctx = &display->restore.reset_ctx;
 	struct drm_atomic_state *state;
 	int ret;
 
-	if (atomic_read(&display->restore.pending_fb_pin)) {
-		drm_dbg_kms(display->drm,
-			    "Modeset potentially stuck, unbreaking through wedging\n");
-		modeset_stuck(context);
-	}
-
 	/*
 	 * Need mode_config.mutex so that we don't
 	 * trample ongoing ->detect() and whatnot.
diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.h b/drivers/gpu/drm/i915/display/intel_display_reset.h
index e0f15e757728..a8aa7729d33f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reset.h
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.h
@@ -10,12 +10,9 @@
 
 struct intel_display;
 
-typedef void modeset_stuck_fn(void *context);
-
 bool intel_display_reset_supported(struct intel_display *display);
 bool intel_display_reset_test(struct intel_display *display);
-void intel_display_reset_prepare(struct intel_display *display,
-				 modeset_stuck_fn modeset_stuck, void *context);
+void intel_display_reset_prepare(struct intel_display *display);
 void intel_display_reset_finish(struct intel_display *display, bool test_only);
 
 #endif /* __INTEL_RESET_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 12a325ceae6f..a809aa2950ac 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -481,13 +481,9 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
 	if (ret != 0)
 		return ret;
 
-	atomic_inc(&display->restore.pending_fb_pin);
-
 	vma = intel_parent_overlay_pin_fb(display, obj, &offset);
-	if (IS_ERR(vma)) {
-		ret = PTR_ERR(vma);
-		goto out_pin_section;
-	}
+	if (IS_ERR(vma))
+		return PTR_ERR(vma);
 
 	if (!intel_parent_overlay_is_active(display)) {
 		const struct intel_crtc_state *crtc_state =
@@ -571,8 +567,6 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
 
 out_unpin:
 	intel_parent_overlay_unpin_fb(display, vma);
-out_pin_section:
-	atomic_dec(&display->restore.pending_fb_pin);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index ffd11767874f..a1e6aaca8c9b 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -1398,11 +1398,6 @@ int intel_engine_reset(struct intel_engine_cs *engine, const char *msg)
 	return err;
 }
 
-static void display_reset_modeset_stuck(void *gt)
-{
-	intel_gt_set_wedged(gt);
-}
-
 static void intel_gt_reset_global(struct intel_gt *gt,
 				  u32 engine_mask,
 				  const char *reason)
@@ -1434,10 +1429,16 @@ static void intel_gt_reset_global(struct intel_gt *gt,
 			intel_display_reset_test(display) ||
 			need_display_reset;
 
-		if (reset_display)
-			intel_display_reset_prepare(display,
-						    display_reset_modeset_stuck,
-						    gt);
+		if (reset_display) {
+			if (atomic_read(&i915->pending_fb_pin)) {
+				drm_dbg_kms(&i915->drm,
+					    "Modeset potentially stuck, unbreaking through wedging\n");
+
+				intel_gt_set_wedged(gt);
+			}
+
+			intel_display_reset_prepare(display);
+		}
 
 		intel_gt_reset(gt, engine_mask, reason);
 
diff --git a/drivers/gpu/drm/i915/i915_dpt.c b/drivers/gpu/drm/i915/i915_dpt.c
index 9f47bb563c85..fcd7cced771d 100644
--- a/drivers/gpu/drm/i915/i915_dpt.c
+++ b/drivers/gpu/drm/i915/i915_dpt.c
@@ -129,7 +129,6 @@ static void dpt_cleanup(struct i915_address_space *vm)
 struct i915_vma *i915_dpt_pin_to_ggtt(struct intel_dpt *dpt, unsigned int alignment)
 {
 	struct drm_i915_private *i915 = dpt->vm.i915;
-	struct intel_display *display = i915->display;
 	struct ref_tracker *wakeref;
 	struct i915_vma *vma;
 	void __iomem *iomem;
@@ -141,7 +140,7 @@ struct i915_vma *i915_dpt_pin_to_ggtt(struct intel_dpt *dpt, unsigned int alignm
 		pin_flags |= PIN_MAPPABLE;
 
 	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
-	atomic_inc(&display->restore.pending_fb_pin);
+	atomic_inc(&i915->pending_fb_pin);
 
 	for_i915_gem_ww(&ww, err, true) {
 		err = i915_gem_object_lock(dpt->obj, &ww);
@@ -171,7 +170,7 @@ struct i915_vma *i915_dpt_pin_to_ggtt(struct intel_dpt *dpt, unsigned int alignm
 
 	dpt->obj->mm.dirty = true;
 
-	atomic_dec(&display->restore.pending_fb_pin);
+	atomic_dec(&i915->pending_fb_pin);
 	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
 
 	return err ? ERR_PTR(err) : vma;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index dafee3dcd1c5..844ed79e7211 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -315,6 +315,8 @@ struct drm_i915_private {
 	/* The TTM device structure. */
 	struct ttm_device bdev;
 
+	atomic_t pending_fb_pin;
+
 	I915_SELFTEST_DECLARE(struct i915_selftest_stash selftest;)
 
 	/*
diff --git a/drivers/gpu/drm/i915/i915_fb_pin.c b/drivers/gpu/drm/i915/i915_fb_pin.c
index efd5cb726cf8..85649bae25fb 100644
--- a/drivers/gpu/drm/i915/i915_fb_pin.c
+++ b/drivers/gpu/drm/i915/i915_fb_pin.c
@@ -28,7 +28,6 @@ intel_fb_pin_to_dpt(const struct drm_framebuffer *fb,
 		    unsigned int alignment,
 		    struct intel_dpt *dpt)
 {
-	struct intel_display *display = to_intel_display(fb->dev);
 	struct drm_i915_private *i915 = to_i915(fb->dev);
 	struct drm_gem_object *_obj = intel_fb_bo(fb);
 	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
@@ -47,7 +46,7 @@ intel_fb_pin_to_dpt(const struct drm_framebuffer *fb,
 	if (WARN_ON(!i915_gem_object_is_framebuffer(obj)))
 		return ERR_PTR(-EINVAL);
 
-	atomic_inc(&display->restore.pending_fb_pin);
+	atomic_inc(&i915->pending_fb_pin);
 
 	for_i915_gem_ww(&ww, ret, true) {
 		ret = i915_gem_object_lock(obj, &ww);
@@ -102,7 +101,7 @@ intel_fb_pin_to_dpt(const struct drm_framebuffer *fb,
 
 	i915_vma_get(vma);
 err:
-	atomic_dec(&display->restore.pending_fb_pin);
+	atomic_dec(&i915->pending_fb_pin);
 
 	return vma;
 }
@@ -140,7 +139,7 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
 	 */
 	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 
-	atomic_inc(&display->restore.pending_fb_pin);
+	atomic_inc(&i915->pending_fb_pin);
 
 	/*
 	 * Valleyview is definitely limited to scanning out the first
@@ -219,7 +218,7 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
 	if (ret)
 		vma = ERR_PTR(ret);
 
-	atomic_dec(&display->restore.pending_fb_pin);
+	atomic_dec(&i915->pending_fb_pin);
 	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
 	return vma;
 }
diff --git a/drivers/gpu/drm/i915/i915_overlay.c b/drivers/gpu/drm/i915/i915_overlay.c
index 2d7aff51e39b..6de550a17756 100644
--- a/drivers/gpu/drm/i915/i915_overlay.c
+++ b/drivers/gpu/drm/i915/i915_overlay.c
@@ -354,11 +354,14 @@ static struct i915_vma *i915_overlay_pin_fb(struct drm_device *drm,
 					    struct drm_gem_object *obj,
 					    u32 *offset)
 {
+	struct drm_i915_private *i915 = to_i915(drm);
 	struct drm_i915_gem_object *new_bo = to_intel_bo(obj);
 	struct i915_gem_ww_ctx ww;
 	struct i915_vma *vma;
 	int ret;
 
+	atomic_inc(&i915->pending_fb_pin);
+
 	i915_gem_ww_ctx_init(&ww, true);
 retry:
 	ret = i915_gem_object_lock(new_bo, &ww);
@@ -373,6 +376,9 @@ static struct i915_vma *i915_overlay_pin_fb(struct drm_device *drm,
 			goto retry;
 	}
 	i915_gem_ww_ctx_fini(&ww);
+
+	atomic_dec(&i915->pending_fb_pin);
+
 	if (ret)
 		return ERR_PTR(ret);
 
-- 
2.52.0

