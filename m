Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6495BA4BE6C
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Mar 2025 12:27:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7D6E10E3F0;
	Mon,  3 Mar 2025 11:27:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f6/IC+KC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 305E910E3E7;
 Mon,  3 Mar 2025 11:27:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741001262; x=1772537262;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oCMMe78lxI46DUUkvMdHT++SCWHs7XWO2q0K+EZsRDE=;
 b=f6/IC+KCuvKIplSehPetHv6sqZgtB9hEOSzqy7GskGmN4hBTV/WRm3qd
 l2idkGM+cffzwZ9hi20RgmK4JMlxjSItlci5hMPZHRpO+DNciDetLtM8K
 qcA5B6bacxuhrE4VowXab++vODKuFg+xvsrmRCT4bzR4pjJPdSHUkNL8X
 f10U6JY6fJGEMDH97YqxcQeLm3YJVjY+5pNzIMz9YMxU7witI4DgxOAk4
 HtzovZ1BL1WXWKZ7EG1vW6bpz5MRw6yGnvutOoyBUWwk2cspTQAJuuM2g
 hv1DDtRYaytvOmAc+tpXJYzbwmG96SgxAKD4CiBmKPSiWaa8HRLeF7D/Z Q==;
X-CSE-ConnectionGUID: bgp2mvaWSaWLsXXDUQNuYQ==
X-CSE-MsgGUID: cYw2+9IISg2sE2PMp5SOsQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11361"; a="42125216"
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="42125216"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 03:27:42 -0800
X-CSE-ConnectionGUID: SQ2Ze7OUTCupExWIcLyHAQ==
X-CSE-MsgGUID: QZN2YoYtT+GUi3+/9d1B8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="118010255"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 03:27:41 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	matthew.d.roper@intel.com
Subject: [PATCH v3 5/8] drm/i915/reset: remove I915_RESET_MODESET flag
Date: Mon,  3 Mar 2025 13:27:07 +0200
Message-Id: <294690db3fae8fec7f356edf467e79882ed494db.1741001054.git.jani.nikula@intel.com>
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

Since commit d59cf7bb73f3 ("drm/i915/display: Use dma_fence interfaces
instead of i915_sw_fence") we don't have anyone waiting on the
I915_RESET_MODESET bit, and there's no need for its semantics. Instead,
simply return true from intel_display_reset_prepare() to indicate that
intel_display_reset_finish() should be called.

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_reset.c    | 24 +++++++------------
 .../drm/i915/display/intel_display_reset.h    |  2 +-
 drivers/gpu/drm/i915/gt/intel_reset.c         |  8 ++++---
 drivers/gpu/drm/i915/gt/intel_reset_types.h   |  3 +--
 4 files changed, 15 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
index 121679b4230f..acc728c75328 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reset.c
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
@@ -27,7 +27,8 @@ bool intel_display_reset_test(struct intel_display *display)
 	return display->params.force_reset_modeset_test;
 }
 
-void intel_display_reset_prepare(struct intel_display *display)
+/* returns true if intel_display_reset_finish() needs to be called */
+bool intel_display_reset_prepare(struct intel_display *display)
 {
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct drm_modeset_acquire_ctx *ctx = &display->restore.reset_ctx;
@@ -35,17 +36,12 @@ void intel_display_reset_prepare(struct intel_display *display)
 	int ret;
 
 	if (!HAS_DISPLAY(display))
-		return;
+		return false;
 
 	/* reset doesn't touch the display */
 	if (!intel_display_reset_test(display) &&
 	    !gpu_reset_clobbers_display(display))
-		return;
-
-	/* We have a modeset vs reset deadlock, defensively unbreak it. */
-	set_bit(I915_RESET_MODESET, &to_gt(dev_priv)->reset.flags);
-	smp_mb__after_atomic();
-	wake_up_bit(&to_gt(dev_priv)->reset.flags, I915_RESET_MODESET);
+		return false;
 
 	if (atomic_read(&display->restore.pending_fb_pin)) {
 		drm_dbg_kms(display->drm,
@@ -75,7 +71,7 @@ void intel_display_reset_prepare(struct intel_display *display)
 		ret = PTR_ERR(state);
 		drm_err(display->drm, "Duplicating state failed with %i\n",
 			ret);
-		return;
+		return true;
 	}
 
 	ret = drm_atomic_helper_disable_all(display->drm, ctx);
@@ -83,11 +79,13 @@ void intel_display_reset_prepare(struct intel_display *display)
 		drm_err(display->drm, "Suspending crtc's failed with %i\n",
 			ret);
 		drm_atomic_state_put(state);
-		return;
+		return true;
 	}
 
 	display->restore.modeset_state = state;
 	state->acquire_ctx = ctx;
+
+	return true;
 }
 
 void intel_display_reset_finish(struct intel_display *display)
