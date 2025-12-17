Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C83CCCC71BE
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 11:35:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DD6010EC69;
	Wed, 17 Dec 2025 10:35:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="fsskorYg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AB4510EC50;
 Wed, 17 Dec 2025 10:35:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1765967718;
 bh=f44xvmNK/RAy/n5l5tS2hKEJu3wMpEA5Coc24G8mJc4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=fsskorYghWcX0Xl8OTVfaZ8/xwi87qzNLml4OmnpA1ahPJ30hUL1Hr5I/FQ4GC8d3
 i/Xr+sjoEXjhuI4o5uUycXPUd3Os74FTAnxId5kX9MvK6iH3wElyG5y48zauCq2wRv
 Fm6k6gCXF9OYLG9NLNY8wdMB+9pgJGctVTJ6g4sNNsc1prmK1RfsQbEXAnvfyb1F0A
 gpDaP7n4mgFiT5IKvGitVZhzNH1lpoO4HgFENfDa/ieV9p5BFmCXM1EY9pxZg+7cQl
 o1SzDQWh9H53yLa1cuDJtmddZ3BK0mwIpv5u/zCjc3+2L+dafsmch42aiA2ubGj2Of
 NzB/uYlCiTMdg==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: [i915-rt v3 10/16] drm/i915: Use preempt_disable/enable_rt() where
 recommended
Date: Wed, 17 Dec 2025 11:35:17 +0100
Message-ID: <20251217103506.1873859-28-dev@lankhorst.se>
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
index d700fd04cb407..a98dd3a436c28 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -317,6 +317,20 @@ static void intel_vblank_section_exit(struct intel_display *display)
 	struct drm_i915_private *i915 = to_i915(display->drm);
 	spin_unlock(&i915->uncore.lock);
 }
+
+static void intel_vblank_section_enter_irqf(struct intel_display *display, unsigned long *flags)
+	__acquires(i915->uncore.lock)
+{
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	spin_lock_irqsave(&i915->uncore.lock, *flags);
+}
+
+static void intel_vblank_section_exit_irqf(struct intel_display *display, unsigned long flags)
+	__releases(i915->uncore.lock)
+{
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	spin_unlock_irqrestore(&i915->uncore.lock, flags);
+}
 #else
 static void intel_vblank_section_enter(struct intel_display *display)
 {
@@ -325,6 +339,17 @@ static void intel_vblank_section_enter(struct intel_display *display)
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
@@ -361,10 +386,10 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
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
@@ -428,10 +453,10 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
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
@@ -469,13 +494,11 @@ int intel_get_crtc_scanline(struct intel_crtc *crtc)
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

