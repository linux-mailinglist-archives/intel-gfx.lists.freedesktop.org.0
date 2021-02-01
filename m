Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D88730A3DC
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 09:58:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A45956E542;
	Mon,  1 Feb 2021 08:57:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30AB66E4AD
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 08:57:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23757717-1500050 
 for multiple; Mon, 01 Feb 2021 08:57:16 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Feb 2021 08:56:22 +0000
Message-Id: <20210201085715.27435-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210201085715.27435-1-chris@chris-wilson.co.uk>
References: <20210201085715.27435-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/57] drm/i915: Protect against request freeing
 during cancellation on wedging
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

As soon as we mark a request as completed, it may be retired. So when
cancelling a request and marking it complete, make sure we first keep a
reference to the request.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../drm/i915/gt/intel_execlists_submission.c  | 19 +++++++++++--------
 drivers/gpu/drm/i915/gt/intel_reset.c         | 15 ++++++---------
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  2 +-
 drivers/gpu/drm/i915/gt/mock_engine.c         |  8 +++++---
 drivers/gpu/drm/i915/i915_request.c           |  9 +++++++--
 drivers/gpu/drm/i915/i915_request.h           |  2 +-
 6 files changed, 31 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index e7593df6777d..45a8ac152b88 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -2976,7 +2976,7 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 
 	/* Mark all executing requests as skipped. */
 	list_for_each_entry(rq, &engine->active.requests, sched.link)
-		i915_request_mark_eio(rq);
+		i915_request_put(i915_request_mark_eio(rq));
 	intel_engine_signal_breadcrumbs(engine);
 
 	/* Flush the queued requests to the timeline list (for retiring). */
@@ -2984,8 +2984,10 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 		struct i915_priolist *p = to_priolist(rb);
 
 		priolist_for_each_request_consume(rq, rn, p) {
-			i915_request_mark_eio(rq);
-			__i915_request_submit(rq);
+			if (i915_request_mark_eio(rq)) {
+				__i915_request_submit(rq);
+				i915_request_put(rq);
+			}
 		}
 
 		rb_erase_cached(&p->node, &execlists->queue);
@@ -2994,7 +2996,7 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 
 	/* On-hold requests will be flushed to timeline upon their release */
 	list_for_each_entry(rq, &engine->active.hold, sched.link)
-		i915_request_mark_eio(rq);
+		i915_request_put(i915_request_mark_eio(rq));
 
 	/* Cancel all attached virtual engines */
 	while ((rb = rb_first_cached(&execlists->virtual))) {
@@ -3007,10 +3009,11 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 		spin_lock(&ve->base.active.lock);
 		rq = fetch_and_zero(&ve->request);
 		if (rq) {
-			i915_request_mark_eio(rq);
-
-			rq->engine = engine;
-			__i915_request_submit(rq);
+			if (i915_request_mark_eio(rq)) {
+				rq->engine = engine;
+				__i915_request_submit(rq);
+				i915_request_put(rq);
+			}
 			i915_request_put(rq);
 
 			ve->base.execlists.queue_priority_hint = INT_MIN;
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 107430e1e864..a82c4d7b23bc 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -786,18 +786,15 @@ static void reset_finish(struct intel_gt *gt, intel_engine_mask_t awake)
 
 static void nop_submit_request(struct i915_request *request)
 {
-	struct intel_engine_cs *engine = request->engine;
-	unsigned long flags;
-
 	RQ_TRACE(request, "-EIO\n");
-	i915_request_set_error_once(request, -EIO);
 
-	spin_lock_irqsave(&engine->active.lock, flags);
-	__i915_request_submit(request);
-	i915_request_mark_complete(request);
-	spin_unlock_irqrestore(&engine->active.lock, flags);
+	request = i915_request_mark_eio(request);
+	if (request) {
+		i915_request_submit(request);
+		intel_engine_signal_breadcrumbs(request->engine);
 
-	intel_engine_signal_breadcrumbs(engine);
+		i915_request_put(request);
+	}
 }
 
 static void __intel_gt_set_wedged(struct intel_gt *gt)
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 8b7cc637c432..9c2c605d7a92 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -400,7 +400,7 @@ static void reset_cancel(struct intel_engine_cs *engine)
 
 	/* Mark all submitted requests as skipped. */
 	list_for_each_entry(request, &engine->active.requests, sched.link)
-		i915_request_mark_eio(request);
+		i915_request_put(i915_request_mark_eio(request));
 	intel_engine_signal_breadcrumbs(engine);
 
 	/* Remaining _unready_ requests will be nop'ed when submitted */
diff --git a/drivers/gpu/drm/i915/gt/mock_engine.c b/drivers/gpu/drm/i915/gt/mock_engine.c
index df7c1b1acc32..cf1269e74998 100644
--- a/drivers/gpu/drm/i915/gt/mock_engine.c
+++ b/drivers/gpu/drm/i915/gt/mock_engine.c
@@ -239,13 +239,15 @@ static void mock_reset_cancel(struct intel_engine_cs *engine)
 
 	/* Mark all submitted requests as skipped. */
 	list_for_each_entry(rq, &engine->active.requests, sched.link)
-		i915_request_mark_eio(rq);
+		i915_request_put(i915_request_mark_eio(rq));
 	intel_engine_signal_breadcrumbs(engine);
 
 	/* Cancel and submit all pending requests. */
 	list_for_each_entry(rq, &mock->hw_queue, mock.link) {
-		i915_request_mark_eio(rq);
-		__i915_request_submit(rq);
+		if (i915_request_mark_eio(rq)) {
+			__i915_request_submit(rq);
+			i915_request_put(rq);
+		}
 	}
 	INIT_LIST_HEAD(&mock->hw_queue);
 
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index d66981b083cd..a336d6c40d8b 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -514,15 +514,20 @@ void i915_request_set_error_once(struct i915_request *rq, int error)
 	} while (!try_cmpxchg(&rq->fence.error, &old, error));
 }
 
-void i915_request_mark_eio(struct i915_request *rq)
+struct i915_request *i915_request_mark_eio(struct i915_request *rq)
 {
 	if (__i915_request_is_complete(rq))
-		return;
+		return NULL;
 
 	GEM_BUG_ON(i915_request_signaled(rq));
 
+	/* As soon as the request is completed, it may be retired */
+	rq = i915_request_get(rq);
+
 	i915_request_set_error_once(rq, -EIO);
 	i915_request_mark_complete(rq);
+
+	return rq;
 }
 
 bool __i915_request_submit(struct i915_request *request)
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index 1bfe214a47e9..c0bd4cb8786a 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -311,7 +311,7 @@ i915_request_create(struct intel_context *ce);
 
 void __i915_request_skip(struct i915_request *rq);
 void i915_request_set_error_once(struct i915_request *rq, int error);
-void i915_request_mark_eio(struct i915_request *rq);
+struct i915_request *i915_request_mark_eio(struct i915_request *rq);
 
 struct i915_request *__i915_request_commit(struct i915_request *request);
 void __i915_request_queue(struct i915_request *rq,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
