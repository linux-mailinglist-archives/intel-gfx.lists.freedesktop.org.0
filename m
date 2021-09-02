Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA103FE6E5
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 02:53:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A25DB6E453;
	Thu,  2 Sep 2021 00:52:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC8686E435;
 Thu,  2 Sep 2021 00:52:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10094"; a="198468261"
X-IronPort-AV: E=Sophos;i="5.84,370,1620716400"; d="scan'208";a="198468261"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 17:52:53 -0700
X-IronPort-AV: E=Sophos;i="5.84,370,1620716400"; d="scan'208";a="646030222"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 17:52:53 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, John.C.Harrison@Intel.com,
 matthew.brost@intel.com
Date: Wed,  1 Sep 2021 17:50:17 -0700
Message-Id: <20210902005022.711767-21-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210902005022.711767-1-daniele.ceraolospurio@intel.com>
References: <20210902005022.711767-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 20/25] drm/i915/guc: Proper xarray usage for
 contexts_lookup
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

From: Matthew Brost <matthew.brost@intel.com>

Lock the xarray and take ref to the context if needed.

v2:
 (Checkpatch)
  - Add new line after declaration
 (Daniel Vetter)
  - Correct put / get accounting in xa_for_loops
v3:
 (Checkpatch)
  - Extra new line

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 102 +++++++++++++++---
 1 file changed, 87 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 3062406503d8..987aec197658 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -608,8 +608,18 @@ static void scrub_guc_desc_for_outstanding_g2h(struct intel_guc *guc)
 	unsigned long index, flags;
 	bool pending_disable, pending_enable, deregister, destroyed, banned;
 
+	xa_lock_irqsave(&guc->context_lookup, flags);
 	xa_for_each(&guc->context_lookup, index, ce) {
-		spin_lock_irqsave(&ce->guc_state.lock, flags);
+		/*
+		 * Corner case where the ref count on the object is zero but and
+		 * deregister G2H was lost. In this case we don't touch the ref
+		 * count and finish the destroy of the context.
+		 */
+		bool do_put = kref_get_unless_zero(&ce->ref);
+
+		xa_unlock(&guc->context_lookup);
+
+		spin_lock(&ce->guc_state.lock);
 
 		/*
 		 * Once we are at this point submission_disabled() is guaranteed
@@ -625,7 +635,9 @@ static void scrub_guc_desc_for_outstanding_g2h(struct intel_guc *guc)
 		banned = context_banned(ce);
 		init_sched_state(ce);
 
-		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
+		spin_unlock(&ce->guc_state.lock);
+
+		GEM_BUG_ON(!do_put && !destroyed);
 
 		if (pending_enable || destroyed || deregister) {
 			decr_outstanding_submission_g2h(guc);
@@ -648,13 +660,19 @@ static void scrub_guc_desc_for_outstanding_g2h(struct intel_guc *guc)
 			}
 			intel_context_sched_disable_unpin(ce);
 			decr_outstanding_submission_g2h(guc);
-			spin_lock_irqsave(&ce->guc_state.lock, flags);
+
+			spin_lock(&ce->guc_state.lock);
 			guc_blocked_fence_complete(ce);
-			spin_unlock_irqrestore(&ce->guc_state.lock, flags);
+			spin_unlock(&ce->guc_state.lock);
 
 			intel_context_put(ce);
 		}
+
+		if (do_put)
+			intel_context_put(ce);
+		xa_lock(&guc->context_lookup);
 	}
+	xa_unlock_irqrestore(&guc->context_lookup, flags);
 }
 
 static inline bool
@@ -873,16 +891,29 @@ void intel_guc_submission_reset(struct intel_guc *guc, bool stalled)
 {
 	struct intel_context *ce;
 	unsigned long index;
+	unsigned long flags;
 
 	if (unlikely(!guc_submission_initialized(guc))) {
 		/* Reset called during driver load? GuC not yet initialised! */
 		return;
 	}
 
-	xa_for_each(&guc->context_lookup, index, ce)
+	xa_lock_irqsave(&guc->context_lookup, flags);
+	xa_for_each(&guc->context_lookup, index, ce) {
+		if (!kref_get_unless_zero(&ce->ref))
+			continue;
+
+		xa_unlock(&guc->context_lookup);
+
 		if (intel_context_is_pinned(ce))
 			__guc_reset_context(ce, stalled);
 
+		intel_context_put(ce);
+
+		xa_lock(&guc->context_lookup);
+	}
+	xa_unlock_irqrestore(&guc->context_lookup, flags);
+
 	/* GuC is blown away, drop all references to contexts */
 	xa_destroy(&guc->context_lookup);
 }
