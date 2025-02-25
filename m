Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D59A43D26
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 12:15:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7463210E627;
	Tue, 25 Feb 2025 11:14:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mtsucIS0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60A8E10E628;
 Tue, 25 Feb 2025 11:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740482099; x=1772018099;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uqZ9LOVXEO0bggnyA0UY6+Mv6m/Adm5voxZUjmvYQK0=;
 b=mtsucIS0243gywi5S/eep6XC98w2ZUcm34ANgtDiMBQCo9M4nD1U2wLA
 UimN2D96TDSbDWSg1LAPrU7LI9T7oR5SAoH5ga8P8v9rjfEw/N6I1f85M
 wAM/xCSjXvNTokP5msibV+R2fm/jUqRdLNbtjIlcBeDEWtJ+/gWRFBMfM
 bZejgyVTWteebY7CA3E8TvcpNB5jwTnhTut2UF99I3B0Ur0FHGBUeCLQy
 WDiKyy7C4puxGMm2ErAP/nW3G3a5RXpfrxCt88sqgtnbnFco8H8zIg5P8
 v29M9bvi7eKNOa9P+/gyDHjGN4PBSMAJ5KC3egDr9Dqf1YQZz8wS68ot0 g==;
X-CSE-ConnectionGUID: OVlS1CY5QM6SlCO/Wzbm2g==
X-CSE-MsgGUID: 4eHBOOpCQJmKDyvAdvynAA==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="41537418"
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="41537418"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 03:14:58 -0800
X-CSE-ConnectionGUID: rDs4YyIfQAKO7mPbSEY5dw==
X-CSE-MsgGUID: PudtHvk9R6qyTkCjBpxvug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="116846659"
Received: from monicael-mobl3 (HELO localhost) ([10.245.246.246])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 03:14:56 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH v2 6/8] drm/i915/reset: move gt related stuff out of display
 reset
Date: Tue, 25 Feb 2025 13:14:20 +0200
Message-Id: <3af6452fb882a17279018c1f1516545634136139.1740481927.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1740481927.git.jani.nikula@intel.com>
References: <cover.1740481927.git.jani.nikula@intel.com>
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

Move the checks for whether display reset is needed as well as
I915_RESET_MODESET flag handling to gt side of things.

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_reset.c    | 15 --------------
 drivers/gpu/drm/i915/gt/intel_reset.c         | 20 +++++++++++++++++++
 2 files changed, 20 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
index b7962f90c21c..362436cd280f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reset.c
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
@@ -37,15 +37,6 @@ void intel_display_reset_prepare(struct intel_display *display)
 	if (!HAS_DISPLAY(display))
 		return;
 
-	/* reset doesn't touch the display */
-	if (!intel_display_reset_test(display) &&
-	    !gpu_reset_clobbers_display(display))
-		return;
-
-	/* We have a modeset vs reset deadlock, defensively unbreak it. */
-	set_bit(I915_RESET_MODESET, &to_gt(dev_priv)->reset.flags);
-	smp_mb__after_atomic();
-	wake_up_bit(&to_gt(dev_priv)->reset.flags, I915_RESET_MODESET);
 	if (atomic_read(&display->restore.pending_fb_pin)) {
 		drm_dbg_kms(display->drm,
 			    "Modeset potentially stuck, unbreaking through wedging\n");
@@ -99,10 +90,6 @@ void intel_display_reset_finish(struct intel_display *display)
 	if (!HAS_DISPLAY(display))
 		return;
 
-	/* reset doesn't touch the display */
-	if (!test_bit(I915_RESET_MODESET, &to_gt(i915)->reset.flags))
-		return;
-
 	state = fetch_and_zero(&display->restore.modeset_state);
 	if (!state)
 		goto unlock;
@@ -140,6 +127,4 @@ void intel_display_reset_finish(struct intel_display *display)
 	drm_modeset_drop_locks(ctx);
 	drm_modeset_acquire_fini(ctx);
 	mutex_unlock(&display->drm->mode_config.mutex);
-
-	clear_bit_unlock(I915_RESET_MODESET, &to_gt(i915)->reset.flags);
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index d424ffb43aa7..62590ed91cf2 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -1400,11 +1400,25 @@ int intel_engine_reset(struct intel_engine_cs *engine, const char *msg)
 	return err;
 }
 
+static bool gt_reset_clobbers_display(struct intel_gt *gt)
+{
+	return intel_gt_gpu_reset_clobbers_display(gt) && intel_has_gpu_reset(gt);
+}
+
 static void display_reset_prepare(struct intel_gt *gt)
 {
 	struct drm_i915_private *i915 = gt->i915;
 	struct intel_display *display = &i915->display;
 
+	/* reset doesn't touch the display */
+	if (!intel_display_reset_test(display) && !gt_reset_clobbers_display(gt))
+		return;
+
+	/* We have a modeset vs reset deadlock, defensively unbreak it. */
+	set_bit(I915_RESET_MODESET, &gt->reset.flags);
+	smp_mb__after_atomic();
+	wake_up_bit(&gt->reset.flags, I915_RESET_MODESET);
+
 	intel_display_reset_prepare(display);
 }
 
@@ -1413,7 +1427,13 @@ static void display_reset_finish(struct intel_gt *gt)
 	struct drm_i915_private *i915 = gt->i915;
 	struct intel_display *display = &i915->display;
 
+	/* reset doesn't touch the display */
+	if (!test_bit(I915_RESET_MODESET, &gt->reset.flags))
+		return;
+
 	intel_display_reset_finish(display);
+
+	clear_bit_unlock(I915_RESET_MODESET, &gt->reset.flags);
 }
 
 static void intel_gt_reset_global(struct intel_gt *gt,
-- 
2.39.5

