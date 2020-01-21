Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73403143A89
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 11:10:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD4C16EC37;
	Tue, 21 Jan 2020 10:09:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3277A6EC35
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2020 10:09:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19955685-1500050 
 for multiple; Tue, 21 Jan 2020 10:09:29 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Jan 2020 10:09:27 +0000
Message-Id: <20200121100927.114886-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Reclaim hanging virtual
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

Fixes: 748317386afb ("drm/i915/execlists: Offline error capture")
Testcase: igt/gem_exec_balancer/hang
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 3a30767ff0c4..a0acf1898c1e 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2582,6 +2582,26 @@ static void execlists_capture(struct intel_engine_cs *engine)
 	cap->rq = active_request(cap->rq->context->timeline, cap->rq);
 	GEM_BUG_ON(!cap->rq);
 
+	if (cap->rq->engine != engine) { /* preempted virtual engine */
+		struct virtual_engine *ve = to_virtual_engine(cap->rq->engine);
+		unsigned long flags;
+
+		/*
+		 * An unsubmitted request along a virtual engine will
+		 * remain on the active (this) engine until we are able
+		 * to process the context switch away (and so mark the
+		 * context as no longer in flight). That cannot have happened
+		 * yet, otherwise we would not be hanging!
+		 */
+		spin_lock_irqsave(&ve->base.active.lock, flags);
+		GEM_BUG_ON(intel_context_inflight(cap->rq->context) != engine);
+		GEM_BUG_ON(ve->request != cap->rq);
+		ve->request = NULL;
+		spin_unlock_irqrestore(&ve->base.active.lock, flags);
+
+		cap->rq->engine = engine;
+	}
+
 	/*
 	 * Remove the request from the execlists queue, and take ownership
 	 * of the request. We pass it to our worker who will _slowly_ compress
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
