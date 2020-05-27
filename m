Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3A71E4539
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 16:07:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA77D899A7;
	Wed, 27 May 2020 14:07:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 029A3899A7
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2020 14:07:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21310198-1500050 
 for multiple; Wed, 27 May 2020 15:07:20 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 May 2020 15:07:19 +0100
Message-Id: <20200527140719.10842-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200527130214.1239-1-chris@chris-wilson.co.uk>
References: <20200527130214.1239-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Prevent timeslicing into
 unpreemptible requests
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

We have a I915_REQUEST_NOPREEMPT flag that we set when we must prevent
the HW from preempting during the course of this request. We need to
honour this flag and protect the HW even if we have a heartbeat request,
or other maximum priority barrier, pending. As such, restrict the
timeslicing check to avoid preempting into the topmost priority band,
leaving the unpreemptable requests in blissful peace running
uninterrupted on the HW.

Fixes: 2a98f4e65bba ("drm/i915: add infrastructure to hold off preemption on a request")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c    |  11 +++
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 116 +++++++++++++++++++++++++
 2 files changed, 127 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 3214a4ecc31a..012afb9e0324 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1896,6 +1896,15 @@ static void defer_active(struct intel_engine_cs *engine)
 	defer_request(rq, i915_sched_lookup_priolist(engine, rq_prio(rq)));
 }
 
+static inline int never_timeslice(int prio)
+{
+	/* Don't allow timeslicing of the 'unpreemptible' requests */
+	if (prio == I915_PRIORITY_UNPREEMPTABLE)
+		prio--;
+
+	return prio;
+}
+
 static bool
 need_timeslice(const struct intel_engine_cs *engine,
 	       const struct i915_request *rq,
@@ -1927,6 +1936,7 @@ need_timeslice(const struct intel_engine_cs *engine,
 
 	if (!list_is_last(&rq->sched.link, &engine->active.requests))
 		hint = max(hint, rq_prio(list_next_entry(rq, sched.link)));
+	hint = never_timeslice(hint);
 
 	return hint >= effective_prio(rq);
 }
@@ -2007,6 +2017,7 @@ static void start_timeslice(struct intel_engine_cs *engine, int prio)
 	if (!intel_engine_has_timeslices(engine))
 		return;
 
+	prio = never_timeslice(prio);
 	WRITE_ONCE(execlists->switch_priority_hint, prio);
 	if (prio == INT_MIN)
 		return;
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 66f710b1b61e..0c32afbdb644 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -1289,6 +1289,121 @@ static int live_timeslice_queue(void *arg)
 	return err;
 }
 
+static int live_timeslice_nopreempt(void *arg)
+{
+	struct intel_gt *gt = arg;
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
+	struct igt_spinner spin;
+	int err = 0;
+
+	/*
+	 * We should not timeslice into a request that is marked with
+	 * I915_REQUEST_NOPREEMPT.
+	 */
+	if (!IS_ACTIVE(CONFIG_DRM_I915_TIMESLICE_DURATION))
+		return 0;
+
+	if (igt_spinner_init(&spin, gt))
+		return -ENOMEM;
+
+	for_each_engine(engine, gt, id) {
+		struct intel_context *ce;
+		struct i915_request *rq;
+		unsigned long timeslice;
+
+		if (!intel_engine_has_preemption(engine))
+			continue;
+
+		ce = intel_context_create(engine);
+		if (IS_ERR(ce)) {
+			err = PTR_ERR(ce);
+			break;
+		}
+
+		engine_heartbeat_disable(engine);
+		timeslice = xchg(&engine->props.timeslice_duration_ms, 1);
+
+		/* Create an unpreemptible spinner */
+
+		rq = igt_spinner_create_request(&spin, ce, MI_ARB_CHECK);
+		intel_context_put(ce);
+		if (IS_ERR(rq)) {
+			err = PTR_ERR(rq);
+			goto out_heartbeat;
+		}
+
+		i915_request_get(rq);
+		i915_request_add(rq);
+
+		if (!igt_wait_for_spinner(&spin, rq)) {
+			i915_request_put(rq);
+			err = -ETIME;
+			goto out_spin;
+		}
+
+		set_bit(I915_FENCE_FLAG_NOPREEMPT, &rq->fence.flags);
+		i915_request_put(rq);
+
+		/* Followed by a maximum priority barrier (heartbeat) */
+
+		ce = intel_context_create(engine);
+		if (IS_ERR(ce)) {
+			err = PTR_ERR(rq);
+			goto out_spin;
+		}
+
+		rq = intel_context_create_request(ce);
+		intel_context_put(ce);
+		if (IS_ERR(rq)) {
+			err = PTR_ERR(rq);
+			goto out_spin;
+		}
+
+		rq->sched.attr.priority = I915_PRIORITY_BARRIER;
+		i915_request_get(rq);
+		i915_request_add(rq);
+
+		/*
+		 * Wait until the barrier is in ELSP, and we know timeslicing
+		 * will have been activated.
+		 */
+		if (wait_for_submit(engine, rq, HZ / 2)) {
+			i915_request_put(rq);
+			err = -ETIME;
+			goto out_spin;
+		}
+
+		/*
+		 * Since the ELSP[0] request is unpreemptible, it should not
+		 * allow the maximum priority barrier through. Wait long
+		 * enough to see if it is timesliced in by mistake.
+		 */
+		if (i915_request_wait(rq, 0, timeslice_threshold(engine)) >= 0) {
+			pr_err("%s: I915_PRIORITY_BARRIER request completed, bypassing no-preempt request\n",
+			       engine->name);
+			err = -EINVAL;
+		}
+		i915_request_put(rq);
+
+out_spin:
+		igt_spinner_end(&spin);
+out_heartbeat:
+		xchg(&engine->props.timeslice_duration_ms, timeslice);
+		engine_heartbeat_enable(engine);
+		if (err)
+			break;
+
+		if (igt_flush_test(gt->i915)) {
+			err = -EIO;
+			break;
+		}
+	}
+
+	igt_spinner_fini(&spin);
+	return err;
+}
+
 static int live_busywait_preempt(void *arg)
 {
 	struct intel_gt *gt = arg;
@@ -4475,6 +4590,7 @@ int intel_execlists_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(live_timeslice_preempt),
 		SUBTEST(live_timeslice_rewind),
 		SUBTEST(live_timeslice_queue),
+		SUBTEST(live_timeslice_nopreempt),
 		SUBTEST(live_busywait_preempt),
 		SUBTEST(live_preempt),
 		SUBTEST(live_late_preempt),
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
