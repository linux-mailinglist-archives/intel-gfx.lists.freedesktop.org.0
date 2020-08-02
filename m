Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD8B9235939
	for <lists+intel-gfx@lfdr.de>; Sun,  2 Aug 2020 18:44:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFE596E1D5;
	Sun,  2 Aug 2020 16:44:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1EAD6E1A4
 for <intel-gfx@lists.freedesktop.org>; Sun,  2 Aug 2020 16:44:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22010440-1500050 
 for multiple; Sun, 02 Aug 2020 17:44:17 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  2 Aug 2020 17:43:51 +0100
Message-Id: <20200802164412.2738-22-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200802164412.2738-1-chris@chris-wilson.co.uk>
References: <20200802164412.2738-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 21/42] drm/i915/gt: Simplify virtual engine
 handling for execlists_hold()
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

Now that the tasklet completely controls scheduling of the requests, and
we postpone scheduling out the old requests, we can keep a hanging
virtual request bound to the engine on which it hung, and remove it from
te queue. On release, it will be returned to the same engine and remain
in its queue until it is scheduled; after which point it will become
eligible for transfer to a sibling. Instead, we could opt to resubmit the
request along the virtual engine on unhold, making it eligible for load
balancing immediately -- but that seems like a pointless optimisation
for a hanging context.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 29 -----------------------------
 1 file changed, 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index d1a45d5e4225..0d072356cf21 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2780,35 +2780,6 @@ static bool execlists_hold(struct intel_engine_cs *engine,
 		goto unlock;
 	}
 
-	if (rq->engine != engine) { /* preempted virtual engine */
-		struct virtual_engine *ve = to_virtual_engine(rq->engine);
-
-		/*
-		 * intel_context_inflight() is only protected by virtue
-		 * of process_csb() being called only by the tasklet (or
-		 * directly from inside reset while the tasklet is suspended).
-		 * Assert that neither of those are allowed to run while we
-		 * poke at the request queues.
-		 */
-		GEM_BUG_ON(!reset_in_progress(&engine->execlists));
-
-		/*
-		 * An unsubmitted request along a virtual engine will
-		 * remain on the active (this) engine until we are able
-		 * to process the context switch away (and so mark the
-		 * context as no longer in flight). That cannot have happened
-		 * yet, otherwise we would not be hanging!
-		 */
-		spin_lock(&ve->base.active.lock);
-		GEM_BUG_ON(intel_context_inflight(rq->context) != engine);
-		GEM_BUG_ON(ve->request != rq);
-		ve->request = NULL;
-		spin_unlock(&ve->base.active.lock);
-		i915_request_put(rq);
-
-		rq->engine = engine;
-	}
-
 	/*
 	 * Transfer this request onto the hold queue to prevent it
 	 * being resumbitted to HW (and potentially completed) before we have
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
