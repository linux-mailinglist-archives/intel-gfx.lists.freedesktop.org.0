Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5F31DCCD9
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 14:29:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC8BB6E1F9;
	Thu, 21 May 2020 12:29:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2AB56E932
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2020 12:29:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21247661-1500050 
 for multiple; Thu, 21 May 2020 13:28:53 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 May 2020 13:28:51 +0100
Message-Id: <20200521122851.20256-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Immediately check for ACK after
 submission
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In an extreme case this may reduce the ACK latency by handling the
immediate HW response from a ready engine. That reduction in latency
should not actually impact any submission latency since on the direct
submit path we try and clear any pending interrupts first. On the
indirect reprioritisation or timeslicing paths, latency is not the
primary concern as the HW is still executing and will remain so until we
are able to preempt it (i.e. no reduction in effective pipeline stalls).

Still this may help mitigate the loss of softirq, which is a huge
concern.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/1874
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index de5be57ed6d2..df77ed2a0a53 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2528,7 +2528,7 @@ gen8_csb_parse(const struct intel_engine_execlists *execlists, const u32 *csb)
 	return *csb & (GEN8_CTX_STATUS_IDLE_ACTIVE | GEN8_CTX_STATUS_PREEMPTED);
 }
 
-static void process_csb(struct intel_engine_cs *engine)
+static bool process_csb(struct intel_engine_cs *engine)
 {
 	struct intel_engine_execlists * const execlists = &engine->execlists;
 	const u32 * const buf = execlists->csb_status;
@@ -2557,7 +2557,7 @@ static void process_csb(struct intel_engine_cs *engine)
 	head = execlists->csb_head;
 	tail = READ_ONCE(*execlists->csb_write);
 	if (unlikely(head == tail))
-		return;
+		return false;
 
 	/*
 	 * Hopefully paired with a wmb() in HW!
@@ -2692,6 +2692,7 @@ static void process_csb(struct intel_engine_cs *engine)
 	 * invalidation before.
 	 */
 	invalidate_csb_entries(&buf[0], &buf[num_entries - 1]);
+	return true;
 }
 
 static void __execlists_submission_tasklet(struct intel_engine_cs *const engine)
@@ -3116,9 +3117,11 @@ static void execlists_submission_tasklet(unsigned long data)
 	if (!READ_ONCE(engine->execlists.pending[0]) || timeout) {
 		unsigned long flags;
 
-		spin_lock_irqsave(&engine->active.lock, flags);
-		__execlists_submission_tasklet(engine);
-		spin_unlock_irqrestore(&engine->active.lock, flags);
+		do {
+			spin_lock_irqsave(&engine->active.lock, flags);
+			__execlists_submission_tasklet(engine);
+			spin_unlock_irqrestore(&engine->active.lock, flags);
+		} while (process_csb(engine));
 
 		/* Recheck after serialising with direct-submission */
 		if (unlikely(timeout && preempt_timeout(engine)))
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
