Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 446EC2418C4
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Aug 2020 11:17:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 985C26E196;
	Tue, 11 Aug 2020 09:17:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BAEE6E196
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Aug 2020 09:17:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22093095-1500050 
 for multiple; Tue, 11 Aug 2020 10:17:26 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Aug 2020 10:17:26 +0100
Message-Id: <20200811091726.21784-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Confirm RING_TIMESTAMP /
 CTX_TIMESTAMP share a clock
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

We assume that both timestamps are driven off the same clock [reported
to userspace as I915_PARAM_CS_TIMESTAMP_FREQUENCY]. Verify that this is
so by reading the timestamp registers around a busywait (on an otherwise
idle engine so there should be no preemptions).

v2: Icelake (not ehl, nor tgl) seems to be using a fixed 80ns interval
for, and only for, CTX_TIMESTAMP. As far as I can tell, this behaviour
is undocumented.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_engine_pm.c | 157 +++++++++++++++++++
 1 file changed, 157 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
index b08fc5390e8a..9d5778238015 100644
--- a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
@@ -5,12 +5,168 @@
  */
 
 #include "i915_selftest.h"
+#include "intel_gt_clock_utils.h"
 #include "selftest_engine.h"
 #include "selftest_engine_heartbeat.h"
 #include "selftests/igt_atomic.h"
 #include "selftests/igt_flush_test.h"
 #include "selftests/igt_spinner.h"
 
+static u32 *emit_wait(u32 *cs, u32 offset, int op, u32 value)
+{
+	*cs++ = MI_SEMAPHORE_WAIT |
+		MI_SEMAPHORE_GLOBAL_GTT |
+		MI_SEMAPHORE_POLL |
+		op;
+	*cs++ = value;
+	*cs++ = offset;
+	*cs++ = 0;
+
+	return cs;
+}
+
+static u32 *emit_store(u32 *cs, u32 offset, u32 value)
+{
+	*cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
+	*cs++ = offset;
+	*cs++ = 0;
+	*cs++ = value;
+
+	return cs;
+}
+
+static u32 *emit_srm(u32 *cs, i915_reg_t reg, u32 offset)
+{
+	*cs++ = MI_STORE_REGISTER_MEM_GEN8 | MI_USE_GGTT;
+	*cs++ = i915_mmio_reg_offset(reg);
+	*cs++ = offset;
+	*cs++ = 0;
+
+	return cs;
+}
+
+static void write_semaphore(u32 *x, u32 value)
+{
+	WRITE_ONCE(*x, value);
+	wmb();
+}
+
+static int __live_engine_timestamps(struct intel_engine_cs *engine)
+{
+	u32 *sema = memset32(engine->status_page.addr + 1000, 0, 5);
+	u32 offset = i915_ggtt_offset(engine->status_page.vma);
+	struct intel_context *ce;
+	struct i915_request *rq;
+	u64 d_ring, d_ctx, dt;
+	u32 *cs;
+
+	ce = intel_context_create(engine);
+	if (IS_ERR(ce))
+		return PTR_ERR(ce);
+
+	rq = intel_context_create_request(ce);
+	intel_context_put(ce);
+	if (IS_ERR(rq))
+		return PTR_ERR(rq);
+
+	cs = intel_ring_begin(rq, 28);
+	if (IS_ERR(cs)) {
+		i915_request_add(rq);
+		return PTR_ERR(cs);
+	}
+
+	/* Signal & wait for start */
+	cs = emit_store(cs, offset + 4008, 1);
+	cs = emit_wait(cs, offset + 4008, MI_SEMAPHORE_SAD_NEQ_SDD, 1);
+
+	cs = emit_srm(cs, RING_TIMESTAMP(engine->mmio_base), offset + 4000);
+	cs = emit_srm(cs, RING_CTX_TIMESTAMP(engine->mmio_base), offset + 4004);
+
+	/* Busy wait */
+	cs = emit_wait(cs, offset + 4008, MI_SEMAPHORE_SAD_EQ_SDD, 1);
+
+	cs = emit_srm(cs, RING_TIMESTAMP(engine->mmio_base), offset + 4016);
+	cs = emit_srm(cs, RING_CTX_TIMESTAMP(engine->mmio_base), offset + 4012);
+
+	intel_ring_advance(rq, cs);
+	i915_request_get(rq);
+	i915_request_add(rq);
+	intel_engine_flush_submission(engine);
+
+	/* Wait for the request to start executing, that then waits for us */
+	while (READ_ONCE(sema[2]) == 0)
+		cpu_relax();
+
+	/* Run the request for a 100us, sampling timestamps before/after */
+	preempt_disable();
+	dt = ktime_get_mono_fast_ns();
+	write_semaphore(&sema[2], 0);
+	udelay(100);
+	write_semaphore(&sema[2], 1);
+	dt = ktime_get_mono_fast_ns() - dt;
+	preempt_enable();
+
+	if (i915_request_wait(rq, 0, HZ / 2) < 0) {
+		i915_request_put(rq);
+		return -ETIME;
+	}
+	i915_request_put(rq);
+
+	pr_debug("%s CTX_TIMESTAMP: [%x, %x]\n",
+		 engine->name, sema[1], sema[3]);
+	pr_debug("%s RING_TIMESTAMP: [%x, %x]\n",
+		 engine->name, sema[0], sema[4]);
+
+	d_ctx = sema[3] - sema[1];
+	d_ring = sema[4] - sema[0];
+
+	pr_info("%s elapsed:%lldns, CTX_TIMESTAMP:%dns, RING_TIMESTAMP:%dns\n",
+		engine->name, dt,
+		intel_gt_clock_interval_to_ns(engine->gt, d_ctx),
+		intel_gt_clock_interval_to_ns(engine->gt, d_ring));
+
+	d_ctx *= RUNTIME_INFO(engine->i915)->cs_timestamp_frequency_hz;
+	if (IS_ICELAKE(engine->i915))
+		d_ring *= 12500000; /* Fixed 80ns for icl ctx timestamp? */
+	else
+		d_ring *= RUNTIME_INFO(engine->i915)->cs_timestamp_frequency_hz;
+
+	if (4 * d_ctx > 5 * d_ring || 5 * d_ctx < 4 * d_ring) {
+		pr_err("%s Mismatch between ring and context timestamps!\n",
+		       engine->name);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int live_engine_timestamps(void *arg)
+{
+	struct intel_gt *gt = arg;
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
+
+	/*
+	 * Check that CS_TIMESTAMP / CTX_TIMESTAMP are in sync, i.e. share
+	 * the same CS clock.
+	 */
+
+	if (INTEL_GEN(gt->i915) < 8)
+		return 0;
+
+	for_each_engine(engine, gt, id) {
+		int err;
+
+		st_engine_heartbeat_disable(engine);
+		err = __live_engine_timestamps(engine);
+		st_engine_heartbeat_enable(engine);
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
 static int live_engine_busy_stats(void *arg)
 {
 	struct intel_gt *gt = arg;
@@ -177,6 +333,7 @@ static int live_engine_pm(void *arg)
 int live_engine_pm_selftests(struct intel_gt *gt)
 {
 	static const struct i915_subtest tests[] = {
+		SUBTEST(live_engine_timestamps),
 		SUBTEST(live_engine_busy_stats),
 		SUBTEST(live_engine_pm),
 	};
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
