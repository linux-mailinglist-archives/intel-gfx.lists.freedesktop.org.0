Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB49654A331
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jun 2022 02:46:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5D4710E0C9;
	Tue, 14 Jun 2022 00:46:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C086510E0C9
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jun 2022 00:46:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655167584; x=1686703584;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=897tOZ/sY5q6raM9c5jNK7s3G/qHJnbusxMRAVMh30I=;
 b=bwZAjjBJxsjtqMaALydpWB2d31e8UJH0WCqFw7UjLDdolMoRk366IsNy
 nkUFnxMQ2D+MSugy6Ex3V4Hn8ZPrnzHCLOeJeeaegYnbKKN/Rzj+/NpzK
 rKKjveou2W23YqGsuqTWbpA/f20tWisx6H+/c6LvoAN/F8QsuYzZTNZAD
 hs13X5TnX5rAjW1Dcm/SQsaY70/oHyPw78JUxgkhJPhYf2Y0r2hUKbrjv
 ycrqP7hGEAhbxRQBMpKE2Wn2TMId0iNIxmvGGaBMEpMHymJmUjHPPTHjr
 J3sda52sTdnR/vn7l8+47GYPm3pH5JKdTJ9MkT7eSkpqGZU41xghxvBKn A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10377"; a="279499832"
X-IronPort-AV: E=Sophos;i="5.91,298,1647327600"; d="scan'208";a="279499832"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2022 17:46:24 -0700
X-IronPort-AV: E=Sophos;i="5.91,298,1647327600"; d="scan'208";a="612005106"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2022 17:46:23 -0700
From: "Nerlige Ramappa, Umesh" <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	John.C.Harrison@Intel.com
Date: Tue, 14 Jun 2022 00:46:16 +0000
Message-Id: <20220614004616.45561-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] i915/pmu: Wire GuC backend to per-client
 busyness
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

GuC provides engine_id and last_switch_in ticks for an active context in the
pphwsp. The context image provides a 32 bit total ticks which is the accumulated
by the context (a.k.a. context[CTX_TIMESTAMP]). This information is used to
calculate the context busyness as follows:

If the engine_id is valid, then busyness is the sum of accumulated total ticks
and active ticks. Active ticks is calculated with current gt time as reference.

If engine_id is invalid, busyness is equal to accumulated total ticks.

Since KMD (CPU) retrieves busyness data from 2 sources - GPU and GuC, a
potential race was highlighted in an earlier review that can lead to double
accounting of busyness. While the solution to this is a wip, busyness is still
usable for platforms running GuC submission.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context.c       | 11 +++-
 drivers/gpu/drm/i915/gt/intel_context.h       |  6 +-
 drivers/gpu/drm/i915/gt/intel_context_types.h |  3 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |  5 ++
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 55 ++++++++++++++++++-
 drivers/gpu/drm/i915/i915_drm_client.c        |  6 +-
 6 files changed, 75 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index 4070cb5711d8..a49f313db911 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -576,16 +576,23 @@ void intel_context_bind_parent_child(struct intel_context *parent,
 	child->parallel.parent = parent;
 }
 
-u64 intel_context_get_total_runtime_ns(const struct intel_context *ce)
+u64 intel_context_get_total_runtime_ns(struct intel_context *ce)
 {
 	u64 total, active;
 
+	if (ce->ops->update_stats)
+		ce->ops->update_stats(ce);
+
 	total = ce->stats.runtime.total;
 	if (ce->ops->flags & COPS_RUNTIME_CYCLES)
 		total *= ce->engine->gt->clock_period_ns;
 
 	active = READ_ONCE(ce->stats.active);
-	if (active)
+	/*
+	 * GuC backend returns the actual time the context was active, so skip
+	 * the calculation here for GuC.
+	 */
+	if (active && !intel_engine_uses_guc(ce->engine))
 		active = intel_context_clock() - active;
 
 	return total + active;
diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
index b7d3214d2cdd..5fc7c19ab29b 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -56,7 +56,7 @@ static inline bool intel_context_is_parent(struct intel_context *ce)
 	return !!ce->parallel.number_children;
 }
 
