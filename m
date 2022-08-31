Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A39F5A86CA
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Aug 2022 21:34:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7969010E080;
	Wed, 31 Aug 2022 19:34:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7F5010E0D5
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Aug 2022 19:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661974441; x=1693510441;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6hl0MNV+Wxhp6C8+YCZvYG+JJBrID4IerAZzp75MOnU=;
 b=UXrCdufsXj5bVE9Ym70sFylVCSO2mmPfp4uRY0ZqTuEpZrrq+OjEatvR
 NpwZYZKubmjQfh252TqF6wfUgKTZvn0lYbEQE3frb7OheMbN79YAZOtrP
 byDldYL3g6JudLUVAn8G2iRfcUZFov9GwbUweUTcUMfixiddCEASue5E1
 6k7h+IUds65wJAN2POkIqv4OyvMVxALbnqBhBCgk6TMjKJe5Pcz1vQasY
 JY9cGYaHah9SKLZy+hOsT0dp5XX5uC7bFbNZBaMHlViVDwPraHck2ZtlT
 wytHcoJ479XV6A1wz+qgy2PxPg/j+8bC1hL+t/DC57xtGnftn+FZAKGQZ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="296312560"
X-IronPort-AV: E=Sophos;i="5.93,278,1654585200"; d="scan'208";a="296312560"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 12:33:59 -0700
X-IronPort-AV: E=Sophos;i="5.93,278,1654585200"; d="scan'208";a="673489673"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril.jf.intel.com)
 ([10.165.21.138])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 12:33:59 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 31 Aug 2022 12:33:55 -0700
Message-Id: <20220831193355.838209-2-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220831193355.838209-1-ashutosh.dixit@intel.com>
References: <20220831193355.838209-1-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 2/2] Fix per client busyness locking
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

1. Do all ce->stats updates and reads under guc->timestamp.lock
2. Pin context image before reading
3. Merge __guc_context_update_clks and guc_context_update_stats into a
   single function
4. Call lrc_update_runtime() unconditionally in guc_context_update_stats
5. Seems no need to update ce->stats.active with this approach

Some of the above steps may not be correct or complete but the idea is to
discuss/improve the original patch.

Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context.c       |  2 +-
 drivers/gpu/drm/i915/gt/intel_context_types.h |  2 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 41 ++++++++++---------
 3 files changed, 24 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index e2d70a9fdac0..c004f676de27 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -581,7 +581,7 @@ u64 intel_context_get_total_runtime_ns(struct intel_context *ce)
 	u64 total, active;
 
 	if (ce->ops->update_stats)
-		ce->ops->update_stats(ce);
+		return ce->ops->update_stats(ce);
 
 	total = ce->stats.runtime.total;
 	if (ce->ops->flags & COPS_RUNTIME_CYCLES)
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index f7ff4c7d81c7..699435bfff99 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -59,7 +59,7 @@ struct intel_context_ops {
 
 	void (*sched_disable)(struct intel_context *ce);
 
-	void (*update_stats)(struct intel_context *ce);
+	u64 (*update_stats)(struct intel_context *ce);
 
 	void (*reset)(struct intel_context *ce);
 	void (*destroy)(struct kref *kref);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index bee8cf10f749..40d0edaf2e0a 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1376,7 +1376,6 @@ static void __update_guc_busyness_stats(struct intel_guc *guc)
 	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
 }
 
-static void __guc_context_update_clks(struct intel_context *ce);
 static void guc_timestamp_ping(struct work_struct *wrk)
 {
 	struct intel_guc *guc = container_of(wrk, typeof(*guc),
@@ -1401,7 +1400,8 @@ static void guc_timestamp_ping(struct work_struct *wrk)
 
 	/* adjust context stats for overflow */
 	xa_for_each(&guc->context_lookup, index, ce)
-		__guc_context_update_clks(ce);
+		if (ce->ops->update_stats)
+			ce->ops->update_stats(ce);
 
 	intel_gt_reset_unlock(gt, srcu);
 
@@ -1476,17 +1476,21 @@ void intel_guc_busyness_unpark(struct intel_gt *gt)
 			 guc->timestamp.ping_delay);
 }
 
-static void __guc_context_update_clks(struct intel_context *ce)
+static u64 guc_context_update_stats(struct intel_context *ce)
 {
 	struct intel_guc *guc = ce_to_guc(ce);
 	struct intel_gt *gt = ce->engine->gt;
 	u32 *pphwsp, last_switch, engine_id;
-	u64 start_gt_clk, active;
 	unsigned long flags;
+	u64 total, active = 0;
 	ktime_t unused;
 
+	intel_context_pin(ce);
 	spin_lock_irqsave(&guc->timestamp.lock, flags);
 
+	lrc_update_runtime(ce);
+	total = ce->stats.runtime.total;
+
 	/*
 	 * GPU updates ce->lrc_reg_state[CTX_TIMESTAMP] when context is switched
 	 * out, however GuC updates PPHWSP offsets below. Hence KMD (CPU)
@@ -1502,27 +1506,26 @@ static void __guc_context_update_clks(struct intel_context *ce)
 	guc_update_pm_timestamp(guc, &unused);
 
 	if (engine_id != 0xffffffff && last_switch) {
-		start_gt_clk = READ_ONCE(ce->stats.runtime.start_gt_clk);
-		__extend_last_switch(guc, &start_gt_clk, last_switch);
-		active = intel_gt_clock_interval_to_ns(gt, guc->timestamp.gt_stamp - start_gt_clk);
-		WRITE_ONCE(ce->stats.runtime.start_gt_clk, start_gt_clk);
-		WRITE_ONCE(ce->stats.active, active);
-	} else {
-		lrc_update_runtime(ce);
+		__extend_last_switch(guc, &ce->stats.runtime.start_gt_clk, last_switch);
+		active = intel_gt_clock_interval_to_ns(gt,
+			      guc->timestamp.gt_stamp - ce->stats.runtime.start_gt_clk);
 	}
 
 	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
+	intel_context_unpin(ce);
+
+	return total + active;
 }
 
-static void guc_context_update_stats(struct intel_context *ce)
+void lrc_update_runtime_locked(struct intel_context *ce)
 {
-	if (!intel_context_pin_if_active(ce)) {
-		WRITE_ONCE(ce->stats.runtime.start_gt_clk, 0);
-		WRITE_ONCE(ce->stats.active, 0);
-		return;
-	}
+	struct intel_guc *guc = ce_to_guc(ce);
+	unsigned long flags;
 
-	__guc_context_update_clks(ce);
+	intel_context_pin(ce);
+	spin_lock_irqsave(&guc->timestamp.lock, flags);
+	lrc_update_runtime(ce);
+	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
 	intel_context_unpin(ce);
 }
 
@@ -2780,7 +2783,7 @@ static void guc_context_unpin(struct intel_context *ce)
 {
 	struct intel_guc *guc = ce_to_guc(ce);
 
-	lrc_update_runtime(ce);
+	lrc_update_runtime_locked(ce);
 	unpin_guc_id(guc, ce);
 	lrc_unpin(ce);
 
-- 
2.34.1

