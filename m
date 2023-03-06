Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FB06AC4F6
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Mar 2023 16:28:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4B0110E263;
	Mon,  6 Mar 2023 15:28:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF27E10E263
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Mar 2023 15:28:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678116531; x=1709652531;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=u69gPMRH1V8BIqxgosdEfLI64fj+AXkGzyHxL0guk3s=;
 b=UY9NrQiyuwHnMxGHYYibM/8caYHtbDaiEXImI0i9Tqp2DH0zqyNv4HRs
 RarMeTqNIPzQwQ1uCrDbfr+BvmwzhA0FkQxEaDgpm2zOYrHotAO7vU8sB
 6FMpgmzfEuslYUdr5aB15KXu72adpyNfTxwM5/oUXk1yjEgU0BqB+Rhmp
 IzbX2rULOb9KNtTSQZt5niR/y3ED/TOMDWd3Qh86UQJseBftgfS0lkIYl
 M36ohwt2yOjjyJ+oq8hPttJxY0dH+bTBQa9o+IQeLnCYTgzEodd4yCVX0
 fjz9HyMZ+/xhyfRz6SMnpj1PRQpMlzFirSRJigDs+Jc5JeGOHPeR4dkRm w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="363201223"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="363201223"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 07:28:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="669476791"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="669476791"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 06 Mar 2023 07:28:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 Mar 2023 17:28:47 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Mar 2023 17:28:40 +0200
Message-Id: <20230306152841.6563-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230306152841.6563-1-ville.syrjala@linux.intel.com>
References: <20230306152841.6563-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: Relocate
 intel_crtc_update_active_timings()
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Move intel_crtc_update_active_timings() into intel_vblank.c
where it more properly belongs.

Also do the s/dev_priv/i915/ modernization rename while at it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 84 ------------------
 drivers/gpu/drm/i915/display/intel_display.h  |  1 -
 .../drm/i915/display/intel_modeset_setup.c    |  1 +
 drivers/gpu/drm/i915/display/intel_vblank.c   | 85 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vblank.h   |  2 +
 5 files changed, 88 insertions(+), 85 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 020320468967..add3bed3d2e1 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5903,90 +5903,6 @@ int intel_modeset_all_pipes(struct intel_atomic_state *state,
 	return 0;
 }
 
