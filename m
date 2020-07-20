Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C64FC225B61
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jul 2020 11:23:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9DDE6E2C0;
	Mon, 20 Jul 2020 09:23:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E11326E26F
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jul 2020 09:23:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21870901-1500050 
 for multiple; Mon, 20 Jul 2020 10:23:15 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jul 2020 10:23:06 +0100
Message-Id: <20200720092312.16975-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200720092312.16975-1-chris@chris-wilson.co.uk>
References: <20200720092312.16975-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/10] drm/i915/gt: Only transfer the virtual
 context to the new engine if active
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
Cc: "Nayana, Venkata Ramana" <venkata.ramana.nayana@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

One more complication of preempt-to-busy with respect to the virtual
engine is that we may have retired the last request along the virtual
engine at the same time as preparing to submit the completed request to
a new engine. That submit will be shortcircuited, but not before we have
updated the context with the new register offsets and marked the virtual
engine as bound to the new engine (by calling swap on ve->siblings[]).
As we may have just retired the completed request, we may also be in the
middle of calling virtual_context_exit() to turn off the power management
associated with the virtual engine, and that in turn walks the
ve->siblings[]. If we happen to call swap() on the array as we walk, we
will call intel_engine_pm_put() twice on the same engine.

In this patch, we prevent this by only updating the bound engine after a
successful submission which weeds out the already completed requests.

Alternatively, we could walk a non-volatile array for the pm, such as
using the engine->mask. The small advantage to performing the update
after the submit is that we then only have to do a swap for active
requests.

Fixes: 22b7a426bbe1 ("drm/i915/execlists: Preempt-to-busy")
References: 6d06779e8672 ("drm/i915: Load balancing across a virtual engine"
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: "Nayana, Venkata Ramana" <venkata.ramana.nayana@intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 65 ++++++++++++++++++-----------
 1 file changed, 40 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 88a5c155154d..5e8278e8ac79 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1805,6 +1805,33 @@ static bool virtual_matches(const struct virtual_engine *ve,
 	return true;
 }
 
+static void virtual_xfer_context(struct virtual_engine *ve,
+				 struct intel_engine_cs *engine)
+{
+	unsigned int n;
+
+	if (likely(engine == ve->siblings[0]))
+		return;
+
+	GEM_BUG_ON(READ_ONCE(ve->context.inflight));
+	if (!intel_engine_has_relative_mmio(engine))
+		virtual_update_register_offsets(ve->context.lrc_reg_state,
+						engine);
+
+	/*
+	 * Move the bound engine to the top of the list for
+	 * future execution. We then kick this tasklet first
+	 * before checking others, so that we preferentially
+	 * reuse this set of bound registers.
+	 */
+	for (n = 1; n < ve->num_siblings; n++) {
+		if (ve->siblings[n] == engine) {
+			swap(ve->siblings[n], ve->siblings[0]);
+			break;
+		}
+	}
+}
+
 #define for_each_waiter(p__, rq__) \
 	list_for_each_entry_lockless(p__, \
 				     &(rq__)->sched.waiters_list, \
@@ -2253,35 +2280,23 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			GEM_BUG_ON(!(rq->execution_mask & engine->mask));
 			WRITE_ONCE(rq->engine, engine);
 
-			if (engine != ve->siblings[0]) {
-				u32 *regs = ve->context.lrc_reg_state;
-				unsigned int n;
-
-				GEM_BUG_ON(READ_ONCE(ve->context.inflight));
-
-				if (!intel_engine_has_relative_mmio(engine))
-					virtual_update_register_offsets(regs,
-									engine);
-
+			if (__i915_request_submit(rq)) {
 				/*
-				 * Move the bound engine to the top of the list
-				 * for future execution. We then kick this
-				 * tasklet first before checking others, so that
-				 * we preferentially reuse this set of bound
-				 * registers.
+				 * Only after we confirm that we will submit
+				 * this request (i.e. it has not already
+				 * completed), do we want to update the context.
+				 *
+				 * This serves two purposes. It avoids
+				 * unnecessary work if we are resubmitting an
+				 * already completed request after timeslicing.
+				 * But more importantly, it prevents us altering
+				 * ve->siblings[] on an idle context, where
+				 * we may be using ve->siblings[] in
+				 * virtual_context_enter / virtual_context_exit.
 				 */
-				for (n = 1; n < ve->num_siblings; n++) {
-					if (ve->siblings[n] == engine) {
-						swap(ve->siblings[n],
-						     ve->siblings[0]);
-						break;
-					}
-				}
-
+				virtual_xfer_context(ve, engine);
 				GEM_BUG_ON(ve->siblings[0] != engine);
-			}
 
-			if (__i915_request_submit(rq)) {
 				submit = true;
 				last = rq;
 			}
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
