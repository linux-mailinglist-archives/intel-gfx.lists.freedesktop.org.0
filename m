Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1DA314F355
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 21:48:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 335486E9F7;
	Fri, 31 Jan 2020 20:48:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 997986E248
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 20:48:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20077811-1500050 
 for multiple; Fri, 31 Jan 2020 20:48:31 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 Jan 2020 20:48:29 +0000
Message-Id: <20200131204829.3476668-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200131204829.3476668-1-chris@chris-wilson.co.uk>
References: <20200131204829.3476668-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/selftests: Add a simple rollover
 for the kernel context
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

Exercise the seqno wrap paths on the kernel context to provide a small
amount of sanity checking and ensure that they are visible to lockdep.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_timeline.c | 171 ++++++++++++++++++++
 1 file changed, 171 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_timeline.c b/drivers/gpu/drm/i915/gt/selftest_timeline.c
index e2d78cc22fb4..ddbe029cbde8 100644
--- a/drivers/gpu/drm/i915/gt/selftest_timeline.c
+++ b/drivers/gpu/drm/i915/gt/selftest_timeline.c
@@ -6,6 +6,8 @@
 
 #include <linux/prime_numbers.h>
 
+#include "intel_context.h"
+#include "intel_engine_heartbeat.h"
 #include "intel_engine_pm.h"
 #include "intel_gt.h"
 #include "intel_gt_requests.h"
@@ -750,6 +752,173 @@ static int live_hwsp_wrap(void *arg)
 	return err;
 }
 
+static void engine_heartbeat_disable(struct intel_engine_cs *engine,
+				     unsigned long *saved)
+{
+	*saved = engine->props.heartbeat_interval_ms;
+	engine->props.heartbeat_interval_ms = 0;
+
+	intel_engine_pm_get(engine);
+	intel_engine_park_heartbeat(engine);
+}
+
+static void engine_heartbeat_enable(struct intel_engine_cs *engine,
+				    unsigned long saved)
+{
+	intel_engine_pm_put(engine);
+
+	engine->props.heartbeat_interval_ms = saved;
+}
+
+static int live_hwsp_rollover_kernel(void *arg)
+{
+	struct intel_gt *gt = arg;
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
+	int err = 0;
+
+	/*
+	 * Run the host for long enough, and even the kernel context will
+	 * see a seqno rollover.
+	 */
+
+	for_each_engine(engine, gt, id) {
+		struct intel_context *ce = engine->kernel_context;
+		struct intel_timeline *tl = ce->timeline;
+		struct i915_request *rq[3] = {};
+		unsigned long heartbeat;
+		int i;
+
+		engine_heartbeat_disable(engine, &heartbeat);
+		if (intel_gt_wait_for_idle(gt, HZ / 2)) {
+			err = -EIO;
+			goto out;
+		}
+
+		GEM_BUG_ON(i915_active_fence_isset(&tl->last_request));
+		tl->seqno = 0;
+		timeline_rollback(tl);
+		timeline_rollback(tl);
+		WRITE_ONCE(*(u32 *)tl->hwsp_seqno, tl->seqno);
+
+		for (i = 0; i < ARRAY_SIZE(rq); i++) {
+			rq[i] = i915_request_create(ce);
+			if (IS_ERR(rq[i])) {
+				err = PTR_ERR(rq[i]);
+				goto out;
+			}
+
+			pr_debug("%s: create fence.seqnp:%d\n",
+				 engine->name, lower_32_bits(rq[i]->fence.seqno));
+			i915_request_get(rq[i]);
+			i915_request_add(rq[i]);
+		}
+
+		/* We expected a wrap! */
+		GEM_BUG_ON(rq[2]->fence.seqno > rq[0]->fence.seqno);
+
+		if (i915_request_wait(rq[2], 0, HZ / 5) < 0) {
+			pr_err("Wait for timeline wrap timed out!\n");
+			err = -EIO;
+			goto out;
+		}
+
+		for (i = 0; i < ARRAY_SIZE(rq); i++) {
+			if (!i915_request_completed(rq[i])) {
+				pr_err("Pre-wrap request not completed!\n");
+				err = -EINVAL;
+				goto out;
+			}
+		}
+
+out:
+		for (i = 0; i < ARRAY_SIZE(rq); i++)
+			i915_request_put(rq[i]);
+		engine_heartbeat_enable(engine, heartbeat);
+		if (err)
+			break;
+	}
+
+	if (igt_flush_test(gt->i915))
+		err = -EIO;
+
+	return err;
+}
+
+static int live_hwsp_rollover_user(void *arg)
+{
+	struct intel_gt *gt = arg;
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
+	int err = 0;
+
+	/*
+	 * Run the host for long enough, and even the kernel context will
+	 * see a seqno rollover.
+	 */
+
+	for_each_engine(engine, gt, id) {
+		struct i915_request *rq[3] = {};
+		struct intel_context *ce;
+		int i;
+
+		ce = intel_context_create(engine);
+		if (IS_ERR(ce))
+			return PTR_ERR(ce);
+
+		err = intel_context_alloc_state(ce);
+		if (err)
+			goto out;
+
+		timeline_rollback(ce->timeline);
+		timeline_rollback(ce->timeline);
+		WRITE_ONCE(*(u32 *)ce->timeline->hwsp_seqno,
+			   ce->timeline->seqno);
+
+		for (i = 0; i < ARRAY_SIZE(rq); i++) {
+			rq[i] = intel_context_create_request(ce);
+			if (IS_ERR(rq[i])) {
+				err = PTR_ERR(rq[i]);
+				goto out;
+			}
+
+			pr_debug("%s: create fence.seqnp:%d\n",
+				 engine->name, lower_32_bits(rq[i]->fence.seqno));
+			i915_request_get(rq[i]);
+			i915_request_add(rq[i]);
+		}
+
+		/* We expected a wrap! */
+		GEM_BUG_ON(rq[2]->fence.seqno > rq[0]->fence.seqno);
+
+		if (i915_request_wait(rq[2], 0, HZ / 5) < 0) {
+			pr_err("Wait for timeline wrap timed out!\n");
+			err = -EIO;
+			goto out;
+		}
+
+		for (i = 0; i < ARRAY_SIZE(rq); i++) {
+			if (!i915_request_completed(rq[i])) {
+				pr_err("Pre-wrap request not completed!\n");
+				err = -EINVAL;
+				goto out;
+			}
+		}
+
+out:
+		for (i = 0; i < ARRAY_SIZE(rq); i++)
+			i915_request_put(rq[i]);
+		intel_context_put(ce);
+		if (err)
+			break;
+	}
+
+	if (igt_flush_test(gt->i915))
+		err = -EIO;
+
+	return err;
+}
+
 static int live_hwsp_recycle(void *arg)
 {
 	struct intel_gt *gt = arg;
@@ -827,6 +996,8 @@ int intel_timeline_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(live_hwsp_engine),
 		SUBTEST(live_hwsp_alternate),
 		SUBTEST(live_hwsp_wrap),
+		SUBTEST(live_hwsp_rollover_kernel),
+		SUBTEST(live_hwsp_rollover_user),
 	};
 
 	if (intel_gt_is_wedged(&i915->gt))
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
