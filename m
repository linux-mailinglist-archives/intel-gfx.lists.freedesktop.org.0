Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB902EF96F
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 21:40:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12D016E8C6;
	Fri,  8 Jan 2021 20:40:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5184B6E811
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 20:40:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23542763-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 08 Jan 2021 20:40:27 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Jan 2021 20:40:24 +0000
Message-Id: <20210108204026.20682-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210108204026.20682-1-chris@chris-wilson.co.uk>
References: <20210108204026.20682-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 5/7] drm/i915/gt: Only retire on the last
 breadcrumb if the last request
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

We use the completion of the last active breadcrumb to retire the
requests along a timeline. This is purely opportunistic as nothing
guarantees that any particular timeline is terminated by a breadcrumb;
except for parking the engine where we explicitly add a breadcrumb so
that we park quickly and do an explicit retire upon signaling to reduce
the latency dramatically (avoiding a retire worker roundtrip).

With scheduling, we anticipate retiring completed timelines as a matter
of course. Performing the same action from inside the breadcrumbs is
intended to provide similar functionality for legacy ringbuffer
submission.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c          | 10 +++++-----
 drivers/gpu/drm/i915/gt/intel_execlists_submission.c |  2 +-
 drivers/gpu/drm/i915/gt/intel_timeline.h             |  7 +++++++
 3 files changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index 7137b6f24f55..be2c285a0ac7 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -257,17 +257,17 @@ static void signal_irq_work(struct irq_work *work)
 			list_del_rcu(&rq->signal_link);
 			release = remove_signaling_context(b, ce);
 			spin_unlock(&ce->signal_lock);
+			if (release) {
+				if (intel_timeline_is_last(ce->timeline, rq))
+					add_retire(b, ce->timeline);
+				intel_context_put(ce);
+			}
 
 			if (__dma_fence_signal(&rq->fence))
 				/* We own signal_node now, xfer to local list */
 				signal = slist_add(&rq->signal_node, signal);
 			else
 				i915_request_put(rq);
-
-			if (release) {
-				add_retire(b, ce->timeline);
-				intel_context_put(ce);
-			}
 		}
 	}
 	atomic_dec(&b->signaler_active);
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index eb69eef9d7db..aadd04f8dc9e 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -640,7 +640,7 @@ static inline void __execlists_schedule_out(struct i915_request *rq)
 	 * If we have just completed this context, the engine may now be
 	 * idle and we want to re-enter powersaving.
 	 */
-	if (list_is_last_rcu(&rq->link, &ce->timeline->requests) &&
+	if (intel_timeline_is_last(ce->timeline, rq) &&
 	    __i915_request_is_complete(rq))
 		intel_engine_add_retire(engine, ce->timeline);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.h b/drivers/gpu/drm/i915/gt/intel_timeline.h
index f502a619843f..dcdee692a80e 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline.h
+++ b/drivers/gpu/drm/i915/gt/intel_timeline.h
@@ -110,4 +110,11 @@ void intel_gt_show_timelines(struct intel_gt *gt,
 						  const char *prefix,
 						  int indent));
 
+static inline bool
+intel_timeline_is_last(const struct intel_timeline *tl,
+		       const struct i915_request *rq)
+{
+	return list_is_last_rcu(&rq->link, &tl->requests);
+}
+
 #endif
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
