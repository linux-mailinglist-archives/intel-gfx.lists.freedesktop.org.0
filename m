Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8FEBC2FF39
	for <lists+intel-gfx@lfdr.de>; Tue, 04 Nov 2025 09:36:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A78B10E569;
	Tue,  4 Nov 2025 08:36:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="fv3MPoO4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 085D910E55E;
 Tue,  4 Nov 2025 08:36:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1762245407;
 bh=5EyVl++02A6gXmAu1FIdHW+rmMCx4mTCiwsTCNDLiTM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=fv3MPoO4Dk7QvcADP9IWAkOO2NvEzAymD1cS6A2eFHwKy3LoPg3nWMMWJuwClqs3r
 35qmKvICZSjQ2owdbhW9wrwbnKYhQxozAfKBO89mjHQXWGSHE7nIRQEoCIEPrh8obf
 +4m5FoSPebVKPAoT0vAyfyjt7n3REr1fq+IKK/JxCRIRwo7tvaUkI+uoKI1jlLPmeD
 l+H90hzm13AJSxsB89wW8vqUxY+qL8U4dYx959KowFMpMm1sOXOT8OkBJko//frjz1
 y0l485RMadKcH+akRaA+br3jEQCiqgKcB6kZykR9/QnTGtzRVUcG1hXSyUGOYZihfW
 /gRlZfh1VUtfQ==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: linux-rt-devel@lists.linux.dev, Maarten Lankhorst <dev@lankhorst.se>,
 Mario Kleiner <mario.kleiner.de@gmail.com>,
 Mike Galbraith <umgwanakikbuti@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Clark Williams <clrkwllms@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
Subject: [PATCH v2 4/7] drm/i915/display: Remove locking from
 intel_vblank_evade critical section
Date: Tue,  4 Nov 2025 09:36:28 +0100
Message-ID: <20251104083634.670753-5-dev@lankhorst.se>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251104083634.670753-1-dev@lankhorst.se>
References: <20251104083634.670753-1-dev@lankhorst.se>
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

finish_wait() may take a lock, which means that it can take any amount
of time. On PREEMPT-RT we should not be taking any lock after disabling
preemption, so ensure that the completion is done before disabling
interrupts.

This also has the benefit of making vblank evasion more deterministic,
by performing the final vblank check after all locking is done.

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/i915/display/intel_vblank.c | 35 ++++++++++-----------
 1 file changed, 17 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 2b106ffa3f5f5..3628d2a1b8f38 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -708,6 +708,13 @@ void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
 		evade->min -= vblank_delay;
 }
 
+static inline int vblank_evadable(struct intel_vblank_evade_ctx *evade, int *scanline)
+{
+	*scanline = intel_get_crtc_scanline(evade->crtc);
+
+	return *scanline < evade->min || *scanline > evade->max;
+}
+
 /* must be called with vblank interrupt already enabled! */
 int intel_vblank_evade(struct intel_vblank_evade_ctx *evade)
 {
@@ -715,23 +722,22 @@ int intel_vblank_evade(struct intel_vblank_evade_ctx *evade)
 	struct intel_display *display = to_intel_display(crtc);
 	long timeout = msecs_to_jiffies_timeout(1);
 	wait_queue_head_t *wq = drm_crtc_vblank_waitqueue(&crtc->base);
-	DEFINE_WAIT(wait);
 	int scanline;
 
 	if (evade->min <= 0 || evade->max <= 0)
 		return 0;
 
-	for (;;) {
-		/*
-		 * prepare_to_wait() has a memory barrier, which guarantees
-		 * other CPUs can see the task state update by the time we
-		 * read the scanline.
-		 */
-		prepare_to_wait(wq, &wait, TASK_UNINTERRUPTIBLE);
+	while (!vblank_evadable(evade, &scanline)) {
+		local_irq_enable();
 
-		scanline = intel_get_crtc_scanline(crtc);
-		if (scanline < evade->min || scanline > evade->max)
-			break;
+		DEFINE_WAIT(wait);
+		while (!vblank_evadable(evade, &scanline) && timeout > 0) {
+			prepare_to_wait(wq, &wait, TASK_UNINTERRUPTIBLE);
+			timeout = schedule_timeout(timeout);
+		}
+		finish_wait(wq, &wait);
+
+		local_irq_disable();
 
 		if (!timeout) {
 			drm_dbg_kms(display->drm,
@@ -740,15 +746,8 @@ int intel_vblank_evade(struct intel_vblank_evade_ctx *evade)
 			break;
 		}
 
-		local_irq_enable();
-
-		timeout = schedule_timeout(timeout);
-
-		local_irq_disable();
 	}
 
-	finish_wait(wq, &wait);
-
 	/*
 	 * On VLV/CHV DSI the scanline counter would appear to
 	 * increment approx. 1/3 of a scanline before start of vblank.
-- 
2.51.0

