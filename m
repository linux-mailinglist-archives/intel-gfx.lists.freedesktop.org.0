Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 368921E42D8
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 15:02:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4808C6E14D;
	Wed, 27 May 2020 13:02:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D98236E09E
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2020 13:02:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21309449-1500050 
 for multiple; Wed, 27 May 2020 14:02:15 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 May 2020 14:02:14 +0100
Message-Id: <20200527130214.1239-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Prevent timeslicing into
 unpreemptible requests
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

We have a I915_REQUEST_NOPREEMPT flag that we set when we must prevent
the HW from preempting during the course of this request. We need to
honour this flag and protect the HW even if we have a heartbeat request,
or other maximum priority barrier, pending. As such, restrict the
timeslicing check to avoid preempting into the topmost priority band,
leaving the unpreemptable requests in blissful peace running
uninterrupted on the HW.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index a8fdd4f9eb5a..cf63613c2a60 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1896,6 +1896,15 @@ static void defer_active(struct intel_engine_cs *engine)
 	defer_request(rq, i915_sched_lookup_priolist(engine, rq_prio(rq)));
 }
 
+static inline int never_timeslice(int prio)
+{
+	/* Don't allow timeslicing of the 'unpreemptible' requests */
+	if (prio == I915_PRIORITY_UNPREEMPTABLE)
+		prio--;
+
+	return prio;
+}
+
 static bool
 need_timeslice(const struct intel_engine_cs *engine,
 	       const struct i915_request *rq,
@@ -1927,6 +1936,7 @@ need_timeslice(const struct intel_engine_cs *engine,
 
 	if (!list_is_last(&rq->sched.link, &engine->active.requests))
 		hint = max(hint, rq_prio(list_next_entry(rq, sched.link)));
+	hint = never_timeslice(hint);
 
 	return hint >= effective_prio(rq);
 }
@@ -2007,6 +2017,7 @@ static void start_timeslice(struct intel_engine_cs *engine, int prio)
 	if (!intel_engine_has_timeslices(engine))
 		return;
 
+	prio = never_timeslice(prio);
 	WRITE_ONCE(execlists->switch_priority_hint, prio);
 	if (prio == INT_MIN)
 		return;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
