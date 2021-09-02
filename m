Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEDD73FE6BF
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 02:53:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DD776E40B;
	Thu,  2 Sep 2021 00:52:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40CF76E408;
 Thu,  2 Sep 2021 00:52:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10094"; a="198468236"
X-IronPort-AV: E=Sophos;i="5.84,370,1620716400"; d="scan'208";a="198468236"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 17:52:40 -0700
X-IronPort-AV: E=Sophos;i="5.84,370,1620716400"; d="scan'208";a="646030152"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 17:52:39 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, John.C.Harrison@Intel.com,
 matthew.brost@intel.com
Date: Wed,  1 Sep 2021 17:49:59 -0700
Message-Id: <20210902005022.711767-3-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210902005022.711767-1-daniele.ceraolospurio@intel.com>
References: <20210902005022.711767-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 02/25] drm/i915/guc: Fix outstanding G2H
 accounting
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

A small race that could result in incorrect accounting of the number
of outstanding G2H. Basically prior to this patch we did not increment
the number of outstanding G2H if we encoutered a GT reset while sending
a H2G. This was incorrect as the context state had already been updated
to anticipate a G2H response thus the counter should be incremented.

As part of this change we remove a legacy (now unused) path that was the
last caller requiring a G2H response that was not guaranteed to loop.
This allows us to simplify the accounting as we don't need to handle the
case where the send fails due to the channel being busy.

Also always use helper when decrementing this value.

v2 (Daniele): update GEM_BUG_ON check, pull in dead code removal from
later patch, remove loop param from context_deregister.

Fixes: f4eb1f3fe946 ("drm/i915/guc: Ensure G2H response has space in buffer")
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: <stable@vger.kernel.org>
---
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 79 +++++++++----------
 1 file changed, 37 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 69faa39da178..aff5dd247a88 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -352,20 +352,29 @@ static inline void set_lrc_desc_registered(struct intel_guc *guc, u32 id,
 	xa_unlock_irqrestore(&guc->context_lookup, flags);
 }
 
+static void decr_outstanding_submission_g2h(struct intel_guc *guc)
+{
+	if (atomic_dec_and_test(&guc->outstanding_submission_g2h))
+		wake_up_all(&guc->ct.wq);
+}
+
 static int guc_submission_send_busy_loop(struct intel_guc *guc,
 					 const u32 *action,
 					 u32 len,
 					 u32 g2h_len_dw,
 					 bool loop)
 {
-	int err;
-
-	err = intel_guc_send_busy_loop(guc, action, len, g2h_len_dw, loop);
+	/*
+	 * We always loop when a send requires a reply (i.e. g2h_len_dw > 0),
+	 * so we don't handle the case where we don't get a reply because we
+	 * aborted the send due to the channel being busy.
+	 */
+	GEM_BUG_ON(g2h_len_dw && !loop);
 
-	if (!err && g2h_len_dw)
+	if (g2h_len_dw)
 		atomic_inc(&guc->outstanding_submission_g2h);
 
-	return err;
+	return intel_guc_send_busy_loop(guc, action, len, g2h_len_dw, loop);
 }
 
 int intel_guc_wait_for_pending_msg(struct intel_guc *guc,
@@ -616,7 +625,7 @@ static void scrub_guc_desc_for_outstanding_g2h(struct intel_guc *guc)
 		init_sched_state(ce);
 
 		if (pending_enable || destroyed || deregister) {
-			atomic_dec(&guc->outstanding_submission_g2h);
+			decr_outstanding_submission_g2h(guc);
 			if (deregister)
 				guc_signal_context_fence(ce);
 			if (destroyed) {
@@ -635,7 +644,7 @@ static void scrub_guc_desc_for_outstanding_g2h(struct intel_guc *guc)
 				intel_engine_signal_breadcrumbs(ce->engine);
 			}
 			intel_context_sched_disable_unpin(ce);
-			atomic_dec(&guc->outstanding_submission_g2h);
+			decr_outstanding_submission_g2h(guc);
 			spin_lock_irqsave(&ce->guc_state.lock, flags);
 			guc_blocked_fence_complete(ce);
 			spin_unlock_irqrestore(&ce->guc_state.lock, flags);
@@ -1233,8 +1242,7 @@ static int register_context(struct intel_context *ce, bool loop)
 }
 
 static int __guc_action_deregister_context(struct intel_guc *guc,
-					   u32 guc_id,
-					   bool loop)
+					   u32 guc_id)
 {
 	u32 action[] = {
 		INTEL_GUC_ACTION_DEREGISTER_CONTEXT,
@@ -1243,16 +1251,16 @@ static int __guc_action_deregister_context(struct intel_guc *guc,
 
 	return guc_submission_send_busy_loop(guc, action, ARRAY_SIZE(action),
 					     G2H_LEN_DW_DEREGISTER_CONTEXT,
-					     loop);
+					     true);
 }
 
-static int deregister_context(struct intel_context *ce, u32 guc_id, bool loop)
+static int deregister_context(struct intel_context *ce, u32 guc_id)
 {
 	struct intel_guc *guc = ce_to_guc(ce);
 
 	trace_intel_context_deregister(ce);
 
-	return __guc_action_deregister_context(guc, guc_id, loop);
+	return __guc_action_deregister_context(guc, guc_id);
 }
 
 static intel_engine_mask_t adjust_engine_mask(u8 class, intel_engine_mask_t mask)
@@ -1340,26 +1348,23 @@ static int guc_lrc_desc_pin(struct intel_context *ce, bool loop)
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
@@ -1367,13 +1372,9 @@ static int guc_lrc_desc_pin(struct intel_context *ce, bool loop)
 		 * context whose guc_id was stolen.
 		 */
 		with_intel_runtime_pm(runtime_pm, wakeref)
-			ret = deregister_context(ce, ce->guc_id, loop);
-		if (unlikely(ret == -EBUSY)) {
-			clr_context_wait_for_deregister_to_register(ce);
-			intel_context_put(ce);
-		} else if (unlikely(ret == -ENODEV)) {
+			ret = deregister_context(ce, ce->guc_id);
+		if (unlikely(ret == -ENODEV))
 			ret = 0;	/* Will get registered later */
-		}
 	} else {
 		with_intel_runtime_pm(runtime_pm, wakeref)
 			ret = register_context(ce, loop);
@@ -1730,7 +1731,7 @@ static inline void guc_lrc_desc_unpin(struct intel_context *ce)
 	GEM_BUG_ON(context_enabled(ce));
 
 	clr_context_registered(ce);
-	deregister_context(ce, ce->guc_id, true);
+	deregister_context(ce, ce->guc_id);
 }
 
 static void __guc_context_destroy(struct intel_context *ce)
@@ -2583,12 +2584,6 @@ g2h_context_lookup(struct intel_guc *guc, u32 desc_idx)
 	return ce;
 }
 
-static void decr_outstanding_submission_g2h(struct intel_guc *guc)
-{
-	if (atomic_dec_and_test(&guc->outstanding_submission_g2h))
-		wake_up_all(&guc->ct.wq);
-}
-
 int intel_guc_deregister_done_process_msg(struct intel_guc *guc,
 					  const u32 *msg,
 					  u32 len)
-- 
2.25.1

