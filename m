Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0201B810E64
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 11:25:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FCBD10E788;
	Wed, 13 Dec 2023 10:25:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40F5510E787
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 10:25:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702463143; x=1733999143;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=gAJV2WBelBalQW9cUwDxA6+juGceDhptlBhZzaU7tJI=;
 b=kqg19Rw89zImX7x9el9aUftEP/2LL11x+tJ5sTo6o5342vUV/Ueb9iu9
 xFpA3yoWhmesW6SCp8SeLUwSy1CtwNj2lDoZij92BzFLoFMWCP7lSbXIO
 o9NferGFlRkBwhJAzGFXbblTR0XT+pJcyyXIylrKHaN33WLou0NS1INL+
 Og2kLKrtqta0OLbCIWpAZiNvqyxqPsr5QEB59V96QDbiSYQ53h3eetq4Y
 wHyhh8lw2j5TLOOhBQ5pVrLlZ2GwnalGyQglxFLJ9z6H3TjcV07LpNb3M
 H7+KmiH8gmq3w0TIE4QATTHhraQdQObNjTz72sWSGYasiYOeLCyYQjeIY A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="393816104"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="393816104"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 02:25:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="767161657"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="767161657"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 13 Dec 2023 02:25:41 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Dec 2023 12:25:40 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 7/9] drm/i915: Move intel_vblank_evade() & co. into
 intel_vblank.c
Date: Wed, 13 Dec 2023 12:25:17 +0200
Message-ID: <20231213102519.13500-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
References: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

intel_vblank.c seems like the appropriate place for the core
vblank evasion code. Move it there.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c   | 135 --------------------
 drivers/gpu/drm/i915/display/intel_vblank.c | 130 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vblank.h |  12 ++
 3 files changed, 142 insertions(+), 135 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 11a6a4b0a258..25593f6aae7d 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -461,141 +461,6 @@ int intel_usecs_to_scanlines(const struct drm_display_mode *adjusted_mode,
 			    1000 * adjusted_mode->crtc_htotal);
 }
 