@@ -957,11 +988,24 @@ void intel_guc_submission_cancel_requests(struct intel_guc *guc)
 {
 	struct intel_context *ce;
 	unsigned long index;
+	unsigned long flags;
+
+	xa_lock_irqsave(&guc->context_lookup, flags);
+	xa_for_each(&guc->context_lookup, index, ce) {
+		if (!kref_get_unless_zero(&ce->ref))
+			continue;
+
+		xa_unlock(&guc->context_lookup);
 
-	xa_for_each(&guc->context_lookup, index, ce)
 		if (intel_context_is_pinned(ce))
 			guc_cancel_context_requests(ce);
 
+		intel_context_put(ce);
+
+		xa_lock(&guc->context_lookup);
+	}
+	xa_unlock_irqrestore(&guc->context_lookup, flags);
+
 	guc_cancel_sched_engine_requests(guc->sched_engine);
 
 	/* GuC is blown away, drop all references to contexts */
@@ -2849,21 +2893,28 @@ void intel_guc_find_hung_context(struct intel_engine_cs *engine)
 	struct intel_context *ce;
 	struct i915_request *rq;
 	unsigned long index;
+	unsigned long flags;
 
 	/* Reset called during driver load? GuC not yet initialised! */
 	if (unlikely(!guc_submission_initialized(guc)))
 		return;
 
+	xa_lock_irqsave(&guc->context_lookup, flags);
 	xa_for_each(&guc->context_lookup, index, ce) {
-		if (!intel_context_is_pinned(ce))
+		if (!kref_get_unless_zero(&ce->ref))
 			continue;
 
+		xa_unlock(&guc->context_lookup);
+
+		if (!intel_context_is_pinned(ce))
+			goto next;
+
 		if (intel_engine_is_virtual(ce->engine)) {
 			if (!(ce->engine->mask & engine->mask))
-				continue;
+				goto next;
 		} else {
 			if (ce->engine != engine)
-				continue;
+				goto next;
 		}
 
 		list_for_each_entry(rq, &ce->guc_active.requests, sched.link) {
@@ -2873,9 +2924,16 @@ void intel_guc_find_hung_context(struct intel_engine_cs *engine)
 			intel_engine_set_hung_context(engine, ce);
 
 			/* Can only cope with one hang at a time... */
-			return;
+			intel_context_put(ce);
+			xa_lock(&guc->context_lookup);
+			goto done;
 		}
+next:
+		intel_context_put(ce);
+		xa_lock(&guc->context_lookup);
 	}
+done:
+	xa_unlock_irqrestore(&guc->context_lookup, flags);
 }
 
 void intel_guc_dump_active_requests(struct intel_engine_cs *engine,
@@ -2891,23 +2949,34 @@ void intel_guc_dump_active_requests(struct intel_engine_cs *engine,
 	if (unlikely(!guc_submission_initialized(guc)))
 		return;
 
+	xa_lock_irqsave(&guc->context_lookup, flags);
 	xa_for_each(&guc->context_lookup, index, ce) {
-		if (!intel_context_is_pinned(ce))
+		if (!kref_get_unless_zero(&ce->ref))
 			continue;
 
+		xa_unlock(&guc->context_lookup);
+
+		if (!intel_context_is_pinned(ce))
+			goto next;
+
 		if (intel_engine_is_virtual(ce->engine)) {
 			if (!(ce->engine->mask & engine->mask))
-				continue;
+				goto next;
 		} else {
 			if (ce->engine != engine)
-				continue;
+				goto next;
 		}
 
-		spin_lock_irqsave(&ce->guc_active.lock, flags);
+		spin_lock(&ce->guc_active.lock);
 		intel_engine_dump_active_requests(&ce->guc_active.requests,
 						  hung_rq, m);
-		spin_unlock_irqrestore(&ce->guc_active.lock, flags);
+		spin_unlock(&ce->guc_active.lock);
+
+next:
+		intel_context_put(ce);
+		xa_lock(&guc->context_lookup);
 	}
+	xa_unlock_irqrestore(&guc->context_lookup, flags);
 }
 
 void intel_guc_submission_print_info(struct intel_guc *guc,
@@ -2961,7 +3030,9 @@ void intel_guc_submission_print_context_info(struct intel_guc *guc,
 {
 	struct intel_context *ce;
 	unsigned long index;
+	unsigned long flags;
 
+	xa_lock_irqsave(&guc->context_lookup, flags);
 	xa_for_each(&guc->context_lookup, index, ce) {
 		drm_printf(p, "GuC lrc descriptor %u:\n", ce->guc_id);
 		drm_printf(p, "\tHW Context Desc: 0x%08x\n", ce->lrc.lrca);
@@ -2980,6 +3051,7 @@ void intel_guc_submission_print_context_info(struct intel_guc *guc,
 
 		guc_log_context_priority(p, ce);
 	}
+	xa_unlock_irqrestore(&guc->context_lookup, flags);
 }
 
 static struct intel_context *
-- 
2.25.1

