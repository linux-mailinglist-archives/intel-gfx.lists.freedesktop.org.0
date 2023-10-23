Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3CE7D40D4
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 22:22:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 341B610E250;
	Mon, 23 Oct 2023 20:22:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5881E10E24B
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 20:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698092524; x=1729628524;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=97tVtpt7eCIVexm3iZevbFHkakiIZf8nd4Nqh/KDGkY=;
 b=SYJSG0A2PnPELQ3Ovsbt23M3J+9LxQHv3TXdunt0D+jCnDTWlQbUJr5X
 0yGaZJhwmXh63c1xI1C0DyFmaIg+tS2EhKy6LmGmZ/ktJSin/Ur+RXaz4
 0jvy9F+g32SlPRsJHzpGtAUZ9Qo9RBcsW5NLWnEQtOhnx4KElwu6BXoVH
 /6UGz2Ht6duZVQ02TeaMONmokjyIDwro21Y/QAHm4z+8btzrg9xuM+eUf
 cTunGkBMXQJpK2JKSTKsCieiAZOvl6A30GA0HQxzx1DsQGkey9l1nBJyQ
 Bozh7wPRgYrg2aj6sL+qvg228mtVO/Eqakm2WiAlx36j4wY03DDqs35J0 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="371989472"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="371989472"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 13:22:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="734796510"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="734796510"
Received: from lab-ah.igk.intel.com ([10.102.138.202])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 13:22:02 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
Date: Mon, 23 Oct 2023 22:21:47 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-wabb-v4-3-f75dec962b7d@intel.com>
References: <20231023-wabb-v4-0-f75dec962b7d@intel.com>
In-Reply-To: <20231023-wabb-v4-0-f75dec962b7d@intel.com>
To: intel-gfx@lists.freedesktop.org
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=5269;
 i=andrzej.hajda@intel.com; h=from:subject:message-id;
 bh=97tVtpt7eCIVexm3iZevbFHkakiIZf8nd4Nqh/KDGkY=;
 b=owEB7QES/pANAwAKASNispPeEP3XAcsmYgBlNtXj5aQcHy5qgHHxHP8YSXRDRbWi987RCppk+syT
 L7plkyaJAbMEAAEKAB0WIQT8qEQxNN2/XeF/A00jYrKT3hD91wUCZTbV4wAKCRAjYrKT3hD91xOyC/
 wPDxU96ZbgnTgmPPpVhIwmJMhXtsfgNG8r9AxAe2GAeBWhO0YD4rONYdtIIOdzCE2DUOwnKVfducYg
 0s1xwY0ZsHSWpLeVFwXZkdojJrMb+pg7heAul/Upu+JDdYkr6C8FA+9RAAIiPQGUefzqONnO1iETgS
 WDMYSIAo8YvGx/rhk61z9SSYmpLAir6oRMVCHneGXrxIlBswYiEToj2Ty6ndkM1nEjWo7IQPVeSEOQ
 3Ya5/sOThXHh811asi+XicqlHbE+P+SGXyuJYog9pK3AgF71r7/0krRjO2d+/hil3WMkEbi9IZ1Bly
 y+AR4N6o9iX0noJm9LkdF8VTgytW/V1M7d9Z9z4Tgm9fUvKuzVGME/CTKYFILU7FVQ7svPzW1J0hr0
 80KjbWZP2MySrFkjmOJXm2tR4KrhF4MmcoPnWStT78ZntsinA3vtuXuxSPSFDUhw/yjkn57uRIkUil
 LRxjvLMRC9oTJRU/2FhJyMw2Kp5QC5adA6KwxGtV2gj2Y=
X-Developer-Key: i=andrzej.hajda@intel.com; a=openpgp;
 fpr=FCA8443134DDBF5DE17F034D2362B293DE10FDD7
Subject: [Intel-gfx] [PATCH v4 3/4] drm/i915/gt: add selftest to exercise
 WABB
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
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Test re-uses logic form indirect ctx BB selftest.

Co-developed-by: Nirmoy Das <nirmoy.das@intel.com>
Co-developed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 65 ++++++++++++++++++++++++----------
 1 file changed, 47 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 5f826b6dcf5d6f..e17b8777d21dc9 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -1555,7 +1555,7 @@ static int live_lrc_isolation(void *arg)
 	return err;
 }
 