-static int intel_mode_vblank_start(const struct drm_display_mode *mode)
-{
-	int vblank_start = mode->crtc_vblank_start;
-
-	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
-		vblank_start = DIV_ROUND_UP(vblank_start, 2);
-
-	return vblank_start;
-}
-
-struct intel_vblank_evade_ctx {
-	struct intel_crtc *crtc;
-	int min, max, vblank_start;
-	bool need_vlv_dsi_wa;
-};
-
-static void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
-				    const struct intel_crtc_state *new_crtc_state,
-				    struct intel_vblank_evade_ctx *evade)
-{
-	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	const struct intel_crtc_state *crtc_state;
-	const struct drm_display_mode *adjusted_mode;
-
-	evade->crtc = crtc;
-
-	evade->need_vlv_dsi_wa = (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) &&
-		intel_crtc_has_type(new_crtc_state, INTEL_OUTPUT_DSI);
-
-	/*
-	 * During fastsets/etc. the transcoder is still
-	 * running with the old timings at this point.
-	 *
-	 * TODO: maybe just use the active timings here?
-	 */
-	if (intel_crtc_needs_modeset(new_crtc_state))
-		crtc_state = new_crtc_state;
-	else
-		crtc_state = old_crtc_state;
-
-	adjusted_mode = &crtc_state->hw.adjusted_mode;
-
-	if (crtc->mode_flags & I915_MODE_FLAG_VRR) {
-		/* timing changes should happen with VRR disabled */
-		drm_WARN_ON(crtc->base.dev, intel_crtc_needs_modeset(new_crtc_state) ||
-			    new_crtc_state->update_m_n || new_crtc_state->update_lrr);
-
-		if (intel_vrr_is_push_sent(crtc_state))
-			evade->vblank_start = intel_vrr_vmin_vblank_start(crtc_state);
-		else
-			evade->vblank_start = intel_vrr_vmax_vblank_start(crtc_state);
-	} else {
-		evade->vblank_start = intel_mode_vblank_start(adjusted_mode);
-	}
-
-	/* FIXME needs to be calibrated sensibly */
-	evade->min = evade->vblank_start - intel_usecs_to_scanlines(adjusted_mode,
-								VBLANK_EVASION_TIME_US);
-	evade->max = evade->vblank_start - 1;
-
-	/*
-	 * M/N and TRANS_VTOTAL are double buffered on the transcoder's
-	 * undelayed vblank, so with seamless M/N and LRR we must evade
-	 * both vblanks.
-	 *
-	 * DSB execution waits for the transcoder's undelayed vblank,
-	 * hence we must kick off the commit before that.
-	 */
-	if (new_crtc_state->dsb || new_crtc_state->update_m_n || new_crtc_state->update_lrr)
-		evade->min -= adjusted_mode->crtc_vblank_start - adjusted_mode->crtc_vdisplay;
-}
-
-/* must be called with vblank interrupt already enabled! */
-static int intel_vblank_evade(struct intel_vblank_evade_ctx *evade)
-{
-	struct intel_crtc *crtc = evade->crtc;
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	long timeout = msecs_to_jiffies_timeout(1);
-	wait_queue_head_t *wq = drm_crtc_vblank_waitqueue(&crtc->base);
-	DEFINE_WAIT(wait);
-	int scanline;
-
-	if (evade->min <= 0 || evade->max <= 0)
-		return 0;
-
-	for (;;) {
-		/*
-		 * prepare_to_wait() has a memory barrier, which guarantees
-		 * other CPUs can see the task state update by the time we
-		 * read the scanline.
-		 */
-		prepare_to_wait(wq, &wait, TASK_UNINTERRUPTIBLE);
-
-		scanline = intel_get_crtc_scanline(crtc);
-		if (scanline < evade->min || scanline > evade->max)
-			break;
-
-		if (!timeout) {
-			drm_err(&i915->drm,
-				"Potential atomic update failure on pipe %c\n",
-				pipe_name(crtc->pipe));
-			break;
-		}
-
-		local_irq_enable();
-
-		timeout = schedule_timeout(timeout);
-
-		local_irq_disable();
-	}
-
-	finish_wait(wq, &wait);
-
-	/*
-	 * On VLV/CHV DSI the scanline counter would appear to
-	 * increment approx. 1/3 of a scanline before start of vblank.
-	 * The registers still get latched at start of vblank however.
-	 * This means we must not write any registers on the first
-	 * line of vblank (since not the whole line is actually in
-	 * vblank). And unfortunately we can't use the interrupt to
-	 * wait here since it will fire too soon. We could use the
-	 * frame start interrupt instead since it will fire after the
-	 * critical scanline, but that would require more changes
-	 * in the interrupt code. So for now we'll just do the nasty
-	 * thing and poll for the bad scanline to pass us by.
-	 *
-	 * FIXME figure out if BXT+ DSI suffers from this as well
-	 */
-	while (evade->need_vlv_dsi_wa && scanline == evade->vblank_start)
-		scanline = intel_get_crtc_scanline(crtc);
-
-	return scanline;
-}
-
 /**
  * intel_pipe_update_start() - start update of a set of display registers
  * @state: the atomic state
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index fe256bf7b485..baf7354cb6e2 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -5,6 +5,7 @@
 
 #include "i915_drv.h"
 #include "i915_reg.h"
+#include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_vblank.h"
@@ -581,3 +582,132 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
 	intel_vblank_section_exit(i915);
 	spin_unlock_irqrestore(&i915->drm.vblank_time_lock, irqflags);
 }
+
+static int intel_mode_vblank_start(const struct drm_display_mode *mode)
+{
+	int vblank_start = mode->crtc_vblank_start;
+
+	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
+		vblank_start = DIV_ROUND_UP(vblank_start, 2);
+
+	return vblank_start;
+}
+
+void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
+			     const struct intel_crtc_state *new_crtc_state,
+			     struct intel_vblank_evade_ctx *evade)
+{
+	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	const struct intel_crtc_state *crtc_state;
+	const struct drm_display_mode *adjusted_mode;
+
+	evade->crtc = crtc;
+
+	evade->need_vlv_dsi_wa = (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) &&
+		intel_crtc_has_type(new_crtc_state, INTEL_OUTPUT_DSI);
+
+	/*
+	 * During fastsets/etc. the transcoder is still
+	 * running with the old timings at this point.
+	 *
+	 * TODO: maybe just use the active timings here?
+	 */
+	if (intel_crtc_needs_modeset(new_crtc_state))
+		crtc_state = new_crtc_state;
+	else
+		crtc_state = old_crtc_state;
+
+	adjusted_mode = &crtc_state->hw.adjusted_mode;
+
+	if (crtc->mode_flags & I915_MODE_FLAG_VRR) {
+		/* timing changes should happen with VRR disabled */
+		drm_WARN_ON(crtc->base.dev, intel_crtc_needs_modeset(new_crtc_state) ||
+			    new_crtc_state->update_m_n || new_crtc_state->update_lrr);
+
+		if (intel_vrr_is_push_sent(crtc_state))
+			evade->vblank_start = intel_vrr_vmin_vblank_start(crtc_state);
+		else
+			evade->vblank_start = intel_vrr_vmax_vblank_start(crtc_state);
+	} else {
+		evade->vblank_start = intel_mode_vblank_start(adjusted_mode);
+	}
+
+	/* FIXME needs to be calibrated sensibly */
+	evade->min = evade->vblank_start - intel_usecs_to_scanlines(adjusted_mode,
+								    VBLANK_EVASION_TIME_US);
+	evade->max = evade->vblank_start - 1;
+
+	/*
+	 * M/N and TRANS_VTOTAL are double buffered on the transcoder's
+	 * undelayed vblank, so with seamless M/N and LRR we must evade
+	 * both vblanks.
+	 *
+	 * DSB execution waits for the transcoder's undelayed vblank,
+	 * hence we must kick off the commit before that.
+	 */
+	if (new_crtc_state->dsb || new_crtc_state->update_m_n || new_crtc_state->update_lrr)
+		evade->min -= adjusted_mode->crtc_vblank_start - adjusted_mode->crtc_vdisplay;
+}
+
+/* must be called with vblank interrupt already enabled! */
+int intel_vblank_evade(struct intel_vblank_evade_ctx *evade)
+{
+	struct intel_crtc *crtc = evade->crtc;
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	long timeout = msecs_to_jiffies_timeout(1);
+	wait_queue_head_t *wq = drm_crtc_vblank_waitqueue(&crtc->base);
+	DEFINE_WAIT(wait);
+	int scanline;
+
+	if (evade->min <= 0 || evade->max <= 0)
+		return 0;
+
+	for (;;) {
+		/*
+		 * prepare_to_wait() has a memory barrier, which guarantees
+		 * other CPUs can see the task state update by the time we
+		 * read the scanline.
+		 */
+		prepare_to_wait(wq, &wait, TASK_UNINTERRUPTIBLE);
+
+		scanline = intel_get_crtc_scanline(crtc);
+		if (scanline < evade->min || scanline > evade->max)
+			break;
+
+		if (!timeout) {
+			drm_err(&i915->drm,
+				"Potential atomic update failure on pipe %c\n",
+				pipe_name(crtc->pipe));
+			break;
+		}
+
+		local_irq_enable();
+
+		timeout = schedule_timeout(timeout);
+
+		local_irq_disable();
+	}
+
+	finish_wait(wq, &wait);
+
+	/*
+	 * On VLV/CHV DSI the scanline counter would appear to
+	 * increment approx. 1/3 of a scanline before start of vblank.
+	 * The registers still get latched at start of vblank however.
+	 * This means we must not write any registers on the first
+	 * line of vblank (since not the whole line is actually in
+	 * vblank). And unfortunately we can't use the interrupt to
+	 * wait here since it will fire too soon. We could use the
+	 * frame start interrupt instead since it will fire after the
+	 * critical scanline, but that would require more changes
+	 * in the interrupt code. So for now we'll just do the nasty
+	 * thing and poll for the bad scanline to pass us by.
+	 *
+	 * FIXME figure out if BXT+ DSI suffers from this as well
+	 */
+	while (evade->need_vlv_dsi_wa && scanline == evade->vblank_start)
+		scanline = intel_get_crtc_scanline(crtc);
+
+	return scanline;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.h b/drivers/gpu/drm/i915/display/intel_vblank.h
index 17636f140c71..ec6c3da3eeac 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.h
+++ b/drivers/gpu/drm/i915/display/intel_vblank.h
@@ -13,6 +13,18 @@ struct drm_crtc;
 struct intel_crtc;
 struct intel_crtc_state;
 
+struct intel_vblank_evade_ctx {
+	struct intel_crtc *crtc;
+	int min, max, vblank_start;
+	bool need_vlv_dsi_wa;
+};
+
+void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
+			     const struct intel_crtc_state *new_crtc_state,
+			     struct intel_vblank_evade_ctx *evade);
+/* must be called with vblank interrupt already enabled! */
+int intel_vblank_evade(struct intel_vblank_evade_ctx *evade);
+
 u32 i915_get_vblank_counter(struct drm_crtc *crtc);
 u32 g4x_get_vblank_counter(struct drm_crtc *crtc);
 bool intel_crtc_get_vblank_timestamp(struct drm_crtc *crtc, int *max_error,
-- 
2.41.0

