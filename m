Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D23C61F194D
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 14:55:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1A396E4DD;
	Mon,  8 Jun 2020 12:55:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7EE46E4DD
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jun 2020 12:55:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21431026-1500050 
 for multiple; Mon, 08 Jun 2020 13:54:39 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Jun 2020 13:54:38 +0100
Message-Id: <20200608125438.28700-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200608102845.26194-1-chris@chris-wilson.co.uk>
References: <20200608102845.26194-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/gt: Prevent enabling breadcrumbs on
 the virtual engine
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
Cc: stable@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The virtual engines are not connected directly to hardware, so do not
generate interrupts themselves, nor do we expect to enable breadcrumb
tracking on them. However, if we clear out a stale virtual request, we
will process the breadcrumbs on the current virtual engine. Here, we
only need to add the delayed signal onto the stale signal queue, and
send the signal once clear of the engine locks. In the meantime, this
may be transferred onto the next sibling if we execute the next virtual
request before the work is completed.

The effect of losing tracking of the virtual breadcrumb interrupt is
that we leak the GT wakeref, keeping the device awake.

Reported-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Fixes: b647c7df01b7 ("drm/i915: Fixup preempt-to-busy vs resubmission of a virtual request")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: <stable@vger.kernel.org> # v5.5+
---
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 6 ++++++
 drivers/gpu/drm/i915/gt/intel_engine_cs.c   | 3 +++
 drivers/gpu/drm/i915/gt/intel_lrc.c         | 2 ++
 3 files changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index d907d538176e..9eaf3dc17c99 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -225,6 +225,9 @@ static bool __intel_breadcrumbs_arm_irq(struct intel_breadcrumbs *b)
 	struct intel_engine_cs *engine =
 		container_of(b, struct intel_engine_cs, breadcrumbs);
 
+	if (intel_engine_is_virtual(engine))
+		return true;
+
 	lockdep_assert_held(&b->irq_lock);
 	if (b->irq_armed)
 		return true;
@@ -308,6 +311,9 @@ void intel_engine_transfer_stale_breadcrumbs(struct intel_engine_cs *engine,
 
 void intel_engine_fini_breadcrumbs(struct intel_engine_cs *engine)
 {
+	struct intel_breadcrumbs *b = &engine->breadcrumbs;
+
+	GEM_BUG_ON(atomic_read(&b->irq_work.flags));
 }
 
 bool i915_request_enable_breadcrumb(struct i915_request *rq)
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index e5141a897786..4f2c348aa32c 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1515,6 +1515,9 @@ void intel_engine_dump(struct intel_engine_cs *engine,
 		drm_printf(m, "*** WEDGED ***\n");
 
 	drm_printf(m, "\tAwake? %d\n", atomic_read(&engine->wakeref.count));
+	drm_printf(m, "\tBreadcrumbs? armed:%s, signalers:%s\n",
+		   yesno(engine->breadcrumbs.irq_armed),
+		   yesno(!list_empty(&engine->breadcrumbs.signalers)));
 	drm_printf(m, "\tBarriers?: %s\n",
 		   yesno(!llist_empty(&engine->barrier_tasks)));
 	drm_printf(m, "\tLatency: %luus\n",
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index d55a5e0466e5..9d932e985d96 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -5339,6 +5339,8 @@ static void virtual_context_destroy(struct kref *kref)
 	GEM_BUG_ON(ve->request);
 	GEM_BUG_ON(ve->context.inflight);
 
+	intel_engine_fini_breadcrumbs(&ve->base);
+
 	for (n = 0; n < ve->num_siblings; n++) {
 		struct intel_engine_cs *sibling = ve->siblings[n];
 		struct rb_node *node = &ve->nodes[sibling->id].rb;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