-static int indirect_ctx_submit_req(struct intel_context *ce)
+static int wabb_ctx_submit_req(struct intel_context *ce)
 {
 	struct i915_request *rq;
 	int err = 0;
@@ -1579,7 +1579,8 @@ static int indirect_ctx_submit_req(struct intel_context *ce)
 #define CTX_BB_CANARY_INDEX  (CTX_BB_CANARY_OFFSET / sizeof(u32))
 
 static u32 *
-emit_indirect_ctx_bb_canary(const struct intel_context *ce, u32 *cs)
+emit_wabb_ctx_canary(const struct intel_context *ce,
+		     u32 *cs, bool per_ctx)
 {
 	*cs++ = MI_STORE_REGISTER_MEM_GEN8 |
 		MI_SRM_LRM_GLOBAL_GTT |
@@ -1587,26 +1588,43 @@ emit_indirect_ctx_bb_canary(const struct intel_context *ce, u32 *cs)
 	*cs++ = i915_mmio_reg_offset(RING_START(0));
 	*cs++ = i915_ggtt_offset(ce->state) +
 		context_wa_bb_offset(ce) +
-		CTX_BB_CANARY_OFFSET;
+		CTX_BB_CANARY_OFFSET +
+		(per_ctx ? PAGE_SIZE : 0);
 	*cs++ = 0;
 
 	return cs;
 }
 
+static u32 *
+emit_indirect_ctx_bb_canary(const struct intel_context *ce, u32 *cs)
+{
+	return emit_wabb_ctx_canary(ce, cs, false);
+}
+
+static u32 *
+emit_per_ctx_bb_canary(const struct intel_context *ce, u32 *cs)
+{
+	return emit_wabb_ctx_canary(ce, cs, true);
+}
+
 static void
-indirect_ctx_bb_setup(struct intel_context *ce)
+wabb_ctx_setup(struct intel_context *ce, bool per_ctx)
 {
-	u32 *cs = context_indirect_bb(ce);
+	u32 *cs = context_wabb(ce, per_ctx);
 
 	cs[CTX_BB_CANARY_INDEX] = 0xdeadf00d;
 
-	setup_indirect_ctx_bb(ce, ce->engine, emit_indirect_ctx_bb_canary);
+	if (per_ctx)
+		setup_per_ctx_bb(ce, ce->engine, emit_per_ctx_bb_canary);
+	else
+		setup_indirect_ctx_bb(ce, ce->engine, emit_indirect_ctx_bb_canary);
 }
 
-static bool check_ring_start(struct intel_context *ce)
+static bool check_ring_start(struct intel_context *ce, bool per_ctx)
 {
 	const u32 * const ctx_bb = (void *)(ce->lrc_reg_state) -
-		LRC_STATE_OFFSET + context_wa_bb_offset(ce);
+		LRC_STATE_OFFSET + context_wa_bb_offset(ce) +
+		(per_ctx ? PAGE_SIZE : 0);
 
 	if (ctx_bb[CTX_BB_CANARY_INDEX] == ce->lrc_reg_state[CTX_RING_START])
 		return true;
@@ -1618,21 +1636,21 @@ static bool check_ring_start(struct intel_context *ce)
 	return false;
 }
 
-static int indirect_ctx_bb_check(struct intel_context *ce)
+static int wabb_ctx_check(struct intel_context *ce, bool per_ctx)
 {
 	int err;
 
-	err = indirect_ctx_submit_req(ce);
+	err = wabb_ctx_submit_req(ce);
 	if (err)
 		return err;
 
-	if (!check_ring_start(ce))
+	if (!check_ring_start(ce, per_ctx))
 		return -EINVAL;
 
 	return 0;
 }
 
-static int __live_lrc_indirect_ctx_bb(struct intel_engine_cs *engine)
+static int __lrc_wabb_ctx(struct intel_engine_cs *engine, bool per_ctx)
 {
 	struct intel_context *a, *b;
 	int err;
@@ -1667,14 +1685,14 @@ static int __live_lrc_indirect_ctx_bb(struct intel_engine_cs *engine)
 	 * As ring start is restored apriori of starting the indirect ctx bb and
 	 * as it will be different for each context, it fits to this purpose.
 	 */
-	indirect_ctx_bb_setup(a);
-	indirect_ctx_bb_setup(b);
+	wabb_ctx_setup(a, per_ctx);
+	wabb_ctx_setup(b, per_ctx);
 
-	err = indirect_ctx_bb_check(a);
+	err = wabb_ctx_check(a, per_ctx);
 	if (err)
 		goto unpin_b;
 
-	err = indirect_ctx_bb_check(b);
+	err = wabb_ctx_check(b, per_ctx);
 
 unpin_b:
 	intel_context_unpin(b);
@@ -1688,7 +1706,7 @@ static int __live_lrc_indirect_ctx_bb(struct intel_engine_cs *engine)
 	return err;
 }
 
-static int live_lrc_indirect_ctx_bb(void *arg)
+static int lrc_wabb_ctx(void *arg, bool per_ctx)
 {
 	struct intel_gt *gt = arg;
 	struct intel_engine_cs *engine;
@@ -1697,7 +1715,7 @@ static int live_lrc_indirect_ctx_bb(void *arg)
 
 	for_each_engine(engine, gt, id) {
 		intel_engine_pm_get(engine);
-		err = __live_lrc_indirect_ctx_bb(engine);
+		err = __lrc_wabb_ctx(engine, per_ctx);
 		intel_engine_pm_put(engine);
 
 		if (igt_flush_test(gt->i915))
@@ -1710,6 +1728,16 @@ static int live_lrc_indirect_ctx_bb(void *arg)
 	return err;
 }
 
+static int live_lrc_indirect_ctx_bb(void *arg)
+{
+	return lrc_wabb_ctx(arg, false);
+}
+
+static int live_lrc_per_ctx_bb(void *arg)
+{
+	return lrc_wabb_ctx(arg, true);
+}
+
 static void garbage_reset(struct intel_engine_cs *engine,
 			  struct i915_request *rq)
 {
@@ -1947,6 +1975,7 @@ int intel_lrc_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(live_lrc_garbage),
 		SUBTEST(live_pphwsp_runtime),
 		SUBTEST(live_lrc_indirect_ctx_bb),
+		SUBTEST(live_lrc_per_ctx_bb),
 	};
 
 	if (!HAS_LOGICAL_RING_CONTEXTS(i915))

-- 
2.34.1

