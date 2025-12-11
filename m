Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2CACB675C
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Dec 2025 17:29:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A483A10E83B;
	Thu, 11 Dec 2025 16:29:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="WiKCYlqy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC62310E854;
 Thu, 11 Dec 2025 16:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1765470537;
 bh=/784ao3MxOjrVb9P1WuxtDwJbvPFFwS9FKnsm7dVOEM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WiKCYlqyf5SpQ9Zs5gwrPjfY6z3OKrKQdg++iEYEO0RQPk0TkUnZP/xM+XB9TltOn
 YbD/O7DmKgRH8yrN745KWNVdfD5qcmYVZvExU6Q5NaZRexFobrIrxBXP3X5ZOwDdbJ
 mfsTOGVRKalHaLqNITWxMY7SxigLgr8nETLr9mhRgRwLevQzPjRMQQIcqXsxIBdOXW
 OrPdErjImYnTSRPgsoHJoKydH/NytPJVgOSIr/uoEfPaiiA1Hkxri8T+JNCPT9D7GL
 QTJZ5GrkIZ+Yqwq3AJ4Ptf8CUudacgISXrXRx/xyY0Nd51cDmJBVEkRciTmwyM68/3
 e6S1/WP+5+jRg==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH 9/9] drm/i915/display: Enable interrupts earlier on PREEMPT_RT
Date: Thu, 11 Dec 2025 17:19:32 +0100
Message-ID: <20251211161923.843758-20-dev@lankhorst.se>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251211161923.843758-11-dev@lankhorst.se>
References: <20251211161923.843758-11-dev@lankhorst.se>
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

The last part of the vblank evasion is about updating bookkeeping,
not programming hardware registers.

The interrupts cannot stay disabled here on PREEMPT_RT since the
spinlocks get converted to mutexes.

There's still a small race in VRR that needs to be addressed, and
in the other worst case there is a delay of a vblank completion if
the vblank is fired and we schedule on the next vblank, this needs
to be addressed separately.

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 778ebc5095c38..93e58c12ac994 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -703,6 +703,14 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
 	    intel_crtc_has_type(new_crtc_state, INTEL_OUTPUT_DSI))
 		icl_dsi_frame_update(new_crtc_state);
 
+#if IS_ENABLED(CONFIG_PREEMPT_RT)
+	/*
+	 * Timing sensitive register writing completed, non-deterministic
+	 * locking from here on out.
+	 */
+	local_irq_enable();
+#endif
+
 	/* We're still in the vblank-evade critical section, this can't race.
 	 * Would be slightly nice to just grab the vblank count and arm the
 	 * event outside of the critical section - the spinlock might spin for a
@@ -750,7 +758,9 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
 	if (!state->base.legacy_cursor_update)
 		intel_vrr_send_push(NULL, new_crtc_state);
 
+#if !IS_ENABLED(CONFIG_PREEMPT_RT)
 	local_irq_enable();
+#endif
 
 	if (intel_parent_vgpu_active(display))
 		goto out;
-- 
2.51.0

