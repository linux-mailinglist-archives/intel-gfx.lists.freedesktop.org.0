Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D1BE5AA3F3
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Sep 2022 01:55:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE64310E3B2;
	Thu,  1 Sep 2022 23:55:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95F7910E3B8
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Sep 2022 23:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662076497; x=1693612497;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k7CynQmAW8+W8+0mM0GVCcG/1WatIAki4gJb4HaNI4s=;
 b=C6d883hJ+GvyxRiDID8HUhtHTwBjvlky2ZOe59W6w7gZ6BqIw3SNvynr
 p/s3+cjMNK5o0tQjVJmGj6eq9L7gw42UM93flLTcG978rGetGK11aU2lT
 FkS0z3kaGt4fZgmFNQygbS5mKJu1AY3IONcggrxXmKaHIodO/9n8J+ydb
 +0CU6BY8c9a+Hr0NsUbSWE3KOhcjhuOHpjqIpQT3CC8Ac3F28BPJ5EYlY
 jABGiUvovUmoejAiFQ3boATpHdWWwiqJFaRaVODTi4pxizDNLvzJgQ5Cb
 dG2x4tVxcZvvkJ0AZxgFwL0nGhb+ef0u7fWKQkvF0ek8R7ORqGzd4NrXA g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="297137639"
X-IronPort-AV: E=Sophos;i="5.93,281,1654585200"; d="scan'208";a="297137639"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 16:54:56 -0700
X-IronPort-AV: E=Sophos;i="5.93,281,1654585200"; d="scan'208";a="941066864"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril.jf.intel.com)
 ([10.165.21.138])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 16:54:56 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Sep 2022 16:54:52 -0700
Message-Id: <20220901235452.1004146-2-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220901235452.1004146-1-ashutosh.dixit@intel.com>
References: <20220901235452.1004146-1-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH v2 2/2] Fix per client busyness locking
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

v2 (Address review comments from Umesh):
  * Don't pin context when called from intel_context_get_total_runtime_ns
  * Don't pin context in lrc_update_runtime_locked
  * ce->stats.active is now used to cache previous active value
  * Move lrc_update_runtime to else in __guc_context_update_stats

Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context.c       |  9 +--
 drivers/gpu/drm/i915/gt/intel_context_types.h |  2 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 57 ++++++++++++-------
 3 files changed, 40 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index e2d70a9fdac0..51dce98003ec 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -581,19 +581,14 @@ u64 intel_context_get_total_runtime_ns(struct intel_context *ce)
 	u64 total, active;
 
 	if (ce->ops->update_stats)
-		ce->ops->update_stats(ce);
+		return ce->ops->update_stats(ce, false);
 
 	total = ce->stats.runtime.total;
 	if (ce->ops->flags & COPS_RUNTIME_CYCLES)
 		total *= ce->engine->gt->clock_period_ns;
 
 	active = READ_ONCE(ce->stats.active);
-	/*
-	 * When COPS_RUNTIME_ACTIVE_TOTAL is set for ce->cops, the backend
-	 * already provides the total active time of the context, so skip this
-	 * calculation when this flag is set.
-	 */
-	if (active && !(ce->ops->flags & COPS_RUNTIME_ACTIVE_TOTAL))
+	if (active)
 		active = intel_context_clock() - active;
 
 	return total + active;
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index f7ff4c7d81c7..06dad9eeecdb 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -59,7 +59,7 @@ struct intel_context_ops {
 
 	void (*sched_disable)(struct intel_context *ce);
 
-	void (*update_stats)(struct intel_context *ce);
+	u64 (*update_stats)(struct intel_context *ce, bool pin);
 
 	void (*reset)(struct intel_context *ce);
 	void (*destroy)(struct kref *kref);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index bee8cf10f749..b3c6f57f45cb 100644
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
+			ce->ops->update_stats(ce, true);
 
 	intel_gt_reset_unlock(gt, srcu);
 
@@ -1476,17 +1476,13 @@ void intel_guc_busyness_unpark(struct intel_gt *gt)
 			 guc->timestamp.ping_delay);
 }
 
-static void __guc_context_update_clks(struct intel_context *ce)
+static u64 __guc_context_update_stats(struct intel_context *ce)
 {
 	struct intel_guc *guc = ce_to_guc(ce);
 	struct intel_gt *gt = ce->engine->gt;
 	u32 *pphwsp, last_switch, engine_id;
-	u64 start_gt_clk, active;
-	unsigned long flags;
 	ktime_t unused;
 
-	spin_lock_irqsave(&guc->timestamp.lock, flags);
-
 	/*
 	 * GPU updates ce->lrc_reg_state[CTX_TIMESTAMP] when context is switched
 	 * out, however GuC updates PPHWSP offsets below. Hence KMD (CPU)
@@ -1502,28 +1498,49 @@ static void __guc_context_update_clks(struct intel_context *ce)
 	guc_update_pm_timestamp(guc, &unused);
 
 	if (engine_id != 0xffffffff && last_switch) {
-		start_gt_clk = READ_ONCE(ce->stats.runtime.start_gt_clk);
-		__extend_last_switch(guc, &start_gt_clk, last_switch);
-		active = intel_gt_clock_interval_to_ns(gt, guc->timestamp.gt_stamp - start_gt_clk);
-		WRITE_ONCE(ce->stats.runtime.start_gt_clk, start_gt_clk);
-		WRITE_ONCE(ce->stats.active, active);
+		__extend_last_switch(guc, &ce->stats.runtime.start_gt_clk, last_switch);
+		ce->stats.active = intel_gt_clock_interval_to_ns(gt,
+			      guc->timestamp.gt_stamp - ce->stats.runtime.start_gt_clk);
 	} else {
 		lrc_update_runtime(ce);
+		ce->stats.active = 0;
 	}
 
-	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
+	return ce->stats.runtime.total + ce->stats.active;
 }
 
-static void guc_context_update_stats(struct intel_context *ce)
+u64 guc_context_update_stats(struct intel_context *ce, bool pin)
 {
-	if (!intel_context_pin_if_active(ce)) {
-		WRITE_ONCE(ce->stats.runtime.start_gt_clk, 0);
-		WRITE_ONCE(ce->stats.active, 0);
-		return;
+	struct intel_guc *guc = ce_to_guc(ce);
+	unsigned long flags;
+	u64 ret;
+
+	if (pin) {
+		intel_context_pin(ce);
+	} else {
+		/* Return previously computed value */
+		spin_lock_irqsave(&guc->timestamp.lock, flags);
+		ret = ce->stats.runtime.total + ce->stats.active;
+		spin_unlock_irqrestore(&guc->timestamp.lock, flags);
+		return ret;
 	}
 
-	__guc_context_update_clks(ce);
+	spin_lock_irqsave(&guc->timestamp.lock, flags);
+	ret = __guc_context_update_stats(ce);
+	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
+
 	intel_context_unpin(ce);
+	return ret;
+}
+
+static void lrc_update_runtime_locked(struct intel_context *ce)
+{
+	struct intel_guc *guc = ce_to_guc(ce);
+	unsigned long flags;
+
+	spin_lock_irqsave(&guc->timestamp.lock, flags);
+	lrc_update_runtime(ce);
+	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
 }
 
 static inline bool
@@ -2780,7 +2797,7 @@ static void guc_context_unpin(struct intel_context *ce)
 {
 	struct intel_guc *guc = ce_to_guc(ce);
 
-	lrc_update_runtime(ce);
+	lrc_update_runtime_locked(ce);
 	unpin_guc_id(guc, ce);
 	lrc_unpin(ce);
 
-- 
2.34.1

