Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E355A91BF27
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2024 15:06:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2429F10EC3D;
	Fri, 28 Jun 2024 13:06:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="kQwfCFeW";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="ZRlQPali";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 124F210EC36;
 Fri, 28 Jun 2024 13:06:08 +0000 (UTC)
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1719579966;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=yk1BVJ895M/wOlZ+mv5+lpnrINNFPO2fh4If4qICeVw=;
 b=kQwfCFeWuPucdbrsikc+p9yhETUMiL0zp03BuZzIZtOiiM9XhHJaw0kksAnJYsMPLEZV6K
 wSI7pBcpK2YdBm5nU4u5XF3vUTqreJNcywivKjER6i6cWEwsS8vZIMXzGt4wV1djMgHzaQ
 oIQ1rh7pv3egPl+6v7wwFyhSjQ1aJr/PQ5qoPMXWTah+F3O46Og5wiaCZR5NWvruGmZY60
 BmBV+YQFzNJ8lOz8U8v6pqnMmNQwsykSUI4A49AdCQvo3bnJ7h/C12X25vAFvtkdGioCzv
 uJ6+4qyFsXwGtBMkschtQDbDX/+LNbf4L1Cpdztbc6exdEfGJk4FQRLB/dDIHQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1719579966;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=yk1BVJ895M/wOlZ+mv5+lpnrINNFPO2fh4If4qICeVw=;
 b=ZRlQPaliBZet4HfmibqMWt8bHcBf71JDpLIWU6h6a+FmIx8X8r54Q68BE5P/+wNancYTpD
 H8Wq0u+u3W8OE7Cw==
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Mike Galbraith <umgwanakikbuti@gmail.com>,
 Mario Kleiner <mario.kleiner.de@gmail.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: [PATCH v3 1/8] drm/i915: Use preempt_disable/enable_rt() where
 recommended
Date: Fri, 28 Jun 2024 14:58:00 +0200
Message-ID: <20240628130601.1772849-2-bigeasy@linutronix.de>
In-Reply-To: <20240628130601.1772849-1-bigeasy@linutronix.de>
References: <20240628130601.1772849-1-bigeasy@linutronix.de>
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
 drivers/gpu/drm/i915/display/intel_vblank.c | 38 +++++++++++++++------
 1 file changed, 28 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/=
i915/display/intel_vblank.c
index baf7354cb6e2c..71d6071121460 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -276,6 +276,26 @@ int intel_crtc_scanline_to_hw(struct intel_crtc *crtc,=
 int scanline)
  * all register accesses to the same cacheline to be serialized,
  * otherwise they may hang.
  */
+static void intel_vblank_section_enter_irqsave(struct drm_i915_private *i9=
15, unsigned long *flags)
+	__acquires(i915->uncore.lock)
+{
+#ifdef I915
+	spin_lock_irqsave(&i915->uncore.lock, *flags);
+#else
+	*flags =3D 0;
+#endif
+}
+
+static void intel_vblank_section_exit_irqrestore(struct drm_i915_private *=
i915, unsigned long flags)
+	__releases(i915->uncore.lock)
+{
+#ifdef I915
+	spin_unlock_irqrestore(&i915->uncore.lock, flags);
+#else
+	if (flags)
+		return;
+#endif
+}
 static void intel_vblank_section_enter(struct drm_i915_private *i915)
 	__acquires(i915->uncore.lock)
 {
@@ -333,10 +353,10 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc =
*_crtc,
 	 * timing critical raw register reads, potentially with
 	 * preemption disabled, so the following code must not block.
 	 */
-	local_irq_save(irqflags);
-	intel_vblank_section_enter(dev_priv);
+	intel_vblank_section_enter_irqsave(dev_priv, &irqflags);
=20
-	/* preempt_disable_rt() should go right here in PREEMPT_RT patchset. */
+	if (IS_ENABLED(CONFIG_PREEMPT_RT))
+		preempt_disable();
=20
 	/* Get optional system timestamp before query. */
 	if (stime)
@@ -400,10 +420,10 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc =
*_crtc,
 	if (etime)
 		*etime =3D ktime_get();
=20
-	/* preempt_enable_rt() should go right here in PREEMPT_RT patchset. */
+	if (IS_ENABLED(CONFIG_PREEMPT_RT))
+		preempt_enable();
=20
-	intel_vblank_section_exit(dev_priv);
-	local_irq_restore(irqflags);
+	intel_vblank_section_exit_irqrestore(dev_priv, irqflags);
=20
 	/*
 	 * While in vblank, position will be negative
@@ -441,13 +461,11 @@ int intel_get_crtc_scanline(struct intel_crtc *crtc)
 	unsigned long irqflags;
 	int position;
=20
-	local_irq_save(irqflags);
-	intel_vblank_section_enter(dev_priv);
+	intel_vblank_section_enter_irqsave(dev_priv, &irqflags);
=20
 	position =3D __intel_get_crtc_scanline(crtc);
=20
-	intel_vblank_section_exit(dev_priv);
-	local_irq_restore(irqflags);
+	intel_vblank_section_exit_irqrestore(dev_priv, irqflags);
=20
 	return position;
 }
--=20
2.45.2

