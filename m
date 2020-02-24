Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0CF16A35A
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 11:00:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D73846E3B5;
	Mon, 24 Feb 2020 10:00:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05F916E3BC
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2020 10:00:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20328985-1500050 
 for multiple; Mon, 24 Feb 2020 10:00:09 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Feb 2020 09:59:55 +0000
Message-Id: <20200224100007.4024184-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200224100007.4024184-1-chris@chris-wilson.co.uk>
References: <20200224100007.4024184-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/14] drm/i915/selftests: Check recovery from
 corrupted LRC
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

Check that we can recover if the LRC is totally corrupted.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 135 +++++++++++++++++++++++++
 1 file changed, 135 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index ee80b9d8a54b..5fdfb67c3bab 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -5294,6 +5294,140 @@ static int live_lrc_isolation(void *arg)
 	return 0;
 }
 
+static void garbage_reset(struct intel_engine_cs *engine,
+			  struct i915_request *rq)
+{
+	const unsigned int bit = I915_RESET_ENGINE + engine->id;
+	unsigned long *lock = &engine->gt->reset.flags;
+
+	if (test_and_set_bit(bit, lock))
+		return;
+
+	tasklet_disable(&engine->execlists.tasklet);
+
+	if (!rq->fence.error)
+		intel_engine_reset(engine, NULL);
+
+	tasklet_enable(&engine->execlists.tasklet);
+	clear_and_wake_up_bit(bit, lock);
+}
+
+static struct i915_request *garbage(struct intel_context *ce,
+				    struct rnd_state *prng)
+{
+	struct i915_request *rq;
+	int err;
+
+	err = intel_context_pin(ce);
+	if (err)
+		return ERR_PTR(err);
+
+	prandom_bytes_state(prng,
+			    ce->lrc_reg_state,
+			    ce->engine->context_size -
+			    LRC_STATE_PN * PAGE_SIZE);
+
+	rq = intel_context_create_request(ce);
+	if (IS_ERR(rq)) {
+		err = PTR_ERR(rq);
+		goto err_unpin;
+	}
+
+	i915_request_get(rq);
+	i915_request_add(rq);
+	return rq;
+
+err_unpin:
+	intel_context_unpin(ce);
+	return ERR_PTR(err);
+}
+
+static int __lrc_garbage(struct intel_engine_cs *engine, struct rnd_state *prng)
+{
+	struct intel_context *ce;
+	struct i915_request *hang;
+	int err;
+
+	ce = intel_context_create(engine);
+	if (IS_ERR(ce))
+		return PTR_ERR(ce);
+
+	hang = garbage(ce, prng);
+	if (IS_ERR(hang)) {
+		err = PTR_ERR(hang);
+		goto err_ce;
+	}
+
+	if (wait_for_submit(engine, hang, HZ / 2)) {
+		i915_request_put(hang);
+		err = -ETIME;
+		goto err_ce;
+	}
+
+	intel_context_set_banned(ce);
+	garbage_reset(engine, hang);
+
+	intel_engine_flush_submission(engine);
+	if (!hang->fence.error) {
+		i915_request_put(hang);
+		pr_err("%s: corrupted context was not reset\n",
+		       engine->name);
+		err = -EINVAL;
+		goto err_ce;
+	}
+
+	if (i915_request_wait(hang, 0, HZ / 2) < 0) {
+		pr_err("%s: corrupted context did not recover\n",
+		       engine->name);
+		i915_request_put(hang);
+		err = -EIO;
+		goto err_ce;
+	}
+	i915_request_put(hang);
+
+err_ce:
+	intel_context_put(ce);
+	return err;
+}
+
+static int live_lrc_garbage(void *arg)
+{
+	struct intel_gt *gt = arg;
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
+
+	/*
+	 * Verify that we can recover if one context state is completely
+	 * corrupted.
+	 */
+
+	if (!IS_ENABLED(CONFIG_DRM_I915_SELFTEST_BROKEN))
+		return 0;
+
+	for_each_engine(engine, gt, id) {
+		I915_RND_STATE(prng);
+		int err = 0, i;
+
+		if (!intel_has_reset_engine(engine->gt))
+			continue;
+
+		intel_engine_pm_get(engine);
+		for (i = 0; i < 3; i++) {
+			err = __lrc_garbage(engine, &prng);
+			if (err)
+				break;
+		}
+		intel_engine_pm_put(engine);
+
+		if (igt_flush_test(gt->i915))
+			err = -EIO;
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
 static int __live_pphwsp_runtime(struct intel_engine_cs *engine)
 {
 	struct intel_context *ce;
@@ -5393,6 +5527,7 @@ int intel_lrc_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(live_lrc_gpr),
 		SUBTEST(live_lrc_isolation),
 		SUBTEST(live_lrc_timestamp),
+		SUBTEST(live_lrc_garbage),
 		SUBTEST(live_pphwsp_runtime),
 	};
 
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