-static inline bool intel_context_is_pinned(struct intel_context *ce);
+static inline bool intel_context_is_pinned(const struct intel_context *ce);
 
 static inline struct intel_context *
 intel_context_to_parent(struct intel_context *ce)
@@ -116,7 +116,7 @@ static inline int intel_context_lock_pinned(struct intel_context *ce)
  * Returns: true if the context is currently pinned for use by the GPU.
  */
 static inline bool
-intel_context_is_pinned(struct intel_context *ce)
+intel_context_is_pinned(const struct intel_context *ce)
 {
 	return atomic_read(&ce->pin_count);
 }
@@ -351,7 +351,7 @@ intel_context_clear_nopreempt(struct intel_context *ce)
 	clear_bit(CONTEXT_NOPREEMPT, &ce->flags);
 }
 
-u64 intel_context_get_total_runtime_ns(const struct intel_context *ce);
+u64 intel_context_get_total_runtime_ns(struct intel_context *ce);
 u64 intel_context_get_avg_runtime_ns(struct intel_context *ce);
 
 static inline u64 intel_context_clock(void)
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 09f82545789f..0a3290c99a31 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -55,6 +55,8 @@ struct intel_context_ops {
 
 	void (*sched_disable)(struct intel_context *ce);
 
+	void (*update_stats)(struct intel_context *ce);
+
 	void (*reset)(struct intel_context *ce);
 	void (*destroy)(struct kref *kref);
 
@@ -146,6 +148,7 @@ struct intel_context {
 			struct ewma_runtime avg;
 			u64 total;
 			u32 last;
+			u64 start_gt_clk;
 			I915_SELFTEST_DECLARE(u32 num_underflow);
 			I915_SELFTEST_DECLARE(u32 max_underflow);
 		} runtime;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
index b3c9a9327f76..6231ad03e4eb 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
@@ -196,6 +196,11 @@ static inline u8 guc_class_to_engine_class(u8 guc_class)
 	return guc_class_engine_class_map[guc_class];
 }
 
+/* Per context engine usage stats: */
+#define PPHWSP_GUC_CONTEXT_USAGE_STAMP_LO	(0x500 / sizeof(u32))
+#define PPHWSP_GUC_CONTEXT_USAGE_STAMP_HI	(PPHWSP_GUC_CONTEXT_USAGE_STAMP_LO + 1)
+#define PPHWSP_GUC_CONTEXT_USAGE_ENGINE_ID	(PPHWSP_GUC_CONTEXT_USAGE_STAMP_HI + 1)
+
 /* Work item for submitting workloads into work queue of GuC. */
 struct guc_wq_item {
 	u32 header;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 5a1dfacf24ea..b86401144417 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -378,7 +378,7 @@ static inline void set_context_guc_id_invalid(struct intel_context *ce)
 	ce->guc_id.id = GUC_INVALID_CONTEXT_ID;
 }
 
-static inline struct intel_guc *ce_to_guc(struct intel_context *ce)
+static inline struct intel_guc *ce_to_guc(const struct intel_context *ce)
 {
 	return &ce->engine->gt->uc.guc;
 }
@@ -1323,13 +1323,16 @@ static void __update_guc_busyness_stats(struct intel_guc *guc)
 	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
 }
 
+static void __guc_context_update_clks(struct intel_context *ce);
 static void guc_timestamp_ping(struct work_struct *wrk)
 {
 	struct intel_guc *guc = container_of(wrk, typeof(*guc),
 					     timestamp.work.work);
 	struct intel_uc *uc = container_of(guc, typeof(*uc), guc);
 	struct intel_gt *gt = guc_to_gt(guc);
+	struct intel_context *ce;
 	intel_wakeref_t wakeref;
+	unsigned long index;
 	int srcu, ret;
 
 	/*
@@ -1343,6 +1346,10 @@ static void guc_timestamp_ping(struct work_struct *wrk)
 	with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref)
 		__update_guc_busyness_stats(guc);
 
+	/* adjust context stats for overflow */
+	xa_for_each(&guc->context_lookup, index, ce)
+		__guc_context_update_clks(ce);
+
 	intel_gt_reset_unlock(gt, srcu);
 
 	mod_delayed_work(system_highpri_wq, &guc->timestamp.work,
@@ -1405,6 +1412,48 @@ void intel_guc_busyness_unpark(struct intel_gt *gt)
 			 guc->timestamp.ping_delay);
 }
 
