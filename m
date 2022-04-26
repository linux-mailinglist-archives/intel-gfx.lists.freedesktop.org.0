Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C401250ED9E
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Apr 2022 02:31:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB86F10F019;
	Tue, 26 Apr 2022 00:31:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08BF510F025
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Apr 2022 00:31:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650933077; x=1682469077;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yUS5dc9vxGu4GEeBnfSB4/6H/Zov9xzNkBBJXO4mk0M=;
 b=BfhNwrxGFCJd5okFsAPB2me5U3+4eBRiNgtx6qluGUMCjF4+lm75W5dv
 pz2C920EbpipzlfdmQReChY3DXLKib2UDgRxaHxcTwWGqqqI6GqtBu91Y
 u8Jc+scItt3Nd0QsN93nBc/IjpyLQVpg+YuPpp8qVx3K0qOgiL/yl7ylW
 tizX+yAz7V/nt70SFsoqv0Q4iFYsdPLNLQYU+7P0axbbM2y43koPl6+bQ
 Fx5Wzkxgeoo54ixfGPJkwGW7HDELUZ2xOZqqLl7KIL2tOoR4m9zwRVIJ0
 NI+iT88V2hQELZYXfnhzI8Q1Z21V52D7TvhOrP2XK+77CS2az8Ibvcilq A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10328"; a="247332180"
X-IronPort-AV: E=Sophos;i="5.90,289,1643702400"; d="scan'208";a="247332180"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2022 17:31:16 -0700
X-IronPort-AV: E=Sophos;i="5.90,289,1643702400"; d="scan'208";a="649926508"
Received: from unerlige-desk.jf.intel.com ([10.165.21.210])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2022 17:31:15 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org, daniele.ceraolospurio@intel.com,
 john.c.harrison@intel.com, Matthew Brost <matthew.brost@intel.com>
Date: Mon, 25 Apr 2022 17:30:45 -0700
Message-Id: <20220426003045.3929439-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] i915/guc/reset: Make __guc_reset_context aware
 of guilty engines
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

There are 2 ways an engine can get reset in i915 and the method of reset
affects how KMD labels a context as guilty/innocent.

(1) GuC initiated engine-reset: GuC resets a hung engine and notifies
KMD. The context that hung on the engine is marked guilty and all other
contexts are innocent. The innocent contexts are resubmitted.

(2) GT based reset: When an engine heartbeat fails to tick, KMD
initiates a gt/chip reset. All active contexts are marked as guilty and
discarded.

In order to correctly mark the contexts as guilty/innocent, pass a mask
of engines that were reset to __guc_reset_context.

Fixes: eb5e7da736f3 ("drm/i915/guc: Reset implementation for new GuC interface")
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_reset.c            |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.h           |  2 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c    | 16 ++++++++--------
 drivers/gpu/drm/i915/gt/uc/intel_uc.c            |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc.h            |  2 +-
 5 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 5422a3b84bd4..a5338c3fde7a 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -808,7 +808,7 @@ static int gt_reset(struct intel_gt *gt, intel_engine_mask_t stalled_mask)
 		__intel_engine_reset(engine, stalled_mask & engine->mask);
 	local_bh_enable();
 
-	intel_uc_reset(&gt->uc, true);
+	intel_uc_reset(&gt->uc, ALL_ENGINES);
 
 	intel_ggtt_restore_fences(gt->ggtt);
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 3f3373f68123..966e69a8b1c1 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -443,7 +443,7 @@ int intel_guc_global_policies_update(struct intel_guc *guc);
 void intel_guc_context_ban(struct intel_context *ce, struct i915_request *rq);
 
 void intel_guc_submission_reset_prepare(struct intel_guc *guc);
-void intel_guc_submission_reset(struct intel_guc *guc, bool stalled);
+void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stalled);
 void intel_guc_submission_reset_finish(struct intel_guc *guc);
 void intel_guc_submission_cancel_requests(struct intel_guc *guc);
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 61a6f2424e24..1fbf7b6c2740 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1667,9 +1667,9 @@ __unwind_incomplete_requests(struct intel_context *ce)
 	spin_unlock_irqrestore(&sched_engine->lock, flags);
 }
 
-static void __guc_reset_context(struct intel_context *ce, bool stalled)
+static void __guc_reset_context(struct intel_context *ce, intel_engine_mask_t stalled)
 {
-	bool local_stalled;
+	bool guilty;
 	struct i915_request *rq;
 	unsigned long flags;
 	u32 head;
@@ -1697,7 +1697,7 @@ static void __guc_reset_context(struct intel_context *ce, bool stalled)
 		if (!intel_context_is_pinned(ce))
 			goto next_context;
 
-		local_stalled = false;
+		guilty = false;
 		rq = intel_context_find_active_request(ce);
 		if (!rq) {
 			head = ce->ring->tail;
@@ -1705,14 +1705,14 @@ static void __guc_reset_context(struct intel_context *ce, bool stalled)
 		}
 
 		if (i915_request_started(rq))
-			local_stalled = true;
+			guilty = stalled & ce->engine->mask;
 
 		GEM_BUG_ON(i915_active_is_idle(&ce->active));
 		head = intel_ring_wrap(ce->ring, rq->head);
 
-		__i915_request_reset(rq, local_stalled && stalled);
+		__i915_request_reset(rq, guilty);
 out_replay:
-		guc_reset_state(ce, head, local_stalled && stalled);
+		guc_reset_state(ce, head, guilty);
 next_context:
 		if (i != number_children)
 			ce = list_next_entry(ce, parallel.child_link);
@@ -1722,7 +1722,7 @@ static void __guc_reset_context(struct intel_context *ce, bool stalled)
 	intel_context_put(parent);
 }
 
-void intel_guc_submission_reset(struct intel_guc *guc, bool stalled)
+void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stalled)
 {
 	struct intel_context *ce;
 	unsigned long index;
@@ -4217,7 +4217,7 @@ static void guc_context_replay(struct intel_context *ce)
 {
 	struct i915_sched_engine *sched_engine = ce->engine->sched_engine;
 
-	__guc_reset_context(ce, true);
+	__guc_reset_context(ce, ce->engine->mask);
 	tasklet_hi_schedule(&sched_engine->tasklet);
 }
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index 8c9ef690ac9d..e8f099360e01 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -595,7 +595,7 @@ void intel_uc_reset_prepare(struct intel_uc *uc)
 	__uc_sanitize(uc);
 }
 
-void intel_uc_reset(struct intel_uc *uc, bool stalled)
+void intel_uc_reset(struct intel_uc *uc, intel_engine_mask_t stalled)
 {
 	struct intel_guc *guc = &uc->guc;
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.h b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
index 866b462821c0..a8f38c2c60e2 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
@@ -42,7 +42,7 @@ void intel_uc_driver_late_release(struct intel_uc *uc);
 void intel_uc_driver_remove(struct intel_uc *uc);
 void intel_uc_init_mmio(struct intel_uc *uc);
 void intel_uc_reset_prepare(struct intel_uc *uc);
-void intel_uc_reset(struct intel_uc *uc, bool stalled);
+void intel_uc_reset(struct intel_uc *uc, intel_engine_mask_t stalled);
 void intel_uc_reset_finish(struct intel_uc *uc);
 void intel_uc_cancel_requests(struct intel_uc *uc);
 void intel_uc_suspend(struct intel_uc *uc);
-- 
2.35.1

