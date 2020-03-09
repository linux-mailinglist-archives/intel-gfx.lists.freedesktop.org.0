Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A01E17DE47
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Mar 2020 12:10:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E54236E409;
	Mon,  9 Mar 2020 11:10:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 962FB6E405
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Mar 2020 11:10:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20493826-1500050 
 for multiple; Mon, 09 Mar 2020 11:09:36 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Mar 2020 11:09:32 +0000
Message-Id: <20200309110934.868-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200309110934.868-1-chris@chris-wilson.co.uk>
References: <20200309110934.868-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/5] drm/i915/execlists: Track active elements
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
 drivers/gpu/drm/i915/gt/intel_lrc.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 6266ef2ae6a0..a9d77b0e4e27 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1674,16 +1674,21 @@ static void virtual_xfer_breadcrumbs(struct virtual_engine *ve,
 }
 
 static struct i915_request *
-last_active(const struct intel_engine_execlists *execlists)
+__last_active(const struct intel_engine_execlists *execlists,
+	      struct i915_request * const *last)
 {
-	struct i915_request * const *last = READ_ONCE(execlists->active);
-
 	while (*last && i915_request_completed(*last))
 		last++;
 
 	return *last;
 }
 
+static struct i915_request *
+last_active(const struct intel_engine_execlists *execlists)
+{
+	return __last_active(execlists, READ_ONCE(execlists->active));
+}
+
 #define for_each_waiter(p__, rq__) \
 	list_for_each_entry_lockless(p__, \
 				     &(rq__)->sched.waiters_list, \
@@ -1852,6 +1857,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	struct intel_engine_execlists * const execlists = &engine->execlists;
 	struct i915_request **port = execlists->pending;
 	struct i915_request ** const last_port = port + execlists->port_mask;
+	struct i915_request * const *active;
 	struct i915_request *last;
 	struct rb_node *rb;
 	bool submit = false;
@@ -1906,7 +1912,8 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	 * i.e. we will retrigger preemption following the ack in case
 	 * of trouble.
 	 */
-	last = last_active(execlists);
+	active = READ_ONCE(execlists->active);
+	last = __last_active(execlists, active);
 	if (last) {
 		if (need_preempt(engine, last, rb)) {
 			ENGINE_TRACE(engine,
@@ -2191,7 +2198,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 		 * Skip if we ended up with exactly the same set of requests,
 		 * e.g. trying to timeslice a pair of ordered contexts
 		 */
-		if (!memcmp(execlists->active, execlists->pending,
+		if (!memcmp(active, execlists->pending,
 			    (port - execlists->pending + 1) * sizeof(*port))) {
 			do
 				execlists_schedule_out(fetch_and_zero(port));
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
