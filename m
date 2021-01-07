Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B142EE83C
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jan 2021 23:17:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 987486E558;
	Thu,  7 Jan 2021 22:17:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9A3F6E554
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Jan 2021 22:17:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23532724-1500050 
 for multiple; Thu, 07 Jan 2021 22:17:26 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 Jan 2021 22:17:22 +0000
Message-Id: <20210107221724.10036-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210107221724.10036-1-chris@chris-wilson.co.uk>
References: <20210107221724.10036-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/5] drm/i915/gt: Only retire on the last
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
index 7137b6f24f55..6996e22ba65b 100644
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
