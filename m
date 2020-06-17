Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F8A1FCD21
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2020 14:12:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92D086E88A;
	Wed, 17 Jun 2020 12:12:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4EC36E91A
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jun 2020 12:12:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21524450-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jun 2020 13:12:11 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jun 2020 13:12:11 +0100
Message-Id: <20200617121211.32198-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/selftests: Enable selftesting of
 busy-stats
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

A couple of very simple tests to ensure that the basic properties of
per-engine busyness accounting [0% and 100% busy] are faithful.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_engine_pm.c | 102 +++++++++++++++++++
 drivers/gpu/drm/i915/gt/selftest_rps.c       |   5 +
 2 files changed, 107 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
index cbf6b0735272..92278d92e7b0 100644
--- a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
@@ -7,6 +7,107 @@
 #include "i915_selftest.h"
 #include "selftest_engine.h"
 #include "selftests/igt_atomic.h"
+#include "selftests/igt_flush_test.h"
+#include "selftests/igt_spinner.h"
+
+static int live_engine_busy_stats(void *arg)
+{
+	struct intel_gt *gt = arg;
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
+	struct igt_spinner spin;
+	int err = 0;
+
+	/*
+	 * Check that if an engine supports busy-stats, they tell the truth.
+	 */
+
+	if (igt_spinner_init(&spin, gt))
+		return -ENOMEM;
+
+	GEM_BUG_ON(intel_gt_pm_is_awake(gt));
+	for_each_engine(engine, gt, id) {
+		struct i915_request *rq;
+		ktime_t de;
+		u64 dt;
+
+		if (!intel_engine_supports_stats(engine))
+			continue;
+
+		if (!intel_engine_can_store_dword(engine))
+			continue;
+
+		if (intel_gt_pm_wait_for_idle(gt)) {
+			err = -EBUSY;
+			break;
+		}
+
+		engine_heartbeat_disable(engine);
+
+		ENGINE_TRACE(engine, "measuring idle time\n");
+		preempt_disable();
+		dt = ktime_to_ns(ktime_get());
+		de = intel_engine_get_busy_time(engine);
+		udelay(100);
+		de = ktime_sub(intel_engine_get_busy_time(engine), de);
+		dt = ktime_to_ns(ktime_get()) - dt;
+		preempt_enable();
+		if (de < 0 || de > 10) {
+			pr_err("%s: reported %lldns [%d%%] busyness while sleeping [for %lldns]\n",
+			       engine->name,
+			       de, (int)div64_u64(100 * de, dt), dt);
+			GEM_TRACE_DUMP();
+			err = -EINVAL;
+			goto end;
+		}
+
+		/* 100% busy */
+		rq = igt_spinner_create_request(&spin,
+						engine->kernel_context,
+						MI_NOOP);
+		if (IS_ERR(rq)) {
+			err = PTR_ERR(rq);
+			goto end;
+		}
+		i915_request_add(rq);
+
+		if (!igt_wait_for_spinner(&spin, rq)) {
+			intel_gt_set_wedged(engine->gt);
+			err = -ETIME;
+			goto end;
+		}
+
+		ENGINE_TRACE(engine, "measuring busy time\n");
+		preempt_disable();
+		dt = ktime_to_ns(ktime_get());
+		de = intel_engine_get_busy_time(engine);
+		udelay(100);
+		de = ktime_sub(intel_engine_get_busy_time(engine), de);
+		dt = ktime_to_ns(ktime_get()) - dt;
+		preempt_enable();
+		if (100 * de < 95 * dt || 95 * de > 100 * dt) {
+			pr_err("%s: reported %lldns [%d%%] busyness while spinning [for %lldns]\n",
+			       engine->name,
+			       de, (int)div64_u64(100 * de, dt), dt);
+			GEM_TRACE_DUMP();
+			err = -EINVAL;
+			goto end;
+		}
+
+end:
+		engine_heartbeat_enable(engine);
+		igt_spinner_end(&spin);
+		if (igt_flush_test(gt->i915))
+			err = -EIO;
+		if (err)
+			break;
+	}
+
+	igt_spinner_fini(&spin);
+	if (igt_flush_test(gt->i915))
+		err = -EIO;
+	return err;
+}
 
 static int live_engine_pm(void *arg)
 {
@@ -77,6 +178,7 @@ static int live_engine_pm(void *arg)
 int live_engine_pm_selftests(struct intel_gt *gt)
 {
 	static const struct i915_subtest tests[] = {
+		SUBTEST(live_engine_busy_stats),
 		SUBTEST(live_engine_pm),
 	};
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index 5049c3dd08a6..5e364fb31aea 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -1252,6 +1252,11 @@ int live_rps_dynamic(void *arg)
 	if (igt_spinner_init(&spin, gt))
 		return -ENOMEM;
 
+	if (intel_rps_has_interrupts(rps))
+		pr_info("RPS has interrupt support\n");
+	if (intel_rps_uses_timer(rps))
+		pr_info("RPS has timer support\n");
+
 	for_each_engine(engine, gt, id) {
 		struct i915_request *rq;
 		struct {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
