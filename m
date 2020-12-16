Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B73252DBF6F
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Dec 2020 12:30:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 369866E15C;
	Wed, 16 Dec 2020 11:30:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 649566E15C
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Dec 2020 11:30:52 +0000 (UTC)
IronPort-SDR: 6WTJEjC6QaUsFOrQbTCPBkpOpovx13lBd5sWB1Rm7EX/WqGw1kIh/FcBBGfbbhyoNnnVepOLqe
 HZYy27bjBIVQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9836"; a="239143036"
X-IronPort-AV: E=Sophos;i="5.78,424,1599548400"; d="scan'208";a="239143036"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2020 03:30:51 -0800
IronPort-SDR: +j78s6dAnlU3mswvM362Mp5rQaHPqig6VTpYHfFrB6jTodZmqaoGAREs1SXXJaepPHWQnPmAmA
 CtfYmRVijfwg==
X-IronPort-AV: E=Sophos;i="5.78,424,1599548400"; d="scan'208";a="338373280"
Received: from slevy-mobl.ger.corp.intel.com (HELO localhost)
 ([10.214.192.176])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2020 03:30:46 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Dec 2020 13:29:17 +0200
Message-Id: <591710b2b9d0582cc4285c37fdf67a418b383aa5.1608117676.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1608117676.git.jani.nikula@intel.com>
References: <cover.1608117676.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 10/11] drm/i915: move pipe update code into
 crtc.
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
Cc: jani.nikula@intel.com, Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Dave Airlie <airlied@redhat.com>

Daniel suggested this should move here.

Signed-off-by: Dave Airlie <airlied@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c   | 230 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_sprite.c | 228 -------------------
 2 files changed, 230 insertions(+), 228 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 0161e18f1a50..9010c55bbc4e 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -10,6 +10,9 @@
 #include <drm/drm_plane.h>
 #include <drm/drm_plane_helper.h>
 
+#include "i915_trace.h"
+#include "i915_vgpu.h"
+
 #include "intel_atomic.h"
 #include "intel_atomic_plane.h"
 #include "intel_color.h"
@@ -17,7 +20,9 @@
 #include "intel_cursor.h"
 #include "intel_display_debugfs.h"
 #include "intel_display_types.h"
+#include "intel_dsi.h"
 #include "intel_pipe_crc.h"
+#include "intel_psr.h"
 #include "intel_sprite.h"
 
 /* Primary plane formats for gen <= 3 */
@@ -955,3 +960,228 @@ int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe)
 
 	return ret;
 }
