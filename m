Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D621802B2
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 17:02:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C1356E88F;
	Tue, 10 Mar 2020 16:02:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 530786E88F
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 16:02:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20511678-1500050 
 for multiple; Tue, 10 Mar 2020 16:02:07 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Mar 2020 16:02:07 +0000
Message-Id: <20200310160207.9286-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200310154309.3759-1-chris@chris-wilson.co.uk>
References: <20200310154309.3759-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3] drm/i915/execlists: Track active elements
 during dequeue
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

Record the initial active element we use when building the next ELSP
submission, so that we can compare against it latter to see if there's
no change.

Fixes: 44d0a9c05bc0 ("drm/i915/execlists: Skip redundant resubmission")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 32 +++++++++++------------------
 1 file changed, 12 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 0604b11a2842..cc19f1a23baf 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1678,17 +1678,6 @@ static void virtual_xfer_breadcrumbs(struct virtual_engine *ve,
 	spin_unlock(&old->breadcrumbs.irq_lock);
 }
 
-static struct i915_request *
-last_active(const struct intel_engine_execlists *execlists)
-{
-	struct i915_request * const *last = READ_ONCE(execlists->active);
-
-	while (*last && i915_request_completed(*last))
-		last++;
-
-	return *last;
-}
-
 #define for_each_waiter(p__, rq__) \
 	list_for_each_entry_lockless(p__, \
 				     &(rq__)->sched.waiters_list, \
@@ -1827,11 +1816,9 @@ static void record_preemption(struct intel_engine_execlists *execlists)
 	(void)I915_SELFTEST_ONLY(execlists->preempt_hang.count++);
 }
 
-static unsigned long active_preempt_timeout(struct intel_engine_cs *engine)
+static unsigned long active_preempt_timeout(struct intel_engine_cs *engine,
+					    const struct i915_request *rq)
 {
-	struct i915_request *rq;
-
-	rq = last_active(&engine->execlists);
 	if (!rq)
 		return 0;
 
@@ -1842,13 +1829,14 @@ static unsigned long active_preempt_timeout(struct intel_engine_cs *engine)
 	return READ_ONCE(engine->props.preempt_timeout_ms);
 }
 
-static void set_preempt_timeout(struct intel_engine_cs *engine)
+static void set_preempt_timeout(struct intel_engine_cs *engine,
+				const struct i915_request *rq)
 {
 	if (!intel_engine_has_preempt_reset(engine))
 		return;
 
 	set_timer_ms(&engine->execlists.preempt,
-		     active_preempt_timeout(engine));
+		     active_preempt_timeout(engine, rq));
 }
 
 static inline void clear_ports(struct i915_request **ports, int count)
@@ -1861,6 +1849,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	struct intel_engine_execlists * const execlists = &engine->execlists;
 	struct i915_request **port = execlists->pending;
 	struct i915_request ** const last_port = port + execlists->port_mask;
+	struct i915_request * const *active;
 	struct i915_request *last;
 	struct rb_node *rb;
 	bool submit = false;
@@ -1915,7 +1904,10 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	 * i.e. we will retrigger preemption following the ack in case
 	 * of trouble.
 	 */
-	last = last_active(execlists);
+	active = READ_ONCE(execlists->active);
+	while ((last = *active) && i915_request_completed(last))
+		active++;
+
 	if (last) {
 		if (need_preempt(engine, last, rb)) {
 			ENGINE_TRACE(engine,
@@ -2200,7 +2192,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 		 * Skip if we ended up with exactly the same set of requests,
 		 * e.g. trying to timeslice a pair of ordered contexts
 		 */
-		if (!memcmp(execlists->active, execlists->pending,
+		if (!memcmp(active, execlists->pending,
 			    (port - execlists->pending + 1) * sizeof(*port))) {
 			do
 				execlists_schedule_out(fetch_and_zero(port));
@@ -2211,7 +2203,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 		clear_ports(port + 1, last_port - port);
 
 		execlists_submit_ports(engine);
-		set_preempt_timeout(engine);
+		set_preempt_timeout(engine, *active);
 	} else {
 skip_submit:
 		ring_set_paused(engine, 0);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
