Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C672B397D3
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 11:09:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 898F510E89C;
	Thu, 28 Aug 2025 09:09:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D0FE10E89C;
 Thu, 28 Aug 2025 09:09:18 +0000 (UTC)
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH 2/2] drm/i915/display: Make tracepoints work correctly on xe
 with PREEMPT_RT
Date: Thu, 28 Aug 2025 11:09:44 +0200
Message-ID: <20250828090944.101069-2-dev@lankhorst.se>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250828090944.101069-1-dev@lankhorst.se>
References: <20250828090944.101069-1-dev@lankhorst.se>
MIME-Version: 1.0
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

The display tracepoints will work, but drm_crtc_accurate_vblank_count()
takes an irq lock. Use the less accurate drm_crtc_vblank_count() on
affected platforms, which is simply an atomic_read64();

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/i915/display/intel_crtc.c     |  9 ++--
 drivers/gpu/drm/i915/display/intel_crtc.h     |  2 +-
 .../drm/i915/display/intel_display_trace.h    | 48 ++++++++++---------
 3 files changed, 31 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index a187db6df2d36..5c8ce35d21ca3 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -77,7 +77,7 @@ void intel_wait_for_vblank_if_active(struct intel_display *display,
 		intel_crtc_wait_for_next_vblank(crtc);
 }
 
-u32 intel_crtc_get_vblank_counter(struct intel_crtc *crtc)
+u32 intel_crtc_get_vblank_counter(struct intel_crtc *crtc, bool update_vblank)
 {
 	struct drm_vblank_crtc *vblank = drm_crtc_vblank_crtc(&crtc->base);
 
@@ -85,7 +85,8 @@ u32 intel_crtc_get_vblank_counter(struct intel_crtc *crtc)
 		return 0;
 
 	if (!vblank->max_vblank_count)
-		return (u32)drm_crtc_accurate_vblank_count(&crtc->base);
+		return (u32)(update_vblank ? drm_crtc_accurate_vblank_count(&crtc->base) :
+			     drm_crtc_vblank_count(&crtc->base));
 
 	return crtc->base.funcs->get_vblank_counter(&crtc->base);
 }
@@ -574,7 +575,7 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
 
 	crtc->debug.scanline_start = scanline;
 	crtc->debug.start_vbl_time = ktime_get();
-	crtc->debug.start_vbl_count = intel_crtc_get_vblank_counter(crtc);
+	crtc->debug.start_vbl_count = intel_crtc_get_vblank_counter(crtc, true);
 
 	trace_intel_pipe_update_vblank_evaded(crtc);
 	return;
@@ -660,7 +661,7 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	enum pipe pipe = crtc->pipe;
 	int scanline_end = intel_get_crtc_scanline(crtc);
