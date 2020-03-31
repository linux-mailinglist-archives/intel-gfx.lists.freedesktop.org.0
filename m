Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6261995F2
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 14:05:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86B856E829;
	Tue, 31 Mar 2020 12:05:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52A866E829
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 12:05:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20751516-1500050 
 for multiple; Tue, 31 Mar 2020 13:05:03 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Mar 2020 13:05:02 +0100
Message-Id: <20200331120502.14713-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Include a few tracek for
 timeslicing
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

Add a few telltales to see when timeslicing is being enabled.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c   | 20 +++++++++++++++++---
 drivers/gpu/drm/i915/i915_scheduler.c |  6 ++++++
 2 files changed, 23 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 744737e57d1d..55bf3cdf3b38 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1814,16 +1814,25 @@ active_timeslice(const struct intel_engine_cs *engine)
 
 static void set_timeslice(struct intel_engine_cs *engine)
 {
+	unsigned long duration;
+
 	if (!intel_engine_has_timeslices(engine))
 		return;
 
-	set_timer_ms(&engine->execlists.timer, active_timeslice(engine));
+	duration = active_timeslice(engine);
+	ENGINE_TRACE(engine, "bump timeslicing, interval:%lu", duration);
+
+	set_timer_ms(&engine->execlists.timer, duration);
 }
 
 static void start_timeslice(struct intel_engine_cs *engine)
 {
 	struct intel_engine_execlists *execlists = &engine->execlists;
-	int prio = queue_prio(execlists);
+	const int prio = queue_prio(execlists);
+	unsigned long duration;
+
+	if (!intel_engine_has_timeslices(engine))
+		return;
 
 	WRITE_ONCE(execlists->switch_priority_hint, prio);
 	if (prio == INT_MIN)
@@ -1832,7 +1841,12 @@ static void start_timeslice(struct intel_engine_cs *engine)
 	if (timer_pending(&execlists->timer))
 		return;
 
-	set_timer_ms(&execlists->timer, timeslice(engine));
+	duration = timeslice(engine);
+	ENGINE_TRACE(engine,
+		     "start timeslicing, prio:%d, interval:%lu",
+		     prio, duration);
+
+	set_timer_ms(&execlists->timer, duration);
 }
 
 static void record_preemption(struct intel_engine_execlists *execlists)
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index 68b06a7ba667..065176cb0258 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -209,6 +209,12 @@ static void kick_submission(struct intel_engine_cs *engine,
 	if (!inflight)
 		goto unlock;
 
+	ENGINE_TRACE(engine,
+		     "bumping queue-priority-hint:%d for rq:%llx:%lld, inflight:%llx:%lld prio %d\n",
+		     prio,
+		     rq->fence.context, rq->fence.seqno,
+		     inflight->fence.context, inflight->fence.seqno,
+		     inflight->sched.attr.priority);
 	engine->execlists.queue_priority_hint = prio;
 
 	/*
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
