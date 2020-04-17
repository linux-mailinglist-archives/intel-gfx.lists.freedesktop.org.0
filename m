Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2226D1AE01F
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 16:45:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 200B96EC27;
	Fri, 17 Apr 2020 14:45:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 942836EC06
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 14:44:59 +0000 (UTC)
IronPort-SDR: kHSaTC6o5dZOfweudycw6EdTvXmmfm6b72mRCzHBJAv30Xk8zsaGuIHQrjqRejr7pLmkOLQem0
 wC+77lrgTn/A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2020 07:44:59 -0700
IronPort-SDR: Cx5+WGN8M15GtXVb1aMN0vBVgOOqLUCDZWztVKTOq1vUVxJypF9WUCIGtpkkuNqqD3cp1dK2Bp
 ohP2xV8BH3UA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,395,1580803200"; d="scan'208";a="257599071"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by orsmga006.jf.intel.com with ESMTP; 17 Apr 2020 07:44:58 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id B50378400F9; Fri, 17 Apr 2020 17:44:32 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Apr 2020 17:44:28 +0300
Message-Id: <20200417144429.20575-2-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200417144429.20575-1-mika.kuoppala@linux.intel.com>
References: <20200417144429.20575-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Add live selftests for indirect
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

Add live selftest for indirect ctx context batchbuffers

Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 152 ++++++++++++++++++++++++-
 1 file changed, 151 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 6f5e35afe1b2..cd7543e10813 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -5363,6 +5363,155 @@ static int live_lrc_isolation(void *arg)
 	return err;
 }
 
+static int ctx_bb_submit_req(struct intel_context *ce)
+{
+	struct i915_request *rq;
+	int err;
+
+	rq = intel_context_create_request(ce);
+	if (IS_ERR(rq))
+		return PTR_ERR(rq);
+
+	i915_request_get(rq);
+	i915_request_add(rq);
+
+	err = i915_request_wait(rq, 0, HZ / 5);
+	if (err < 0)
+		pr_err("%s: request not completed!\n", rq->engine->name);
+
+	i915_request_put(rq);
+
+	return 0;
+}
+
+#define CTX_BB_CANARY_OFFSET (3*1024)
+#define CTX_BB_CANARY_INDEX  (CTX_BB_CANARY_OFFSET/sizeof(u32))
+
+static u32 *
+emit_ctx_bb_canary(struct intel_context *ce, u32 *cs)
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
+ctx_bb_setup(struct intel_context *ce)
+{
+	u32 *cs = (void *)(ce->lrc_reg_state) -
+		LRC_STATE_PN * PAGE_SIZE + ce->ctx_bb_offset;
+
+	cs[CTX_BB_CANARY_INDEX] = 0xdeadf00d;
+
+	execlists_setup_indirect_ctx_bb(ce, emit_ctx_bb_canary);
+}
+
+static bool check_ring_start(struct intel_context *ce)
+{
+	const u32 * const ctx_bb = (void *)(ce->lrc_reg_state) -
+		LRC_STATE_PN * PAGE_SIZE + ce->ctx_bb_offset;
+
+	if (ctx_bb[CTX_BB_CANARY_INDEX] == ce->lrc_reg_state[CTX_RING_START])
+		return true;
+
+	pr_err("ring start mismatch canary 0x%08x vs state 0x%08x\n",
+	       ctx_bb[CTX_BB_CANARY_INDEX],
+	       ce->lrc_reg_state[CTX_RING_START]);
+
+	return false;
+}
+
+static int ctx_bb_check(struct intel_context *ce)
+{
+	int err;
+
+	err = ctx_bb_submit_req(ce);
+	if (err)
+		return err;
+
+	if (!check_ring_start(ce))
+		return -EINVAL;
+
+	return 0;
+}
+
+static int __per_ctx_bb(struct intel_engine_cs *engine)
+{
+	struct intel_context *ce1, *ce2;
+	int err = 0;
+
+	ce1 = intel_context_create(engine);
+	ce2 = intel_context_create(engine);
+
+	err = intel_context_pin(ce1);
+	if (err)
+		return err;
+
+	err = intel_context_pin(ce2);
+	if (err) {
+		intel_context_put(ce1);
+		return err;
+	}
+
+	if (!ce1->ctx_bb_offset) {
+		GEM_BUG_ON(ce2->ctx_bb_offset);
+		/* must have */
+		GEM_BUG_ON(INTEL_GEN(engine->i915) == 12);
+		goto out;
+	}
+
+	/* make the batch to grab ring start and write it to canary spot */
+	ctx_bb_setup(ce1);
+	ctx_bb_setup(ce2);
+
+	err = ctx_bb_check(ce1);
+	if (err)
+		goto out;
+
+	err = ctx_bb_check(ce2);
+out:
+	intel_context_unpin(ce2);
+	intel_context_put(ce2);
+
+	intel_context_unpin(ce1);
+	intel_context_put(ce1);
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
+		err = __per_ctx_bb(engine);
+		intel_engine_pm_put(engine);
+
+		if (err)
+			break;
+
+		if (igt_flush_test(gt->i915)) {
+			err = -EIO;
+			break;
+		}
+	}
+
+	return err;
+}
+
 static void garbage_reset(struct intel_engine_cs *engine,
 			  struct i915_request *rq)
 {
@@ -5594,10 +5743,11 @@ int intel_lrc_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(live_lrc_fixed),
 		SUBTEST(live_lrc_state),
 		SUBTEST(live_lrc_gpr),
-		SUBTEST(live_lrc_isolation),
+		SUBTEST(live_lrc_indirect_ctx_bb),
 		SUBTEST(live_lrc_timestamp),
 		SUBTEST(live_lrc_garbage),
 		SUBTEST(live_pphwsp_runtime),
+		SUBTEST(live_lrc_isolation),
 	};
 
 	if (!HAS_LOGICAL_RING_CONTEXTS(i915))
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