-	u32 end_vbl_count = intel_crtc_get_vblank_counter(crtc);
+	u32 end_vbl_count = intel_crtc_get_vblank_counter(crtc, true);
 	ktime_t end_vbl_time = ktime_get();
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h b/drivers/gpu/drm/i915/display/intel_crtc.h
index 8c14ff8b391ea..9826d800f3bb9 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.h
+++ b/drivers/gpu/drm/i915/display/intel_crtc.h
@@ -43,7 +43,7 @@ int intel_crtc_get_pipe_from_crtc_id_ioctl(struct drm_device *dev, void *data,
 struct intel_crtc_state *intel_crtc_state_alloc(struct intel_crtc *crtc);
 void intel_crtc_state_reset(struct intel_crtc_state *crtc_state,
 			    struct intel_crtc *crtc);
-u32 intel_crtc_get_vblank_counter(struct intel_crtc *crtc);
+u32 intel_crtc_get_vblank_counter(struct intel_crtc *crtc, bool update_vblank);
 void intel_crtc_vblank_on(const struct intel_crtc_state *crtc_state);
 void intel_crtc_vblank_off(const struct intel_crtc_state *crtc_state);
 void intel_pipe_update_start(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
index 27ebc32cb61a5..4e9bea671effe 100644
--- a/drivers/gpu/drm/i915/display/intel_display_trace.h
+++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
@@ -10,6 +10,8 @@
 #define TRACE_SYSTEM xe
 #endif
 
+#define UPDATE_VBLANK (!IS_ENABLED(CONFIG_PREEMPT_RT))
+
 #if !defined(__INTEL_DISPLAY_TRACE_H__) || defined(TRACE_HEADER_MULTI_READ)
 #define __INTEL_DISPLAY_TRACE_H__
 
@@ -85,7 +87,7 @@ TRACE_EVENT(intel_pipe_enable,
 			   memset(__entry->scanline, 0,
 				  sizeof(__entry->scanline[0]) * I915_MAX_PIPES);
 			   for_each_intel_crtc(display->drm, it__) {
-				   __entry->frame[it__->pipe] = intel_crtc_get_vblank_counter(it__);
+				   __entry->frame[it__->pipe] = intel_crtc_get_vblank_counter(it__, UPDATE_VBLANK);
 				   __entry->scanline[it__->pipe] = intel_get_crtc_scanline(it__);
 			   }
 			   __entry->pipe_name = pipe_name(crtc->pipe);
@@ -115,7 +117,7 @@ TRACE_EVENT(intel_pipe_disable,
 			   memset(__entry->scanline, 0,
 				  sizeof(__entry->scanline[0]) * I915_MAX_PIPES);
 			   for_each_intel_crtc(display->drm, it__) {
-				   __entry->frame[it__->pipe] = intel_crtc_get_vblank_counter(it__);
+				   __entry->frame[it__->pipe] = intel_crtc_get_vblank_counter(it__, UPDATE_VBLANK);
 				   __entry->scanline[it__->pipe] = intel_get_crtc_scanline(it__);
 			   }
 			   __entry->pipe_name = pipe_name(crtc->pipe);
@@ -139,7 +141,7 @@ TRACE_EVENT(intel_crtc_flip_done,
 	    TP_fast_assign(
 			   __assign_str(dev);
 			   __entry->pipe_name = pipe_name(crtc->pipe);
-			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc, UPDATE_VBLANK);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   ),
 
@@ -163,7 +165,7 @@ TRACE_EVENT(intel_pipe_crc,
 	    TP_fast_assign(
 			   __assign_str(dev);
 			   __entry->pipe_name = pipe_name(crtc->pipe);
-			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc, UPDATE_VBLANK);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   memcpy(__entry->crcs, crcs, sizeof(__entry->crcs));
 			   ),
@@ -191,7 +193,7 @@ TRACE_EVENT(intel_cpu_fifo_underrun,
 			   struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
 			   __assign_str(dev);
 			   __entry->pipe_name = pipe_name(pipe);
-			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc, UPDATE_VBLANK);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   ),
 
@@ -216,7 +218,7 @@ TRACE_EVENT(intel_pch_fifo_underrun,
 			   struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
 			   __assign_str(dev);
 			   __entry->pipe_name = pipe_name(pipe);
-			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc, UPDATE_VBLANK);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   ),
 
@@ -245,7 +247,7 @@ TRACE_EVENT(intel_memory_cxsr,
 			   memset(__entry->scanline, 0,
 				  sizeof(__entry->scanline[0]) * I915_MAX_PIPES);
 			   for_each_intel_crtc(display->drm, crtc) {
-				   __entry->frame[crtc->pipe] = intel_crtc_get_vblank_counter(crtc);
+				   __entry->frame[crtc->pipe] = intel_crtc_get_vblank_counter(crtc, UPDATE_VBLANK);
 				   __entry->scanline[crtc->pipe] = intel_get_crtc_scanline(crtc);
 			   }
 			   __entry->old = old;
@@ -283,7 +285,7 @@ TRACE_EVENT(g4x_wm,
 	    TP_fast_assign(
 			   __assign_str(dev);
 			   __entry->pipe_name = pipe_name(crtc->pipe);
-			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc, UPDATE_VBLANK);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   __entry->primary = wm->pipe[crtc->pipe].plane[PLANE_PRIMARY];
 			   __entry->sprite = wm->pipe[crtc->pipe].plane[PLANE_SPRITE0];
@@ -330,7 +332,7 @@ TRACE_EVENT(vlv_wm,
 	    TP_fast_assign(
 			   __assign_str(dev);
 			   __entry->pipe_name = pipe_name(crtc->pipe);
-			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc, UPDATE_VBLANK);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   __entry->level = wm->level;
 			   __entry->cxsr = wm->cxsr;
@@ -367,7 +369,7 @@ TRACE_EVENT(vlv_fifo_size,
 	    TP_fast_assign(
 			   __assign_str(dev);
 			   __entry->pipe_name = pipe_name(crtc->pipe);
-			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc, UPDATE_VBLANK);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   __entry->sprite0_start = sprite0_start;
 			   __entry->sprite1_start = sprite1_start;
@@ -397,7 +399,7 @@ TRACE_EVENT(intel_plane_async_flip,
 			   __assign_str(dev);
 			   __assign_str(name);
 			   __entry->pipe_name = pipe_name(crtc->pipe);
-			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc, UPDATE_VBLANK);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   __entry->async_flip = async_flip;
 			   ),
@@ -426,7 +428,7 @@ TRACE_EVENT(intel_plane_update_noarm,
 			   __assign_str(dev);
 			   __assign_str(name);
 			   __entry->pipe_name = pipe_name(crtc->pipe);
-			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc, UPDATE_VBLANK);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   __entry->format = plane_state->hw.fb->format->format;
 			   memcpy(__entry->src, &plane_state->uapi.src, sizeof(__entry->src));
@@ -459,7 +461,7 @@ TRACE_EVENT(intel_plane_update_arm,
 			   __assign_str(dev);
 			   __assign_str(name);
 			   __entry->pipe_name = pipe_name(crtc->pipe);
-			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc, UPDATE_VBLANK);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   __entry->format = plane_state->hw.fb->format->format;
 			   memcpy(__entry->src, &plane_state->uapi.src, sizeof(__entry->src));
@@ -489,7 +491,7 @@ TRACE_EVENT(intel_plane_disable_arm,
 			   __assign_str(dev);
 			   __assign_str(name);
 			   __entry->pipe_name = pipe_name(crtc->pipe);
-			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc, UPDATE_VBLANK);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   ),
 
@@ -523,7 +525,7 @@ TRACE_EVENT(intel_plane_scaler_update_arm,
 			   __assign_str(name);
 			   __entry->pipe_name = pipe_name(crtc->pipe);
 			   __entry->scaler_id = scaler_id;
-			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc, UPDATE_VBLANK);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   __entry->x = x;
 			   __entry->y = y;
@@ -558,7 +560,7 @@ TRACE_EVENT(intel_pipe_scaler_update_arm,
 			   __assign_str(dev);
 			   __entry->pipe_name = pipe_name(crtc->pipe);
 			   __entry->scaler_id = scaler_id;
-			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc, UPDATE_VBLANK);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   __entry->x = x;
 			   __entry->y = y;
@@ -588,7 +590,7 @@ TRACE_EVENT(intel_scaler_disable_arm,
 			   __assign_str(dev);
 			   __entry->pipe_name = pipe_name(crtc->pipe);
 			   __entry->scaler_id = scaler_id;
-			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc, UPDATE_VBLANK);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   ),
 
@@ -616,7 +618,7 @@ TRACE_EVENT(intel_fbc_activate,
 			   __assign_str(dev);
 			   __assign_str(name);
 			   __entry->pipe_name = pipe_name(crtc->pipe);
-			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc, UPDATE_VBLANK);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   ),
 
@@ -644,7 +646,7 @@ TRACE_EVENT(intel_fbc_deactivate,
 			   __assign_str(dev);
 			   __assign_str(name);
 			   __entry->pipe_name = pipe_name(crtc->pipe);
-			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc, UPDATE_VBLANK);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   ),
 
@@ -672,7 +674,7 @@ TRACE_EVENT(intel_fbc_nuke,
 			   __assign_str(dev);
 			   __assign_str(name);
 			   __entry->pipe_name = pipe_name(crtc->pipe);
-			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc, UPDATE_VBLANK);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   ),
 
@@ -695,7 +697,7 @@ TRACE_EVENT(intel_crtc_vblank_work_start,
 	    TP_fast_assign(
 			   __assign_str(dev);
 			   __entry->pipe_name = pipe_name(crtc->pipe);
-			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc, UPDATE_VBLANK);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   ),
 
@@ -718,7 +720,7 @@ TRACE_EVENT(intel_crtc_vblank_work_end,
 	    TP_fast_assign(
 			   __assign_str(dev);
 			   __entry->pipe_name = pipe_name(crtc->pipe);
-			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc, UPDATE_VBLANK);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   ),
 
@@ -743,7 +745,7 @@ TRACE_EVENT(intel_pipe_update_start,
 	    TP_fast_assign(
 			   __assign_str(dev);
 			   __entry->pipe_name = pipe_name(crtc->pipe);
-			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc, UPDATE_VBLANK);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   __entry->min = crtc->debug.min_vbl;
 			   __entry->max = crtc->debug.max_vbl;
-- 
2.50.1

