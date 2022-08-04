Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C6058A3DC
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Aug 2022 01:22:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA65A113284;
	Thu,  4 Aug 2022 23:21:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 310D4A1F1D
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Aug 2022 23:21:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659655293; x=1691191293;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DJDNDHDM0AA7+/A70FPAcAxarn755Uooi2lcFloYpeY=;
 b=gpgkRLJF8JhSahYdHCNuV1mni3mEMROABSDkJJQ0E/wDs3OQFL5p9JEr
 IcBZztzSA9ERUcEBlXJJBOrsmgIQzeJJZfiHcpq8qGSwmpmR8O5wrN60x
 poXjr/zkF0wz647ufXAiNqeD4Dvk8GhWgFP+xCSPLv6/wWdkrO0OCea1C
 t2jNoHWFP6uO7xujoiTdsRMddq6W0ovJz1705TDRdTV2SbRhlVzsB39YN
 Jwid7T7mXyDNxGm9rsSXyhLhuxrt2PseRUPsLly4mGr6KQBNiG92NGBVf
 yPfWkhhpKJUtGlCIDDoDSNTo4yXyNc3SZqGMl5XcqWKUzjC/fvbXNrvPb Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10429"; a="270459192"
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="270459192"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2022 16:21:31 -0700
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="631793509"
Received: from unerlige-desk.jf.intel.com ([10.165.21.210])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2022 16:21:31 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Thu,  4 Aug 2022 16:21:25 -0700
Message-Id: <20220804232125.211449-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.37.1
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

GuC provides engine_id and last_switch_in ticks for an active context in
the pphwsp. The context image provides a 32 bit total ticks which is the
accumulated by the context (a.k.a. context[CTX_TIMESTAMP]). This
information is used to calculate the context busyness as follows:

If the engine_id is valid, then busyness is the sum of accumulated total
ticks and active ticks. Active ticks is calculated with current gt time
as reference.

If engine_id is invalid, busyness is equal to accumulated total ticks.

Since KMD (CPU) retrieves busyness data from 2 sources - GPU and GuC, a
potential race was highlighted in an earlier review that can lead to
double accounting of busyness. While the solution to this is a wip,
busyness is still usable for platforms running GuC submission.

Remaining work: Enable and test context busyness for
virtual_parent_context_ops and virtual_child_context_ops.

v2: (Tvrtko)
- Use COPS_RUNTIME_ACTIVE_TOTAL
- Add code comment for the race
- Undo local variables initializations

v3:
- Add support for virtual engines based on
  https://patchwork.freedesktop.org/series/105227/

v4:
- Update commit message with remaining work.
- Rebase

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context.c       | 12 +++-
 drivers/gpu/drm/i915/gt/intel_context.h       |  6 +-
 drivers/gpu/drm/i915/gt/intel_context_types.h |  6 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |  5 ++
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 65 ++++++++++++++++++-
 drivers/gpu/drm/i915/i915_drm_client.c        |  6 +-
 6 files changed, 89 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index 654a092ed3d6..e2d70a9fdac0 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -576,16 +576,24 @@ void intel_context_bind_parent_child(struct intel_context *parent,
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
+	 * When COPS_RUNTIME_ACTIVE_TOTAL is set for ce->cops, the backend
+	 * already provides the total active time of the context, so skip this
+	 * calculation when this flag is set.
+	 */
+	if (active && !(ce->ops->flags & COPS_RUNTIME_ACTIVE_TOTAL))
 		active = intel_context_clock() - active;
 
 	return total + active;
diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
index 8e2d70630c49..3d1d7436c1a4 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -58,7 +58,7 @@ static inline bool intel_context_is_parent(struct intel_context *ce)
 	return !!ce->parallel.number_children;
 }
 
-static inline bool intel_context_is_pinned(struct intel_context *ce);
+static inline bool intel_context_is_pinned(const struct intel_context *ce);
 
 static inline struct intel_context *
 intel_context_to_parent(struct intel_context *ce)
@@ -118,7 +118,7 @@ static inline int intel_context_lock_pinned(struct intel_context *ce)
  * Returns: true if the context is currently pinned for use by the GPU.
  */
 static inline bool
-intel_context_is_pinned(struct intel_context *ce)
+intel_context_is_pinned(const struct intel_context *ce)
 {
 	return atomic_read(&ce->pin_count);
 }
@@ -362,7 +362,7 @@ intel_context_clear_nopreempt(struct intel_context *ce)
 	clear_bit(CONTEXT_NOPREEMPT, &ce->flags);
 }
 
