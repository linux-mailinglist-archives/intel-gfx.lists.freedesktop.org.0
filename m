Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D5C4D6F0E7B
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 00:47:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 323CD10E1DE;
	Thu, 27 Apr 2023 22:47:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FFA710E1CC
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Apr 2023 22:47:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682635640; x=1714171640;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mAyfrNLxscg6syx9ultiyrJ9EhiWrO6P3mlkwmsc7No=;
 b=ghz+tkg1QRlSjApFL3w04bnnnP0QAX3WOlGX4JSUE4m7uMC+dLnqNQGH
 Lx2KZ+Jpi/YkLzzODetCMZ/31TXiLJ3I2FKs/184DdG/AY14MHWnBDkqM
 fBzQSsoNsqnSrw+KAJq2yk0CIj51Uq4eFnsMqnrvKW+lVL3Wm5dPh5Y0D
 htJu4eXq97Sdre6XT00WOHCq6tdpblXb+aZVDJGcENILrN/WEL4EoEPpR
 OIYzZWVMVeGSzU+lhlAG7VWXaYWTLx44OPrR++oT6m1KyN69c3ZPodqo8
 ozjk++5us1VPKqzOjP7YM3t3D9MSWVLrEG8a8GHOuDww+1fysyeXpGqmV Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="412954948"
X-IronPort-AV: E=Sophos;i="5.99,232,1677571200"; d="scan'208";a="412954948"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 15:47:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="727318013"
X-IronPort-AV: E=Sophos;i="5.99,232,1677571200"; d="scan'208";a="727318013"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 15:47:14 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Apr 2023 15:47:04 -0700
Message-Id: <20230427224705.2785566-2-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230427224705.2785566-1-umesh.nerlige.ramappa@intel.com>
References: <20230427224705.2785566-1-umesh.nerlige.ramappa@intel.com>
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

v2: (Ashutosh)
- Drop COPS_RUNTIME_ACTIVE_TOTAL
- s/guc_context_update_clks/__guc_context_update_stats
- Pin context before accessing in guc_timestamp_ping
- In guc_context_unpin, use spinlock to serialize access to runtime stats

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Co-developed-by: John Harrison <John.C.Harrison@Intel.com>
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context.c       |  5 ++-
 drivers/gpu/drm/i915/gt/intel_context.h       |  2 +-
 drivers/gpu/drm/i915/gt/intel_context_types.h |  2 ++
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 31 +++++++++++++++++++
 4 files changed, 38 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index 2aa63ec521b8..a53b26178f0a 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -578,10 +578,13 @@ void intel_context_bind_parent_child(struct intel_context *parent,
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
diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
index 48f888c3da08..43ed92f8dc83 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -375,7 +375,7 @@ intel_context_clear_nopreempt(struct intel_context *ce)
 	clear_bit(CONTEXT_NOPREEMPT, &ce->flags);
 }
 
-u64 intel_context_get_total_runtime_ns(const struct intel_context *ce);
+u64 intel_context_get_total_runtime_ns(struct intel_context *ce);
 u64 intel_context_get_avg_runtime_ns(struct intel_context *ce);
 
 static inline u64 intel_context_clock(void)
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index e36670f2e626..aceaac28a33e 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -58,6 +58,8 @@ struct intel_context_ops {
 
 	void (*sched_disable)(struct intel_context *ce);
 
+	void (*update_stats)(struct intel_context *ce);
+
 	void (*reset)(struct intel_context *ce);
 	void (*destroy)(struct kref *kref);
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index ee3e8352637f..c869ddc73e69 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1402,13 +1402,34 @@ static void __update_guc_busyness_stats(struct intel_guc *guc)
 	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
 }
 
+static void __guc_context_update_stats(struct intel_context *ce)
+{
+	struct intel_guc *guc = ce_to_guc(ce);
+	unsigned long flags;
+
+	spin_lock_irqsave(&guc->timestamp.lock, flags);
+	lrc_update_runtime(ce);
+	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
+}
+
+static void guc_context_update_stats(struct intel_context *ce)
+{
+	if (!intel_context_pin_if_active(ce))
+		return;
+
+	__guc_context_update_stats(ce);
+	intel_context_unpin(ce);
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
@@ -1424,6 +1445,10 @@ static void guc_timestamp_ping(struct work_struct *wrk)
 	with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref)
 		__update_guc_busyness_stats(guc);
 
+	/* adjust context stats for overflow */
+	xa_for_each(&guc->context_lookup, index, ce)
+		guc_context_update_stats(ce);
+
 	intel_gt_reset_unlock(gt, srcu);
 
 	guc_enable_busyness_worker(guc);
@@ -2774,6 +2799,7 @@ static void guc_context_unpin(struct intel_context *ce)
 {
 	struct intel_guc *guc = ce_to_guc(ce);
 
+	__guc_context_update_stats(ce);
 	unpin_guc_id(guc, ce);
 	lrc_unpin(ce);
 
@@ -3455,6 +3481,7 @@ static void remove_from_context(struct i915_request *rq)
 }
 
 static const struct intel_context_ops guc_context_ops = {
+	.flags = COPS_RUNTIME_CYCLES,
 	.alloc = guc_context_alloc,
 
 	.close = guc_context_close,
@@ -3473,6 +3500,8 @@ static const struct intel_context_ops guc_context_ops = {
 
 	.sched_disable = guc_context_sched_disable,
 
+	.update_stats = guc_context_update_stats,
+
 	.reset = lrc_reset,
 	.destroy = guc_context_destroy,
 
@@ -3728,6 +3757,7 @@ static int guc_virtual_context_alloc(struct intel_context *ce)
 }
 
 static const struct intel_context_ops virtual_guc_context_ops = {
+	.flags = COPS_RUNTIME_CYCLES,
 	.alloc = guc_virtual_context_alloc,
 
 	.close = guc_context_close,
@@ -3745,6 +3775,7 @@ static const struct intel_context_ops virtual_guc_context_ops = {
 	.exit = guc_virtual_context_exit,
 
 	.sched_disable = guc_context_sched_disable,
+	.update_stats = guc_context_update_stats,
 
 	.destroy = guc_context_destroy,
 
-- 
2.36.1

