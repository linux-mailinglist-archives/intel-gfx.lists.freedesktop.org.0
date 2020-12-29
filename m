Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E372E7041
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Dec 2020 13:02:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7983C8914E;
	Tue, 29 Dec 2020 12:02:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EFFA89023
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Dec 2020 12:02:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23455151-1500050 
 for multiple; Tue, 29 Dec 2020 12:01:46 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Dec 2020 12:00:51 +0000
Message-Id: <20201229120145.26045-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201229120145.26045-1-chris@chris-wilson.co.uk>
References: <20201229120145.26045-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/56] drm/i915/gt: Only retire on the last
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We use the completion of the last active breadcrumb to retire the
requests along a timeline. This is purely opportunistic as nothing
guarantees that any particular timeline is terminated by a breadcrumb;
except for the parking the engine. We explicitly add a breadcrumb to
parking the engine so that we park quickly and do an explicit retire
upon signaling to reduce the latency dramatically.

With scheduling, we anticipate retiring completed timelines as a matter
of course. Performing the same action from inside the breadcrumbs is
intended to provide similar functionality for legacy ringbuffer
submission.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index 2eabb9ab5d47..d78fdfa91cd7 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -257,17 +257,19 @@ static void signal_irq_work(struct irq_work *work)
 			list_del_rcu(&rq->signal_link);
 			release = remove_signaling_context(b, ce);
 			spin_unlock(&ce->signal_lock);
+			if (release) {
+				if (list_is_last_rcu(&rq->link,
+						     &ce->timeline->requests))
+					add_retire(b, ce->timeline);
+
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
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
