Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F081B7BCC
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2020 18:39:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CDA96EAC8;
	Fri, 24 Apr 2020 16:39:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54E956E0D5
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Apr 2020 16:39:16 +0000 (UTC)
IronPort-SDR: MBaS3rv9QUI2zklvOsyV5NrDxa7u6karABPSy3VUu/M3zdFpOvTxjIUbZwRGbAm4S11N7uNJR7
 YIo2fldE7VxQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2020 09:39:15 -0700
IronPort-SDR: ++vxgkm9tGLHLETNVBlykLeEFxuIsep//xjco3Z0fF8IX4fkqWBr3XClhhlPCU/3u6NV0ZhNOh
 PtWV5EW7/aCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,311,1583222400"; d="scan'208";a="292687451"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by orsmga008.jf.intel.com with ESMTP; 24 Apr 2020 09:39:14 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id CBCE8843AD4; Fri, 24 Apr 2020 19:38:44 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Apr 2020 19:38:42 +0300
Message-Id: <20200424163843.16585-3-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200424163843.16585-1-mika.kuoppala@linux.intel.com>
References: <20200424163843.16585-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: Add live selftests for indirect
 ctx batchbuffers
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Indirect ctx batchbuffers are a hw feature of which
batch can be run, by hardware, during context restoration stage.
Driver can setup a batchbuffer and also an offset into the
context image. When context image is marshalled from
memory to registers, and when the offset from the start of
context register state is equal of what driver pre-determined,
batch will run. So one can manipulate context restoration
process at cacheline granularity, given some limitations,
as you need to have rudimentaries in place before you can
run a batch.

Add selftest which will write the ring start register
to a canary spot. This will test that hardware will run a
batchbuffer for the context in question.

v2: request wait fix, naming (Chris)
v3: test order (Chris)

Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Acked-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 151 +++++++++++++++++++++++++
 1 file changed, 151 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index d10c38aec500..beeb4b7cd161 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -5710,6 +5710,156 @@ static int live_lrc_isolation(void *arg)
 	return err;
 }
 
+static int indirect_ctx_submit_req(struct intel_context *ce)
+{
+	struct i915_request *rq;
+	int err = 0;
+
+	rq = intel_context_create_request(ce);
+	if (IS_ERR(rq))
+		return PTR_ERR(rq);
+
+	i915_request_get(rq);
+	i915_request_add(rq);
+
+	if (i915_request_wait(rq, 0, HZ / 5) < 0)
+		err = -ETIME;
+
+	i915_request_put(rq);
+
+	return err;
+}
+
+#define CTX_BB_CANARY_OFFSET (3*1024)
+#define CTX_BB_CANARY_INDEX  (CTX_BB_CANARY_OFFSET/sizeof(u32))
+
+static u32 *
+emit_indirect_ctx_bb_canary(struct intel_context *ce, u32 *cs)
+{
+	const u32 ring_start_reg = i915_mmio_reg_offset(RING_START(0));
+	const u32 srm = MI_STORE_REGISTER_MEM_GEN8 |
+		MI_SRM_LRM_GLOBAL_GTT | MI_LRI_LRM_CS_MMIO;
+
+	*cs++ = srm;
+	*cs++ = ring_start_reg;
+	*cs++ = i915_ggtt_offset(ce->state) +
+		ce->ctx_bb_offset + CTX_BB_CANARY_OFFSET;
+	*cs++ = 0;
+
+	return cs;
+}
+
+static void
+indirect_ctx_bb_setup(struct intel_context *ce)
+{
+	u32 *cs = context_indirect_bb(ce);
+
+	cs[CTX_BB_CANARY_INDEX] = 0xdeadf00d;
+
+	setup_indirect_ctx_bb(ce, emit_indirect_ctx_bb_canary);
+}
+
+static bool check_ring_start(struct intel_context *ce)
+{
+	const u32 * const ctx_bb = (void *)(ce->lrc_reg_state) -
+		LRC_STATE_OFFSET + ce->ctx_bb_offset;
+
+	if (ctx_bb[CTX_BB_CANARY_INDEX] == ce->lrc_reg_state[CTX_RING_START])
+		return true;
+
+	pr_err("ring start mismatch: canary 0x%08x vs state 0x%08x\n",
+	       ctx_bb[CTX_BB_CANARY_INDEX],
+	       ce->lrc_reg_state[CTX_RING_START]);
+
+	return false;
+}
+
+static int indirect_ctx_bb_check(struct intel_context *ce)
+{
+	int err;
+
+	err = indirect_ctx_submit_req(ce);
+	if (err)
+		return err;
+
+	if (!check_ring_start(ce))
+		return -EINVAL;
+
+	return 0;
+}
+
+static int __live_lrc_indirect_ctx_bb(struct intel_engine_cs *engine)
+{
+	struct intel_context *a, *b;
+	int err = 0;
+
+	a = intel_context_create(engine);
+	b = intel_context_create(engine);
+
+	err = intel_context_pin(a);
+	if (err)
+		return err;
+
+	err = intel_context_pin(b);
+	if (err) {
+		intel_context_put(a);
+		return err;
+	}
+
+	/* We use the already reserved extra page in context state */
+	if (!a->ctx_bb_offset) {
+		GEM_BUG_ON(b->ctx_bb_offset);
+		GEM_BUG_ON(INTEL_GEN(engine->i915) == 12);
+		goto out;
+	}
+
+	/* In order to test that our per context bb is truly per context,
+	 * and executes at the intended spot on context restoring process,
+	 * make the batch store the ring start value to memory.
+	 * As ring start is restored apriori of starting the indirect ctx bb and
+	 * as it will be different for each context, it fits to this purpose.
+	 */
+	indirect_ctx_bb_setup(a);
+	indirect_ctx_bb_setup(b);
+
+	err = indirect_ctx_bb_check(a);
+	if (err)
+		goto out;
+
+	err = indirect_ctx_bb_check(b);
+out:
+	intel_context_unpin(b);
+	intel_context_put(b);
+
+	intel_context_unpin(a);
+	intel_context_put(a);
+
+	return err;
+}
+
+static int live_lrc_indirect_ctx_bb(void *arg)
+{
+	struct intel_gt *gt = arg;
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
+	int err = 0;
+
+	for_each_engine(engine, gt, id) {
+
+		intel_engine_pm_get(engine);
+		err = __live_lrc_indirect_ctx_bb(engine);
+		intel_engine_pm_put(engine);
+
+		if (igt_flush_test(gt->i915))
+			err = -EIO;
+
+		if (err)
+			break;
+	}
+
+	return err;
+}
+
 static void garbage_reset(struct intel_engine_cs *engine,
 			  struct i915_request *rq)
 {
@@ -5945,6 +6095,7 @@ int intel_lrc_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(live_lrc_timestamp),
 		SUBTEST(live_lrc_garbage),
 		SUBTEST(live_pphwsp_runtime),
+		SUBTEST(live_lrc_indirect_ctx_bb),
 	};
 
 	if (!HAS_LOGICAL_RING_CONTEXTS(i915))
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
