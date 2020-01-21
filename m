Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA32143C4F
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 12:51:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 462D96EC91;
	Tue, 21 Jan 2020 11:51:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82BA56EC8B
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2020 11:51:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19957161-1500050 
 for multiple; Tue, 21 Jan 2020 11:50:54 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Jan 2020 11:50:53 +0000
Message-Id: <20200121115053.217888-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200121100927.114886-1-chris@chris-wilson.co.uk>
References: <20200121100927.114886-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Reclaim the hanging virtual
 request
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

If we encounter a hang on a virtual engine, as we process the hang the
request may already have been moved back to the virtual engine (we are
processing the hang on the physical engine). We need to reclaim the
request from the virtual engine so that the locking is consistent and
local to the real engine on which we will hold the request for error
state capturing.

v2: Pull the reclamation into execlists_hold() and assert that cannot be
called from outside of the reset (i.e. with the tasklet disabled).

Fixes: 748317386afb ("drm/i915/execlists: Offline error capture")
Testcase: igt/gem_exec_balancer/hang
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 3a30767ff0c4..11dfee4fe9ea 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2396,6 +2396,35 @@ static void __execlists_hold(struct i915_request *rq)
 static void execlists_hold(struct intel_engine_cs *engine,
 			   struct i915_request *rq)
 {
+	if (rq->engine != engine) { /* preempted virtual engine */
+		struct virtual_engine *ve = to_virtual_engine(rq->engine);
+		unsigned long flags;
+
+		/*
+		 * intel_context_inflight() is only protected by virtue
+		 * of process_csb() being called only by the tasklet (or
+		 * directly from inside reset while the tasklet is suspended).
+		 * Assert that neither of those are allowed to run while we
+		 * poke at the request queues.
+		 */
+		GEM_BUG_ON(!reset_in_progress(&engine->execlists));
+
+		/*
+		 * An unsubmitted request along a virtual engine will
+		 * remain on the active (this) engine until we are able
+		 * to process the context switch away (and so mark the
+		 * context as no longer in flight). That cannot have happened
+		 * yet, otherwise we would not be hanging!
+		 */
+		spin_lock_irqsave(&ve->base.active.lock, flags);
+		GEM_BUG_ON(intel_context_inflight(rq->context) != engine);
+		GEM_BUG_ON(ve->request != rq);
+		ve->request = NULL;
+		spin_unlock_irqrestore(&ve->base.active.lock, flags);
+
+		rq->engine = engine;
+	}
+
 	spin_lock_irq(&engine->active.lock);
 
 	/*
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
