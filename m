Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30FA3CC71AF
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 11:35:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5824C10EC58;
	Wed, 17 Dec 2025 10:35:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="c0xQA4OO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C9CD10EC58;
 Wed, 17 Dec 2025 10:35:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1765967715;
 bh=n6ml83CVyREMXoI7JsUqJNlSZqhiqG6t1FLzS/WrF+o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=c0xQA4OO+0NwAKvL1105+P2Kr+Xdcd3gl1vXbS8JU3ow/Qvpzq6DTsY3amDRtvQp5
 YCNJ5w9osw0eqblUVcswWhVGS4Hm1ty8ayx+sFeyK3GhoxmCV9IxI4xo/R+uVZvPu3
 ecXDgF9+C2k/Mo5hWvjzoF6d4C/v/W2vXvV2aaGHYaaN3mQlVdhzOVWVeZh9GkW6aw
 +qwcABe2/h7jgnnGK6TZrcudiboak4ZQ6mXlQ95Q50xSVijO++p/goQho/67SNWAhH
 rkbXyVktnuoL6osqn9H2o4SCmXHBfWYrTikiCyUH1n3d0QX+9lYDpgHIj3ZPlx5p/b
 vOwlDAd6WeV8w==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: [i915-rt v3 06/16] drm/i915/display: Remove locking from
 intel_vblank_evade critical section
Date: Wed, 17 Dec 2025 11:35:13 +0100
Message-ID: <20251217103506.1873859-24-dev@lankhorst.se>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251217103506.1873859-18-dev@lankhorst.se>
References: <20251217103506.1873859-18-dev@lankhorst.se>
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

finish_wait() may take a lock, which means that it can take any amount
of time. On PREEMPT-RT we should not be taking any lock after disabling
preemption, so ensure that the completion is done before disabling
interrupts.

This also has the benefit of making vblank evasion more deterministic,
by performing the final vblank check after all locking is done.

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/i915/display/intel_crtc.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_vblank.c | 30 +++++++++------------
 drivers/gpu/drm/i915/display/intel_vblank.h |  1 +
 3 files changed, 15 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 778ebc5095c38..cb31c9c1c2525 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -684,7 +684,7 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	enum pipe pipe = crtc->pipe;
-	int scanline_end = intel_get_crtc_scanline(crtc);
+	int scanline_end = __intel_get_crtc_scanline(crtc);
 	u32 end_vbl_count = intel_crtc_get_vblank_counter(crtc);
 	ktime_t end_vbl_time = ktime_get();
 
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 2b106ffa3f5f5..289f390762b7c 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -242,7 +242,7 @@ int intel_crtc_scanline_offset(const struct intel_crtc_state *crtc_state)
  * intel_de_read_fw(), only for fast reads of display block, no need for
  * forcewake etc.
  */
-static int __intel_get_crtc_scanline(struct intel_crtc *crtc)
+int __intel_get_crtc_scanline(struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(crtc);
 	struct drm_vblank_crtc *vblank = drm_crtc_vblank_crtc(&crtc->base);
@@ -708,6 +708,16 @@ void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
 		evade->min -= vblank_delay;
 }
 
+static bool scanline_in_safe_range(struct intel_vblank_evade_ctx *evade, int *scanline, bool unlocked)
+{
+	if (unlocked)
+		*scanline = intel_get_crtc_scanline(evade->crtc);
+	else
+		*scanline = __intel_get_crtc_scanline(evade->crtc);
+
+	return *scanline < evade->min || *scanline > evade->max;
+}
+
 /* must be called with vblank interrupt already enabled! */
 int intel_vblank_evade(struct intel_vblank_evade_ctx *evade)
 {
@@ -715,24 +725,12 @@ int intel_vblank_evade(struct intel_vblank_evade_ctx *evade)
 	struct intel_display *display = to_intel_display(crtc);
 	long timeout = msecs_to_jiffies_timeout(1);
 	wait_queue_head_t *wq = drm_crtc_vblank_waitqueue(&crtc->base);
-	DEFINE_WAIT(wait);
 	int scanline;
 
 	if (evade->min <= 0 || evade->max <= 0)
 		return 0;
 
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
+	while (!scanline_in_safe_range(evade, &scanline, false)) {
 		if (!timeout) {
 			drm_dbg_kms(display->drm,
 				    "Potential atomic update failure on pipe %c\n",
@@ -742,13 +740,11 @@ int intel_vblank_evade(struct intel_vblank_evade_ctx *evade)
 
 		local_irq_enable();
 
-		timeout = schedule_timeout(timeout);
+		timeout = wait_event_timeout(*wq, scanline_in_safe_range(evade, &scanline, true), timeout);
 
 		local_irq_disable();
 	}
 
-	finish_wait(wq, &wait);
-
 	/*
 	 * On VLV/CHV DSI the scanline counter would appear to
 	 * increment approx. 1/3 of a scanline before start of vblank.
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.h b/drivers/gpu/drm/i915/display/intel_vblank.h
index 98d04cacd65f8..aa1974400e9fc 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.h
+++ b/drivers/gpu/drm/i915/display/intel_vblank.h
@@ -38,6 +38,7 @@ u32 g4x_get_vblank_counter(struct drm_crtc *crtc);
 bool intel_crtc_get_vblank_timestamp(struct drm_crtc *crtc, int *max_error,
 				     ktime_t *vblank_time, bool in_vblank_irq);
 int intel_get_crtc_scanline(struct intel_crtc *crtc);
+int __intel_get_crtc_scanline(struct intel_crtc *crtc);
 void intel_wait_for_pipe_scanline_stopped(struct intel_crtc *crtc);
 void intel_wait_for_pipe_scanline_moving(struct intel_crtc *crtc);
 void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
-- 
2.51.0