+
+int intel_usecs_to_scanlines(const struct drm_display_mode *adjusted_mode,
+			     int usecs)
+{
+	/* paranoia */
+	if (!adjusted_mode->crtc_htotal)
+		return 1;
+
+	return DIV_ROUND_UP(usecs * adjusted_mode->crtc_clock,
+			    1000 * adjusted_mode->crtc_htotal);
+}
+
+/**
+ * intel_pipe_update_start() - start update of a set of display registers
+ * @new_crtc_state: the new crtc state
+ *
+ * Mark the start of an update to pipe registers that should be updated
+ * atomically regarding vblank. If the next vblank will happens within
+ * the next 100 us, this function waits until the vblank passes.
+ *
+ * After a successful call to this function, interrupts will be disabled
+ * until a subsequent call to intel_pipe_update_end(). That is done to
+ * avoid random delays.
+ */
+void intel_pipe_update_start(const struct intel_crtc_state *new_crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	const struct drm_display_mode *adjusted_mode = &new_crtc_state->hw.adjusted_mode;
+	long timeout = msecs_to_jiffies_timeout(1);
+	int scanline, min, max, vblank_start;
+	wait_queue_head_t *wq = drm_crtc_vblank_waitqueue(&crtc->base);
+	bool need_vlv_dsi_wa = (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
+		intel_crtc_has_type(new_crtc_state, INTEL_OUTPUT_DSI);
+	DEFINE_WAIT(wait);
+	u32 psr_status;
+
+	if (new_crtc_state->uapi.async_flip)
+		return;
+
+	vblank_start = adjusted_mode->crtc_vblank_start;
+	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
+		vblank_start = DIV_ROUND_UP(vblank_start, 2);
+
+	/* FIXME needs to be calibrated sensibly */
+	min = vblank_start - intel_usecs_to_scanlines(adjusted_mode,
+						      VBLANK_EVASION_TIME_US);
+	max = vblank_start - 1;
+
+	if (min <= 0 || max <= 0)
+		goto irq_disable;
+
+	if (drm_WARN_ON(&dev_priv->drm, drm_crtc_vblank_get(&crtc->base)))
+		goto irq_disable;
+
+	/*
+	 * Wait for psr to idle out after enabling the VBL interrupts
+	 * VBL interrupts will start the PSR exit and prevent a PSR
+	 * re-entry as well.
+	 */
+	if (intel_psr_wait_for_idle(new_crtc_state, &psr_status))
+		drm_err(&dev_priv->drm,
+			"PSR idle timed out 0x%x, atomic update may fail\n",
+			psr_status);
+
+	local_irq_disable();
+
+	crtc->debug.min_vbl = min;
+	crtc->debug.max_vbl = max;
+	trace_intel_pipe_update_start(crtc);
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
+		if (scanline < min || scanline > max)
+			break;
+
+		if (!timeout) {
+			drm_err(&dev_priv->drm,
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
+	drm_crtc_vblank_put(&crtc->base);
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
+	while (need_vlv_dsi_wa && scanline == vblank_start)
+		scanline = intel_get_crtc_scanline(crtc);
+
+	crtc->debug.scanline_start = scanline;
+	crtc->debug.start_vbl_time = ktime_get();
+	crtc->debug.start_vbl_count = intel_crtc_get_vblank_counter(crtc);
+
+	trace_intel_pipe_update_vblank_evaded(crtc);
+	return;
+
+irq_disable:
+	local_irq_disable();
+}
+
+#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_VBLANK_EVADE)
+static void dbg_vblank_evade(struct intel_crtc *crtc, ktime_t end)
+{
+	u64 delta = ktime_to_ns(ktime_sub(end, crtc->debug.start_vbl_time));
+	unsigned int h;
+
+	h = ilog2(delta >> 9);
+	if (h >= ARRAY_SIZE(crtc->debug.vbl.times))
+		h = ARRAY_SIZE(crtc->debug.vbl.times) - 1;
+	crtc->debug.vbl.times[h]++;
+
+	crtc->debug.vbl.sum += delta;
+	if (!crtc->debug.vbl.min || delta < crtc->debug.vbl.min)
+		crtc->debug.vbl.min = delta;
+	if (delta > crtc->debug.vbl.max)
+		crtc->debug.vbl.max = delta;
+
+	if (delta > 1000 * VBLANK_EVASION_TIME_US) {
+		drm_dbg_kms(crtc->base.dev,
+			    "Atomic update on pipe (%c) took %lld us, max time under evasion is %u us\n",
+			    pipe_name(crtc->pipe),
+			    div_u64(delta, 1000),
+			    VBLANK_EVASION_TIME_US);
+		crtc->debug.vbl.over++;
+	}
+}
+#else
+static void dbg_vblank_evade(struct intel_crtc *crtc, ktime_t end) {}
+#endif
+
+/**
+ * intel_pipe_update_end() - end update of a set of display registers
+ * @new_crtc_state: the new crtc state
+ *
+ * Mark the end of an update started with intel_pipe_update_start(). This
+ * re-enables interrupts and verifies the update was actually completed
+ * before a vblank.
+ */
+void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
+	enum pipe pipe = crtc->pipe;
+	int scanline_end = intel_get_crtc_scanline(crtc);
+	u32 end_vbl_count = intel_crtc_get_vblank_counter(crtc);
+	ktime_t end_vbl_time = ktime_get();
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+
+	if (new_crtc_state->uapi.async_flip)
+		return;
+
+	trace_intel_pipe_update_end(crtc, end_vbl_count, scanline_end);
+
+	/*
+	 * Incase of mipi dsi command mode, we need to set frame update
+	 * request for every commit.
+	 */
+	if (INTEL_GEN(dev_priv) >= 11 &&
+	    intel_crtc_has_type(new_crtc_state, INTEL_OUTPUT_DSI))
+		icl_dsi_frame_update(new_crtc_state);
+
+	/* We're still in the vblank-evade critical section, this can't race.
+	 * Would be slightly nice to just grab the vblank count and arm the
+	 * event outside of the critical section - the spinlock might spin for a
+	 * while ... */
+	if (new_crtc_state->uapi.event) {
+		drm_WARN_ON(&dev_priv->drm,
+			    drm_crtc_vblank_get(&crtc->base) != 0);
+
+		spin_lock(&crtc->base.dev->event_lock);
+		drm_crtc_arm_vblank_event(&crtc->base,
+					  new_crtc_state->uapi.event);
+		spin_unlock(&crtc->base.dev->event_lock);
+
+		new_crtc_state->uapi.event = NULL;
+	}
+
+	local_irq_enable();
+
+	if (intel_vgpu_active(dev_priv))
+		return;
+
+	if (crtc->debug.start_vbl_count &&
+	    crtc->debug.start_vbl_count != end_vbl_count) {
+		drm_err(&dev_priv->drm,
+			"Atomic update failure on pipe %c (start=%u end=%u) time %lld us, min %d, max %d, scanline start %d, end %d\n",
+			pipe_name(pipe), crtc->debug.start_vbl_count,
+			end_vbl_count,
+			ktime_us_delta(end_vbl_time,
+				       crtc->debug.start_vbl_time),
+			crtc->debug.min_vbl, crtc->debug.max_vbl,
+			crtc->debug.scanline_start, scanline_end);
+	}
+
+	dbg_vblank_evade(crtc, end_vbl_time);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index ab2cd4825e2e..cc3bec42d04c 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -45,236 +45,8 @@
 #include "intel_atomic_plane.h"
 #include "intel_display_types.h"
 #include "intel_frontbuffer.h"
-#include "intel_pm.h"
-#include "intel_psr.h"
-#include "intel_dsi.h"
 #include "intel_sprite.h"
 
-int intel_usecs_to_scanlines(const struct drm_display_mode *adjusted_mode,
-			     int usecs)
-{
-	/* paranoia */
-	if (!adjusted_mode->crtc_htotal)
-		return 1;
-
-	return DIV_ROUND_UP(usecs * adjusted_mode->crtc_clock,
-			    1000 * adjusted_mode->crtc_htotal);
-}
-
-/**
- * intel_pipe_update_start() - start update of a set of display registers
- * @new_crtc_state: the new crtc state
- *
- * Mark the start of an update to pipe registers that should be updated
- * atomically regarding vblank. If the next vblank will happens within
- * the next 100 us, this function waits until the vblank passes.
- *
- * After a successful call to this function, interrupts will be disabled
- * until a subsequent call to intel_pipe_update_end(). That is done to
- * avoid random delays.
- */
-void intel_pipe_update_start(const struct intel_crtc_state *new_crtc_state)
-{
-	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	const struct drm_display_mode *adjusted_mode = &new_crtc_state->hw.adjusted_mode;
-	long timeout = msecs_to_jiffies_timeout(1);
-	int scanline, min, max, vblank_start;
-	wait_queue_head_t *wq = drm_crtc_vblank_waitqueue(&crtc->base);
-	bool need_vlv_dsi_wa = (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
-		intel_crtc_has_type(new_crtc_state, INTEL_OUTPUT_DSI);
-	DEFINE_WAIT(wait);
-	u32 psr_status;
-
-	if (new_crtc_state->uapi.async_flip)
-		return;
-
-	vblank_start = adjusted_mode->crtc_vblank_start;
-	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
-		vblank_start = DIV_ROUND_UP(vblank_start, 2);
-
-	/* FIXME needs to be calibrated sensibly */
-	min = vblank_start - intel_usecs_to_scanlines(adjusted_mode,
-						      VBLANK_EVASION_TIME_US);
-	max = vblank_start - 1;
-
-	if (min <= 0 || max <= 0)
-		goto irq_disable;
-
-	if (drm_WARN_ON(&dev_priv->drm, drm_crtc_vblank_get(&crtc->base)))
-		goto irq_disable;
-
-	/*
-	 * Wait for psr to idle out after enabling the VBL interrupts
-	 * VBL interrupts will start the PSR exit and prevent a PSR
-	 * re-entry as well.
-	 */
-	if (intel_psr_wait_for_idle(new_crtc_state, &psr_status))
-		drm_err(&dev_priv->drm,
-			"PSR idle timed out 0x%x, atomic update may fail\n",
-			psr_status);
-
-	local_irq_disable();
-
-	crtc->debug.min_vbl = min;
-	crtc->debug.max_vbl = max;
-	trace_intel_pipe_update_start(crtc);
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
-		if (scanline < min || scanline > max)
-			break;
-
-		if (!timeout) {
-			drm_err(&dev_priv->drm,
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
-	drm_crtc_vblank_put(&crtc->base);
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
-	while (need_vlv_dsi_wa && scanline == vblank_start)
-		scanline = intel_get_crtc_scanline(crtc);
-
-	crtc->debug.scanline_start = scanline;
-	crtc->debug.start_vbl_time = ktime_get();
-	crtc->debug.start_vbl_count = intel_crtc_get_vblank_counter(crtc);
-
-	trace_intel_pipe_update_vblank_evaded(crtc);
-	return;
-
-irq_disable:
-	local_irq_disable();
-}
-
-#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_VBLANK_EVADE)
-static void dbg_vblank_evade(struct intel_crtc *crtc, ktime_t end)
-{
-	u64 delta = ktime_to_ns(ktime_sub(end, crtc->debug.start_vbl_time));
-	unsigned int h;
-
-	h = ilog2(delta >> 9);
-	if (h >= ARRAY_SIZE(crtc->debug.vbl.times))
-		h = ARRAY_SIZE(crtc->debug.vbl.times) - 1;
-	crtc->debug.vbl.times[h]++;
-
-	crtc->debug.vbl.sum += delta;
-	if (!crtc->debug.vbl.min || delta < crtc->debug.vbl.min)
-		crtc->debug.vbl.min = delta;
-	if (delta > crtc->debug.vbl.max)
-		crtc->debug.vbl.max = delta;
-
-	if (delta > 1000 * VBLANK_EVASION_TIME_US) {
-		drm_dbg_kms(crtc->base.dev,
-			    "Atomic update on pipe (%c) took %lld us, max time under evasion is %u us\n",
-			    pipe_name(crtc->pipe),
-			    div_u64(delta, 1000),
-			    VBLANK_EVASION_TIME_US);
-		crtc->debug.vbl.over++;
-	}
-}
-#else
-static void dbg_vblank_evade(struct intel_crtc *crtc, ktime_t end) {}
-#endif
-
-/**
- * intel_pipe_update_end() - end update of a set of display registers
- * @new_crtc_state: the new crtc state
- *
- * Mark the end of an update started with intel_pipe_update_start(). This
- * re-enables interrupts and verifies the update was actually completed
- * before a vblank.
- */
-void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state)
-{
-	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
-	enum pipe pipe = crtc->pipe;
-	int scanline_end = intel_get_crtc_scanline(crtc);
-	u32 end_vbl_count = intel_crtc_get_vblank_counter(crtc);
-	ktime_t end_vbl_time = ktime_get();
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-
-	if (new_crtc_state->uapi.async_flip)
-		return;
-
-	trace_intel_pipe_update_end(crtc, end_vbl_count, scanline_end);
-
-	/*
-	 * Incase of mipi dsi command mode, we need to set frame update
-	 * request for every commit.
-	 */
-	if (INTEL_GEN(dev_priv) >= 11 &&
-	    intel_crtc_has_type(new_crtc_state, INTEL_OUTPUT_DSI))
-		icl_dsi_frame_update(new_crtc_state);
-
-	/* We're still in the vblank-evade critical section, this can't race.
-	 * Would be slightly nice to just grab the vblank count and arm the
-	 * event outside of the critical section - the spinlock might spin for a
-	 * while ... */
-	if (new_crtc_state->uapi.event) {
-		drm_WARN_ON(&dev_priv->drm,
-			    drm_crtc_vblank_get(&crtc->base) != 0);
-
-		spin_lock(&crtc->base.dev->event_lock);
-		drm_crtc_arm_vblank_event(&crtc->base,
-				          new_crtc_state->uapi.event);
-		spin_unlock(&crtc->base.dev->event_lock);
-
-		new_crtc_state->uapi.event = NULL;
-	}
-
-	local_irq_enable();
-
-	if (intel_vgpu_active(dev_priv))
-		return;
-
-	if (crtc->debug.start_vbl_count &&
-	    crtc->debug.start_vbl_count != end_vbl_count) {
-		drm_err(&dev_priv->drm,
-			"Atomic update failure on pipe %c (start=%u end=%u) time %lld us, min %d, max %d, scanline start %d, end %d\n",
-			pipe_name(pipe), crtc->debug.start_vbl_count,
-			end_vbl_count,
-			ktime_us_delta(end_vbl_time,
-				       crtc->debug.start_vbl_time),
-			crtc->debug.min_vbl, crtc->debug.max_vbl,
-			crtc->debug.scanline_start, scanline_end);
-	}
-
-	dbg_vblank_evade(crtc, end_vbl_time);
-}
-
 int intel_plane_check_stride(const struct intel_plane_state *plane_state)
 {
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
