Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 793DA1D8B83
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 01:14:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE2836E4AF;
	Mon, 18 May 2020 23:14:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 791FA6E4A7
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 23:14:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21236095-1500050 
 for multiple; Tue, 19 May 2020 00:14:08 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 May 2020 00:14:04 +0100
Message-Id: <20200518231407.6837-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Don't set queue-priority hint
 when supressing the reschedule
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

We recorded the execlists->queue_priority_hint update for the inflight
request without kicking the tasklet. The next submitted request then
failed to be scheduled as it had a lower priority than the hint, leaving
the HW runnning with only the inflight request.

Fixes: 6cebcf746f3f ("drm/i915: Tweak scheduler's kick_submission()")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_scheduler.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index f4ea318781f0..cbb880b10c65 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -209,14 +209,6 @@ static void kick_submission(struct intel_engine_cs *engine,
 	if (!inflight)
 		goto unlock;
 
-	ENGINE_TRACE(engine,
-		     "bumping queue-priority-hint:%d for rq:%llx:%lld, inflight:%llx:%lld prio %d\n",
-		     prio,
-		     rq->fence.context, rq->fence.seqno,
-		     inflight->fence.context, inflight->fence.seqno,
-		     inflight->sched.attr.priority);
-	engine->execlists.queue_priority_hint = prio;
-
 	/*
 	 * If we are already the currently executing context, don't
 	 * bother evaluating if we should preempt ourselves.
@@ -224,6 +216,14 @@ static void kick_submission(struct intel_engine_cs *engine,
 	if (inflight->context == rq->context)
 		goto unlock;
 
+	ENGINE_TRACE(engine,
+		     "bumping queue-priority-hint:%d for rq:%llx:%lld, inflight:%llx:%lld prio %d\n",
+		     prio,
+		     rq->fence.context, rq->fence.seqno,
+		     inflight->fence.context, inflight->fence.seqno,
+		     inflight->sched.attr.priority);
+
+	engine->execlists.queue_priority_hint = prio;
 	if (need_preempt(prio, rq_prio(inflight)))
 		tasklet_hi_schedule(&engine->execlists.tasklet);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
