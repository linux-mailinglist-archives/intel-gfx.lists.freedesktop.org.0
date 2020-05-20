Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A13E1DBFD6
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 22:03:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC77D89C25;
	Wed, 20 May 2020 20:02:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 369DA89C25
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 May 2020 20:02:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21245487-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 May 2020 21:02:52 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 May 2020 21:02:52 +0100
Message-Id: <20200520200252.2808-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/gt: Trace the CS interrupt
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We have traces for the semaphore and the error, but not the far more
frequent CS interrupts. This is likely to be too much, but for the
purpose of live_unlite_preempt it may answer a question or two.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_gt_irq.c | 6 +++++-
 drivers/gpu/drm/i915/gt/intel_lrc.c    | 4 ++++
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
index 0cc7dd54f4f9..4291d55c5457 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
@@ -48,8 +48,12 @@ cs_irq_handler(struct intel_engine_cs *engine, u32 iir)
 			tasklet = true;
 	}
 
-	if (iir & GT_CONTEXT_SWITCH_INTERRUPT)
+	if (iir & GT_CONTEXT_SWITCH_INTERRUPT) {
+		ENGINE_TRACE(engine, "CS: %x %x\n",
+			     ENGINE_READ_FW(engine, RING_EXECLIST_STATUS_HI),
+			     ENGINE_READ_FW(engine, RING_EXECLIST_STATUS_LO));
 		tasklet = true;
+	}
 
 	if (iir & GT_RENDER_USER_INTERRUPT) {
 		intel_engine_signal_breadcrumbs(engine);
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index de5be57ed6d2..87103f19c91f 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -3105,6 +3105,10 @@ static void execlists_submission_tasklet(unsigned long data)
 	struct intel_engine_cs * const engine = (struct intel_engine_cs *)data;
 	bool timeout = preempt_timeout(engine);
 
+	ENGINE_TRACE(engine, "head:%d, tail:%d\n",
+		     engine->execlists.csb_head,
+		     READ_ONCE(*engine->execlists.csb_write));
+
 	process_csb(engine);
 
 	if (unlikely(READ_ONCE(engine->execlists.error_interrupt))) {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