@@ -100,10 +98,6 @@ void intel_display_reset_finish(struct intel_display *display)
 	if (!HAS_DISPLAY(display))
 		return;
 
-	/* reset doesn't touch the display */
-	if (!test_bit(I915_RESET_MODESET, &to_gt(i915)->reset.flags))
-		return;
-
 	state = fetch_and_zero(&display->restore.modeset_state);
 	if (!state)
 		goto unlock;
@@ -141,6 +135,4 @@ void intel_display_reset_finish(struct intel_display *display)
 	drm_modeset_drop_locks(ctx);
 	drm_modeset_acquire_fini(ctx);
 	mutex_unlock(&display->drm->mode_config.mutex);
-
-	clear_bit_unlock(I915_RESET_MODESET, &to_gt(i915)->reset.flags);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.h b/drivers/gpu/drm/i915/display/intel_display_reset.h
index c1dd2e8d0914..311b5af8ca0c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reset.h
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.h
@@ -11,7 +11,7 @@
 struct intel_display;
 
 bool intel_display_reset_test(struct intel_display *display);
-void intel_display_reset_prepare(struct intel_display *display);
+bool intel_display_reset_prepare(struct intel_display *display);
 void intel_display_reset_finish(struct intel_display *display);
 
 #endif /* __INTEL_RESET_H__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 835c9081b239..f6c8e4d48b04 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -1419,12 +1419,14 @@ static void intel_gt_reset_global(struct intel_gt *gt,
 	intel_wedge_on_timeout(&w, gt, 60 * HZ) {
 		struct drm_i915_private *i915 = gt->i915;
 		struct intel_display *display = &i915->display;
+		bool reset_display;
 
-		intel_display_reset_prepare(display);
+		reset_display = intel_display_reset_prepare(display);
 
 		intel_gt_reset(gt, engine_mask, reason);
 
-		intel_display_reset_finish(display);
+		if (reset_display)
+			intel_display_reset_finish(display);
 	}
 
 	if (!test_bit(I915_WEDGED, &gt->reset.flags))
@@ -1492,7 +1494,7 @@ void intel_gt_handle_error(struct intel_gt *gt,
 	    intel_has_reset_engine(gt) && !intel_gt_is_wedged(gt)) {
 		local_bh_disable();
 		for_each_engine_masked(engine, gt, engine_mask, tmp) {
-			BUILD_BUG_ON(I915_RESET_MODESET >= I915_RESET_ENGINE);
+			BUILD_BUG_ON(I915_RESET_BACKOFF >= I915_RESET_ENGINE);
 			if (test_and_set_bit(I915_RESET_ENGINE + engine->id,
 					     &gt->reset.flags))
 				continue;
diff --git a/drivers/gpu/drm/i915/gt/intel_reset_types.h b/drivers/gpu/drm/i915/gt/intel_reset_types.h
index 80351f0a856c..4f5fd393af6f 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_reset_types.h
@@ -41,8 +41,7 @@ struct intel_reset {
 	 */
 	unsigned long flags;
 #define I915_RESET_BACKOFF	0
-#define I915_RESET_MODESET	1
-#define I915_RESET_ENGINE	2
+#define I915_RESET_ENGINE	1
 #define I915_WEDGED_ON_INIT	(BITS_PER_LONG - 3)
 #define I915_WEDGED_ON_FINI	(BITS_PER_LONG - 2)
 #define I915_WEDGED		(BITS_PER_LONG - 1)
-- 
2.39.5