-void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state)
-{
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	struct drm_display_mode adjusted_mode;
-	int vmax_vblank_start = 0;
-	unsigned long irqflags;
-
-	drm_mode_init(&adjusted_mode, &crtc_state->hw.adjusted_mode);
-
-	if (crtc_state->vrr.enable) {
-		adjusted_mode.crtc_vtotal = crtc_state->vrr.vmax;
-		adjusted_mode.crtc_vblank_end = crtc_state->vrr.vmax;
-		adjusted_mode.crtc_vblank_start = intel_vrr_vmin_vblank_start(crtc_state);
-		vmax_vblank_start = intel_vrr_vmax_vblank_start(crtc_state);
-	}
-
-	/*
-	 * Belts and suspenders locking to guarantee everyone sees 100%
-	 * consistent state during fastset seamless refresh rate changes.
-	 *
-	 * vblank_time_lock takes care of all drm_vblank.c stuff, and
-	 * uncore.lock takes care of __intel_get_crtc_scanline() which
-	 * may get called elsewhere as well.
-	 *
-	 * TODO maybe just protect everything (including
-	 * __intel_get_crtc_scanline()) with vblank_time_lock?
-	 * Need to audit everything to make sure it's safe.
-	 */
-	spin_lock_irqsave(&dev_priv->drm.vblank_time_lock, irqflags);
-	spin_lock(&dev_priv->uncore.lock);
-
-	drm_calc_timestamping_constants(&crtc->base, &adjusted_mode);
-
-	crtc->vmax_vblank_start = vmax_vblank_start;
-
-	crtc->mode_flags = crtc_state->mode_flags;
-
-	/*
-	 * The scanline counter increments at the leading edge of hsync.
-	 *
-	 * On most platforms it starts counting from vtotal-1 on the
-	 * first active line. That means the scanline counter value is
-	 * always one less than what we would expect. Ie. just after
-	 * start of vblank, which also occurs at start of hsync (on the
-	 * last active line), the scanline counter will read vblank_start-1.
-	 *
-	 * On gen2 the scanline counter starts counting from 1 instead
-	 * of vtotal-1, so we have to subtract one (or rather add vtotal-1
-	 * to keep the value positive), instead of adding one.
-	 *
-	 * On HSW+ the behaviour of the scanline counter depends on the output
-	 * type. For DP ports it behaves like most other platforms, but on HDMI
-	 * there's an extra 1 line difference. So we need to add two instead of
-	 * one to the value.
-	 *
-	 * On VLV/CHV DSI the scanline counter would appear to increment
-	 * approx. 1/3 of a scanline before start of vblank. Unfortunately
-	 * that means we can't tell whether we're in vblank or not while
-	 * we're on that particular line. We must still set scanline_offset
-	 * to 1 so that the vblank timestamps come out correct when we query
-	 * the scanline counter from within the vblank interrupt handler.
-	 * However if queried just before the start of vblank we'll get an
-	 * answer that's slightly in the future.
-	 */
-	if (DISPLAY_VER(dev_priv) == 2) {
-		int vtotal;
-
-		vtotal = adjusted_mode.crtc_vtotal;
-		if (adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
-			vtotal /= 2;
-
-		crtc->scanline_offset = vtotal - 1;
-	} else if (HAS_DDI(dev_priv) &&
-		   intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
-		crtc->scanline_offset = 2;
-	} else {
-		crtc->scanline_offset = 1;
-	}
-
-	spin_unlock(&dev_priv->uncore.lock);
-	spin_unlock_irqrestore(&dev_priv->drm.vblank_time_lock, irqflags);
-}
-
 /*
  * This implements the workaround described in the "notes" section of the mode
  * set sequence documentation. When going from no pipes or single pipe to
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 50285fb4fcf5..ce97cb72f6d3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -422,7 +422,6 @@ bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
 bool intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 			       const struct intel_crtc_state *pipe_config,
 			       bool fastset);
-void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state);
 
 void intel_plane_destroy(struct drm_plane *plane);
 void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 60f71e6f0491..c51209a3d36a 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -26,6 +26,7 @@
 #include "intel_modeset_setup.h"
 #include "intel_pch_display.h"
 #include "intel_pm.h"
+#include "intel_vblank.h"
 #include "intel_wm.h"
 #include "skl_watermark.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 571f5dda1e66..48bf3923af11 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -8,6 +8,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_vblank.h"
+#include "intel_vrr.h"
 
 /*
  * This timing diagram depicts the video signal in and
@@ -439,3 +440,87 @@ void intel_wait_for_pipe_scanline_moving(struct intel_crtc *crtc)
 {
 	wait_for_pipe_scanline_moving(crtc, true);
 }
+
+void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct drm_display_mode adjusted_mode;
+	int vmax_vblank_start = 0;
+	unsigned long irqflags;
+
+	drm_mode_init(&adjusted_mode, &crtc_state->hw.adjusted_mode);
+
+	if (crtc_state->vrr.enable) {
+		adjusted_mode.crtc_vtotal = crtc_state->vrr.vmax;
+		adjusted_mode.crtc_vblank_end = crtc_state->vrr.vmax;
+		adjusted_mode.crtc_vblank_start = intel_vrr_vmin_vblank_start(crtc_state);
+		vmax_vblank_start = intel_vrr_vmax_vblank_start(crtc_state);
+	}
+
+	/*
+	 * Belts and suspenders locking to guarantee everyone sees 100%
+	 * consistent state during fastset seamless refresh rate changes.
+	 *
+	 * vblank_time_lock takes care of all drm_vblank.c stuff, and
+	 * uncore.lock takes care of __intel_get_crtc_scanline() which
+	 * may get called elsewhere as well.
+	 *
+	 * TODO maybe just protect everything (including
+	 * __intel_get_crtc_scanline()) with vblank_time_lock?
+	 * Need to audit everything to make sure it's safe.
+	 */
+	spin_lock_irqsave(&i915->drm.vblank_time_lock, irqflags);
+	spin_lock(&i915->uncore.lock);
+
+	drm_calc_timestamping_constants(&crtc->base, &adjusted_mode);
+
+	crtc->vmax_vblank_start = vmax_vblank_start;
+
+	crtc->mode_flags = crtc_state->mode_flags;
+
+	/*
+	 * The scanline counter increments at the leading edge of hsync.
+	 *
+	 * On most platforms it starts counting from vtotal-1 on the
+	 * first active line. That means the scanline counter value is
+	 * always one less than what we would expect. Ie. just after
+	 * start of vblank, which also occurs at start of hsync (on the
+	 * last active line), the scanline counter will read vblank_start-1.
+	 *
+	 * On gen2 the scanline counter starts counting from 1 instead
+	 * of vtotal-1, so we have to subtract one (or rather add vtotal-1
+	 * to keep the value positive), instead of adding one.
+	 *
+	 * On HSW+ the behaviour of the scanline counter depends on the output
+	 * type. For DP ports it behaves like most other platforms, but on HDMI
+	 * there's an extra 1 line difference. So we need to add two instead of
+	 * one to the value.
+	 *
+	 * On VLV/CHV DSI the scanline counter would appear to increment
+	 * approx. 1/3 of a scanline before start of vblank. Unfortunately
+	 * that means we can't tell whether we're in vblank or not while
+	 * we're on that particular line. We must still set scanline_offset
+	 * to 1 so that the vblank timestamps come out correct when we query
+	 * the scanline counter from within the vblank interrupt handler.
+	 * However if queried just before the start of vblank we'll get an
+	 * answer that's slightly in the future.
+	 */
+	if (DISPLAY_VER(i915) == 2) {
+		int vtotal;
+
+		vtotal = adjusted_mode.crtc_vtotal;
+		if (adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
+			vtotal /= 2;
+
+		crtc->scanline_offset = vtotal - 1;
+	} else if (HAS_DDI(i915) &&
+		   intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
+		crtc->scanline_offset = 2;
+	} else {
+		crtc->scanline_offset = 1;
+	}
+
+	spin_unlock(&i915->uncore.lock);
+	spin_unlock_irqrestore(&i915->drm.vblank_time_lock, irqflags);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.h b/drivers/gpu/drm/i915/display/intel_vblank.h
index c9fea2c2a990..0884db7e76ae 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.h
+++ b/drivers/gpu/drm/i915/display/intel_vblank.h
@@ -11,6 +11,7 @@
 
 struct drm_crtc;
 struct intel_crtc;
+struct intel_crtc_state;
 
 u32 i915_get_vblank_counter(struct drm_crtc *crtc);
 u32 g4x_get_vblank_counter(struct drm_crtc *crtc);
@@ -19,5 +20,6 @@ bool intel_crtc_get_vblank_timestamp(struct drm_crtc *crtc, int *max_error,
 int intel_get_crtc_scanline(struct intel_crtc *crtc);
 void intel_wait_for_pipe_scanline_stopped(struct intel_crtc *crtc);
 void intel_wait_for_pipe_scanline_moving(struct intel_crtc *crtc);
+void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_VBLANK_H__ */
-- 
2.39.2

