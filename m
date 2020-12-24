Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BFBC22E2926
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Dec 2020 00:15:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D935896C7;
	Thu, 24 Dec 2020 23:14:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D06B6896C7
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Dec 2020 23:14:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23426412-1500050 
 for multiple; Thu, 24 Dec 2020 23:14:47 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Dec 2020 23:14:46 +0000
Message-Id: <20201224231446.6524-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201224230110.8057-1-chris@chris-wilson.co.uk>
References: <20201224230110.8057-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Cancel submitted requests upon
 context reset
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
 drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 8 ++++----
 drivers/gpu/drm/i915/i915_request.c                  | 2 ++
 2 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 1fae6c6f3868..fd7ac25605b2 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -219,14 +219,14 @@ active_request(const struct intel_timeline * const tl, struct i915_request *rq)
 {
 	struct i915_request *active = rq;
 
-	rcu_read_lock();
-	list_for_each_entry_continue_reverse(rq, &tl->requests, link) {
+	list_for_each_entry_from_reverse(rq, &tl->requests, link) {
 		if (__i915_request_is_complete(rq))
 			break;
 
+		i915_request_set_error_once(rq, -EIO);
+		__i915_request_skip(rq);
 		active = rq;
 	}
-	rcu_read_unlock();
 
 	return active;
 }
@@ -487,7 +487,7 @@ static void reset_active(struct i915_request *rq,
 	 * remain correctly ordered. And we defer to __i915_request_submit()
 	 * so that all asynchronous waits are correctly handled.
 	 */
-	ENGINE_TRACE(engine, "{ rq=%llx:%lld }\n",
+	ENGINE_TRACE(engine, "{ reset rq=%llx:%lld }\n",
 		     rq->fence.context, rq->fence.seqno);
 
 	/* On resubmission of the active request, payload will be scrubbed */
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 6578faf6eed8..ad3b6a4f424f 100644
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
