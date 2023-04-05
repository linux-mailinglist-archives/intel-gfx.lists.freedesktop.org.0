Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0F86D7123
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 02:14:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD64C10E7FC;
	Wed,  5 Apr 2023 00:14:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 801D410E7FD
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 00:14:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680653678; x=1712189678;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xHtHsElG4XfQGyx14VTNkGqvQR1MyJgVOBkKqPIeDtU=;
 b=eOocIGaSL79/ARz9LyamG6Odc6RXdTUC2vMlntwbsfduUjNJ57Q46wHa
 S+KwrBXW88y+LZJtVTCe/hftLET4dGPuPIWJ5ZggcY+gEtEiiEw+ipsbA
 Jvg1SMysnBjiC2Hrs8Y7HlrPC/JfFxsa9wnIAT8QelFZvXFz+zYzpuIx8
 zrXDmxokRbSxIFa0DxeYKhXCd3XRIB3KANYcucHLxrgjRB7NWHe1B+xk1
 2A015YOItCW6iVQxO6We7SOgtGEC6Zyhju2DjBfCsZ9Vb7oZrp9CXTiTl
 rxEG+Fsc33ggmpBRV7m7j32l8yQwgI3kEQ7jflxMluqIc/o82aqhIC8sJ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="405110829"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="405110829"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 17:14:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="810448687"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="810448687"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 17:14:37 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Apr 2023 17:14:32 -0700
Message-Id: <20230405001433.2654971-2-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230405001433.2654971-1-umesh.nerlige.ramappa@intel.com>
References: <20230405001433.2654971-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] i915/pmu: Add support for total context
 runtime for GuC back-end
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

GPU accumulates the context runtime in a 32 bit counter - CTX_TIMESTAMP
in the context image. This value is saved/restored on context switches.
KMD accumulates these values into a 64 bit counter taking care of any
overflows as needed. This count provides the basis for client specific
busyness in the fdinfo interface.

KMD accumulation happens just before the context is unpinned and when
context switches out. This works for execlist back-end since execlist
scheduling has visibility into context switches. With GuC mode, KMD does
not have visibility into context switches and this counter is
accumulated only when context is unpinned. Context is unpinned once the
context scheduling is successfully disabled. Disabling context
scheduling is an asynchronous operation. Also if a context is servicing
frequent requests, scheduling may never be disabled on it.

For GuC mode, since updates to the context runtime may be delayed, add
hooks to update the context runtime in a worker thread as well as when
a user queries for it.

Limitation:
- If a context is never switched out or runs for a long period of time,
  the runtime value of CTX_TIMESTAMP may never be updated, so the
  counter value may be unreliable. This patch does not support such
  cases. Such support must be available from the GuC FW and it is WIP.

This patch is an extract from previous work authored by John/Umesh here -
https://patchwork.freedesktop.org/patch/496441/?series=105085&rev=4

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Co-developed-by: John Harrison <John.C.Harrison@Intel.com>
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context.c       | 12 +++++--
 drivers/gpu/drm/i915/gt/intel_context.h       |  2 +-
 drivers/gpu/drm/i915/gt/intel_context_types.h |  5 +++
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 33 +++++++++++++++++++
 4 files changed, 49 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index 2aa63ec521b8..e01f222e9e42 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -578,16 +578,24 @@ void intel_context_bind_parent_child(struct intel_context *parent,
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
index 0a8d553da3f4..720809523e2d 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -368,7 +368,7 @@ intel_context_clear_nopreempt(struct intel_context *ce)
 	clear_bit(CONTEXT_NOPREEMPT, &ce->flags);
 }
 
-u64 intel_context_get_total_runtime_ns(const struct intel_context *ce);
+u64 intel_context_get_total_runtime_ns(struct intel_context *ce);
 u64 intel_context_get_avg_runtime_ns(struct intel_context *ce);
 
 static inline u64 intel_context_clock(void)
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index e36670f2e626..58b0294d359d 100644
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
@@ -58,6 +61,8 @@ struct intel_context_ops {
 
 	void (*sched_disable)(struct intel_context *ce);
 
+	void (*update_stats)(struct intel_context *ce);
+
 	void (*reset)(struct intel_context *ce);
 	void (*destroy)(struct kref *kref);
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 88e881b100cf..8048a3e97a68 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1402,13 +1402,25 @@ static void __update_guc_busyness_stats(struct intel_guc *guc)
 	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
 }
 
+static void guc_context_update_clks(struct intel_context *ce)
+{
+	struct intel_guc *guc = ce_to_guc(ce);
+	unsigned long flags;
+
+	spin_lock_irqsave(&guc->timestamp.lock, flags);
+	lrc_update_runtime(ce);
+	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
+}
+
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
@@ -1424,6 +1436,10 @@ static void guc_timestamp_ping(struct work_struct *wrk)
 	with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref)
 		__update_guc_busyness_stats(guc);
 
+	/* adjust context stats for overflow */
+	xa_for_each(&guc->context_lookup, index, ce)
+		guc_context_update_clks(ce);
+
 	intel_gt_reset_unlock(gt, srcu);
 
 	guc_enable_busyness_worker(guc);
@@ -1505,6 +1521,17 @@ void intel_guc_busyness_unpark(struct intel_gt *gt)
 	guc_enable_busyness_worker(guc);
 }
 
+static void guc_context_update_stats(struct intel_context *ce)
+{
+	if (!intel_context_pin_if_active(ce)) {
+		WRITE_ONCE(ce->stats.active, 0);
+		return;
+	}
+
+	guc_context_update_clks(ce);
+	intel_context_unpin(ce);
+}
+
 static inline bool
 submission_disabled(struct intel_guc *guc)
 {
@@ -2774,6 +2801,7 @@ static void guc_context_unpin(struct intel_context *ce)
 {
 	struct intel_guc *guc = ce_to_guc(ce);
 
+	lrc_update_runtime(ce);
 	unpin_guc_id(guc, ce);
 	lrc_unpin(ce);
 
@@ -3455,6 +3483,7 @@ static void remove_from_context(struct i915_request *rq)
 }
 
 static const struct intel_context_ops guc_context_ops = {
+	.flags = COPS_RUNTIME_CYCLES | COPS_RUNTIME_ACTIVE_TOTAL,
 	.alloc = guc_context_alloc,
 
 	.close = guc_context_close,
@@ -3473,6 +3502,8 @@ static const struct intel_context_ops guc_context_ops = {
 
 	.sched_disable = guc_context_sched_disable,
 
+	.update_stats = guc_context_update_stats,
+
 	.reset = lrc_reset,
 	.destroy = guc_context_destroy,
 
@@ -3728,6 +3759,7 @@ static int guc_virtual_context_alloc(struct intel_context *ce)
 }
 
 static const struct intel_context_ops virtual_guc_context_ops = {
+	.flags = COPS_RUNTIME_CYCLES | COPS_RUNTIME_ACTIVE_TOTAL,
 	.alloc = guc_virtual_context_alloc,
 
 	.close = guc_context_close,
@@ -3745,6 +3777,7 @@ static const struct intel_context_ops virtual_guc_context_ops = {
 	.exit = guc_virtual_context_exit,
 
 	.sched_disable = guc_context_sched_disable,
+	.update_stats = guc_context_update_stats,
 
 	.destroy = guc_context_destroy,
 
-- 
2.36.1

