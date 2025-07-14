Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ADABB04435
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jul 2025 17:40:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AD0010E4CB;
	Mon, 14 Jul 2025 15:40:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="c9zu8Vmd";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="x0+l8Qco";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED8DE10E0BC;
 Mon, 14 Jul 2025 15:40:02 +0000 (UTC)
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1752507600;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cG5BN46tSHbWZpC21Tv/QpQ218oDgmklPXZEaQUQUYE=;
 b=c9zu8VmdLVyUsxOZk49z+wAc3UbS/HFyFpBTfcxGS/ESd9tALHwz85ujf0v3qwwc7fE8WP
 OB4BIprIxVBTJ4KJZAdH74B1yUg9lznhu6Jr7MSXJa0+GC4Hp/zveLRQWKbd+ccb0R390v
 x4Xv3dUSsyKU8gY1qrDxoAdkxqsfDA/1fAXAjNh1QzVsUOur6VNpQC2jZoROHQRAJAgHDk
 vZ27M0pbSQyFvS778W1S6ndbvknsyQzyEah/KbAqoEjNw7SGAE5r06jAyXtzcaHW3U75yq
 y7BYlO6vVFpZFiarfC5tXqPElVMiywAEIHibl63uv5Jqnv7drxVssOsHHcNH9Q==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1752507600;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cG5BN46tSHbWZpC21Tv/QpQ218oDgmklPXZEaQUQUYE=;
 b=x0+l8QcoYZeHz8RS1zwBNWw6Zeqa4k6otZGg1NUxGS9RkU8596p/MXIVpdSychbhtCVwH6
 Ga4rja9+DEYErRCQ==
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
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: [PATCH v4 2/9] drm/i915: Don't disable interrupts on PREEMPT_RT
 during atomic updates
Date: Mon, 14 Jul 2025 17:39:47 +0200
Message-ID: <20250714153954.629393-3-bigeasy@linutronix.de>
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
 drivers/gpu/drm/i915/display/intel_cursor.c | 9 ++++++---
 drivers/gpu/drm/i915/display/intel_vblank.c | 6 ++++--
 3 files changed, 16 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i9=
15/display/intel_crtc.c
index 29cfc38f12e04..5cfe6ecf1c115 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -559,7 +559,8 @@ void intel_pipe_update_start(struct intel_atomic_state =
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
@@ -577,7 +578,8 @@ void intel_pipe_update_start(struct intel_atomic_state =
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
@@ -723,7 +725,8 @@ void intel_pipe_update_end(struct intel_atomic_state *s=
tate,
 	if (!state->base.legacy_cursor_update)
 		intel_vrr_send_push(NULL, new_crtc_state);
=20
-	local_irq_enable();
+	if (!IS_ENABLED(CONFIG_PREEMPT_RT))
+		local_irq_enable();
=20
 	if (intel_vgpu_active(dev_priv))
 		goto out;
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/=
i915/display/intel_cursor.c
index 2fec5ba58373a..d3cfc20f866f5 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -930,13 +930,15 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 		 */
 		intel_psr_wait_for_idle_locked(crtc_state);
=20
-		local_irq_disable();
+		if (!IS_ENABLED(CONFIG_PREEMPT_RT))
+			local_irq_disable();
=20
 		intel_vblank_evade(&evade);
=20
 		drm_crtc_vblank_put(&crtc->base);
 	} else {
-		local_irq_disable();
+		if (!IS_ENABLED(CONFIG_PREEMPT_RT))
+			local_irq_disable();
 	}
=20
 	if (new_plane_state->uapi.visible) {
@@ -946,7 +948,8 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 		intel_plane_disable_arm(NULL, plane, crtc_state);
 	}
=20
-	local_irq_enable();
+	if (!IS_ENABLED(CONFIG_PREEMPT_RT))
+		local_irq_enable();
=20
 	intel_psr_unlock(crtc_state);
=20
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/=
i915/display/intel_vblank.c
index 539573113375b..0c29ca3bb5e32 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -753,11 +753,13 @@ int intel_vblank_evade(struct intel_vblank_evade_ctx =
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
2.50.0

