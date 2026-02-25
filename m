Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJgxO+72nmm+YAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 14:19:42 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A118F197EB3
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 14:19:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0064310E775;
	Wed, 25 Feb 2026 13:19:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="jyNSqbyp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95CF910E355
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Feb 2026 13:19:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1772025577;
 bh=7SFhKZG/LMYEE2dLgP5hcaN7ZbknfkfyXKI88ikD6/M=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=jyNSqbypPcs1KYv364T6BSivK93BYsUCM1sRY16caz6Kj0YSBV52LHTahgCNz0hrF
 hnFj8BY9y4o8+CXGCBBZCubtkGfvfbolhbZKxchK1RJ0SDTlUghPw6OVdqlVB8TVNU
 /lTX4Kb8qvZI8kisavxqKx0rB1PKogvFpEv+dHtmhlbjIc5KhJVJb83sLSMnoit428
 m54ejfPEv9IZM3pagKgqmAU0Yb6tpQELiJGo6vbP9kIK6Ryh7hJaGvUytLKJl5Cxps
 WpIs63qgHjWvUH9Vl55EoFSuB6ko1BtHm3ymN0Lyp0jwY/+6K6WyU878PEj0lep/36
 38rY79YNXFjLw==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org
Subject: [i915-ci-only NO-REVIEW 04/25] drm/intel/display: Convert vblank
 event handling to 2-stage arming
