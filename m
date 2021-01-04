Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 360FA2E9453
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Jan 2021 12:52:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CEBA89D89;
	Mon,  4 Jan 2021 11:52:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5E5989CA2
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Jan 2021 11:52:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23495867-1500050 
 for multiple; Mon, 04 Jan 2021 11:51:52 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Jan 2021 11:51:42 +0000
Message-Id: <20210104115145.24460-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210104115145.24460-1-chris@chris-wilson.co.uk>
References: <20210104115145.24460-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/6] drm/i915/gt: Allow failed resets without
 assertion
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

If the engine reset fails, we will attempt to resume with the current
inflight submissions. When that happens, we cannot assert that the
engine reset cleared the pending submission, so do not.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2878
Fixes: 16f2941ad307 ("drm/i915/gt: Replace direct submit with direct call to tasklet")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_types.h  |  2 +
 .../drm/i915/gt/intel_execlists_submission.c  |  6 +-
 drivers/gpu/drm/i915/gt/intel_reset.c         |  3 +
 drivers/gpu/drm/i915/gt/selftest_execlists.c  | 75 +++++++++++++++++++
 4 files changed, 85 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index c28f4e190fe6..430066e5884c 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -561,6 +561,8 @@ struct intel_engine_cs {
 		unsigned long stop_timeout_ms;
 		unsigned long timeslice_duration_ms;
 	} props, defaults;
+
+	I915_SELFTEST_DECLARE(struct fault_attr reset_timeout);
 };
 
 static inline bool
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 2afbc0a4ca03..f02e3ae10d28 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -3047,9 +3047,13 @@ static void execlists_reset_finish(struct intel_engine_cs *engine)
 	 * After a GPU reset, we may have requests to replay. Do so now while
 	 * we still have the forcewake to be sure that the GPU is not allowed
 	 * to sleep before we restart and reload a context.
+	 *
+	 * If the GPU reset fails, the engine may still be alive with requests
+	 * inflight. We expect those to complete, or for the device to be
+	 * reset as the next level of recovery, and as a final resort we
+	 * will declare the device wedged.
 	 */
 	GEM_BUG_ON(!reset_in_progress(execlists));
-	GEM_BUG_ON(engine->execlists.pending[0]);
 
 	/* And kick in case we missed a new request submission. */
 	if (__tasklet_enable(&execlists->tasklet))
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 761b50eca33b..9d177297db79 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -497,6 +497,9 @@ static int gen8_engine_reset_prepare(struct intel_engine_cs *engine)
 	u32 request, mask, ack;
 	int ret;
 
+	if (I915_SELFTEST_ONLY(should_fail(&engine->reset_timeout, 1)))
+		return -ETIMEDOUT;
+
 	ack = intel_uncore_read_fw(uncore, reg);
 	if (ack & RESET_CTL_CAT_ERROR) {
 		/*
diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
index 3854da5a4e65..bfa7fd5c2c91 100644
--- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
+++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
@@ -2299,6 +2299,77 @@ static int __cancel_hostile(struct live_preempt_cancel *arg)
 	return err;
 }
 
+static void force_reset_timeout(struct intel_engine_cs *engine)
+{
+	engine->reset_timeout.probability = 999;
+	atomic_set(&engine->reset_timeout.times, -1);
+}
+
+static void cancel_reset_timeout(struct intel_engine_cs *engine)
+{
+	memset(&engine->reset_timeout, 0, sizeof(engine->reset_timeout));
+}
+
+static int __cancel_fail(struct live_preempt_cancel *arg)
+{
+	struct intel_engine_cs *engine = arg->engine;
+	struct i915_request *rq;
+	int err;
+
+	if (!IS_ACTIVE(CONFIG_DRM_I915_PREEMPT_TIMEOUT))
+		return 0;
+
+	if (!intel_has_reset_engine(engine->gt))
+		return 0;
+
+	GEM_TRACE("%s(%s)\n", __func__, engine->name);
+	rq = spinner_create_request(&arg->a.spin,
+				    arg->a.ctx, engine,
+				    MI_NOOP); /* preemption disabled */
+	if (IS_ERR(rq))
+		return PTR_ERR(rq);
+
+	clear_bit(CONTEXT_BANNED, &rq->context->flags);
+	i915_request_get(rq);
+	i915_request_add(rq);
+	if (!igt_wait_for_spinner(&arg->a.spin, rq)) {
+		err = -EIO;
+		goto out;
+	}
+
+	intel_context_set_banned(rq->context);
+
+	err = intel_engine_pulse(engine);
+	if (err)
+		goto out;
+
+	force_reset_timeout(engine);
+
+	/* force preempt reset [failure] */
+	while (!engine->execlists.pending[0])
+		intel_engine_flush_submission(engine);
+	del_timer_sync(&engine->execlists.preempt);
+	intel_engine_flush_submission(engine);
+
+	cancel_reset_timeout(engine);
+
+	/* after failure, require heartbeats to reset device */
+	intel_engine_set_heartbeat(engine, 1);
+	err = wait_for_reset(engine, rq, HZ / 2);
+	intel_engine_set_heartbeat(engine,
+				   engine->defaults.heartbeat_interval_ms);
+	if (err) {
+		pr_err("Cancelled inflight0 request did not reset\n");
+		goto out;
+	}
+
+out:
+	i915_request_put(rq);
+	if (igt_flush_test(engine->i915))
+		err = -EIO;
+	return err;
+}
+
 static int live_preempt_cancel(void *arg)
 {
 	struct intel_gt *gt = arg;
@@ -2338,6 +2409,10 @@ static int live_preempt_cancel(void *arg)
 		err = __cancel_hostile(&data);
 		if (err)
 			goto err_wedged;
+
+		err = __cancel_fail(&data);
+		if (err)
+			goto err_wedged;
 	}
 
 	err = 0;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
