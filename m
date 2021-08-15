Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A308B3ECAD9
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Aug 2021 22:21:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2966689089;
	Sun, 15 Aug 2021 20:21:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3614890EA
 for <intel-gfx@lists.freedesktop.org>; Sun, 15 Aug 2021 20:21:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10077"; a="276792969"
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; d="scan'208";a="276792969"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2021 13:21:19 -0700
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; d="scan'208";a="461849475"
Received: from jons-linux-dev-box.fm.intel.com ([10.1.27.20])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2021 13:21:19 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>, drmdevel@freedesktop.org
Cc: <daniel.vetter@ffwll.ch>
Date: Sun, 15 Aug 2021 13:15:49 -0700
Message-Id: <20210815201559.1150-12-matthew.brost@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210815201559.1150-1-matthew.brost@intel.com>
References: <20210815201559.1150-1-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/21] drm/i915/guc: Don't touch
 guc_state.sched_state without a lock
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

Before we did some clever tricks to not use the a lock when touching
guc_state.sched_state in certain cases. Don't do that, enforce the use
of the lock.

Part of this is removing a dead code path from guc_lrc_desc_pin where a
context could be deregistered when the aforementioned function was
called from the submission path. Remove this dead code and add a
GEM_BUG_ON if this path is ever attempted to be used.

Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 57 ++++++++++---------
 1 file changed, 31 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index edaaa386d189..02652631e3f7 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -150,11 +150,22 @@ static inline void clr_context_registered(struct intel_context *ce)
 #define SCHED_STATE_BLOCKED_MASK	(0xfff << SCHED_STATE_BLOCKED_SHIFT)
 static inline void init_sched_state(struct intel_context *ce)
 {
-	/* Only should be called from guc_lrc_desc_pin() */
+	lockdep_assert_held(&ce->guc_state.lock);
 	atomic_set(&ce->guc_sched_state_no_lock, 0);
 	ce->guc_state.sched_state &= SCHED_STATE_BLOCKED_MASK;
 }
 
+static inline bool sched_state_is_init(struct intel_context *ce)
+{
+	/*
+	 * XXX: Kernel contexts can have SCHED_STATE_NO_LOCK_REGISTERED after
+	 * suspend.
+	 */
+	return !(atomic_read(&ce->guc_sched_state_no_lock) &
+		 ~SCHED_STATE_NO_LOCK_REGISTERED) &&
+		!(ce->guc_state.sched_state &= ~SCHED_STATE_BLOCKED_MASK);
+}
+
 static inline bool
 context_wait_for_deregister_to_register(struct intel_context *ce)
 {
@@ -165,7 +176,7 @@ context_wait_for_deregister_to_register(struct intel_context *ce)
 static inline void
 set_context_wait_for_deregister_to_register(struct intel_context *ce)
 {
-	/* Only should be called from guc_lrc_desc_pin() without lock */
+	lockdep_assert_held(&ce->guc_state.lock);
 	ce->guc_state.sched_state |=
 		SCHED_STATE_WAIT_FOR_DEREGISTER_TO_REGISTER;
 }
@@ -599,9 +610,7 @@ static void scrub_guc_desc_for_outstanding_g2h(struct intel_guc *guc)
 	bool pending_disable, pending_enable, deregister, destroyed, banned;
 
 	xa_for_each(&guc->context_lookup, index, ce) {
-		/* Flush context */
 		spin_lock_irqsave(&ce->guc_state.lock, flags);
-		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
 
 		/*
 		 * Once we are at this point submission_disabled() is guaranteed
@@ -617,6 +626,8 @@ static void scrub_guc_desc_for_outstanding_g2h(struct intel_guc *guc)
 		banned = context_banned(ce);
 		init_sched_state(ce);
 
+		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
+
 		if (pending_enable || destroyed || deregister) {
 			atomic_dec(&guc->outstanding_submission_g2h);
 			if (deregister)
@@ -1317,6 +1328,7 @@ static int guc_lrc_desc_pin(struct intel_context *ce, bool loop)
 	int ret = 0;
 
 	GEM_BUG_ON(!engine->mask);
+	GEM_BUG_ON(!sched_state_is_init(ce));
 
 	/*
 	 * Ensure LRC + CT vmas are is same region as write barrier is done
@@ -1345,7 +1357,6 @@ static int guc_lrc_desc_pin(struct intel_context *ce, bool loop)
 	desc->priority = ce->guc_prio;
 	desc->context_flags = CONTEXT_REGISTRATION_FLAG_KMD;
 	guc_context_policy_init(engine, desc);
-	init_sched_state(ce);
 
 	/*
 	 * The context_lookup xarray is used to determine if the hardware
@@ -1356,26 +1367,23 @@ static int guc_lrc_desc_pin(struct intel_context *ce, bool loop)
 	 * registering this context.
 	 */
 	if (context_registered) {
+		bool disabled;
+		unsigned long flags;
+
 		trace_intel_context_steal_guc_id(ce);
-		if (!loop) {
+		GEM_BUG_ON(!loop);
+
+		/* Seal race with Reset */
+		spin_lock_irqsave(&ce->guc_state.lock, flags);
+		disabled = submission_disabled(guc);
+		if (likely(!disabled)) {
 			set_context_wait_for_deregister_to_register(ce);
 			intel_context_get(ce);
-		} else {
-			bool disabled;
-			unsigned long flags;
-
-			/* Seal race with Reset */
-			spin_lock_irqsave(&ce->guc_state.lock, flags);
-			disabled = submission_disabled(guc);
-			if (likely(!disabled)) {
-				set_context_wait_for_deregister_to_register(ce);
-				intel_context_get(ce);
-			}
-			spin_unlock_irqrestore(&ce->guc_state.lock, flags);
-			if (unlikely(disabled)) {
-				reset_lrc_desc(guc, desc_idx);
-				return 0;	/* Will get registered later */
-			}
+		}
+		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
+		if (unlikely(disabled)) {
+			reset_lrc_desc(guc, desc_idx);
+			return 0;	/* Will get registered later */
 		}
 
 		/*
@@ -1384,10 +1392,7 @@ static int guc_lrc_desc_pin(struct intel_context *ce, bool loop)
 		 */
 		with_intel_runtime_pm(runtime_pm, wakeref)
 			ret = deregister_context(ce, ce->guc_id, loop);
-		if (unlikely(ret == -EBUSY)) {
-			clr_context_wait_for_deregister_to_register(ce);
-			intel_context_put(ce);
-		} else if (unlikely(ret == -ENODEV)) {
+		if (unlikely(ret == -ENODEV)) {
 			ret = 0;	/* Will get registered later */
 		}
 	} else {
-- 
2.32.0

