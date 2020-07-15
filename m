Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2488C221378
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 19:29:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78D5F6E209;
	Wed, 15 Jul 2020 17:29:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C226F6E209
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 17:29:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21830657-1500050 
 for multiple; Wed, 15 Jul 2020 18:29:37 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jul 2020 18:29:35 +0100
Message-Id: <20200715172935.24586-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Only transfer the virtual context
 to the new engine if active
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
middle of calling intel_context_exit() to turn off the power management
associated with the virtual engine, and that in turn walks the
ve->siblings[]. If we happen to call swap() on the array as we walk, we
will call intel_engine_pm_put() twice on the same engine.

In this patch, we prevent this by only updating the bound engine after a
successful submission which weeds out the already completed requests.
A simple method for handling the breadcrumbs across engine switches is
left as an exercise for the reader.

Alternatively, we could walk a non-volatile array for the pm, such as
using the engine->mask. The small advantage to performing the update
after the submit is that we then only have to do a swap for active
requests.

Fixes: 22b7a426bbe1 ("drm/i915/execlists: Preempt-to-busy")
References: 6d06779e8672 ("drm/i915: Load balancing across a virtual engine"
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: "Nayana, Venkata Ramana" <venkata.ramana.nayana@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 70 ++++++++++++++++-------------
 1 file changed, 38 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index e0280a672f1d..d9ea13fbf1f7 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1819,8 +1819,12 @@ static bool virtual_matches(const struct virtual_engine *ve,
 	return true;
 }
 
-static void virtual_xfer_breadcrumbs(struct virtual_engine *ve)
+static void virtual_xfer_breadcrumbs(struct virtual_engine *ve,
+				     struct intel_engine_cs *engine)
 {
+	if (likely(engine == ve->siblings[0]))
+		return;
+
 	/*
 	 * All the outstanding signals on ve->siblings[0] must have
 	 * been completed, just pending the interrupt handler. As those
@@ -1828,7 +1832,36 @@ static void virtual_xfer_breadcrumbs(struct virtual_engine *ve)
 	 * transfer those to the old irq_worker to keep our locking
 	 * consistent.
 	 */
-	intel_engine_transfer_stale_breadcrumbs(ve->siblings[0], &ve->context);
+	if (!list_empty(&ve->context.signals))
+		intel_engine_transfer_stale_breadcrumbs(ve->siblings[0],
+							&ve->context);
+}
+
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
 }
 
 #define for_each_waiter(p__, rq__) \
@@ -2270,39 +2303,12 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 
 			GEM_BUG_ON(!(rq->execution_mask & engine->mask));
 			WRITE_ONCE(rq->engine, engine);
+			virtual_xfer_breadcrumbs(ve, engine);
 
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
-				if (!list_empty(&ve->context.signals))
-					virtual_xfer_breadcrumbs(ve);
-
-				/*
-				 * Move the bound engine to the top of the list
-				 * for future execution. We then kick this
-				 * tasklet first before checking others, so that
-				 * we preferentially reuse this set of bound
-				 * registers.
-				 */
-				for (n = 1; n < ve->num_siblings; n++) {
-					if (ve->siblings[n] == engine) {
-						swap(ve->siblings[n],
-						     ve->siblings[0]);
-						break;
-					}
-				}
-
+			if (__i915_request_submit(rq)) {
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
