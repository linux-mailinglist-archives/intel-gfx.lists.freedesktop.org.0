Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E0D2E7063
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Dec 2020 13:03:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5013F89715;
	Tue, 29 Dec 2020 12:03:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B605892EF
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Dec 2020 12:02:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23455152-1500050 
 for multiple; Tue, 29 Dec 2020 12:01:46 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Dec 2020 12:00:52 +0000
Message-Id: <20201229120145.26045-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201229120145.26045-1-chris@chris-wilson.co.uk>
References: <20201229120145.26045-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/56] drm/i915/gt: Cancel submitted requests
 upon context reset
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

Since we process schedule-in of a context after submitting the request,
if we decide to reset the context at that time, we also have to cancel
the requets we have marked for submission.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../drm/i915/gt/intel_execlists_submission.c  | 22 ++++++++++++++-----
 drivers/gpu/drm/i915/i915_request.c           |  2 ++
 2 files changed, 18 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index b79365b5159a..18b23a332835 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -215,22 +215,32 @@ static void mark_eio(struct i915_request *rq)
 }
 
 static struct i915_request *
-active_request(const struct intel_timeline * const tl, struct i915_request *rq)
+__active_request(const struct intel_timeline * const tl,
+		 struct i915_request *rq,
+		 int error)
 {
 	struct i915_request *active = rq;
 
-	rcu_read_lock();
-	list_for_each_entry_continue_reverse(rq, &tl->requests, link) {
+	list_for_each_entry_from_reverse(rq, &tl->requests, link) {
 		if (__i915_request_is_complete(rq))
 			break;
 
+		if (error) {
+			i915_request_set_error_once(rq, error);
+			__i915_request_skip(rq);
+		}
 		active = rq;
 	}
-	rcu_read_unlock();
 
 	return active;
 }
 
+static struct i915_request *
+active_request(const struct intel_timeline * const tl, struct i915_request *rq)
+{
+	return __active_request(tl, rq, 0);
+}
+
 static inline void
 ring_set_paused(const struct intel_engine_cs *engine, int state)
 {
@@ -487,14 +497,14 @@ static void reset_active(struct i915_request *rq,
 	 * remain correctly ordered. And we defer to __i915_request_submit()
 	 * so that all asynchronous waits are correctly handled.
 	 */
-	ENGINE_TRACE(engine, "{ rq=%llx:%lld }\n",
+	ENGINE_TRACE(engine, "{ reset rq=%llx:%lld }\n",
 		     rq->fence.context, rq->fence.seqno);
 
 	/* On resubmission of the active request, payload will be scrubbed */
 	if (__i915_request_is_complete(rq))
 		head = rq->tail;
 	else
-		head = active_request(ce->timeline, rq)->head;
+		head = __active_request(ce->timeline, rq, -EIO)->head;
 	head = intel_ring_wrap(ce->ring, head);
 
 	/* Scrub the context image to prevent replaying the previous batch */
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index de434697dccd..03ac6eead4db 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -490,6 +490,8 @@ void __i915_request_skip(struct i915_request *rq)
 	if (rq->infix == rq->postfix)
 		return;
 
+	RQ_TRACE(rq, "error: %d\n", rq->fence.error);
+
 	/*
 	 * As this request likely depends on state from the lost
 	 * context, clear out all the user operations leaving the
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
