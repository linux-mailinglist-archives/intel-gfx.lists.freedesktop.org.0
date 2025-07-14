Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A212AB04432
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jul 2025 17:40:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 640C610E4C8;
	Mon, 14 Jul 2025 15:40:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="bnB14AlO";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="QC087U+K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDC2310E4BA;
 Mon, 14 Jul 2025 15:40:02 +0000 (UTC)
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1752507599;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bVVNOtU0x1eV2q/uh01hveT3w805hcJRlxdojAOS06Q=;
 b=bnB14AlOGkx67j1i2U4rLRRj04r3CGsMjiLmXqDe8U/RGjYAitJLqGZpELPJG7a3qRAa5p
 ax9solV6xzKqnJyjF4IgWLc13u7SGvXa/8Oy+O66b0oW9ThZUZZYquhu35+7WsRZ2osAFZ
 UmqF+wKN+wM03j7tXANdwewznfG8szrs6Bo+E2NZqUwSA4J8oUlL/Ltbi4uuSy5OCdHE4g
 VNH0GE2vJUypvoXzvaUfpA1nIk1aNAOYgl6rxtfQAuShAUxNOhYsgErdFMvWwu6jnWvxAo
 x/w2+iMqN+pboWUm33GRQGYMmGv+svssQpS9Xg8l2WQn4jO7w6KvbgYTV05nYw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1752507599;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bVVNOtU0x1eV2q/uh01hveT3w805hcJRlxdojAOS06Q=;
 b=QC087U+KdUGJcTc+5CNPcvsLMGAyOYukvbV7T3MU5bucgwDnjAxVbfwLu2MwGNuZJxFJ4c
 7n/2tKQ7qvIJnCBg==
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Scott Oehrlein <scott.oehrlein@intel.com>,
 Ben Hutchings <ben@decadent.org.uk>,
 Mike Galbraith <umgwanakikbuti@gmail.com>,
 Mario Kleiner <mario.kleiner.de@gmail.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: [PATCH v4 1/9] drm/i915: Use preempt_disable/enable_rt() where
 recommended
Date: Mon, 14 Jul 2025 17:39:46 +0200
Message-ID: <20250714153954.629393-2-bigeasy@linutronix.de>
In-Reply-To: <20250714153954.629393-1-bigeasy@linutronix.de>
References: <20250714153954.629393-1-bigeasy@linutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
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
  ad3543ede630f ("drm/intel: Push get_scanout_position() timestamping into =
kms driver.")

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
---
 drivers/gpu/drm/i915/display/intel_vblank.c | 43 ++++++++++++++++-----
 1 file changed, 33 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/=
i915/display/intel_vblank.c
index 139fa5deba805..539573113375b 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -312,6 +312,20 @@ static void intel_vblank_section_exit(struct intel_dis=
play *display)
 	struct drm_i915_private *i915 =3D to_i915(display->drm);
 	spin_unlock(&i915->uncore.lock);
 }
+
+static void intel_vblank_section_enter_irqf(struct intel_display *display,=
 unsigned long *flags)
+	__acquires(i915->uncore.lock)
+{
+	struct drm_i915_private *i915 =3D to_i915(display->drm);
+	spin_lock_irqsave(&i915->uncore.lock, *flags);
+}
+
+static void intel_vblank_section_exit_irqf(struct intel_display *display, =
unsigned long flags)
+	__releases(i915->uncore.lock)
+{
+	struct drm_i915_private *i915 =3D to_i915(display->drm);
+	spin_unlock_irqrestore(&i915->uncore.lock, flags);
+}
 #else
 static void intel_vblank_section_enter(struct intel_display *display)
 {
@@ -320,6 +334,17 @@ static void intel_vblank_section_enter(struct intel_di=
splay *display)
 static void intel_vblank_section_exit(struct intel_display *display)
 {
 }
+
+static void intel_vblank_section_enter_irqf(struct intel_display *display,=
 unsigned long *flags)
+{
+	*flags =3D 0;
+}
+
+static void intel_vblank_section_exit_irqf(struct intel_display *display, =
unsigned long flags)
+{
+	if (flags)
+		return;
+}
 #endif
=20
 static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
@@ -356,10 +381,10 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc =
*_crtc,
 	 * timing critical raw register reads, potentially with
 	 * preemption disabled, so the following code must not block.
 	 */
-	local_irq_save(irqflags);
-	intel_vblank_section_enter(display);
+	intel_vblank_section_enter_irqf(display, &irqflags);
=20
-	/* preempt_disable_rt() should go right here in PREEMPT_RT patchset. */
+	if (IS_ENABLED(CONFIG_PREEMPT_RT))
+		preempt_disable();
=20
 	/* Get optional system timestamp before query. */
 	if (stime)
@@ -423,10 +448,10 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc =
*_crtc,
 	if (etime)
 		*etime =3D ktime_get();
=20
-	/* preempt_enable_rt() should go right here in PREEMPT_RT patchset. */
+	if (IS_ENABLED(CONFIG_PREEMPT_RT))
+		preempt_enable();
=20
-	intel_vblank_section_exit(display);
-	local_irq_restore(irqflags);
+	intel_vblank_section_exit_irqf(display, irqflags);
=20
 	/*
 	 * While in vblank, position will be negative
@@ -464,13 +489,11 @@ int intel_get_crtc_scanline(struct intel_crtc *crtc)
 	unsigned long irqflags;
 	int position;
=20
-	local_irq_save(irqflags);
-	intel_vblank_section_enter(display);
+	intel_vblank_section_enter_irqf(display, &irqflags);
=20
 	position =3D __intel_get_crtc_scanline(crtc);
=20
-	intel_vblank_section_exit(display);
-	local_irq_restore(irqflags);
+	intel_vblank_section_exit_irqf(display, irqflags);
=20
 	return position;
 }
--=20
2.50.0

