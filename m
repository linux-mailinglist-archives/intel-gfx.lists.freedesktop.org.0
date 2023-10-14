Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C8067C91FA
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Oct 2023 03:04:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F230D10E09F;
	Sat, 14 Oct 2023 01:04:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 101BC10E034;
 Sat, 14 Oct 2023 01:04:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697245457; x=1728781457;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y+0C/6NQeEsCCkcqyHmXtzobTsX44LL3xon0zEvOSiI=;
 b=hbR0pqRCchqt7eKXb3XwrtCKkhy2nt9Uejy6kbdebIN34H/+Kw6XAj81
 GTcTQYs0NvhdKk6/wMIRZ6oPYr3YUQbi2tg0Ay93w6OQZelzZNlvtm+qf
 XcvGbMw4auxAft0KEBQ46rlbDoA3Np9p+FjHpgeLnW6kE6WK9/YVl2Lp4
 Gkx9GOHFZZjwbgz9AM5r5JAz7L0O5NEevaj8gn3RUG0mqN5k1W0gSBe7U
 ntDoR3LB3fUso+OQNbkEmr55mrP3jgvLR32PeD8AfrWQEHbeIbTbMFxbD
 bl5h1Bqj+g5w96LYf8VQ0QnfS44s/wy3xKXL+//nm1kIGgw0+va/5XKHl A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="364656950"
X-IronPort-AV: E=Sophos;i="6.03,223,1694761200"; d="scan'208";a="364656950"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 18:04:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="898756737"
X-IronPort-AV: E=Sophos;i="6.03,223,1694761200"; d="scan'208";a="898756737"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga001.fm.intel.com with ESMTP; 13 Oct 2023 18:02:24 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Oct 2023 18:04:12 -0700
Message-Id: <20231014010413.256468-3-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20231014010413.256468-1-alan.previn.teres.alexis@intel.com>
References: <20231014010413.256468-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 2/3] drm/i915/guc: Close deregister-context
 race against CT-loss
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
---
 drivers/gpu/drm/i915/gem/i915_gem_pm.c        | 10 +++
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 81 ++++++++++++++++---
 2 files changed, 80 insertions(+), 11 deletions(-)

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
index a5b68f77e494..9806b33c8561 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -235,6 +235,13 @@ set_context_destroyed(struct intel_context *ce)
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
@@ -612,6 +619,8 @@ static int guc_submission_send_busy_loop(struct intel_guc *guc,
 					 u32 g2h_len_dw,
 					 bool loop)
 {
+	int ret;
+
 	/*
 	 * We always loop when a send requires a reply (i.e. g2h_len_dw > 0),
 	 * so we don't handle the case where we don't get a reply because we
@@ -622,7 +631,11 @@ static int guc_submission_send_busy_loop(struct intel_guc *guc,
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
@@ -3205,12 +3218,13 @@ static void guc_context_close(struct intel_context *ce)
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
@@ -3220,19 +3234,38 @@ static inline void guc_lrc_desc_unpin(struct intel_context *ce)
 	/* Seal race with Reset */
 	spin_lock_irqsave(&ce->guc_state.lock, flags);
 	disabled = submission_disabled(guc);
-	if (likely(!disabled)) {
-		__intel_gt_pm_get(gt);
-		set_context_destroyed(ce);
-		clr_context_registered(ce);
-	}
-	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
 	if (unlikely(disabled)) {
+		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
 		release_guc_id(guc, ce);
 		__guc_context_destroy(ce);
-		return;
+		return 0;
 	}
 
-	deregister_context(ce, ce->guc_id.id);
+	/* GuC is active, lets destroy this context,
+	 * but at this point we can still be racing with
+	 * suspend, so we undo everything if the H2G fails
+	 */
+
+	/* Change context state to destroyed and get gt-pm */
+	__intel_gt_pm_get(gt);
+	set_context_destroyed(ce);
+	clr_context_registered(ce);
+
+	ret = deregister_context(ce, ce->guc_id.id);
+	if (ret) {
+		/* Undo the state change and put gt-pm if that failed */
+		set_context_registered(ce);
+		clr_context_destroyed(ce);
+		/*
+		 * Dont use might_sleep / ASYNC verion of put because
+		 * CT loss in deregister_context could mean an ongoing
+		 * reset or suspend flow. Immediately put before the unlock
+		 */
+		__intel_wakeref_put(&gt->wakeref, 0);
+	}
+	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
+
+	return ret;
 }
 
 static void __guc_context_destroy(struct intel_context *ce)
@@ -3300,7 +3333,22 @@ static void deregister_destroyed_contexts(struct intel_guc *guc)
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
 
@@ -3311,6 +3359,17 @@ static void destroyed_worker_func(struct work_struct *w)
 	struct intel_gt *gt = guc_to_gt(guc);
 	int tmp;
 
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
 	with_intel_gt_pm(gt, tmp)
 		deregister_destroyed_contexts(guc);
 }
-- 
2.39.0