Date: Wed, 25 Feb 2026 14:19:08 +0100
Message-ID: <20260225131931.60724-5-dev@lankhorst.se>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260225131931.60724-1-dev@lankhorst.se>
References: <20260225131931.60724-1-dev@lankhorst.se>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ARC_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lankhorst.se:mid,lankhorst.se:dkim,lankhorst.se:email];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TO_DN_NONE(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[lankhorst.se:+]
X-Rspamd-Queue-Id: A118F197EB3
X-Rspamd-Action: no action

This is converts the vblank functions to be called with interrupts
disabled, even on PREEMPT_RT kernels.

Because the PREEMPT_RT kernel converts all spinlocks to rt-mutexes,
the normal vblank functions cannot be used inside the critical section.

Instead, prepare the vblank at the start, and then enable the vblank
work after the hardware programming is completed.

This allows us to keep programming the hardware with interrupts
disabled, and still schedule completion on PREEMPT_RT on next vblank.

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 84 ++++++++++++-----------
 1 file changed, 44 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 296f7a7b962fa..ca85b6fe50c6f 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -480,6 +480,10 @@ static void intel_crtc_vblank_work_init(struct intel_crtc_state *crtc_state)
 
 	drm_vblank_work_init(&crtc_state->vblank_work, &crtc->base,
 			     intel_crtc_vblank_work);
+
+	drm_vblank_work_schedule_disabled(&crtc_state->vblank_work,
+					  drm_crtc_accurate_vblank_count(&crtc->base) + 1);
+
 	/*
 	 * Interrupt latency is critical for getting the vblank
 	 * work executed as early as possible during the vblank.
@@ -525,6 +529,21 @@ int intel_scanlines_to_usecs(const struct drm_display_mode *adjusted_mode,
 				adjusted_mode->crtc_clock);
 }
 
+static void intel_crtc_arm_vblank_event(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	unsigned long irqflags;
+
+	if (!crtc_state->uapi.event)
+		return;
+
+	drm_WARN_ON(crtc->base.dev, drm_crtc_vblank_get(&crtc->base) != 0);
+
+	spin_lock_irqsave(&crtc->base.dev->event_lock, irqflags);
+	drm_crtc_prepare_arm_vblank_event(&crtc->base, crtc_state->uapi.event);
+	spin_unlock_irqrestore(&crtc->base.dev->event_lock, irqflags);
+}
+
 /**
  * intel_pipe_update_start() - start update of a set of display registers
  * @state: the atomic state
@@ -561,6 +580,8 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
 
 	if (intel_crtc_needs_vblank_work(new_crtc_state))
 		intel_crtc_vblank_work_init(new_crtc_state);
+	else
+		intel_crtc_arm_vblank_event(new_crtc_state);
 
 	if (state->base.legacy_cursor_update) {
 		struct intel_plane *plane;
@@ -638,23 +659,6 @@ static void dbg_vblank_evade(struct intel_crtc *crtc, ktime_t end)
 static void dbg_vblank_evade(struct intel_crtc *crtc, ktime_t end) {}
 #endif
 
-static void intel_crtc_arm_vblank_event(struct intel_crtc_state *crtc_state)
-{
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	unsigned long irqflags;
-
-	if (!crtc_state->uapi.event)
-		return;
-
-	drm_WARN_ON(crtc->base.dev, drm_crtc_vblank_get(&crtc->base) != 0);
-
-	spin_lock_irqsave(&crtc->base.dev->event_lock, irqflags);
-	drm_crtc_arm_vblank_event(&crtc->base, crtc_state->uapi.event);
-	spin_unlock_irqrestore(&crtc->base.dev->event_lock, irqflags);
-
-	crtc_state->uapi.event = NULL;
-}
-
 void intel_crtc_prepare_vblank_event(struct intel_crtc_state *crtc_state,
 				     struct drm_pending_vblank_event **event)
 {
@@ -708,29 +712,10 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
 	 * event outside of the critical section - the spinlock might spin for a
 	 * while ... */
 	if (intel_crtc_needs_vblank_work(new_crtc_state)) {
-		drm_vblank_work_schedule(&new_crtc_state->vblank_work,
-					 drm_crtc_accurate_vblank_count(&crtc->base) + 1,
-					 false);
-	} else {
-		intel_crtc_arm_vblank_event(new_crtc_state);
-	}
-
-	if (state->base.legacy_cursor_update) {
-		struct intel_plane *plane;
-		struct intel_plane_state *old_plane_state;
-		int i;
-
-		for_each_old_intel_plane_in_state(state, plane, old_plane_state, i) {
-			if (old_plane_state->hw.crtc == &crtc->base &&
-			    old_plane_state->unpin_work.vblank) {
-				drm_vblank_work_schedule(&old_plane_state->unpin_work,
-							 drm_crtc_accurate_vblank_count(&crtc->base) + 1,
-							 false);
-
-				/* Remove plane from atomic state, cleanup/free is done from vblank worker. */
-				memset(&state->base.planes[i], 0, sizeof(state->base.planes[i]));
-			}
-		}
+		drm_vblank_work_enable(&new_crtc_state->vblank_work);
+	} else if (new_crtc_state->uapi.event) {
+		drm_crtc_arm_prepared_vblank_event(new_crtc_state->uapi.event);
+		new_crtc_state->uapi.event = NULL;
 	}
 
 	/*
@@ -754,6 +739,25 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
 
 	local_irq_enable();
 
+	/* Run after local_irq_enable(), not timing sensitive */
+	if (state->base.legacy_cursor_update) {
+		struct intel_plane *plane;
+		struct intel_plane_state *old_plane_state;
+		int i;
+
+		for_each_old_intel_plane_in_state(state, plane, old_plane_state, i) {
+			if (old_plane_state->hw.crtc == &crtc->base &&
+			    old_plane_state->unpin_work.vblank) {
+				drm_vblank_work_schedule(&old_plane_state->unpin_work,
+							 drm_crtc_accurate_vblank_count(&crtc->base) + 1,
+							 false);
+
+				/* Remove plane from atomic state, cleanup/free is done from vblank worker. */
+				memset(&state->base.planes[i], 0, sizeof(state->base.planes[i]));
+			}
+		}
+	}
+
 	if (intel_parent_vgpu_active(display))
 		goto out;
 
-- 
2.51.0

