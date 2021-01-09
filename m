Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF852F01B9
	for <lists+intel-gfx@lfdr.de>; Sat,  9 Jan 2021 17:35:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC33289F8B;
	Sat,  9 Jan 2021 16:35:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B57D589E36
 for <intel-gfx@lists.freedesktop.org>; Sat,  9 Jan 2021 16:35:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23547979-1500050 
 for <intel-gfx@lists.freedesktop.org>; Sat, 09 Jan 2021 16:34:56 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  9 Jan 2021 16:34:55 +0000
Message-Id: <20210109163455.28466-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210109163455.28466-1-chris@chris-wilson.co.uk>
References: <20210109163455.28466-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/3] drm/i915: Refactor marking a request as EIO
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

When wedging the device, we cancel all outstanding requests and mark
them as EIO. Rather than duplicate the small function to do so between
each submission backend, export one.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Andi Shyti <andi.shyti@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@intel.com>
---
 .../drm/i915/gt/intel_execlists_submission.c  | 19 ++++---------------
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  6 ++----
 drivers/gpu/drm/i915/gt/mock_engine.c         | 15 ++-------------
 drivers/gpu/drm/i915/i915_request.c           | 11 +++++++++++
 drivers/gpu/drm/i915/i915_request.h           |  3 ++-
 5 files changed, 21 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 4d7ac81303bb..52c1fe62bdfe 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -203,17 +203,6 @@ static struct virtual_engine *to_virtual_engine(struct intel_engine_cs *engine)
 	return container_of(engine, struct virtual_engine, base);
 }
 
-static void mark_eio(struct i915_request *rq)
-{
-	if (__i915_request_is_complete(rq))
-		return;
-
-	GEM_BUG_ON(i915_request_signaled(rq));
-
-	i915_request_set_error_once(rq, -EIO);
-	i915_request_mark_complete(rq);
-}
-
 static struct i915_request *
 __active_request(const struct intel_timeline * const tl,
 		 struct i915_request *rq,
@@ -2996,7 +2985,7 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 
 	/* Mark all executing requests as skipped. */
 	list_for_each_entry(rq, &engine->active.requests, sched.link)
-		mark_eio(rq);
+		i915_request_mark_eio(rq);
 	intel_engine_signal_breadcrumbs(engine);
 
 	/* Flush the queued requests to the timeline list (for retiring). */
@@ -3005,7 +2994,7 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 		int i;
 
 		priolist_for_each_request_consume(rq, rn, p, i) {
-			mark_eio(rq);
+			i915_request_mark_eio(rq);
 			__i915_request_submit(rq);
 		}
 
@@ -3015,7 +3004,7 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 
 	/* On-hold requests will be flushed to timeline upon their release */
 	list_for_each_entry(rq, &engine->active.hold, sched.link)
-		mark_eio(rq);
+		i915_request_mark_eio(rq);
 
 	/* Cancel all attached virtual engines */
 	while ((rb = rb_first_cached(&execlists->virtual))) {
@@ -3028,7 +3017,7 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 		spin_lock(&ve->base.active.lock);
 		rq = fetch_and_zero(&ve->request);
 		if (rq) {
-			mark_eio(rq);
+			i915_request_mark_eio(rq);
 
 			rq->engine = engine;
 			__i915_request_submit(rq);
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 4ea741f488a8..1c6d421f6fe5 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -473,10 +473,8 @@ static void reset_cancel(struct intel_engine_cs *engine)
 	spin_lock_irqsave(&engine->active.lock, flags);
 
 	/* Mark all submitted requests as skipped. */
-	list_for_each_entry(request, &engine->active.requests, sched.link) {
-		i915_request_set_error_once(request, -EIO);
-		i915_request_mark_complete(request);
-	}
+	list_for_each_entry(request, &engine->active.requests, sched.link)
+		i915_request_mark_eio(request);
 	intel_engine_signal_breadcrumbs(engine);
 
 	/* Remaining _unready_ requests will be nop'ed when submitted */
diff --git a/drivers/gpu/drm/i915/gt/mock_engine.c b/drivers/gpu/drm/i915/gt/mock_engine.c
index 2f830017c51d..4b4f03b70df7 100644
--- a/drivers/gpu/drm/i915/gt/mock_engine.c
+++ b/drivers/gpu/drm/i915/gt/mock_engine.c
@@ -245,17 +245,6 @@ static void mock_reset_rewind(struct intel_engine_cs *engine, bool stalled)
 	GEM_BUG_ON(stalled);
 }
 
-static void mark_eio(struct i915_request *rq)
-{
-	if (i915_request_completed(rq))
-		return;
-
-	GEM_BUG_ON(i915_request_signaled(rq));
-
-	i915_request_set_error_once(rq, -EIO);
-	i915_request_mark_complete(rq);
-}
-
 static void mock_reset_cancel(struct intel_engine_cs *engine)
 {
 	struct mock_engine *mock =
@@ -269,12 +258,12 @@ static void mock_reset_cancel(struct intel_engine_cs *engine)
 
 	/* Mark all submitted requests as skipped. */
 	list_for_each_entry(rq, &engine->active.requests, sched.link)
-		mark_eio(rq);
+		i915_request_mark_eio(rq);
 	intel_engine_signal_breadcrumbs(engine);
 
 	/* Cancel and submit all pending requests. */
 	list_for_each_entry(rq, &mock->hw_queue, mock.link) {
-		mark_eio(rq);
+		i915_request_mark_eio(rq);
 		__i915_request_submit(rq);
 	}
 	INIT_LIST_HEAD(&mock->hw_queue);
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index bfd82d8259f4..0b1a46a0d866 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -515,6 +515,17 @@ void i915_request_set_error_once(struct i915_request *rq, int error)
 	} while (!try_cmpxchg(&rq->fence.error, &old, error));
 }
 
+void i915_request_mark_eio(struct i915_request *rq)
+{
+	if (__i915_request_is_complete(rq))
+		return;
+
+	GEM_BUG_ON(i915_request_signaled(rq));
+
+	i915_request_set_error_once(rq, -EIO);
+	i915_request_mark_complete(rq);
+}
+
 bool __i915_request_submit(struct i915_request *request)
 {
 	struct intel_engine_cs *engine = request->engine;
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index a8c413203f72..1bfe214a47e9 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -309,8 +309,9 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp);
 struct i915_request * __must_check
 i915_request_create(struct intel_context *ce);
 
-void i915_request_set_error_once(struct i915_request *rq, int error);
 void __i915_request_skip(struct i915_request *rq);
+void i915_request_set_error_once(struct i915_request *rq, int error);
+void i915_request_mark_eio(struct i915_request *rq);
 
 struct i915_request *__i915_request_commit(struct i915_request *request);
 void __i915_request_queue(struct i915_request *rq,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
