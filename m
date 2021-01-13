Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14B192F4FFE
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 17:31:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6648C6E0D0;
	Wed, 13 Jan 2021 16:31:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F6C06E0D0
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 16:31:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23586904-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 16:31:15 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Jan 2021 16:31:14 +0000
Message-Id: <20210113163115.5740-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/2] drm/i915/selftests: Force a failed engine reset
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

Inject a fault into the engine reset and check that the outstanding
requests are completed despite the failed reset.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c | 142 +++++++++++++++++++
 1 file changed, 142 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index ffc6eabb6404..0a394b9ba818 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -540,6 +540,147 @@ static int igt_reset_nop_engine(void *arg)
 	return 0;
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
+static int igt_reset_fail_engine(void *arg)
+{
+	struct intel_gt *gt = arg;
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
+
+	/* Check that we can recover from engine-reset failues */
+
+	if (!intel_has_reset_engine(gt))
+		return 0;
+
+	for_each_engine(engine, gt, id) {
+		unsigned int count;
+		struct intel_context *ce;
+		IGT_TIMEOUT(end_time);
+		int err;
+
+		ce = intel_context_create(engine);
+		if (IS_ERR(ce))
+			return PTR_ERR(ce);
+
+		st_engine_heartbeat_disable(engine);
+		set_bit(I915_RESET_ENGINE + id, &gt->reset.flags);
+
+		force_reset_timeout(engine);
+		err = intel_engine_reset(engine, NULL);
+		cancel_reset_timeout(engine);
+		if (err == 0) /* timeouts only generated on gen8+ */
+			goto skip;
+
+		count = 0;
+		do {
+			struct i915_request *last = NULL;
+			int i;
+
+			if (!wait_for_idle(engine)) {
+				pr_err("%s failed to idle before reset\n",
+				       engine->name);
+				err = -EIO;
+				break;
+			}
+
+			for (i = 0; i < count % 15; i++) {
+				struct i915_request *rq;
+
+				rq = intel_context_create_request(ce);
+				if (IS_ERR(rq)) {
+					struct drm_printer p =
+						drm_info_printer(gt->i915->drm.dev);
+					intel_engine_dump(engine, &p,
+							  "%s(%s): failed to submit request\n",
+							  __func__,
+							  engine->name);
+
+					GEM_TRACE("%s(%s): failed to submit request\n",
+						  __func__,
+						  engine->name);
+					GEM_TRACE_DUMP();
+
+					intel_gt_set_wedged(gt);
+					if (last)
+						i915_request_put(last);
+
+					err = PTR_ERR(rq);
+					goto out;
+				}
+
+				if (last)
+					i915_request_put(last);
+				last = i915_request_get(rq);
+				i915_request_add(rq);
+			}
+
+			if (count & 1) {
+				err = intel_engine_reset(engine, NULL);
+				if (err) {
+					GEM_TRACE_ERR("intel_engine_reset(%s) failed, err:%d\n",
+						      engine->name, err);
+					GEM_TRACE_DUMP();
+					i915_request_put(last);
+					break;
+				}
+			} else {
+				force_reset_timeout(engine);
+				err = intel_engine_reset(engine, NULL);
+				cancel_reset_timeout(engine);
+				if (err != -ETIMEDOUT) {
+					pr_err("intel_engine_reset(%s) did not fail, err:%d\n",
+					       engine->name, err);
+					i915_request_put(last);
+					break;
+				}
+			}
+
+			err = 0;
+			if (i915_request_wait(last, 0, HZ / 2) < 0) {
+				struct drm_printer p =
+					drm_info_printer(gt->i915->drm.dev);
+
+				intel_engine_dump(engine, &p,
+						  "%s(%s): failed to complete request\n",
+						  __func__,
+						  engine->name);
+
+				GEM_TRACE("%s(%s): failed to complete request\n",
+					  __func__,
+					  engine->name);
+				GEM_TRACE_DUMP();
+
+				err = -EIO;
+			}
+			i915_request_put(last);
+			count++;
+		} while (err == 0 && time_before(jiffies, end_time));
+out:
+		pr_info("%s(%s): %d resets\n", __func__, engine->name, count);
+skip:
+		clear_bit(I915_RESET_ENGINE + id, &gt->reset.flags);
+		st_engine_heartbeat_enable(engine);
+		intel_context_put(ce);
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
 static int __igt_reset_engine(struct intel_gt *gt, bool active)
 {
 	struct i915_gpu_error *global = &gt->i915->gpu_error;
@@ -1694,6 +1835,7 @@ int intel_hangcheck_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(igt_reset_nop_engine),
 		SUBTEST(igt_reset_idle_engine),
 		SUBTEST(igt_reset_active_engine),
+		SUBTEST(igt_reset_fail_engine),
 		SUBTEST(igt_reset_engines),
 		SUBTEST(igt_reset_engines_atomic),
 		SUBTEST(igt_reset_queue),
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