+static void __guc_context_update_clks(struct intel_context *ce)
+{
+	struct intel_guc *guc = ce_to_guc(ce);
+	struct intel_gt *gt = ce->engine->gt;
+	u32 *pphwsp, last_switch, engine_id;
+	u64 start_gt_clk = 0, active = 0;
+	unsigned long flags;
+	ktime_t unused;
+
+	spin_lock_irqsave(&guc->timestamp.lock, flags);
+
+	pphwsp = ((void *)ce->lrc_reg_state) - LRC_STATE_OFFSET;
+	last_switch = READ_ONCE(pphwsp[PPHWSP_GUC_CONTEXT_USAGE_STAMP_LO]);
+	engine_id = READ_ONCE(pphwsp[PPHWSP_GUC_CONTEXT_USAGE_ENGINE_ID]);
+
+	guc_update_pm_timestamp(guc, &unused);
+
+	if (engine_id != 0xffffffff && last_switch) {
+		start_gt_clk = READ_ONCE(ce->stats.runtime.start_gt_clk);
+		__extend_last_switch(guc, &start_gt_clk, last_switch);
+		active = intel_gt_clock_interval_to_ns(gt, guc->timestamp.gt_stamp - start_gt_clk);
+		WRITE_ONCE(ce->stats.runtime.start_gt_clk, start_gt_clk);
+		WRITE_ONCE(ce->stats.active, active);
+	} else {
+		lrc_update_runtime(ce);
+	}
+
+	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
+}
+
+static void guc_context_update_stats(struct intel_context *ce)
+{
+	if (!intel_context_pin_if_active(ce)) {
+		WRITE_ONCE(ce->stats.runtime.start_gt_clk, 0);
+		WRITE_ONCE(ce->stats.active, 0);
+		return;
+	}
+
+	__guc_context_update_clks(ce);
+	intel_context_unpin(ce);
+}
+
 static inline bool
 submission_disabled(struct intel_guc *guc)
 {
@@ -2585,6 +2634,7 @@ static void guc_context_unpin(struct intel_context *ce)
 {
 	struct intel_guc *guc = ce_to_guc(ce);
 
+	lrc_update_runtime(ce);
 	unpin_guc_id(guc, ce);
 	lrc_unpin(ce);
 
@@ -3183,6 +3233,7 @@ static void remove_from_context(struct i915_request *rq)
 }
 
 static const struct intel_context_ops guc_context_ops = {
+	.flags = COPS_RUNTIME_CYCLES,
 	.alloc = guc_context_alloc,
 
 	.pre_pin = guc_context_pre_pin,
@@ -3199,6 +3250,8 @@ static const struct intel_context_ops guc_context_ops = {
 
 	.sched_disable = guc_context_sched_disable,
 
+	.update_stats = guc_context_update_stats,
+
 	.reset = lrc_reset,
 	.destroy = guc_context_destroy,
 
diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
index 18d38cb59923..118db6f03f15 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.c
+++ b/drivers/gpu/drm/i915/i915_drm_client.c
@@ -146,11 +146,7 @@ void i915_drm_client_fdinfo(struct seq_file *m, struct file *f)
 		   PCI_SLOT(pdev->devfn), PCI_FUNC(pdev->devfn));
 	seq_printf(m, "drm-client-id:\t%u\n", client->id);
 
-	/*
-	 * Temporarily skip showing client engine information with GuC submission till
-	 * fetching engine busyness is implemented in the GuC submission backend
-	 */
-	if (GRAPHICS_VER(i915) < 8 || intel_uc_uses_guc_submission(&i915->gt0.uc))
+	if (GRAPHICS_VER(i915) < 8)
 		return;
 
 	for (i = 0; i < ARRAY_SIZE(uabi_class_names); i++)
-- 
2.25.1

