Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8uZuGiZeMGqfSAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:18:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1545A689BAA
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:18:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=A07usg4X;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=lankhorst.se
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E853310E64D;
	Mon, 15 Jun 2026 20:18:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D8AB10E631;
 Mon, 15 Jun 2026 20:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1781554715;
 bh=BDqEyaLSf5oPui7QLPP/4vffKV9STElBBLDe6hW029Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=A07usg4Xg3HwChXgBd0tSdDpMHY8N9uReseGVCZzE0mdG3cowsr9CTPDKAjAld02c
 WDVILBHrUZT/0zlhQXgfy+bswXBk/4stin4Iezw/1pXgBDCgZf7/ONyQdtErFz7D15
 qb1r7q7yBzt4MLSfQCd4vyPNCog1PanRYMabgdXxHBBZUBZGhv7jg0WjN2p7Smm0Nk
 sxfa8LcdbgaaoFKrsLM68vgs4jhhiuoDaaz4/RvsAm0c6fIQu0VwnLRpTQoWDV1yp2
 Jk2AlB2uaOyxAkPdkfLfmF0pge0VR2XVeAyg8yD+eGxApP1+XK2tAqx6iHF+tjyElE
 K+BGt3bPJ5sTg==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
	Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH v8 04/27] drm/intel/display: Convert vblank event handling to
 2-stage arming
Date: Mon, 15 Jun 2026 22:18:22 +0200
Message-ID: <20260615201846.307297-5-dev@lankhorst.se>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260615201846.307297-1-dev@lankhorst.se>
References: <20260615201846.307297-1-dev@lankhorst.se>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[lankhorst.se:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lankhorst.se:dkim,lankhorst.se:email,lankhorst.se:mid,lankhorst.se:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1545A689BAA

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
index 805645318747f..34a159f7c9a43 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -527,6 +527,10 @@ static void intel_crtc_vblank_work_init(struct intel_crtc_state *crtc_state)
 
 	drm_vblank_work_init(&crtc_state->vblank_work, &crtc->base,
 			     intel_crtc_vblank_work);
+
+	drm_vblank_work_schedule_disabled(&crtc_state->vblank_work,
+					  drm_crtc_accurate_vblank_count(&crtc->base) + 1);
+
 	/*
 	 * Interrupt latency is critical for getting the vblank
 	 * work executed as early as possible during the vblank.
@@ -571,6 +575,21 @@ int intel_scanlines_to_usecs(const struct drm_display_mode *adjusted_mode,
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
@@ -607,6 +626,8 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
 
 	if (intel_crtc_needs_vblank_work(new_crtc_state))
 		intel_crtc_vblank_work_init(new_crtc_state);
+	else
+		intel_crtc_arm_vblank_event(new_crtc_state);
 
 	if (state->base.legacy_cursor_update) {
 		struct intel_plane *plane;
@@ -684,23 +705,6 @@ static void dbg_vblank_evade(struct intel_crtc *crtc, ktime_t end)
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
@@ -754,29 +758,10 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
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
@@ -800,6 +785,25 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
 
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
2.53.0

