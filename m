Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1016914575F
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 15:02:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ED496F528;
	Wed, 22 Jan 2020 14:02:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49BD36F528
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jan 2020 14:02:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19971353-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jan 2020 14:02:43 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Jan 2020 14:02:42 +0000
Message-Id: <20200122140243.495621-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200122140243.495621-1-chris@chris-wilson.co.uk>
References: <20200122140243.495621-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/3] drm/i915/execlists: Reclaim the hanging
 virtual request
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
v3: Added selftest
v4: Drop the reference owned by the virtual engine

Fixes: 748317386afb ("drm/i915/execlists: Offline error capture")
Testcase: igt/gem_exec_balancer/hang
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c    |  29 +++++
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 156 +++++++++++++++++++++++++
 2 files changed, 185 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 4810c62144ae..a13a8c4b65ab 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2403,6 +2403,35 @@ static bool execlists_hold(struct intel_engine_cs *engine,
 		goto unlock;
 	}
 
+	if (rq->engine != engine) { /* preempted virtual engine */
+		struct virtual_engine *ve = to_virtual_engine(rq->engine);
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
+		spin_lock(&ve->base.active.lock);
+		GEM_BUG_ON(intel_context_inflight(rq->context) != engine);
+		GEM_BUG_ON(ve->request != rq);
+		ve->request = NULL;
+		spin_unlock(&ve->base.active.lock);
+		i915_request_put(rq);
+
+		rq->engine = engine;
+	}
+
 	/*
 	 * Transfer this request onto the hold queue to prevent it
 	 * being resumbitted to HW (and potentially completed) before we have
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index e3a408baad0f..65718ca2326e 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -3410,6 +3410,161 @@ static int live_virtual_bond(void *arg)
 	return 0;
 }
 
+static int reset_virtual_engine(struct intel_gt *gt,
+				struct intel_engine_cs **siblings,
+				unsigned int nsibling)
+{
+	struct intel_engine_cs *engine;
+	struct intel_context *ve;
+	unsigned long *heartbeat;
+	struct igt_spinner spin;
+	struct i915_request *rq;
+	unsigned int n;
+	int err = 0;
+
+	/*
+	 * In order to support offline error capture for fast preempt reset,
+	 * we need to decouple the guilty request and ensure that it and its
+	 * descendents are not executed while the capture is in progress.
+	 */
+
+	heartbeat = kmalloc_array(nsibling, sizeof(*heartbeat), GFP_KERNEL);
+	if (!heartbeat)
+		return -ENOMEM;
+
+	if (igt_spinner_init(&spin, gt)) {
+		err = -ENOMEM;
+		goto out_free;
+	}
+
+	ve = intel_execlists_create_virtual(siblings, nsibling);
+	if (IS_ERR(ve)) {
+		err = PTR_ERR(ve);
+		goto out_spin;
+	}
+
+	for (n = 0; n < nsibling; n++)
+		engine_heartbeat_disable(siblings[n], &heartbeat[n]);
+
+	rq = igt_spinner_create_request(&spin, ve, MI_ARB_CHECK);
+	if (IS_ERR(rq)) {
+		err = PTR_ERR(rq);
+		goto out_heartbeat;
+	}
+	i915_request_add(rq);
+
+	if (!igt_wait_for_spinner(&spin, rq)) {
+		intel_gt_set_wedged(gt);
+		err = -ETIME;
+		goto out_heartbeat;
+	}
+
+	engine = rq->engine;
+	GEM_BUG_ON(engine == ve->engine);
+
+	/* Take ownership of the reset and tasklet */
+	if (test_and_set_bit(I915_RESET_ENGINE + engine->id,
+			     &gt->reset.flags)) {
+		intel_gt_set_wedged(gt);
+		err = -EBUSY;
+		goto out_heartbeat;
+	}
+	tasklet_disable(&engine->execlists.tasklet);
+
+	engine->execlists.tasklet.func(engine->execlists.tasklet.data);
+	GEM_BUG_ON(execlists_active(&engine->execlists) != rq);
+
+	/* Fake a preemption event; failed of course */
+	spin_lock_irq(&engine->active.lock);
+	__unwind_incomplete_requests(engine);
+	spin_unlock_irq(&engine->active.lock);
+	GEM_BUG_ON(rq->engine != ve->engine);
+
+	/* Reset the engine while keeping our active request on hold */
+	execlists_hold(engine, rq);
+	GEM_BUG_ON(!i915_request_on_hold(rq));
+
+	intel_engine_reset(engine, NULL);
+	GEM_BUG_ON(rq->fence.error != -EIO);
+
+	/* Release our grasp on the engine, letting CS flow again */
+	tasklet_enable(&engine->execlists.tasklet);
+	clear_and_wake_up_bit(I915_RESET_ENGINE + engine->id, &gt->reset.flags);
+
+	/* Check that we do not resubmit the held request */
+	i915_request_get(rq);
+	if (!i915_request_wait(rq, 0, HZ / 5)) {
+		pr_err("%s: on hold request completed!\n",
+		       engine->name);
+		intel_gt_set_wedged(gt);
+		err = -EIO;
+		goto out_rq;
+	}
+	GEM_BUG_ON(!i915_request_on_hold(rq));
+
+	/* But is resubmitted on release */
+	execlists_unhold(engine, rq);
+	if (i915_request_wait(rq, 0, HZ / 5) < 0) {
+		pr_err("%s: held request did not complete!\n",
+		       engine->name);
+		intel_gt_set_wedged(gt);
+		err = -ETIME;
+	}
+
+out_rq:
+	i915_request_put(rq);
+out_heartbeat:
+	for (n = 0; n < nsibling; n++)
+		engine_heartbeat_enable(siblings[n], heartbeat[n]);
+
+	intel_context_put(ve);
+out_spin:
+	igt_spinner_fini(&spin);
+out_free:
+	kfree(heartbeat);
+	return err;
+}
+
+static int live_virtual_reset(void *arg)
+{
+	struct intel_gt *gt = arg;
+	struct intel_engine_cs *siblings[MAX_ENGINE_INSTANCE + 1];
+	unsigned int class, inst;
+
+	/*
+	 * Check that we handle a reset event within a virtual engine.
+	 * Only the physical engine is reset, but we have to check the flow
+	 * of the virtual requests around the reset, and make sure it is not
+	 * forgotten.
+	 */
+
+	if (USES_GUC_SUBMISSION(gt->i915))
+		return 0;
+
+	if (!intel_has_reset_engine(gt))
+		return 0;
+
+	for (class = 0; class <= MAX_ENGINE_CLASS; class++) {
+		int nsibling, err;
+
+		nsibling = 0;
+		for (inst = 0; inst <= MAX_ENGINE_INSTANCE; inst++) {
+			if (!gt->engine_class[class][inst])
+				continue;
+
+			siblings[nsibling++] = gt->engine_class[class][inst];
+		}
+		if (nsibling < 2)
+			continue;
+
+		err = reset_virtual_engine(gt, siblings, nsibling);
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
 int intel_execlists_live_selftests(struct drm_i915_private *i915)
 {
 	static const struct i915_subtest tests[] = {
@@ -3435,6 +3590,7 @@ int intel_execlists_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(live_virtual_mask),
 		SUBTEST(live_virtual_preserved),
 		SUBTEST(live_virtual_bond),
+		SUBTEST(live_virtual_reset),
 	};
 
 	if (!HAS_EXECLISTS(i915))
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