-u64 intel_context_get_total_runtime_ns(const struct intel_context *ce);
+u64 intel_context_get_total_runtime_ns(struct intel_context *ce);
 u64 intel_context_get_avg_runtime_ns(struct intel_context *ce);
 
 static inline u64 intel_context_clock(void)
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index 04eacae1aca5..f7ff4c7d81c7 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -38,6 +38,9 @@ struct intel_context_ops {
 #define COPS_RUNTIME_CYCLES_BIT 1
 #define COPS_RUNTIME_CYCLES BIT(COPS_RUNTIME_CYCLES_BIT)
 
+#define COPS_RUNTIME_ACTIVE_TOTAL_BIT 2
+#define COPS_RUNTIME_ACTIVE_TOTAL BIT(COPS_RUNTIME_ACTIVE_TOTAL_BIT)
+
 	int (*alloc)(struct intel_context *ce);
 
 	void (*revoke)(struct intel_context *ce, struct i915_request *rq,
@@ -56,6 +59,8 @@ struct intel_context_ops {
 
 	void (*sched_disable)(struct intel_context *ce);
 
+	void (*update_stats)(struct intel_context *ce);
+
 	void (*reset)(struct intel_context *ce);
 	void (*destroy)(struct kref *kref);
 
@@ -148,6 +153,7 @@ struct intel_context {
 			struct ewma_runtime avg;
 			u64 total;
 			u32 last;
+			u64 start_gt_clk;
 			I915_SELFTEST_DECLARE(u32 num_underflow);
 			I915_SELFTEST_DECLARE(u32 max_underflow);
 		} runtime;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
index 323b055e5db9..c7b54f1631b9 100644
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
index 0d17da77e787..c9fefa254a7e 100644
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
@@ -1376,13 +1376,16 @@ static void __update_guc_busyness_stats(struct intel_guc *guc)
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
@@ -1396,6 +1399,10 @@ static void guc_timestamp_ping(struct work_struct *wrk)
 	with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref)
 		__update_guc_busyness_stats(guc);
 
+	/* adjust context stats for overflow */
+	xa_for_each(&guc->context_lookup, index, ce)
+		__guc_context_update_clks(ce);
+
 	intel_gt_reset_unlock(gt, srcu);
 
 	mod_delayed_work(system_highpri_wq, &guc->timestamp.work,
@@ -1469,6 +1476,56 @@ void intel_guc_busyness_unpark(struct intel_gt *gt)
 			 guc->timestamp.ping_delay);
 }
 
+static void __guc_context_update_clks(struct intel_context *ce)
+{
+	struct intel_guc *guc = ce_to_guc(ce);
+	struct intel_gt *gt = ce->engine->gt;
+	u32 *pphwsp, last_switch, engine_id;
+	u64 start_gt_clk, active;
+	unsigned long flags;
+	ktime_t unused;
+
+	spin_lock_irqsave(&guc->timestamp.lock, flags);
+
+	/*
+	 * GPU updates ce->lrc_reg_state[CTX_TIMESTAMP] when context is switched
+	 * out, however GuC updates PPHWSP offsets below. Hence KMD (CPU)
+	 * relies on GuC and GPU for busyness calculations. Due to this, A
+	 * potential race was highlighted in an earlier review that can lead to
+	 * double accounting of busyness. While the solution to this is a wip,
+	 * busyness is still usable for platforms running GuC submission.
+	 */
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
@@ -2723,6 +2780,7 @@ static void guc_context_unpin(struct intel_context *ce)
 {
 	struct intel_guc *guc = ce_to_guc(ce);
 
+	lrc_update_runtime(ce);
 	unpin_guc_id(guc, ce);
 	lrc_unpin(ce);
 
@@ -3344,6 +3402,7 @@ static void remove_from_context(struct i915_request *rq)
 }
 
 static const struct intel_context_ops guc_context_ops = {
+	.flags = COPS_RUNTIME_CYCLES | COPS_RUNTIME_ACTIVE_TOTAL,
 	.alloc = guc_context_alloc,
 
 	.pre_pin = guc_context_pre_pin,
@@ -3360,6 +3419,8 @@ static const struct intel_context_ops guc_context_ops = {
 
 	.sched_disable = guc_context_sched_disable,
 
+	.update_stats = guc_context_update_stats,
+
 	.reset = lrc_reset,
 	.destroy = guc_context_destroy,
 
@@ -3593,6 +3654,7 @@ static int guc_virtual_context_alloc(struct intel_context *ce)
 }
 
 static const struct intel_context_ops virtual_guc_context_ops = {
+	.flags = COPS_RUNTIME_CYCLES | COPS_RUNTIME_ACTIVE_TOTAL,
 	.alloc = guc_virtual_context_alloc,
 
 	.pre_pin = guc_virtual_context_pre_pin,
@@ -3608,6 +3670,7 @@ static const struct intel_context_ops virtual_guc_context_ops = {
 	.exit = guc_virtual_context_exit,
 
 	.sched_disable = guc_context_sched_disable,
+	.update_stats = guc_context_update_stats,
 
 	.destroy = guc_context_destroy,
 
diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
index b09d1d386574..8d81119fff14 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.c
+++ b/drivers/gpu/drm/i915/i915_drm_client.c
@@ -147,11 +147,7 @@ void i915_drm_client_fdinfo(struct seq_file *m, struct file *f)
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
2.37.1

