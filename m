Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36CA2820206
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Dec 2023 22:51:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8442110E09F;
	Fri, 29 Dec 2023 21:51:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5510D10E09F;
 Fri, 29 Dec 2023 21:51:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703886706; x=1735422706;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vP9bUocpPR7fR1WqH7QOWk2d/Rz/iok2oyHvUIpW/EQ=;
 b=lkgtODdikpxYnMKlKnXUzFgAQxiYOBWSToLZCLJlzw81uObj6/naFkXX
 gWt0ZaHktoYje4T2wLUm70VaTcKLxlDrc9OreEQsIBV5RI2J6lQaQGhaE
 qbn6oINtFrCWP4Gf4ayKqK5zltjyD2xECgcSfxiLlTo/GJJIDVJxd0jSU
 4cN5wgSCiAPjnz+y0k5R9BtBaXJt7i/GxG3yQwPL18mFHocl3OftRWuyD
 TXLe+eqMh7PeD2Owm/L/KyXw+1XA8m3by/f1RLD2LibbOTA80ppM3vmny
 A7WUxkQ0Du8ORdNlNsTdCNHXSNMeWneG8AnimcLXWt94+g71gGJ8WzcQU g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10938"; a="3760634"
X-IronPort-AV: E=Sophos;i="6.04,316,1695711600"; 
   d="scan'208";a="3760634"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2023 13:51:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10938"; a="952172604"
X-IronPort-AV: E=Sophos;i="6.04,316,1695711600"; d="scan'208";a="952172604"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga005.jf.intel.com with ESMTP; 29 Dec 2023 13:51:43 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v9 2/2] drm/i915/guc: Close deregister-context race against
 CT-loss
Date: Fri, 29 Dec 2023 13:51:43 -0800
Message-Id: <20231229215143.581619-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20231228045558.536585-3-alan.previn.teres.alexis@intel.com>
References: <20231228045558.536585-3-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>, dri-devel@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Mousumi Jana <mousumi.jana@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If we are at the end of suspend or very early in resume
its possible an async fence signal (via rcu_call) is triggered
to free_engines which could lead us to the execution of
the context destruction worker (after a prior worker flush).

Thus, when suspending, insert rcu_barriers at the start
of i915_gem_suspend (part of driver's suspend prepare) and
again in i915_gem_suspend_late so that all such cases have
completed and context destruction list isn't missing anything.

In destroyed_worker_func, close the race against CT-loss
by checking that CT is enabled before calling into
deregister_destroyed_contexts.

Based on testing, guc_lrc_desc_unpin may still race and fail
as we traverse the GuC's context-destroy list because the
CT could be disabled right before calling GuC's CT send function.

We've witnessed this race condition once every ~6000-8000
suspend-resume cycles while ensuring workloads that render
something onscreen is continuously started just before
we suspend (and the workload is small enough to complete
and trigger the queued engine/context free-up either very
late in suspend or very early in resume).

In such a case, we need to unroll the entire process because
guc-lrc-unpin takes a gt wakeref which only gets released in
the G2H IRQ reply that never comes through in this corner
case. Without the unroll, the taken wakeref is leaked and will
cascade into a kernel hang later at the tail end of suspend in
this function:

   intel_wakeref_wait_for_idle(&gt->wakeref)
   (called by) - intel_gt_pm_wait_for_idle
   (called by) - wait_for_suspend

Thus, do an unroll in guc_lrc_desc_unpin and deregister_destroyed_-
contexts if guc_lrc_desc_unpin fails due to CT send falure.
When unrolling, keep the context in the GuC's destroy-list so
it can get picked up on the next destroy worker invocation
(if suspend aborted) or get fully purged as part of a GuC
sanitization (end of suspend) or a reset flow.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
Tested-by: Mousumi Jana <mousumi.jana@intel.com>
Acked-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_pm.c        | 10 +++
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 73 +++++++++++++++++--
 2 files changed, 78 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pm.c b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
index 0d812f4d787d..3b27218aabe2 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
@@ -28,6 +28,13 @@ void i915_gem_suspend(struct drm_i915_private *i915)
 	GEM_TRACE("%s\n", dev_name(i915->drm.dev));
 
 	intel_wakeref_auto(&i915->runtime_pm.userfault_wakeref, 0);
+	/*
+	 * On rare occasions, we've observed the fence completion triggers
+	 * free_engines asynchronously via rcu_call. Ensure those are done.
+	 * This path is only called on suspend, so it's an acceptable cost.
+	 */
+	rcu_barrier();
+
 	flush_workqueue(i915->wq);
 
 	/*
@@ -160,6 +167,9 @@ void i915_gem_suspend_late(struct drm_i915_private *i915)
 	 * machine in an unusable condition.
 	 */
 
+	/* Like i915_gem_suspend, flush tasks staged from fence triggers */
+	rcu_barrier();
+
 	for_each_gt(gt, i915, i)
 		intel_gt_suspend_late(gt);
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 9c64ae0766cc..cae637fc3ead 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -236,6 +236,13 @@ set_context_destroyed(struct intel_context *ce)
 	ce->guc_state.sched_state |= SCHED_STATE_DESTROYED;
 }
 
