Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yFjaJ2zacGnCaQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 14:53:48 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37AA857F98
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 14:53:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C149D10E7E0;
	Wed, 21 Jan 2026 13:53:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="b+R/kGhu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DE2D10E791;
 Wed, 21 Jan 2026 13:53:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1769003623;
 bh=XkNbpS7yQj2e4rEUpkO727rITZUhqgBZpR0JMM7XA4o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=b+R/kGhuUTDFTKSkW9hAm7NipAe28U7JKzL36sUurgbjsmwwAmigeGe7Gdzff4c1T
 44QU/6wBgiyacXVMh896pIypLni5oLVwt+ewcjMjQqbJK3b/h5EfdMckvr7l+Y4est
 MlOadfvewsDkUpKCRFZTp8EKNBigL15GqZf9kQjYqagRguiEbzRcILnZjSvrI1x5Z7
 To4c7NOeN49H2jZineP8U9BTnpANQClAUhL7Rftbsj0H3RrpArLIfVhGJgOKxK0gJ8
 /jp9GgzzH3gAqWBr4mGOaBLo36FCJA8GTu0h4j+GjA/xK9FaRznwBAO25BII4/osoe
 wdHSRnhzEymyg==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mike Galbraith <umgwanakikbuti@gmail.com>,
 Mario Kleiner <mario.kleiner.de@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Maarten Lankhorst <dev@lankhorst.se>
Subject: [i915-rt v5 10/21] drm/i915: Use preempt_disable/enable_rt() where
 recommended
Date: Wed, 21 Jan 2026 14:53:06 +0100
Message-ID: <20260121135318.651622-11-dev@lankhorst.se>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260121135318.651622-1-dev@lankhorst.se>
References: <20260121135318.651622-1-dev@lankhorst.se>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,linutronix.de,lankhorst.se];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lankhorst.se:+];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linutronix.de:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lankhorst.se:email,lankhorst.se:dkim,lankhorst.se:mid]
X-Rspamd-Queue-Id: 37AA857F98
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Mike Galbraith <umgwanakikbuti@gmail.com>

Mario Kleiner suggest in commit
  ad3543ede630f ("drm/intel: Push get_scanout_position() timestamping into kms driver.")

a spots where preemption should be disabled on PREEMPT_RT. The
difference is that on PREEMPT_RT the intel_uncore::lock disables neither
preemption nor interrupts and so region remains preemptible.

The area covers only register reads and writes. The part that worries me
is:
- __intel_get_crtc_scanline() the worst case is 100us if no match is
  found.

- intel_crtc_scanlines_since_frame_timestamp() not sure how long this
  may take in the worst case.

It was in the RT queue for a while and nobody complained.
Disable preemption on PREEPMPT_RT during timestamping.

[bigeasy: patch description.]

Cc: Mario Kleiner <mario.kleiner.de@gmail.com>
Signed-off-by: Mike Galbraith <umgwanakikbuti@gmail.com>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/i915/display/intel_vblank.c | 43 ++++++++++++++++-----
 1 file changed, 33 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 6bc784563a7c1..e204c260b9aef 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -316,6 +316,20 @@ static void intel_vblank_section_exit(struct intel_display *display)
 	struct intel_uncore *uncore = to_intel_uncore(display->drm);
 	spin_unlock(&uncore->lock);
 }
+
+static void intel_vblank_section_enter_irqf(struct intel_display *display, unsigned long *flags)
+	__acquires(i915->uncore.lock)
+{
+	struct intel_uncore *uncore = to_intel_uncore(display->drm);
+	spin_lock_irqsave(&uncore->lock, *flags);
+}
+
+static void intel_vblank_section_exit_irqf(struct intel_display *display, unsigned long flags)
+	__releases(i915->uncore.lock)
+{
+	struct intel_uncore *uncore = to_intel_uncore(display->drm);
+	spin_unlock_irqrestore(&uncore->lock, flags);
+}
 #else
 static void intel_vblank_section_enter(struct intel_display *display)
 {
@@ -324,6 +338,17 @@ static void intel_vblank_section_enter(struct intel_display *display)
 static void intel_vblank_section_exit(struct intel_display *display)
 {
 }
+
+static void intel_vblank_section_enter_irqf(struct intel_display *display, unsigned long *flags)
+{
+	*flags = 0;
+}
+
+static void intel_vblank_section_exit_irqf(struct intel_display *display, unsigned long flags)
+{
+	if (flags)
+		return;
+}
 #endif
 
 static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
@@ -360,10 +385,10 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
 	 * timing critical raw register reads, potentially with
 	 * preemption disabled, so the following code must not block.
 	 */
-	local_irq_save(irqflags);
-	intel_vblank_section_enter(display);
+	intel_vblank_section_enter_irqf(display, &irqflags);
 
-	/* preempt_disable_rt() should go right here in PREEMPT_RT patchset. */
+	if (IS_ENABLED(CONFIG_PREEMPT_RT))
+		preempt_disable();
 
 	/* Get optional system timestamp before query. */
 	if (stime)
@@ -427,10 +452,10 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
 	if (etime)
 		*etime = ktime_get();
 
-	/* preempt_enable_rt() should go right here in PREEMPT_RT patchset. */
+	if (IS_ENABLED(CONFIG_PREEMPT_RT))
+		preempt_enable();
 
-	intel_vblank_section_exit(display);
-	local_irq_restore(irqflags);
+	intel_vblank_section_exit_irqf(display, irqflags);
 
 	/*
 	 * While in vblank, position will be negative
@@ -468,13 +493,11 @@ int intel_get_crtc_scanline(struct intel_crtc *crtc)
 	unsigned long irqflags;
 	int position;
 
-	local_irq_save(irqflags);
-	intel_vblank_section_enter(display);
+	intel_vblank_section_enter_irqf(display, &irqflags);
 
 	position = __intel_get_crtc_scanline(crtc);
 
-	intel_vblank_section_exit(display);
-	local_irq_restore(irqflags);
+	intel_vblank_section_exit_irqf(display, irqflags);
 
 	return position;
 }
-- 
2.51.0

