Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 861BD899F9E
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 16:28:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF02B113C45;
	Fri,  5 Apr 2024 14:28:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="YBLskyFz";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="KR1BwOqO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC05F10EC86;
 Fri,  5 Apr 2024 14:27:44 +0000 (UTC)
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1712327262;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TS1tM7wgq9DXcgNxpWu8K1oQurOBqPTUe4c8s21SBBM=;
 b=YBLskyFzI0bKaifK/m3usZTFf3bfgaizM532gyaIsVOaUrxgAUJXHdr6H54L1NoWLIZ/Ff
 6Ap+zCUqsO+A+r01dlNdUGYogthlUXhaGthKi/C6BY9RasBsNeDuGyFDbDkCbWXfFHklcC
 eBen1OKK7nlmWO7mj2m+qI6o2+K5iqOvo0kErMotd0c8daHbXCDXwIFSxa0ZC+ifvSF2RA
 6+zI2e/Xf49KlcIfOD/NPh69IfHyNdZGpwH9BU3s/zwZoC2BdK6PIBLLxEfcu/98T5eXSg
 dqJL4nrziYzLhQmkeN9cQkUedLW0Y8qSkq9RjSxorzsCl7mYirpi61On4Y2BHw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1712327262;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TS1tM7wgq9DXcgNxpWu8K1oQurOBqPTUe4c8s21SBBM=;
 b=KR1BwOqOZfxXkSlW65gnOLt1cQwgomxEhdXXiUCIygVLj9omj7+AjOfFSc6v93u9gmAzHy
 79Gix5K6sS6osTDA==
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Mike Galbraith <umgwanakikbuti@gmail.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: [PATCH 02/10] drm/i915: Don't disable interrupts on PREEMPT_RT during
 atomic updates
Date: Fri,  5 Apr 2024 16:18:20 +0200
Message-ID: <20240405142737.920626-3-bigeasy@linutronix.de>
In-Reply-To: <20240405142737.920626-1-bigeasy@linutronix.de>
References: <20240405142737.920626-1-bigeasy@linutronix.de>
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

Commit
   8d7849db3eab7 ("drm/i915: Make sprite updates atomic")

started disabling interrupts across atomic updates. This breaks on PREEMPT_=
RT
because within this section the code attempt to acquire spinlock_t locks wh=
ich
are sleeping locks on PREEMPT_RT.

According to the comment the interrupts are disabled to avoid random delays=
 and
not required for protection or synchronisation.
If this needs to happen with disabled interrupts on PREEMPT_RT, and the
whole section is restricted to register access then all sleeping locks
need to be acquired before interrupts are disabled and some function
maybe moved after enabling interrupts again.
This includes:
- prepare_to_wait() + finish_wait() due its wake queue.
- drm_crtc_vblank_put() -> vblank_disable_fn() drm_device::vbl_lock.
- skl_pfit_enable(), intel_update_plane(), vlv_atomic_update_fifo() and
  maybe others due to intel_uncore::lock
- drm_crtc_arm_vblank_event() due to drm_device::event_lock and
  drm_device::vblank_time_lock.

Don't disable interrupts on PREEMPT_RT during atomic updates.

[bigeasy: drop local locks, commit message]

Signed-off-by: Mike Galbraith <umgwanakikbuti@gmail.com>
Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
 drivers/gpu/drm/i915/display/intel_crtc.c   | 9 ++++++---
 drivers/gpu/drm/i915/display/intel_vblank.c | 6 ++++--
 2 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i9=
15/display/intel_crtc.c
index 25593f6aae7de..22b80004574fa 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -512,7 +512,8 @@ void intel_pipe_update_start(struct intel_atomic_state =
*state,
 	 */
 	intel_psr_wait_for_idle_locked(new_crtc_state);
=20
-	local_irq_disable();
+	if (!IS_ENABLED(CONFIG_PREEMPT_RT))
+		local_irq_disable();
=20
 	crtc->debug.min_vbl =3D evade.min;
 	crtc->debug.max_vbl =3D evade.max;
@@ -530,7 +531,8 @@ void intel_pipe_update_start(struct intel_atomic_state =
*state,
 	return;
=20
 irq_disable:
-	local_irq_disable();
+	if (!IS_ENABLED(CONFIG_PREEMPT_RT))
+		local_irq_disable();
 }
=20
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_VBLANK_EVADE)
@@ -632,7 +634,8 @@ void intel_pipe_update_end(struct intel_atomic_state *s=
tate,
 	 */
 	intel_vrr_send_push(new_crtc_state);
=20
-	local_irq_enable();
+	if (!IS_ENABLED(CONFIG_PREEMPT_RT))
+		local_irq_enable();
=20
 	if (intel_vgpu_active(dev_priv))
 		goto out;
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/=
i915/display/intel_vblank.c
index 71d6071121460..d639b51a49195 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -700,11 +700,13 @@ int intel_vblank_evade(struct intel_vblank_evade_ctx =
*evade)
 			break;
 		}
=20
-		local_irq_enable();
+		if (!IS_ENABLED(CONFIG_PREEMPT_RT))
+			local_irq_enable();
=20
 		timeout =3D schedule_timeout(timeout);
=20
-		local_irq_disable();
+		if (!IS_ENABLED(CONFIG_PREEMPT_RT))
+			local_irq_disable();
 	}
=20
 	finish_wait(wq, &wait);
--=20
2.43.0

