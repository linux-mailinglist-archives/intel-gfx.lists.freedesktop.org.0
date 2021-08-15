Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 178DF3ECAE1
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Aug 2021 22:21:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6F3C89D99;
	Sun, 15 Aug 2021 20:21:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 197B689175
 for <intel-gfx@lists.freedesktop.org>; Sun, 15 Aug 2021 20:21:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10077"; a="213914005"
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; d="scan'208";a="213914005"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2021 13:21:18 -0700
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; d="scan'208";a="461849463"
Received: from jons-linux-dev-box.fm.intel.com ([10.1.27.20])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2021 13:21:18 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>, drmdevel@freedesktop.org
Cc: <daniel.vetter@ffwll.ch>
Date: Sun, 15 Aug 2021 13:15:43 -0700
Message-Id: <20210815201559.1150-6-matthew.brost@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210815201559.1150-1-matthew.brost@intel.com>
References: <20210815201559.1150-1-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/21] drm/i915/guc: Workaround reset G2H is
 received after schedule done G2H
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

If the context is reset as a result of the request cancelation the
context reset G2H is received after schedule disable done G2H which is
likely the wrong order. The schedule disable done G2H release the
waiting request cancelation code which resubmits the context. This races
with the context reset G2H which also wants to resubmit the context but
in this case it really should be a NOP as request cancelation code owns
the resubmit. Use some clever tricks of checking the context state to
seal this race until if / when the GuC firmware is fixed.

Fixes: 62eaf0ae217d ("drm/i915/guc: Support request cancellation")
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Cc: <stable@vger.kernel.org>
---
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 42 ++++++++++++++++---
 1 file changed, 36 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 3cd2da6f5c03..1e6b876bab34 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -826,17 +826,34 @@ __unwind_incomplete_requests(struct intel_context *ce)
 static void __guc_reset_context(struct intel_context *ce, bool stalled)
 {
 	struct i915_request *rq;
+	unsigned long flags;
 	u32 head;
+	bool skip = false;
 
 	intel_context_get(ce);
 
 	/*
-	 * GuC will implicitly mark the context as non-schedulable
-	 * when it sends the reset notification. Make sure our state
-	 * reflects this change. The context will be marked enabled
-	 * on resubmission.
+	 * GuC will implicitly mark the context as non-schedulable when it sends
+	 * the reset notification. Make sure our state reflects this change. The
+	 * context will be marked enabled on resubmission.
+	 *
+	 * XXX: If the context is reset as a result of the request cancelation
+	 * this G2H is received after the schedule disable complete G2H which is
+	 * likely wrong as this creates a race between the request cancelation
+	 * code re-submitting the context and this G2H handler. This likely
+	 * should be fixed in the GuC but until if / when that gets fixed we
+	 * need to workaround this. Convert this function to a NOP if a pending
+	 * enable is in flight as this indicates that a request cancelation has
+	 * occured.
 	 */
-	clr_context_enabled(ce);
+	spin_lock_irqsave(&ce->guc_state.lock, flags);
+	if (unlikely(!context_pending_enable(ce))) {
+		clr_context_enabled(ce);
+		skip = true;
+	}
+	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
+	if (unlikely(skip))
+		goto out_put;
 
 	rq = intel_context_find_active_request(ce);
 	if (!rq) {
@@ -855,6 +872,7 @@ static void __guc_reset_context(struct intel_context *ce, bool stalled)
 out_replay:
 	guc_reset_state(ce, head, stalled);
 	__unwind_incomplete_requests(ce);
+out_put:
 	intel_context_put(ce);
 }
 
@@ -1599,6 +1617,13 @@ static void guc_context_cancel_request(struct intel_context *ce,
 			guc_reset_state(ce, intel_ring_wrap(ce->ring, rq->head),
 					true);
 		}
+
+		/*
+		 * XXX: Racey if context is reset, see comment in
+		 * __guc_reset_context().
+		 */
+		flush_work(&ce_to_guc(ce)->ct.requests.worker);
+
 		guc_context_unblock(ce);
 	}
 }
@@ -2719,7 +2744,12 @@ static void guc_handle_context_reset(struct intel_guc *guc,
 {
 	trace_intel_context_reset(ce);
 
-	if (likely(!intel_context_is_banned(ce))) {
+	/*
+	 * XXX: Racey if request cancelation has occurred, see comment in
+	 * __guc_reset_context().
+	 */
+	if (likely(!intel_context_is_banned(ce) &&
+		   !context_blocked(ce))) {
 		capture_error_state(guc, ce);
 		guc_context_replay(ce);
 	}
-- 
2.32.0

