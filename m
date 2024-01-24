Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1BE583A464
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jan 2024 09:42:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BE6C10E3AB;
	Wed, 24 Jan 2024 08:42:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 447 seconds by postgrey-1.36 at gabe;
 Wed, 24 Jan 2024 08:42:18 UTC
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8375010E3AB;
 Wed, 24 Jan 2024 08:42:18 +0000 (UTC)
Date: Wed, 24 Jan 2024 09:34:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1706085272;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=CM06qappAFq3fth3J5y9xlG2eXFuwuWe3BUB8NY8aVo=;
 b=TwVcdFFzExYfWwg7C6apWzxYslafypWJjMmx63TeGaqe7ZzDcAWqhGU/fwY9Afwow4T907
 GVHkW8diBp00lwnVnC0Qv7TvBYaNQBXuWbFj+CBzbdmwtOSRDEReKSp3w2Qqals/W6EjKw
 XE9v/GzyMfFLTMmhQdqNCml+mBGzDTKcqQEP3X0XJwctqUmf1NLEDUgvketx4Uz0R8rLSe
 6VR11NvBOkt6QtcJ98PZZhUEuGe80i82a1SzCKzxu9Xu4pGlxYLLdol6IRJBqCJ9gS+3Pg
 OXpwPnKQw84eu8x4gckK7t+klwnLlqF3BKfW/iSQsEEyyuKTJixyoUYYMZIaQg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1706085272;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=CM06qappAFq3fth3J5y9xlG2eXFuwuWe3BUB8NY8aVo=;
 b=myTeGKG3lP7bg4Y67UrRx+0pfdQT5ef5h+PELXsJkyOJgj2sLnKt72XIeVTAOzC7QaNSmB
 Dc1zI6HFYm4zeJAA==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Luca Coelho <luciano.coelho@intel.com>,
 Tvrtko Ursulin <tvrto.ursulin@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH v7] drm/i915: handle uncore spinlock when not
 available
Message-ID: <20240124083431.pY7Mxk0Q@linutronix.de>
References: <20231201100032.1367589-1-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231201100032.1367589-1-luciano.coelho@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org, Thomas Gleixner <tglx@linutronix.de>,
 intel-xe@lists.freedesktop.org, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2023-12-01 12:00:32 [+0200], Luca Coelho wrote:
> To handle this, split the spin_lock/unlock_irqsave/restore() into
> spin_lock/unlock() followed by a call to local_irq_save/restore() and

On PREEMPT_RT spinlock_t becomes a sleeping lock so this split is not
working. See Documentation/locking/locktypes.rst

What I don't understand: do you have to keep the interrupts disabled
for some reasons or is it just to avoid using _irqsave() twice?

I do have more i915 related patches in the PREEMPT_RT queue and I can
post them if you folks have time for it. For now, let me show what I did
here:

----------->8-------------

From: Mike Galbraith <umgwanakikbuti@gmail.com>
Date: Sat, 27 Feb 2016 08:09:11 +0100
Subject: [PATCH 03/10] drm/i915: Use preempt_disable/enable_rt() where
 recommended

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
---
 drivers/gpu/drm/i915/display/intel_vblank.c |   38 ++++++++++++++++++++--------
 1 file changed, 28 insertions(+), 10 deletions(-)

--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -275,6 +275,26 @@ int intel_crtc_scanline_to_hw(struct int
  * all register accesses to the same cacheline to be serialized,
  * otherwise they may hang.
  */
+static void intel_vblank_section_enter_irqsave(struct drm_i915_private *i915, unsigned long *flags)
+	__acquires(i915->uncore.lock)
+{
+#ifdef I915
+	spin_lock_irqsave(&i915->uncore.lock, *flags);
+#else
+	*flags = NULL;
+#endif
+}
+
+static void intel_vblank_section_exit_irqrestore(struct drm_i915_private *i915, unsigned long flags)
+	__releases(i915->uncore.lock)
+{
+#ifdef I915
+	spin_unlock_irqrestore(&i915->uncore.lock, flags);
+#else
+	if (flags)
+		;
+#endif
+}
 static void intel_vblank_section_enter(struct drm_i915_private *i915)
 	__acquires(i915->uncore.lock)
 {
@@ -332,10 +352,10 @@ static bool i915_get_crtc_scanoutpos(str
 	 * timing critical raw register reads, potentially with
 	 * preemption disabled, so the following code must not block.
 	 */
-	local_irq_save(irqflags);
-	intel_vblank_section_enter(dev_priv);
+	intel_vblank_section_enter_irqsave(dev_priv, &irqflags);
 
-	/* preempt_disable_rt() should go right here in PREEMPT_RT patchset. */
+	if (IS_ENABLED(CONFIG_PREEMPT_RT))
+		preempt_disable();
 
 	/* Get optional system timestamp before query. */
 	if (stime)
@@ -399,10 +419,10 @@ static bool i915_get_crtc_scanoutpos(str
 	if (etime)
 		*etime = ktime_get();
 
-	/* preempt_enable_rt() should go right here in PREEMPT_RT patchset. */
+	if (IS_ENABLED(CONFIG_PREEMPT_RT))
+		preempt_enable();
 
-	intel_vblank_section_exit(dev_priv);
-	local_irq_restore(irqflags);
+	intel_vblank_section_exit_irqrestore(dev_priv, irqflags);
 
 	/*
 	 * While in vblank, position will be negative
@@ -440,13 +460,11 @@ int intel_get_crtc_scanline(struct intel
 	unsigned long irqflags;
 	int position;
 
-	local_irq_save(irqflags);
-	intel_vblank_section_enter(dev_priv);
+	intel_vblank_section_enter_irqsave(dev_priv, &irqflags);
 
 	position = __intel_get_crtc_scanline(crtc);
 
-	intel_vblank_section_exit(dev_priv);
-	local_irq_restore(irqflags);
+	intel_vblank_section_exit_irqrestore(dev_priv, irqflags);
 
 	return position;
 }