+static inline void
+clr_context_destroyed(struct intel_context *ce)
+{
+	lockdep_assert_held(&ce->guc_state.lock);
+	ce->guc_state.sched_state &= ~SCHED_STATE_DESTROYED;
+}
+
 static inline bool context_pending_disable(struct intel_context *ce)
 {
 	return ce->guc_state.sched_state & SCHED_STATE_PENDING_DISABLE;
@@ -613,6 +620,8 @@ static int guc_submission_send_busy_loop(struct intel_guc *guc,
 					 u32 g2h_len_dw,
 					 bool loop)
 {
+	int ret;
+
 	/*
 	 * We always loop when a send requires a reply (i.e. g2h_len_dw > 0),
 	 * so we don't handle the case where we don't get a reply because we
@@ -623,7 +632,11 @@ static int guc_submission_send_busy_loop(struct intel_guc *guc,
 	if (g2h_len_dw)
 		atomic_inc(&guc->outstanding_submission_g2h);
 
-	return intel_guc_send_busy_loop(guc, action, len, g2h_len_dw, loop);
+	ret = intel_guc_send_busy_loop(guc, action, len, g2h_len_dw, loop);
+	if (ret)
+		atomic_dec(&guc->outstanding_submission_g2h);
+
+	return ret;
 }
 
 int intel_guc_wait_for_pending_msg(struct intel_guc *guc,
@@ -3288,12 +3301,13 @@ static void guc_context_close(struct intel_context *ce)
 	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
 }
 
-static inline void guc_lrc_desc_unpin(struct intel_context *ce)
+static inline int guc_lrc_desc_unpin(struct intel_context *ce)
 {
 	struct intel_guc *guc = ce_to_guc(ce);
 	struct intel_gt *gt = guc_to_gt(guc);
 	unsigned long flags;
 	bool disabled;
+	int ret;
 
 	GEM_BUG_ON(!intel_gt_pm_is_awake(gt));
 	GEM_BUG_ON(!ctx_id_mapped(guc, ce->guc_id.id));
@@ -3304,18 +3318,41 @@ static inline void guc_lrc_desc_unpin(struct intel_context *ce)
 	spin_lock_irqsave(&ce->guc_state.lock, flags);
 	disabled = submission_disabled(guc);
 	if (likely(!disabled)) {
+		/*
+		 * Take a gt-pm ref and change context state to be destroyed.
+		 * NOTE: a G2H IRQ that comes after will put this gt-pm ref back
+		 */
 		__intel_gt_pm_get(gt);
 		set_context_destroyed(ce);
 		clr_context_registered(ce);
 	}
 	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
+
 	if (unlikely(disabled)) {
 		release_guc_id(guc, ce);
 		__guc_context_destroy(ce);
-		return;
+		return 0;
 	}
 
-	deregister_context(ce, ce->guc_id.id);
+	/*
+	 * GuC is active, lets destroy this context, but at this point we can still be racing
+	 * with suspend, so we undo everything if the H2G fails in deregister_context so
+	 * that GuC reset will find this context during clean up.
+	 */
+	ret = deregister_context(ce, ce->guc_id.id);
+	if (ret) {
+		spin_lock(&ce->guc_state.lock);
+		set_context_registered(ce);
+		clr_context_destroyed(ce);
+		spin_unlock(&ce->guc_state.lock);
+		/*
+		 * As gt-pm is awake at function entry, intel_wakeref_put_async merely decrements
+		 * the wakeref immediately but per function spec usage call this after unlock.
+		 */
+		intel_wakeref_put_async(&gt->wakeref);
+	}
+
+	return ret;
 }
 
 static void __guc_context_destroy(struct intel_context *ce)
@@ -3383,7 +3420,22 @@ static void deregister_destroyed_contexts(struct intel_guc *guc)
 		if (!ce)
 			break;
 
-		guc_lrc_desc_unpin(ce);
+		if (guc_lrc_desc_unpin(ce)) {
+			/*
+			 * This means GuC's CT link severed mid-way which could happen
+			 * in suspend-resume corner cases. In this case, put the
+			 * context back into the destroyed_contexts list which will
+			 * get picked up on the next context deregistration event or
+			 * purged in a GuC sanitization event (reset/unload/wedged/...).
+			 */
+			spin_lock_irqsave(&guc->submission_state.lock, flags);
+			list_add_tail(&ce->destroyed_link,
+				      &guc->submission_state.destroyed_contexts);
+			spin_unlock_irqrestore(&guc->submission_state.lock, flags);
+			/* Bail now since the list might never be emptied if h2gs fail */
+			break;
+		}
+
 	}
 }
 
@@ -3394,6 +3446,17 @@ static void destroyed_worker_func(struct work_struct *w)
 	struct intel_gt *gt = guc_to_gt(guc);
 	intel_wakeref_t wakeref;
 
+	/*
+	 * In rare cases we can get here via async context-free fence-signals that
+	 * come very late in suspend flow or very early in resume flows. In these
+	 * cases, GuC won't be ready but just skipping it here is fine as these
+	 * pending-destroy-contexts get destroyed totally at GuC reset time at the
+	 * end of suspend.. OR.. this worker can be picked up later on the next
+	 * context destruction trigger after resume-completes
+	 */
+	if (!intel_guc_is_ready(guc))
+		return;
+
 	with_intel_gt_pm(gt, wakeref)
 		deregister_destroyed_contexts(guc);
 }
-- 
2.39.0

